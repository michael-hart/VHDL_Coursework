------------------------------------------------------------------------
-- Define entity ram_fsm_2

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE WORK.config_pack.ALL;

ENTITY ram_fsm_2 IS
	PORT(
		-- Input ports
		clk, reset, start: IN std_logic;
		vaddr : IN std_logic_vector(7 DOWNTO 0);
		vdin : IN std_logic_vector(15 DOWNTO 0);
		cache : IN store_t;

		-- Output ports
		addr_ram : OUT std_logic_vector(7 DOWNTO 0);
		data_ram : OUT std_logic_vector(15 DOWNTO 0);
		vwrite : OUT std_logic;
		done : OUT std_logic;
		delay : OUT std_logic

	);
END ENTITY ram_fsm_2;

ARCHITECTURE synth OF ram_fsm_2 IS
  TYPE   state_t IS (m3, m2, m1, mx);
  SIGNAL state : state_t;
  SIGNAL delay_i, vwrite_i : std_logic;
  SIGNAL addr_i, addr_ram_i, addr_delayed_i : std_logic_vector(7 DOWNTO 0);
  SIGNAL data_i : std_logic_vector(15 DOWNTO 0);
  SIGNAL done_i : std_logic;
  SIGNAL cache_reg : store_t;
BEGIN

	-- Combinational logic for output std_logic signals
	C1: PROCESS(state, start, vaddr, addr_i)
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
	done <= done_i;

	-- Clocked FSM implementation on positive clock edge
	F1: PROCESS
	VARIABLE nstate : state_t;
	BEGIN
		WAIT UNTIL rising_edge(clk);

		-- Store cache in register
		cache_reg <= cache;

		-- Default done state is 0
		done_i <= '0';

		-- Use previous value of word reg
		addr_delayed_i <= vaddr;

		-- Set nstate to m1, no matter what state is;
		-- this will be overwritten later, if necessary
		IF start = '1' THEN
			nstate := m1;
			addr_i <= addr_delayed_i;
		END IF;

		-- Perform state transition using IF statements
		IF state=m1 THEN
			nstate := m2;
		ELSIF state=m2 THEN
			-- Set up output data
			FOR i IN vdin'LOW TO vdin'HIGH LOOP
				CASE cache_reg(i) IS
					WHEN psame => data_i(i) <= vdin(i);
					WHEN pblack => data_i(i) <= '1';
					WHEN pwhite => data_i(i) <= '0';
					WHEN pinvert => data_i(i) <= vdin(i) XOR '1';
					WHEN OTHERS => NULL;
				END CASE; --pix_cache(i)
			END LOOP;

			nstate := m3;
		ELSIF state=m3 THEN
			IF start = '1' AND reset = '0' THEN
				nstate := m1;
			ELSE
				nstate := mx;
				done_i <= '1';
			END IF;
		END IF;

		-- Set state to nstate variable
		state <= nstate;

		-- Unconditional reset of state
		IF reset = '1' THEN
			state <= mx;
		END IF;

	END PROCESS F1;

	-- Assign signals to outputs
	addr_ram <= addr_i;
	data_ram <= data_i;

END ARCHITECTURE synth;

------------------------------------------------------------------------
-- Define entity rcb

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.project_pack.ALL;
USE WORK.config_pack.ALL;

ENTITY rcb IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- db connections
		dbb_bus      : IN db_2_rcb;
		dbb_delaycmd : OUT STD_LOGIC;
		db_finish 	 : IN std_logic;

		-- vram connections
		vdout        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		vdin         : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		vwrite       : OUT STD_LOGIC;
		vaddr        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

		-- vdp connection
		rcb_finish   : OUT STD_LOGIC
	);
END rcb;

ARCHITECTURE rtl1 OF rcb IS
	-- Signals for internal use
	SIGNAL clrx_reg, clry_reg : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
	SIGNAL split_x, split_y : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
	SIGNAL word_reg, word_reg_delayed : STD_LOGIC_VECTOR((2*VSIZE)-5 DOWNTO 0);
	SIGNAL word_is_same : std_logic;
	SIGNAL rcb_finish_i : std_logic;

	-- Signals for DB
	SIGNAL delaycmd : std_logic;

	-- Signals for pix_word_cache
	SIGNAL pixnum, pixnum_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL wen_all, pw : std_logic;
	SIGNAL pixopin : pixop_t;
	SIGNAL cache_store : store_t;
	SIGNAL cache_is_same : std_logic;

	-- Define signals for use with vram_control
	SIGNAL vram_start, vram_done, vram_delay : std_logic;

	-- Define a constant number of cycles before writing the cache
	CONSTANT N : INTEGER := 10;

	-- Define overall state machine
	TYPE rcb_states IS (DRAW, CLEAR);
	SIGNAL rcb_fsm : rcb_states;

BEGIN

	-- Instantiate pix_word_cache entity
	E1 : ENTITY WORK.pix_word_cache PORT MAP(
		clk => clk,
		reset => reset,
		wen_all => wen_all,
		pw => pw,
		pixopin => pixopin,
		pixnum => pixnum,
		store => cache_store,
		is_same => cache_is_same
	);

	-- Instantiate ram control FSM
	E2 : ENTITY WORK.ram_fsm_2 PORT MAP(
		clk => clk,
		reset => reset,
		start => vram_start,
		vaddr => word_reg_delayed,
		vdin => vdout,
		cache => cache_store,

		addr_ram => vaddr,
		data_ram => vdin,
		vwrite => vwrite,
		done => vram_done,
		delay => vram_delay
	);

	-- Combination process
	C1 : PROCESS(dbb_bus.X, dbb_bus.Y, clrx_reg, clry_reg, rcb_fsm, cache_is_same, vram_done) IS
		VARIABLE splitx, splity : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
		VARIABLE word_reg_i : STD_LOGIC_VECTOR((2*VSIZE)-5 DOWNTO 0);
	BEGIN

		-- Check current state
		IF rcb_fsm = CLEAR THEN
			splitx := clrx_reg;
			splity := clry_reg;
		ELSE
			splitx := dbb_bus.X;
			splity := dbb_bus.Y;
		END IF;

		-- Output of split
		pixnum_i <= splity(1 DOWNTO 0) & splitx(1 DOWNTO 0);
		word_reg_i := splity(VSIZE-1 DOWNTO 2) & splitx(VSIZE-1 DOWNTO 2);
		--REPORT "Old word is " & to_string(word_reg) & " and new word is " & to_string(word_reg_i);
		IF word_reg = word_reg_i THEN
			word_is_same <= '1';
		ELSE
			word_is_same <= '0';
		END IF; -- same_word check
		word_reg <= word_reg_i;
	END PROCESS C1;

	P1 : PROCESS IS 
		VARIABLE nstate : rcb_states;
		VARIABLE write_ram : std_logic;
		VARIABLE x_prev, y_prev : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
		VARIABLE x_max, y_max : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
		VARIABLE x_min, y_min : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
	BEGIN
		WAIT UNTIL rising_edge(clk);

		-- Store word_reg in clocked flip flop
		word_reg_delayed <= word_reg;

		IF rcb_finish_i = '0' THEN
			REPORT "RCB Input Op is " & to_string(dbb_bus.rcb_cmd) & " at x,y "
			 & integer'image(to_integer(unsigned(dbb_bus.X))) & ", " 
			 & integer'image(to_integer(unsigned(dbb_bus.Y))) & " and delay is " & std_logic'image(delaycmd) & " and word_is_same is " & std_logic'image(word_is_same);
		END IF; -- rcb_finish_i

		-- Default delay is 0
		delaycmd <= '0';
		pw <= '0'; -- Ensures writing doesn't occur unless FSM sets it to
		wen_all <= '0';
		vram_start <= '0';

		-- Check whether to write RAM contents
		IF ((word_is_same = '0' OR write_ram = '1') OR db_finish = '1') AND cache_is_same = '0' THEN
			
			delaycmd <= '1';
			IF write_ram = '0' THEN
				REPORT "RCB beginning to write word to VRAM";
				vram_start <= '1';
			END IF;

			write_ram := '1';
			IF vram_done = '1' THEN
				REPORT "RCB VRAM operation complete, cache cleared";
				-- As RAM op complete, need to clear cache with psame (wen_all=1, pw=0)
				wen_all <= '1';
				write_ram := '0';
			END IF;

		ELSE
			IF rcb_fsm = DRAW THEN

				IF dbb_bus.startcmd = '1' THEN
					IF dbb_bus.rcb_cmd(2) = '0' THEN
						REPORT "RCB draw op with pixopin " & to_string(dbb_bus.rcb_cmd(1 DOWNTO 0));
						pw <= '1';
						pixnum <= pixnum_i;
						pixopin <= pixop_t(dbb_bus.rcb_cmd(1 DOWNTO 0));
						-- wen_all is the same
					ELSE
						-- Assert delay command. This will be done in clear state as well
						delaycmd <= '1';

						-- Calculate bottom left pixel
						x_min := MIN_SLV(dbb_bus.X, x_prev);
						y_min := MIN_SLV(dbb_bus.Y, y_prev);

						-- Calculate top right pixel
						x_max := MAX_SLV(dbb_bus.X, x_prev);
						y_max := MAX_SLV(dbb_bus.Y, y_prev);

						-- Initialise registers at bottom left
						clrx_reg <= x_min;
						clry_reg <= y_min;

						REPORT "(x_min, y_min) are (" & to_string(x_min) & ", " & to_string(y_min) & "); "
							&  "(x_max, y_max) are (" & to_string(x_max) & ", " & to_string(y_max) & ")";

						-- Transition to clear screen state
						nstate := CLEAR;
					END IF;

					-- Save previous values in case clearscreen is next
					x_prev := dbb_bus.X;
					y_prev := dbb_bus.Y;
				ELSE
					-- Initial calculations
					rcb_finish_i <= db_finish;
				END IF; -- start command
			ELSIF rcb_fsm = CLEAR THEN
				REPORT "RCB clear state reached";

				REPORT "(x_min, y_min) are (" & to_string(x_min) & ", " & to_string(y_min) & "); "
					&  "(x_max, y_max) are (" & to_string(x_max) & ", " & to_string(y_max) & "); "
					&  "(x_clr, y_clr) are (" & to_string(clrx_reg) & ", " & to_string(clry_reg) & ")";

				-- Assert delay cmd while there is cleaning to do
				delaycmd <= '1';

				-- Draw pixel at current x,y
				pw <= '1';
				pixnum <= pixnum_i;
				pixopin <= pixop_t(dbb_bus.rcb_cmd(1 DOWNTO 0));

				-- Calculate next pixel location. Use raster scan, so left to right, bottom to top
				IF clrx_reg = x_max THEN
					IF clry_reg = y_max THEN
						nstate := DRAW;
						-- No need to delay any more
						delaycmd <= '0';
						REPORT "RCB clearscreen finished";
					ELSE
						-- We have hit far right, but we've already checked the top, so blindly increment
						clry_reg <= std_logic_vector(unsigned(clry_reg) + 1);
						-- Need to reset x to far left
						clrx_reg <= x_min;
					END IF; -- y finished

				ELSE
					clrx_reg <= std_logic_vector(unsigned(clrx_reg) + 1);
				END IF; -- pixel increment

			END IF;

			-- Perform state transition
			rcb_fsm <= nstate;

		END IF;

		-- Last thing is reset
		IF reset = '1' THEN
			rcb_fsm <= DRAW;
			nstate := DRAW;
			write_ram := '0';
			rcb_finish_i <= '0';
		END IF; --reset
	END PROCESS P1;

	-- TODO check this, but delay should just be delaycmd
	dbb_delaycmd <= delaycmd or (not word_is_same);

	-- Assign 0 to rcb_finish, because our work is never done
	rcb_finish <= rcb_finish_i;

END ARCHITECTURE rtl1;
