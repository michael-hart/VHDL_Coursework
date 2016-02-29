LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.vdp_pack.ALL;

ENTITY vdp IS
	PORT(
		clk      : IN  std_logic;
		reset    : IN  std_logic;       -- not used!
		-- bus from host
		hdb      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dav      : IN  STD_LOGIC;
		hdb_busy : OUT STD_LOGIC;

		-- bus to VRAM
		vdin     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		vdout    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		vaddr    : OUT STD_LOGIC_VECTOR;
		vwrite   : OUT STD_LOGIC;

		-- to testbench
		finish   : OUT std_logic
	);
END vdp;

ARCHITECTURE behav OF vdp IS
	SIGNAL cycle_init, cycle_done : STD_LOGIC;

BEGIN
	command : PROCESS
		VARIABLE x, y : INTEGER;
		VARIABLE cmd  : cmd_type;
		VARIABLE pen  : pen_type;

	BEGIN
		hdb_busy <= '1';
		finish   <= '0';
		x        := 0;
		y        := 0;
		WAIT UNTIL reset = '1';
		WAIT UNTIL reset = '0';
		wait until clk'EVENT and clk = '1' and dav = '1';
		WHILE TRUE loop
			finish   <= '0';
			hdb_busy <= '1';
			decode_paras(hdb, cmd, x, y, pen);
			hdb_busy <= '1';
			do_vdp_command(cmd, x, y, pen, cycle_init, cycle_done, vram);
			WAIT UNTIL clk'EVENT AND clk = '1';
			hdb_busy <= '0';
			finish   <= not (dav);
			wait until clk'EVENT and clk = '1' and dav = '1';
		END LOOP;
	END PROCESS command;

	ramio : PROCESS
	-- this process implements RAM R/W cycles, using 0->1 transitions on
	-- cycle_init (start a new cycle)
	-- and cycle_done (cycle is complete)
	-- to handshake the cycle
	-- all cycle I/O and R/W control, are specified via shared variables
	-- which must be written before cycle_init 0->1, or read after
	-- cycle_done 0->1
	BEGIN
		WAIT UNTIL cycle_init'EVENT AND cycle_init = '1';
		-- at this time vaddr_v, vdin_v, vwrite_v specify what RAM cycle is
		-- required
		vaddr <= std_logic_vector(to_unsigned(vaddr_v, vaddr'LENGTH));
		vdin  <= vdin_v;
		IF vwrite_v THEN
			WAIT FOR taws;
			WAIT FOR 10 ns;
			vwrite <= '1';
			WAIT FOR twp;
			WAIT FOR 10 ns;             -- make a little longer than twp
			vwrite <= '0';
		ELSE
			vwrite <= '0';
			WAIT FOR tracc;
			WAIT FOR 10 ns;             -- make a little longer than tracc
			vdout_v := vdout;
		END IF;
		cycle_done <= '0';
		WAIT FOR 0 ns;
		cycle_done <= '1';
		WAIT FOR 0 ns;
	END PROCESS;

END behav;      


