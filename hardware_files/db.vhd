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


	-- Aliases of vector slices to increase code readability
	ALIAS hdb_x : std_logic_vector(VSIZE-1 DOWNTO 0) IS hdb_reg(2*VSIZE + 1 DOWNTO VSIZE+2);
	ALIAS hdb_y : std_logic_vector(VSIZE-1 DOWNTO 0) IS hdb_reg(VSIZE+1 DOWNTO 2);
	
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
			--xin <= hdb_reg(13 DOWNTO 8);
			--yin <= hdb_reg(7 DOWNTO 2);
			xin <= hdb_x;
			yin <= hdb_y;
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
			mux_out <= '1';
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
