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

	-- Signals for use with RAM-FSM
	SIGNAL ram_start, ram_delay, ram_vwrite : std_logic;
	SIGNAL ram_addr, ram_addr_del : std_logic_vector(7 DOWNTO 0);
	SIGNAL ram_data, ram_data_del : std_logic_vector(15 DOWNTO 0);

	-- Define a constant number of cycles before writing the cache
	CONSTANT N : INTEGER := 10;

	-- Define overall state machine
	TYPE rcb_states IS (IDLE, DRAW, CLEAR, RMW);
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

	-- Instantiate RAM-FSM entity
	E2 : ENTITY WORK.ram_fsm GENERIC MAP (asize => 8, dsize => 16) PORT MAP (
		clk => clk,
		reset => reset,
		start => ram_start,
		addr => ram_addr,
		data => ram_data,
		delay => ram_delay,
		vwrite => ram_vwrite,
		addr_del => ram_addr_del,
		data_del => ram_data_del
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
					
					rcb_fsm <= DRAW;

				ELSIF 	dbb_bus.rcbcmd = rcb_cmd_clear_white OR
						dbb_bus.rcbcmd = rcb_cmd_clear_black OR
						dbb_bus.rcbcmd = rcb_cmd_clear_invert THEN 

					rcb_fsm <= CLEAR;
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

		--ELSIF rcb_fsm = DRAW THEN

		END IF; -- state transition

		IF reset = '1' THEN
			cycle_count := 0;
			rcb_fsm <= IDLE;
		END IF; -- reset

	END PROCESS P1;

END rtl1;
