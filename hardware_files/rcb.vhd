------------------------------------------------------------------------
-- Define entity ram_fsm

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.project_pack.ALL;
USE WORK.config_pack.ALL;

ENTITY ram_fsm IS
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
		busy : OUT std_logic;
		done : OUT std_logic;
		delay : OUT std_logic

	);
END ENTITY ram_fsm;

ARCHITECTURE synth OF ram_fsm IS
	TYPE   state_t IS (m3, m2, m1, mx);
	SIGNAL state : state_t;
	SIGNAL start_i : std_logic;
	SIGNAL delay_i, vwrite_i : std_logic;
	SIGNAL addr_ram_i, addr_ram_sync_i : std_logic_vector(7 DOWNTO 0);
	SIGNAL data_ram_i, data_ram_sync_i, data_calculated : std_logic_vector(15 DOWNTO 0);
	SIGNAL busy_i : std_logic;
	SIGNAL done_i : std_logic;
	SIGNAL cache_reg : store_t;
BEGIN

	-- Assign signals to outputs
	delay <= delay_i;
	vwrite <= vwrite_i;
	busy <= busy_i;
	done <= done_i;
	addr_ram <= addr_ram_i;
	data_ram <= data_ram_i;

	-- MUX to determine what the value of addr_ram_i is
	-- Only changes to a new value if the state demands it
	ADDR_MUX : PROCESS(state, vaddr, addr_ram_sync_i) IS
	BEGIN
		IF state = m1 THEN
			addr_ram_i <= vaddr;
		ELSE 
			addr_ram_i <= addr_ram_sync_i;
		END IF;
	END PROCESS ADDR_MUX;
	
	-- MUX to determine what the value of data_ram_i is
	DATA_MUX : PROCESS(state, data_ram_sync_i, data_calculated) IS
	BEGIN
		IF state = m2 THEN
			data_ram_i <= data_ram_sync_i;
		ELSE
			data_ram_i <= data_calculated;
		END IF;
	END PROCESS DATA_MUX;

	-- Combinational logic for output std_logic signals
	C1: PROCESS(state, start_i, cache_reg, vdin)
	BEGIN
		-- Default values
		delay_i <= '0';
		
		-- Calculate output values; only written if multiplexer allows through
		FOR i IN 0 TO 15 LOOP
			CASE cache_reg(i) IS
				WHEN psame => 	data_calculated(i) <= vdin(i);
				WHEN pblack => 	data_calculated(i) <= '1';
				WHEN pwhite => 	data_calculated(i) <= '0';
				WHEN pinvert => data_calculated(i) <= vdin(i) XOR '1';
				WHEN OTHERS => NULL;
			END CASE; --pix_cache(i)
		END LOOP;
		
		IF ((state = m1) OR (state = m2)) AND start_i = '1' THEN
			delay_i <= '1';
		END IF; -- delay_i

		vwrite_i <= '0';
		
		IF state = mx THEN
			busy_i <= '0';
		ELSE
			busy_i <= '1';
		END IF; -- busy check

		-- Determine logic based on state machine
		IF state = m1 THEN
			NULL;
			
		ELSIF state = m2 THEN
			NULL;
			
		ELSIF state = m3 THEN
			vwrite_i <= '1';
		END IF; -- react to state machine

	END PROCESS C1;


	-- Clocked FSM implementation on positive clock edge
	P1: PROCESS
		VARIABLE nstate : state_t;
	BEGIN
		WAIT UNTIL rising_edge(clk);

		-- Default done state is 0
		done_i <= '0';
		
		-- Cache register input
		-- Store cache in register
		cache_reg <= cache;
		
		-- Register MUX outputs for address, data
		addr_ram_sync_i <= addr_ram_i;
		data_ram_sync_i <= data_ram_i;
		
		start_i <= start;

		-- Set nstate to m1, no matter what state is
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
				done_i <= '1';
			END IF;
		END IF;

		-- Set state to nstate variable
		state <= nstate;

		-- Unconditional reset of state
		IF reset = '1' THEN
			state <= mx;
		END IF;

	END PROCESS P1;


END ARCHITECTURE synth;

------------------------------------------------------------------------
-- Define entity rcb

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.project_pack.ALL;
USE WORK.config_pack.ALL;

ENTITY rcb IS
	GENERIC(
		vsize : INTEGER := 6;
		-- Max number of cycles before write
		N : INTEGER := 10
	);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- db connections
		dbb_bus      : IN db_2_rcb;
		dbb_delaycmd : OUT std_logic;
		db_finish 	 : IN std_logic;

		-- vram connections
		vdout        : IN  std_logic_vector(15 DOWNTO 0);
		vdin         : OUT std_logic_vector(15 DOWNTO 0);
		vwrite       : OUT std_logic;
		vaddr        : OUT std_logic_vector(7 DOWNTO 0);

		-- vdp connection
		rcb_finish   : OUT std_logic
	);
END rcb;

ARCHITECTURE rtl1 OF rcb IS
	-- Signals for internal use
	SIGNAL clrxy_reg 							: coord; 
	SIGNAL word_reg, word_reg_delayed, vraddr 	: std_logic_vector((2*VSIZE)-5 DOWNTO 0);
	SIGNAL word_is_same 						: std_logic;
	SIGNAL rcb_finish_i 						: std_logic;
	SIGNAL cache_store_reg 						: store_t;
	SIGNAL busy 								: std_logic;
	SIGNAL idle_cycles 							: INTEGER;

	-- Clearscreen parameters
	SIGNAL xy_max 								: coord;
	SIGNAL x_min 								: std_logic_vector(VSIZE-1 DOWNTO 0);

	-- Signals for DB
	SIGNAL delaycmd 							: std_logic;

	-- Signals for pix_word_cache
	SIGNAL pixnum 								: std_logic_vector(3 DOWNTO 0);
	SIGNAL wen_all, pw 							: std_logic;
	SIGNAL pixopin 								: pixop_t;
	SIGNAL cache_store 							: store_t;
	SIGNAL cache_is_same 						: std_logic;

	-- Define signals for use with vram_control
	SIGNAL vram_start, vram_done, vram_delay, vram_busy : std_logic;
	SIGNAL vram_write, vram_write_i, vram_write_sync 	: std_logic;

	-- Define overall state machine
	TYPE rcb_states IS (DRAW, CLEAR);
	SIGNAL rcb_state 							: rcb_states;

	SIGNAL xy_prev 								: coord;

	-- Output signals from MUX
	SIGNAL splitxy								: coord;

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
	E2 : ENTITY WORK.ram_fsm PORT MAP(
		clk => clk,
		reset => reset,
		start => vram_start,
		vaddr => vraddr,
		vdin => vdout,
		cache => cache_store_reg,

		addr_ram => vaddr,
		data_ram => vdin,
		vwrite => vwrite,
		busy => vram_busy,
		done => vram_done,
		delay => vram_delay
	);

	-- Signal assignments from entire module to output ports
	dbb_delaycmd <= vram_delay OR delaycmd OR vram_write;

	-- Assign 0 to rcb_finish, because our work is never done
	rcb_finish <= rcb_finish_i;


	-- Input MUX for which (X,Y) co-ords to use
	INMUX : PROCESS(dbb_bus, clrxy_reg, rcb_state) IS
	BEGIN
		-- Check current state
		IF rcb_state = CLEAR THEN
			splitxy <= clrxy_reg;
		ELSE
			splitxy <= (x => dbb_bus.X, y => dbb_bus.Y);
		END IF;
	END PROCESS INMUX;


	-- Split module. vram_start is in sensitivity list to force an update to word_is_same after
	-- a RAM operation is triggered
	SPLIT : PROCESS(splitxy, word_reg_delayed) IS
		VARIABLE word_reg_i : STD_LOGIC_VECTOR((2*VSIZE)-5 DOWNTO 0);
	BEGIN

		-- Split X,Y into pixnum and word values
		pixnum <= splitxy.y(1 DOWNTO 0) & splitxy.x(1 DOWNTO 0);
		word_reg_i := splitxy.y(VSIZE-1 DOWNTO 2) & splitxy.x(VSIZE-1 DOWNTO 2);

		-- Check if the word is the same as previously
		IF word_reg_delayed = word_reg_i THEN
			word_is_same <= '1';
		ELSE
			word_is_same <= '0';
		END IF; -- same_word check

		-- Set output word_reg, will be synchronised by FSM
		word_reg <= word_reg_i;

	END PROCESS SPLIT;

	-- Multiplexer determining whether to allow vram_write through to processes
	VRAM_MUX : PROCESS(vram_delay, vram_write_i, vram_write_sync) IS
	BEGIN
		IF vram_delay = '0' THEN
			vram_write <= vram_write_i;
		ELSE
			vram_write <= vram_write_sync;
		END IF;
	END PROCESS VRAM_MUX;
	
	-- Process dictating whether a write is required
	VRAM : PROCESS(word_is_same, db_finish, cache_is_same, idle_cycles) IS
	BEGIN
		vram_write_i <= ((NOT word_is_same) OR db_finish) AND NOT cache_is_same;
		IF idle_cycles > N THEN
			vram_write_i <= '1';
		END IF; -- idle cycles
	END PROCESS VRAM;

	-- Logic depending on state change
	RCB_LOG : PROCESS(rcb_state, dbb_bus, vram_write, xy_prev, clrxy_reg, xy_max) IS
	BEGIN

		-- Default pix word cache control signals
		pw <= '0';
		wen_all <= '0';
		pixopin <= psame;
		
		-- Default delay is 0
		delaycmd <= '0';
		vram_start <= '0';

		-- If we want to write, trigger it
		IF vram_write = '1' THEN
			-- Trigger
			vram_start <= '1';
			-- Have to miss this command to trigger a write
			delaycmd <= '1';
			-- Clear cache 
			wen_all <= '1';
			-- busy signal if we are triggering a write
			busy <= '1';
		ELSE
	
			-- Make sure RAM is not triggered
			vram_start <= '0';

			-- Ensure that busy is not high
			busy <= '0';

			-- If we are in draw state, decode command
			IF rcb_state = DRAW THEN

				-- Check if we are starting a command
				IF dbb_bus.startcmd = '1' THEN

					-- If the command is a draw, draw the pixel
					IF dbb_bus.rcb_cmd(2) = '0' THEN

						pw <= '1';
						pixopin <= pixop_t(dbb_bus.rcb_cmd(1 DOWNTO 0));

					ELSE
						-- Clear command; calculate initial values
						delaycmd <= '1';

					END IF; -- Command decode

				END IF; -- Start command

			ELSIF rcb_state = CLEAR THEN
			  
				-- If clearing, then delay next command
				IF clrxy_reg = xy_max THEN
				--IF clrx_reg = x_max AND clry_reg = y_max THEN
					delaycmd <= '0';
				ELSE
					delaycmd <= '1';
				END IF;

				-- Write current clearscreen pixel
				pw <= '1';
				pixopin <= pixop_t(dbb_bus.rcb_cmd(1 DOWNTO 0));

			END IF; -- State machine decode

		END IF; -- RAM write check

	END PROCESS RCB_LOG;


	-- RCB_FSM controls state machine transitions and clearscreen co-ordinates
	RCB_FSM : PROCESS IS 
		VARIABLE nstate : rcb_states;
	BEGIN
		WAIT UNTIL rising_edge(clk);

		-- Store word_reg in clocked flip flop
		word_reg_delayed <= word_reg;
		vraddr <= word_reg_delayed;
		
		-- Store X,Y values in case of clearscreen
		xy_prev <= (x => dbb_bus.X, y => dbb_bus.Y);
		
		-- Store vram_write in register
		vram_write_sync <= vram_write;
		
		-- Store x,y min and max values

		-- If VRAM is delayed, wait for it to finish before continuing
		IF vram_delay = '0' THEN

			-- Store clear cache so we can clear and continue
			cache_store_reg <= cache_store;

			-- Check if in idle
			IF dbb_bus.startcmd = '1' THEN
				idle_cycles <= 0;
			ELSE
				idle_cycles <= idle_cycles + 1;
			END IF; -- Idle cycles

			IF rcb_state = DRAW THEN
				-- If drawing and clear is commanded, change state
				IF dbb_bus.startcmd = '1' AND dbb_bus.rcb_cmd(2) = '1' THEN

						-- Top right pixel
					xy_max <= ( x => MAX_SLV(xy_prev.x, dbb_bus.X),
								y => MAX_SLV(xy_prev.y, dbb_bus.Y));
								
					-- Min SLV is performed twice as variable assignment is warned about in Synplify
					x_min <= MIN_SLV(xy_prev.x, dbb_bus.X);
				
					clrxy_reg <= ( x => MIN_SLV(xy_prev.x, dbb_bus.X),
								  y => MIN_SLV(xy_prev.y, dbb_bus.Y));
					nstate := CLEAR;
				ELSE
					-- If DB is finished and we are not busy, assert finished TODO define busy
					rcb_finish_i <= db_finish AND NOT vram_busy AND NOT busy;
				END IF; -- start command

			ELSIF rcb_state = CLEAR THEN

				-- Need to only increment pixel if we're not current writing
				IF vram_write = '0' THEN

					-- Calculate next pixel location. Use raster scan, so left to right, bottom to top
					IF clrxy_reg.x = xy_max.x THEN
						-- Check for clearscreen finish
						IF clrxy_reg = xy_max THEN
							nstate := DRAW;
						ELSE
							-- Hit far right, so reset left and move up a row
							clrxy_reg <= (	x => x_min,
											y => std_logic_vector(unsigned(clrxy_reg.y) + 1));
						END IF; -- row transition
					ELSE
						clrxy_reg.x <= std_logic_vector(unsigned(clrxy_reg.x) + 1);
					END IF; -- pixel increment

				END IF; -- vram_write

			END IF; -- state machine
		END IF; -- vram_delay

		-- Perform state transition
		rcb_state <= nstate;
		
		-- Check for a reset, and if present, reset all relevant signals
		IF reset = '1' THEN
			rcb_state <= DRAW;
			nstate := DRAW;
			rcb_finish_i <= '0';
			idle_cycles <= 0;
		END IF; --reset

	END PROCESS RCB_FSM;


END ARCHITECTURE rtl1;