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
		delay : OUT std_logic

	);
END ENTITY ram_fsm_2;

ARCHITECTURE synth OF ram_fsm_2 IS
  TYPE   state_t IS (m3, m2, m1, mx);
  SIGNAL state : state_t;
  SIGNAL delay_i, vwrite_i : std_logic;
  SIGNAL addr_i, addr_ram_i : std_logic_vector(7 DOWNTO 0);
  SIGNAL data_i : std_logic_vector(15 DOWNTO 0);
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
	END PROCESS D1;

	-- Clocked FSM implementation on positive clock edge
	F1: PROCESS
	VARIABLE nstate : state_t;
	BEGIN
		WAIT UNTIL clk'EVENT AND clk='1';

		-- Set nstate to m1, no matter what state is;
		-- this will be overwritten later, if necessary
		IF start = '1' THEN
			nstate := m1;
			addr_ram_i <= vaddr;
		END IF;

		-- Perform state transition using IF statements
		IF state=m1 THEN
			nstate := m2;
		ELSIF state=m2 THEN
			-- Set up output data
			FOR i IN vdout'LOW TO vdout'HIGH LOOP
				CASE cache(i) IS
					WHEN psame => data_i(i) <= vdout(i);
					WHEN pblack => data_i(i) <= '1';
					WHEN pwhite => data_i(i) <= '0';
					WHEN pinvert => data_i(i) <= vdout(i) XOR '1';
					WHEN OTHERS => NULL;
				END CASE; --pix_cache(i)
			END LOOP;

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

	-- Assign signals to outputs
	addr_ram <= addr_ram_i;
	data_ram <= data_i;

END ARCHITECTURE synth;

------------------------------------------------------------------------
-- Define entity rcb

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
USE WORK.config_pack.ALL;

ENTITY rcb IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- db connections
		dbb_bus      : IN db_2_rcb;
		dbb_delaycmd : OUT STD_LOGIC;

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
	SIGNAL word_reg : STD_LOGIC_VECTOR((2*VSIZE)-5 DOWNTO 0);
	SIGNAL word_is_same : std_logic;

	-- Signals for DB
	SIGNAL delaycmd : std_logic;

	-- Signals for pix_word_cache
	SIGNAL pixnum : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL wen_all, pw : std_logic;
	SIGNAL pixopin : pixop_t;
	SIGNAL cache_store : store_t;
	SIGNAL cache_is_same : std_logic;

	-- Define signals for use with vram_control
	SIGNAL vram_start, vram_done : std_logic;

	-- Define a constant number of cycles before writing the cache
	CONSTANT N : INTEGER := 10;

	-- Define overall state machine
	TYPE rcb_states IS (IDLE, DRAW, CLEAR);
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

ENTITY vram_control IS 
	PORT (
		clk, reset, start : IN std_logic;
		done, delay : OUT std_logic;
		pix_cache : IN store_t;
		vaddr : IN std_logic_vector(7 DOWNTO 0);
		vdout : IN std_logic_vector(15 DOWNTO 0);
		vdin : OUT std_logic_vector(15 DOWNTO 0)
	);
END ENTITY vram_control;

	-- TODO delay input address by a clock cycle using a register, either in module or outside
	E2 : ENTITY vram_control PORT MAP (
		clk => clk,
		reset => reset,
		start => vram_start,
		done => vram_done,
		delay => delaycmd,
		pix_cache => cache_store,
		vaddr => 
	);

	-- Combination process
	C1 : PROCESS(dbb_bus.X, dbb_bus.Y, clrx_reg, clry_reg, rcb_fsm) IS
		VARIABLE splitx, splity : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
		VARIABLE pixnum_i : STD_LOGIC_VECTOR(3 DOWNTO 0);
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
		pixnum_i := splity(1 DOWNTO 0) & splitx(1 DOWNTO 0);
		word_reg_i := splity(VSIZE-1 DOWNTO 2) & splitx(VSIZE-1 DOWNTO 2);
		IF word_reg = word_reg_i THEN
			word_is_same <= '1';
		ELSE
			word_is_same <= '0';
		END IF; -- same_word check
		word_reg <= word_reg_i;
		pixnum <= pixnum_i;
	END PROCESS C1;

	P1 : PROCESS IS 
		VARIABLE cycle_count : INTEGER;
		VARIABLE write_ram : std_logic;
		VARIABLE nstate : rcb_states;
	BEGIN
		WAIT UNTIL rising_edge(clk);
		
		-- Using diagram of RCB sample hardware, go from left to right
		IF rcb_fsm = IDLE THEN
			
			-- If doing something, transition to that state
			IF dbb_bus.startcmd = '1' THEN

				-- Check to see if the RAM word has changed, and if so, write contents
				IF word_is_same = '0' THEN
					write_ram := '1';
				END IF; -- word_is_same

				IF 	dbb_bus.rcbcmd = rcb_cmd_draw_white OR
					dbb_bus.rcbcmd = rcb_cmd_draw_black OR
					dbb_bus.rcbcmd = rcb_cmd_draw_invert THEN
					
					--rcb_fsm <= DRAW;
					nstate := DRAW;

				ELSIF 	dbb_bus.rcbcmd = rcb_cmd_clear_white OR
						dbb_bus.rcbcmd = rcb_cmd_clear_black OR
						dbb_bus.rcbcmd = rcb_cmd_clear_invert THEN 

					-- rcb_fsm <= CLEAR;
					nstate := CLEAR;
				END IF; -- perform command

			END IF; -- start command

			IF cycle_count < N THEN
				cycle_count := cycle_count + 1;
			ELSE
				-- Check if cache has something
				IF cache_is_same = '0' THEN
					-- TODO write operation
					write_ram := '1';
				END IF; --cache_is_same
			END IF; -- cycle_count

		END IF; -- state transition

		-- Use nstate instead of rcb_fsm, to operate immediately upon the new state
		IF nstate = DRAW THEN
			-- TODO check if different word; if not, draw and go to idle, else write ram and stay in draw state
			nstate := IDLE;
		ELSIF nstate = CLEAR THEN

			nstate := IDLE;
		END IF; -- State machine

		-- Assign current state to state machine signal
		rcb_fsm <= nstate;

		IF reset = '1' THEN
			cycle_count := 0;
			rcb_fsm <= IDLE;
			nstate := IDLE;
		END IF; -- reset

	END PROCESS P1;

END rtl1;
