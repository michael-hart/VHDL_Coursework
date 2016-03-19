-- top-level Vector Display Processor
-- this file is fully synthesisable
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE work.project_pack.ALL;
USE work.config_pack.ALL;

USE work.ALL;

ENTITY vdp IS
	PORT(
		clk      : IN  std_logic;
		reset    : IN  std_logic;
		-- bus from host
		hdb      : IN  STD_LOGIC_VECTOR(VSIZE * 2 + 3 DOWNTO 0);
		dav      : IN  STD_LOGIC;
		hdb_busy : OUT STD_LOGIC;

		-- bus to VRAM
		vdin     : OUT STD_LOGIC_VECTOR(RAM_WORD_SIZE - 1 DOWNTO 0);
		vdout    : IN  STD_LOGIC_VECTOR(RAM_WORD_SIZE - 1 DOWNTO 0);
		vaddr    : OUT STD_LOGIC_VECTOR(VSIZE+1 DOWNTO 0); -- open port, exact size depends on VSIZE. TODO make open again
		vwrite   : OUT STD_LOGIC;

		-- to testbench
		finish   : OUT std_logic
	);
END vdp;

ARCHITECTURE rtl OF vdp IS
	SIGNAL db_finish, rcb_finish : std_logic;
	SIGNAL dbb_delaycmd : std_logic; -- RCB to DB
	SIGNAL dbb_bus : db_2_rcb; -- DB to RCB
BEGIN

	-- Instantiate draw block entity
	DB1 : ENTITY db GENERIC MAP (vsize => VSIZE) PORT MAP ( 
		clk => clk, 
		reset => reset,
		hdb => hdb,
		dav => dav,
		hdb_busy => hdb_busy,
		dbb_bus => dbb_bus, 
		dbb_delaycmd => dbb_delaycmd,
		db_finish => db_finish
	);

		
	-- Instantiate RAM control block entity
	RCB1 : ENTITY rcb GENERIC MAP (vsize => VSIZE) PORT MAP (
		clk => clk,
		reset => reset,
		dbb_bus => dbb_bus,
		dbb_delaycmd => dbb_delaycmd,
		db_finish => db_finish,
		vdout => vdout,
		vdin => vdin,
		vwrite => vwrite,
		vaddr => vaddr,
		rcb_finish => rcb_finish
	);

	-- finish signal is output of AND gate, with inputs db_finish and rcb_finish
	finish <= db_finish AND rcb_finish;

END rtl;


