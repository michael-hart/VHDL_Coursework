------------------------------------------------------------------------
-- Define entity draw_octant

-- Thomas Clarke 2013
-- draw-octant entity modified for variable size vectors
-- used in VHDL & Logic Synthesis Coursework

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY draw_octant IS
  GENERIC(vsize: INTEGER := 12);
  PORT(
    clk, init, draw, xbias, disable : IN  std_logic;
    xin, yin                 : IN  std_logic_vector(vsize-1 DOWNTO 0);
    done                     : OUT std_logic;
    x, y                     : OUT std_logic_vector(vsize-1 DOWNTO 0)
    );
END ENTITY draw_octant;

ARCHITECTURE comb OF draw_octant IS

  SIGNAL done1                    : std_logic; -- internal done
  SIGNAL x1, y1                   : unsigned(vsize-1 DOWNTO 0); -- internal x,y
  SIGNAL xincr, yincr, xnew, ynew : unsigned(vsize-1 DOWNTO 0);
  -- note on vector sizes. err1,err2 must be one bit larger to preserve signed error info
  -- error is always adjusted to minimise absolute value of signed error and therefore
  -- can never be larger than vsize bits even though also signed, 12 bits is enough
  SIGNAL error                    : signed(vsize-1 DOWNTO 0);
  SIGNAL err1, err2               : unsigned(vsize DOWNTO 0);

-- OPERATION
--
-- line drawing is initiated by asserting init and draw in successive cycles.
-- this loads the initial and final coordinates of the line to be drawn into
-- (x,y) and xnew,ynew0 respectively
-- drawing must be in ENE octant which implies xincr >= 0, yincr >= 0, xincr >= yincr
-- here xincr = x - xnew, yincr = y - ynew
--
-- Through the drawing process (x,y) represent a new point to be plotted on line each cycle.
-- error represents the signed
--
-- xbias determines whether line goes in x direction or xy direction when both directions have
-- equal offset from the true line.
--
-- done is asserted in the final cycle when x=xnew, y=ynew.

--NOTES ON DATA STRUCTURES
-- The basic data here is a (x,y) coordinate
-- it would make sense to use a record type for this:
-- TYPE coord IS RECORD x,y: std-logic_vector(vsize-1 DOWNTO 0) END RECORD;
-- then decalre internal datas tructures of type coord.
-- the result would be neater, and for example testing the end condition could
-- be equality on records which works (like equality on arrays)


BEGIN
  -- assign to ports from internal signals
  x    <= std_logic_vector(x1);
  y    <= std_logic_vector(y1);
  done <= done1;

  C1 : PROCESS(error, xincr, yincr, x1, y1, xnew, ynew, init, draw)

  BEGIN

    err1 <= unsigned(abs(resize(error, vsize+1) + signed(resize(yincr,vsize+1))));
    err2 <= unsigned(abs(resize(error, vsize+1) - signed(resize(unsigned(xincr - yincr),vsize+1))));

    done1 <= '0';
    IF x1 = xnew and y1 = ynew and init = '0' and draw = '0' THEN
      done1 <= '1';
    END IF;

  END PROCESS C1;

  R1 : PROCESS

  BEGIN
    WAIT UNTIL clk'event AND clk = '1';
    IF disable = '0' THEN
      IF init = '1' THEN
        x1    <= unsigned(xin);
        y1    <= unsigned(yin);
        xincr <= (OTHERS => '0');
        yincr <= (OTHERS => '0');
        xnew  <= unsigned(xin);
        ynew  <= unsigned(yin);
        error <= (OTHERS => '0');

      ELSIF draw = '1' THEN
        xincr <= unsigned(xin) - unsigned(x1);
        yincr <= unsigned(yin) - unsigned(y1);
        xnew  <= unsigned(xin);
        ynew  <= unsigned(yin);

      ELSIF done1 = '1' THEN
        NULL; -- do nothing more once line has finished until next init

	  ELSE    -- draw new pixel

        IF err1 > err2 OR (err1 = err2 AND xbias = '0') THEN --check new pixel direction
          -- draw new pixel in diagonal direction
          y1    <= y1 + 1;
          x1    <= x1 + 1;
          error <= error + signed(yincr) - signed(xincr);
        ELSE
          -- draw new pixel in x direction
          x1    <= x1 + 1;
          error <= error + signed(yincr);

        END IF;

      END IF;

    END IF;

  END PROCESS R1;

END ARCHITECTURE comb;

------------------------------------------------------------------------
-- Define entity draw_any_octant

-- Begin sub-entity swap
-- Takes two inputs and an active high boolean of whether
-- to swap. If low, outputs match inputs; if high, outputs
-- are swapped with inputs.

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;

ENTITY swap IS
	GENERIC (N : integer := 16);
	PORT(
		c : IN std_logic;
		xin, yin : IN std_logic_vector(N-1 DOWNTO 0);
		xout, yout : OUT std_logic_vector(N-1 DOWNTO 0)
	);
END ENTITY swap;

ARCHITECTURE rtl OF swap IS

	SIGNAL xout1, yout1 : std_logic_vector(N-1 DOWNTO 0);

	BEGIN
	-- Asynchronous combinational logic process
	C1: PROCESS(c, xin, yin)
		BEGIN
			-- Set default
			xout1 <= xin;
			yout1 <= yin;
			-- If c is asserted, swap the outputs
			IF c = '1' THEN
				xout1 <= yin;
				yout1 <= xin;
			END IF; -- c
		END PROCESS C1;

	-- Assign signals from process to outputs
	xout <= xout1;
	yout <= yout1;

	END ARCHITECTURE rtl;


---------------------------------------------------------
-- Begin sub-entity INV
-- When active high signal c is asserted, output b is the
-- inversion of input vector a; else, it is equal to a.

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;

ENTITY inv IS
	GENERIC (N : integer := 16);
	PORT(
		a : IN std_logic_vector(N-1 DOWNTO 0);
		b : OUT std_logic_vector(N-1 DOWNTO 0);
		c : IN std_logic
	);
END ENTITY inv;

ARCHITECTURE rtl OF inv IS
	SIGNAL b1 : std_logic_vector(N-1 DOWNTO 0);
	BEGIN

	C1 : PROCESS (a,c)
		BEGIN
			-- Set default as equal to input
			b1 <= a;
			-- Check for inversion
			IF c = '1' THEN
				b1 <= not a;
			END IF; --c
		END PROCESS C1;

		-- Assign signals to outputs
		b <= b1;
	END ARCHITECTURE rtl;

---------------------------------------------------------
-- Begin sub-entity RD
-- 3-bit D-type register used to delay inputs by one
-- clock cycle. Disable prevents any change to outputs.

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;

ENTITY rd IS
	PORT(
		clk,  negx_in, negy_in, swapxy_in : IN std_logic;
		disable : IN std_logic;
		negx_out, negy_out, swapxy_out : OUT std_logic
	);
END ENTITY rd;

ARCHITECTURE behav OF rd IS
	SIGNAL negx, negy, swapxy : std_logic;
	BEGIN

	R1: PROCESS
		BEGIN
			-- Clocked signal, so wait until clock goes high
			WAIT UNTIL clk'EVENT AND clk = '1';

			-- If not disabled, assign inputs to signals
			IF disable = '0' THEN
				negx <= negx_in;
				negy <= negy_in;
				swapxy <= swapxy_in;
			END IF; --disable

		END PROCESS R1;

		-- Assign signals to outputs
		negx_out <= negx;
		negy_out <= negy;
		swapxy_out <= swapxy;

	END ARCHITECTURE behav;

---------------------------------------------------------
-- Begin entity draw_any_octant
-- Connects draw_octant hardware block to inverters, swap
-- blocks and registers to allow drawing in any octant.

LIBRARY IEEE;
LIBRARY WORK;

USE IEEE.std_logic_1164.ALL;
USE WORK.ALL;

-- changes 2016
-- resetx port renamed init for consistency with d-o port
-- disable port added

ENTITY draw_any_octant IS

  -- swapxy negx  negy  octant
  --  0      0      0     ENE
  --  1      0      0     NNE
  --  1      1      0     NNW
  --  0      1      0     WNW
  --  0      1      1     WSW
  --  1      1      1     SSW
  --  1      0      1     SSE
  --  0      0      1     ESE

  -- swapxy: x & y swap round on inputs & outputs
  -- negx:   invert bits of x on inputs & outputs
  -- negy:   invert bits of y on inputs & outputs

  -- xbias always give bias in x axis direction, so swapxy must invert xbias
  GENERIC(
    vsize: INTEGER := 16
  );

  PORT(
    clk, init, draw, xbias, disable : IN  std_logic;
    xin, yin                 : IN  std_logic_vector(vsize-1 DOWNTO 0);
    done                     : OUT std_logic;
    x, y                     : OUT std_logic_vector(vsize-1 DOWNTO 0);
    swapxy, negx, negy       : IN  std_logic
    );
END ENTITY draw_any_octant;

ARCHITECTURE comb OF draw_any_octant IS
	-- Outputs of RD module
	SIGNAL negx_delayed, negy_delayed, swapxy_delayed : std_logic;
	-- Outputs of first swap module, _s1 suffix is stage 1
	SIGNAL xin_s1, yin_s1 : std_logic_vector(vsize-1 DOWNTO 0);
	-- Outputs of first inverters, _s2 suffix denotes stage 2
	SIGNAL xin_s2, yin_s2 : std_logic_vector(vsize-1 DOWNTO 0);
	-- Outputs of draw_octant, _s1 suffix
	SIGNAL xout_s1, yout_s1 : std_logic_vector(vsize-1 DOWNTO 0);
	-- Outputs of second stage inverters, _s2 suffix
	SIGNAL xout_s2, yout_s2 : std_logic_vector(vsize-1 DOWNTO 0);

	SIGNAL xbias_i : std_logic;

BEGIN

	-- Apply inputs to RD
	RD1 : ENTITY rd PORT MAP (
		clk => clk,
		negx_in => negx,
		negy_in => negy,
		swapxy_in => swapxy,
		disable => disable,
		negx_out => negx_delayed,
		negy_out => negy_delayed,
		swapxy_out => swapxy_delayed
		);
	-- Map inputs through swap module to _s1 signals
	SWAP1 : ENTITY swap GENERIC MAP(N => vsize) PORT MAP (
		c => swapxy,
		xin => xin,
		yin => yin,
		xout => xin_s1,
		yout => yin_s1
	);
	-- Map stage 1 outputs through inverters
	INV1 : ENTITY inv GENERIC MAP(N => vsize) PORT MAP (
		c => negx,
		a => xin_s1,
		b => xin_s2
	);
	INV2 : ENTITY inv GENERIC MAP(N => vsize) PORT MAP (
		c => negy,
		a => yin_s1,
		b => yin_s2
	);

	XOR1: PROCESS(swapxy, xbias)
	BEGIN
		xbias_i <= swapxy XOR xbias;
	END PROCESS XOR1;

	-- Map all inputs to draw_octant
	DRAW1 : ENTITY draw_octant GENERIC MAP(vsize => vsize) PORT MAP (
		clk => clk,
		init => init,
		draw => draw,
		xbias => xbias_i,
		disable => disable,
		xin => xin_s2,
		yin => yin_s2,
		done => done,
		x => xout_s1,
		y => yout_s1
	);

	-- Map stage 1 outputs through second stage inverters
	INV3 : ENTITY inv GENERIC MAP(N => vsize) PORT MAP (
		c => negx_delayed,
		a => xout_s1,
		b => xout_s2
	);
	INV4 : ENTITY inv GENERIC MAP(N => vsize) PORT MAP (
		c => negy_delayed,
		a => yout_s1,
		b => yout_s2
	);

	-- Map stage 2 outputs through swap module to final outputs
	SWAP2 : ENTITY swap GENERIC MAP(N => vsize) PORT MAP (
		c => swapxy_delayed,
		xin => xout_s2,
		yin => yout_s2,
		xout => x,
		yout => y
	);

END ARCHITECTURE comb;


LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE work.ALL;

ENTITY db IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- host processor connections
		hdb          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dav          : IN  STD_LOGIC;
		hdb_busy     : OUT STD_LOGIC;

		-- rcb connections
		dbb_bus      : OUT db_2_rcb;
		dbb_delaycmd : IN  STD_LOGIC;

		-- vdp connection
		db_finish    : OUT STD_LOGIC
	);
END db;

ARCHITECTURE rtl OF db IS
-- Registers.
SIGNAL hdb_reg 		: STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL xy_old_reg : STD_LOGIC_VECTOR(11 DOWNTO 0);

-- Multiplexer signals, controlled by DB_FSM
SIGNAL mux_in, mux_out : std_logic;

-- Register control signals
SIGNAL update_old, busy, oct_lock : std_logic;

-- Connections of draw_any_octant
-- From OCTANT_CMB
SIGNAL swapxy, negx, negy, xbias : STD_LOGIC;
-- Latch to ensure combinational does not change during draw.
SIGNAL swapxy1, negx1, negy1, xbias1 : STD_LOGIC;

-- I/O
SIGNAL xin, yin, x, y : std_logic_vector(5 DOWNTO 0);
-- To/from DB_FSM
SIGNAL init, draw, done, disable : std_logic;

-- For DB_FSM
SIGNAL db_fsm_state, db_fsm_nstate : state_db;

BEGIN

	-- Process for clocked registers.
	REG : PROCESS BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1';
		IF busy = '0' THEN
			hdb_reg <= hdb;
		END IF;

		IF update_old = '1' THEN
			xy_old_reg <= hdb_reg(13 DOWNTO 2);
		END IF;

		IF oct_lock = '0' THEN
			swapxy1 <= swapxy;
			negx1	 	<= negx;
			negy1	 	<= negy;
			xbias1  <= xbias;
		END IF;

	END PROCESS REG;

	-- Octant-cmb block
	OCTANT_CMB :PROCESS (hdb_reg, xy_old_reg)
	-- Create variables.
	VARIABLE dx, dy : std_logic_vector(6 DOWNTO 0);
	VARIABLE temp_negx, temp_negy : std_logic;
	BEGIN

		-- Assign values.
		dx := std_logic_vector(signed(resize(unsigned(hdb_reg(13 DOWNTO 8)), 7)) - signed(resize(unsigned(xy_old_reg(11 DOWNTO 6)), 7)));
		dy := std_logic_vector(signed(resize(unsigned(hdb_reg(7 DOWNTO 2)), 7)) - signed(resize(unsigned(xy_old_reg(5 DOWNTO 0)), 7)));


		-- Assign negx and negy first, equals if dx < 0, dy < 0
		IF signed(dx) < "0000000" THEN
			temp_negx := '1';
		ELSE
			temp_negx := '0';
		END IF;

		IF signed(dy) < "0000000" THEN
			temp_negy := '1';
		ELSE
			temp_negy := '0';
		END IF;

		-- Swap is if abs(dy) > abs(dx). If swap, then negx and negy to swap.
		IF abs(signed(dy)) > abs(signed(dx)) THEN
			swapxy <= '1';
			negx <= temp_negy;
			negy <= temp_negx;

		ELSE
			swapxy <= '0';
			negx <= temp_negx;
			negy <= temp_negy;

		END IF;

    IF temp_negx /= temp_negy THEN
		  xbias <= '0';
    ELSE
      xbias <= '1';
    END IF;

	END PROCESS OCTANT_CMB;

	-- Multiplexer at draw_any_octant input.
	IN_MUX : PROCESS (mux_in, hdb_reg, xy_old_reg) BEGIN

		IF mux_in = '1' THEN
			xin <= hdb_reg(13 DOWNTO 8);
			yin <= hdb_reg(7 DOWNTO 2);
		ELSE
			xin <= xy_old_reg(11 DOWNTO 6);
			yin <= xy_old_reg(5 DOWNTO 0);
		END IF;

	END PROCESS IN_MUX;

	-- Multiplexer at draw_any_octant output.
	OUT_MUX : PROCESS (mux_out, xin, yin, x, y) BEGIN

		IF mux_out = '1' THEN
			dbb_bus.X <= xin;
			dbb_bus.Y <= yin;
		ELSE
			dbb_bus.X <= x;
			dbb_bus.Y <= y;
		END IF;

	END PROCESS OUT_MUX;

	-- For controlling state changes.
	FSM : PROCESS BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1';
		IF reset = '1' THEN
			db_fsm_state <= s_wait;
		ELSE
			db_fsm_state <= db_fsm_nstate;
		END IF;
	END PROCESS FSM;

	-- For determining next state.
	N_FSM : PROCESS (db_fsm_state, dav, done, dbb_delaycmd) BEGIN
		-- By default remain in same state.
		db_fsm_nstate <= db_fsm_state;

		IF db_fsm_state = s_wait THEN

			IF dav = '0' THEN
				db_fsm_nstate <= s_wait;
			ELSIF hdb(15 DOWNTO 14) = "00" THEN
				db_fsm_nstate <= s_move;
			ELSIF hdb(15 DOWNTO 14) = "01" THEN
				db_fsm_nstate <= s_draw1;
			ELSIF hdb(15 DOWNTO 14) = "10" THEN
				db_fsm_nstate <= s_clear1;
			END IF;

		ELSIF db_fsm_state = s_move THEN
			db_fsm_nstate <= s_wait;

		ELSIF db_fsm_state = s_draw1 THEN
			db_fsm_nstate <= s_draw2;

		ELSIF db_fsm_state = s_draw2 THEN
			db_fsm_nstate <= s_draw3;

		ELSIF db_fsm_state = s_draw3 THEN
			db_fsm_nstate <= s_draw4;

	 	ELSIF db_fsm_state = s_draw4 THEN
			db_fsm_nstate <= s_draw5;

		ELSIF db_fsm_state = s_draw5 THEN

			IF done = '0' OR dbb_delaycmd = '1' THEN
				db_fsm_nstate <= s_draw5;
			ELSE
				db_fsm_nstate <= s_wait;
			END IF;

		ELSIF db_fsm_state = s_clear1 THEN

			IF dbb_delaycmd = '0' THEN
				db_fsm_nstate <= s_clear2;
			ELSE
				db_fsm_nstate <= s_clear1;
			END IF;

		ELSIF db_fsm_state = s_clear2 THEN

			IF dbb_delaycmd = '0' THEN
				db_fsm_nstate <= s_wait;
			ELSE
				db_fsm_nstate <= s_clear2;
			END IF;

		END IF;
	END PROCESS N_FSM;

	-- FSM outputs
	OPT : PROCESS(db_fsm_state, dbb_delaycmd) BEGIN
		IF db_fsm_state = s_wait THEN
			busy <= '0';
			disable <= '1';
			init <= '0';
			draw <= '0';
			dbb_bus.startcmd <= '0';
			update_old <= '0';
			mux_in <= '0';
			mux_out <= '0';
			oct_lock <= '0';

		ELSIF db_fsm_state = s_move THEN
			busy <= '1';
			update_old <= '1';

		ELSIF db_fsm_state = s_draw1 THEN
			busy <= '1';

		ELSIF db_fsm_state = s_draw2 THEN
			oct_lock <= '1';

		ELSIF db_fsm_state = s_draw3 THEN
			disable <= '0';
			init <= '1';

		ELSIF db_fsm_state = s_draw4 THEN
			init <= '0';
			draw <= '1';
			mux_in <= '1';

		ELSIF db_fsm_state = s_draw5 THEN
			draw <= '0';
			update_old <= '1';
			dbb_bus.startcmd <= '1';
			disable <= dbb_delaycmd;

		ELSIF db_fsm_state = s_clear1 THEN
			busy <= '1';
			mux_out <= '0';
			dbb_bus.startcmd <= '1';

		ELSE -- db_fsm_state = s_clear2
			mux_in <= '1';
			update_old <= '1';

		END IF;

	END PROCESS OPT;

	BSY : PROCESS (busy) BEGIN
		hdb_busy <= busy;
	END PROCESS BSY;

	-- CMD block to entire correct commands used.
	CMD : PROCESS (hdb_reg, db_fsm_state) BEGIN
		IF db_fsm_state = s_draw2 THEN
			dbb_bus.rcb_cmd <= '0' & hdb_reg(1 DOWNTO 0);

		ELSIF db_fsm_state = s_clear1 THEN
			dbb_bus.rcb_cmd <= "000";

		ELSIF db_fsm_state = s_clear2 THEN
			dbb_bus.rcb_cmd <= '1' & hdb_reg(1 DOWNTO 0);

		ELSE
			NULL;

		END IF;

	END PROCESS CMD;

	-- db_finish is only high if in s_wait and no more commands, dav = 0
	FIN : PROCESS (db_fsm_state, dav) BEGIN
		IF db_fsm_state = s_wait AND dav = '0' THEN
			db_finish <= '1';
		ELSE
			db_finish <= '0';
		END IF;
	END PROCESS FIN;

	-- draw_any_octant block connected.
	DAB : ENTITY draw_any_octant GENERIC MAP( vsize => vsize) PORT MAP(
	    clk => clk,
			init => init,
			draw => draw,
			xbias => xbias1,
			disable => disable,
			xin => xin,
			yin => yin,
	    done => done,
	    x => x,
			y => y,
	    swapxy => swapxy1,
			negx => negx1,
			negy => negy1
	    );

END rtl;
