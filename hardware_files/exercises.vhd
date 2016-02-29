------------------------------------------------------------------------
-- Define entity store_ram

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.project_pack.ALL;

ENTITY store_ram IS
	PORT (
		clk, reset, w_all, wen1 : IN std_logic;
		rdin1 : IN pixop_t;
		raddr1 : IN std_logic_vector(3 DOWNTO 0);
		
		rdout1 : OUT pixop_t;
		rdout_par : OUT store_t;
		is_same : OUT std_logic
	);
END ENTITY store_ram;

ARCHITECTURE arch OF store_ram IS
	-- _i denotes internal
	SIGNAL rdout_par_i : store_t;
	SIGNAL rdout_i : pixop_t;
	SIGNAL is_same_i : std_logic;
BEGIN
	
	-- Clocked process for modifying RAM contents
	C1: PROCESS IS
	BEGIN
		-- Positive clock edge
		WAIT UNTIL clk'EVENT AND clk='1';
		
		-- Check for reset or w_all=1. wen1 is considered later.
		IF reset = '1' OR w_all = '1' THEN
			-- Iterate over memory and set all to psame
			L1 : FOR addr IN 0 TO 15 LOOP
				rdout_par_i(addr) <= psame;
			END LOOP L1;
		END IF; -- reset, w_all
		
		-- If wen1 is not asserted, no change
		IF wen1 = '1' THEN
			-- If w_all is true, all addresses have been written already, 
			-- so write rdin1 to raddr1 location without checking w_all
			rdout_par_i(to_integer(unsigned(raddr1))) <= rdin1;
		END IF; -- wen1
	END PROCESS C1;
	
	-- Assign signals to output
	rdout_par <= rdout_par_i;
	
	-- Combinational logic to assign outputs other than RAM
	-- is_same depends on contents of RAM only
	-- rdout1 is asynchronous memory read at address rdin1
	R1: PROCESS(rdout_par_i, raddr1) IS
	BEGIN
		-- Drive rdout1 with RAM contents at rdin1
		rdout_i <= rdout_par_i(to_integer(unsigned(raddr1)));
		
		-- Loop through contents of RAM and check for any contents not 
		-- equal to psame
		is_same_i <= '1'; -- Default value
		L2 : FOR addr IN 0 TO 15 LOOP
			IF rdout_par_i(addr) /= psame THEN
				is_same_i <= '0';
			END IF; -- psame check
		END LOOP L2;
		
	END PROCESS R1;
	
	-- Assign signals to outputs
	is_same <= is_same_i;
	rdout1 <= rdout_i;
	
END ARCHITECTURE arch;

------------------------------------------------------------------------
-- Define entity pix_word_cache

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE WORK.store_ram;
USE WORK.project_pack.ALL;

ENTITY pix_word_cache IS
	PORT (
		clk, reset, wen_all, pw : IN std_logic;
		pixopin : IN pixop_t;
		pixnum : IN std_logic_vector(3 DOWNTO 0);
		
		store : OUT store_t;
		is_same : OUT std_logic
	);
END ENTITY;

ARCHITECTURE arch OF pix_word_cache IS
	SIGNAL opout, opram : pixop_t;
BEGIN

	-- Instantiate entity store_ram
	SR : ENTITY store_ram PORT MAP(
		clk => clk,
		reset => reset,
		w_all => wen_all,
		wen1 => pw,
		rdin1 => opout,
		rdout1 => opram,
		raddr1 => pixnum,
		is_same => is_same,
		rdout_par => store
	);
	
	-- Define module change as a process statement
	-- using combinational logic
	C1 : PROCESS(pw, wen_all, pixopin, opram) IS
	BEGIN
	  -- Set a default for safety
	  opout <= psame;
		IF wen_all = '1' THEN
			IF pw = '1' THEN
				opout <= pixopin;
			ELSE
				opout <= psame;
			END IF; --pw
		ELSE -- w_all = 0, ignore pw
			IF opram = psame THEN
				opout <= pixopin;
			ELSE
			
				-- All inputs for output pblack (5 possible)
				IF  	(opram = pblack AND pixopin = psame) OR
						(opram = pblack AND pixopin = pblack) OR
						(opram = pwhite AND pixopin = pblack) OR
						(opram = pwhite AND pixopin = pinvert) OR
						(opram = pinvert AND pixopin = pblack) THEN
							opout <= pblack;
				-- All inputs for output pblack (5 possible)
				ELSIF	(opram = pblack AND pixopin = pwhite) OR
						(opram = pblack AND pixopin = pinvert) OR
						(opram = pwhite AND pixopin = psame) OR
						(opram = pwhite AND pixopin = pwhite) OR
						(opram = pinvert AND pixopin = pwhite) THEN
							opout <= pwhite;
				-- All inputs for output psame (1 possible)
				ELSIF (opram = pinvert AND pixopin = pinvert) THEN
							opout <= psame;
				-- All inputs for output pinvert
				ELSIF (opram = pinvert AND pixopin = psame) THEN
							opout <= pinvert;
				END IF; -- opram, pixopin
			END IF; --opram
		END IF; -- wen_all
	END PROCESS C1;

END ARCHITECTURE arch;

------------------------------------------------------------------------
-- Define entity ram_fsm

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY ram_fsm IS 
	GENERIC( 
		asize: INTEGER := 7; 
		dsize: INTEGER := 4
	);
	PORT(
		clk, reset, start : IN std_logic;
		addr : IN std_logic_vector(asize-1 DOWNTO 0);
		data : IN std_logic_vector(dsize-1 DOWNTO 0);
		delay, vwrite : OUT std_logic;
		addr_del : OUT std_logic_vector(asize-1 DOWNTO 0);
		data_del : OUT std_logic_vector(dsize-1 DOWNTO 0)
	);
END ENTITY ram_fsm;

ARCHITECTURE synth OF ram_fsm IS
  TYPE   state_t IS (m3, m2, m1, mx);
  SIGNAL state : state_t;
  SIGNAL delay_i, vwrite_i : std_logic;
  SIGNAL addr_i : std_logic_vector(asize-1 DOWNTO 0);
  SIGNAL data_i : std_logic_vector(dsize-1 DOWNTO 0);
BEGIN

	-- Combinational logic for output std_logic signals
	C1: PROCESS(state, start)
	BEGIN
		-- Default values
		delay_i <= '0';
		IF ((state = m1) OR (state = m2)) AND start = '1' THEN
			delay_i <= '1';
		END IF; -- delay_i
		
		vwrite_i <= '0';
		IF state = m3 THEN
			vwrite_i <= '1';
		END IF; -- vwrite_i
	END PROCESS C1;
	
	-- Assign signals to outputs for C1
	delay <= delay_i;
	vwrite <= vwrite_i;
	
	-- D-type flip flops for signals addr, del. Clocked on negative clock edge.
	D1: PROCESS
	BEGIN
		WAIT UNTIL clk'EVENT AND clk='0';
		addr_i <= addr;
		data_i <= data;
	END PROCESS D1;
	
	-- Assign signals to outputs for D1
	addr_del <= addr_i;
	data_del <= data_i;
	
	-- Clocked FSM implementation on positive clock edge
	F1: PROCESS
	VARIABLE nstate : state_t;
	BEGIN
		WAIT UNTIL clk'EVENT AND clk='1';
		
		-- Set nstate to m1, no matter what state is; 
		-- this will be overwritten later, if necessary
		IF start = '1' THEN
			nstate := m1;
		END IF;
		
		-- Perform state transition using IF statements
		IF state=m1 THEN
			nstate := m2;
		ELSIF state=m2 THEN
			nstate := m3;
		ELSIF state=m3 THEN
			IF start = '1' AND reset = '0' THEN
				nstate := m1;
			ELSE
				nstate := mx;
			END IF;
		END IF; 
		
		-- Set state to nstate variable
		state <= nstate;
		
		-- Unconditional reset of state
		IF reset = '1' THEN
			state <= mx;
		END IF;
		
	END PROCESS F1;
	
END ARCHITECTURE synth;

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
        xincr <= unsigned(xin) - x1;
        yincr <= unsigned(yin) - y1;
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

