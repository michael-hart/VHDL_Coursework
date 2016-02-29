LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.vdp_pack.ALL;
USE work.project_pack.ALL;
USE work.config_pack.ALL;
USE WORK.utility_pack.ALL;

ENTITY db_behav IS
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;   -- not used!
		-- bus from host
		hdb          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dav          : IN  STD_LOGIC;
		hdb_busy     : OUT STD_LOGIC;

		-- bus to RCB
		dbb          : OUT db_2_rcb;
		dbb_delaycmd : IN  std_logic;
		dbb_rcbclear : IN  std_logic;

		-- to testbench
		db_finish    : OUT std_logic
	);
END db_behav;

ARCHITECTURE behav OF db_behav IS
	SIGNAL dbb_i : db_2_rcb;

	SIGNAL cycle_init, cycle_done, hdb_busy_i : STD_LOGIC;

	TYPE rcbcmd_type IS (off, clear_move, clear_black, clear_white, clear_invert);

	SHARED VARIABLE rcbcmd_v : rcbcmd_type := off;

	PROCEDURE write_command_rcb(
		x                 : IN  INTEGER;
		y                 : IN  INTEGER;
		rcbcmd            : IN  rcbcmd_type;
		SIGNAL cycle_init : OUT STD_LOGIC;
		SIGNAL cycle_done : IN  STD_LOGIC) IS
		-- alters (x,y) pixel in image ram_array as specified by pen
		-- may need to read and write to ram_array (for invert writing)
		VARIABLE val : STD_LOGIC;       -- initial value in ram of bit to be written
	BEGIN
		-- set up parameters for operation
		--
		x_rcb_v  := x;
		y_rcb_v  := y;
		rcbcmd_v := rcbcmd;
		WAIT FOR 0 ns;
		-- initiate operation
		cycle_init <= '0';
		WAIT FOR 0 ns;
		cycle_init <= '1';
		WAIT FOR 0 ns;
		rcbcmd_v := off;                --set back to default (pen_type) mode for do_vdp_command use	-- wait for completion of operation
		WAIT UNTIL cycle_done'EVENT and cycle_done = '1';
	END write_command_rcb;

BEGIN
	dbb       <= dbb_i;
	hdb_busy  <= hdb_busy_i;
	db_finish <= not dbb_i.startcmd and not hdb_busy_i and not dav and b2s(hdb_busy_i'STABLE(1000 ns));

	command : PROCESS
		VARIABLE x, y : INTEGER;
		VARIABLE cmd  : cmd_type;
		VARIABLE pen  : pen_type;

		TYPE clear_trans_t IS ARRAY (pen_type) of rcbcmd_type;

		CONSTANT clear_trans : clear_trans_t := (white => clear_white, black => clear_black, invert => clear_invert);

	BEGIN
		hdb_busy_i <= '1';
		x          := 0;
		y          := 0;
		WAIT UNTIL reset = '1';
		WAIT UNTIL reset = '0';
		WHILE TRUE LOOP
			wait until clk'EVENT and clk = '1' and dav = '1';
			IF dbb_rcbclear = '1' THEN
				x_old := x;
				y_old := y;
				decode_paras(hdb, cmd, x, y, pen);
				hdb_busy_i <= '1';
				IF cmd = clearscreen THEN
					write_command_rcb(x_old, y_old, clear_move, cycle_init, cycle_done);
					write_command_rcb(x, y, clear_trans(pen), cycle_init, cycle_done);
				ELSE
					do_vdp_command(cmd, x, y, pen, cycle_init, cycle_done, rcb);
				END IF;

			ELSE
				decode_paras(hdb, cmd, x, y, pen);
				hdb_busy_i <= '1';
				do_vdp_command(cmd, x, y, pen, cycle_init, cycle_done, rcb);
			END IF;

			hdb_busy_i <= '0';
		END LOOP;
	END PROCESS command;

	rcb_timing : PROCESS
	BEGIN
		WAIT UNTIL clk'EVENT and clk = '1';
		if dbb_i.startcmd = '1' and dbb_delaycmd = '0' THEN
			cycle_done <= '0';
			WAIT FOR 0 ns;
			cycle_done <= '1';
		END IF;
	END PROCESS rcb_timing;

	rcbio : PROCESS
	-- this process implements RCB interface cycles, using 0->1 transitions on
	-- cycle_init (start a new cycle)
	-- and cycle_done (cycle is complete)
	-- to handshake the cycle
	-- all cycle I/O and R/W control, are specified via shared variables
	-- which must be written before cycle_init 0->1, or read after
	-- cycle_done 0->1
	BEGIN
		dbb_i.startcmd <= '0';
		WAIT UNTIL cycle_init'EVENT AND cycle_init = '1';
		-- at this time x_rcb_v, y_rcb_v, pen_rcb_v specify what RCB cycle is
		-- required
		dbb_i.x <= std_logic_vector(to_unsigned(x_rcb_v, dbb.x'LENGTH));
		dbb_i.y <= std_logic_vector(to_unsigned(y_rcb_v, dbb.y'LENGTH));

		IF dbb_rcbclear = '1' THEN
			CASE rcbcmd_v IS
				WHEN off =>
					CASE pen_rcb_v IS
						WHEN white  => dbb_i.rcb_cmd <= "001";
						WHEN black  => dbb_i.rcb_cmd <= "010";
						WHEN invert => dbb_i.rcb_cmd <= "011";
						WHEN OTHERS => ASSERT FALSE REPORT "Wrong pen type in behav rcb output" SEVERITY error;
					END CASE;
				WHEN clear_move   => dbb_i.rcb_cmd <= "000";
				WHEN clear_black  => dbb_i.rcb_cmd <= "110";
				WHEN clear_white  => dbb_i.rcb_cmd <= "101";
				WHEN clear_invert => dbb_i.rcb_cmd <= "111";
			END CASE;

		ELSE
			CASE pen_rcb_v IS
				WHEN white  => dbb_i.rcb_cmd <= "001";
				WHEN black  => dbb_i.rcb_cmd <= "010";
				WHEN invert => dbb_i.rcb_cmd <= "011";
				WHEN OTHERS => ASSERT FALSE REPORT "Wrong pen type in behav rcb output" SEVERITY error;
			END CASE;

		END IF;
		dbb_i.startcmd <= '1';
		wait until cycle_done'EVENT and cycle_done = '1';
		dbb_i.startcmd <= '0';
	END PROCESS;

END behav;      


