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
		vaddr    : OUT STD_LOGIC_VECTOR; -- open port, exact size depends on VSIZE
		vwrite   : OUT STD_LOGIC;

		-- to testbench
		finish   : OUT std_logic
	);
END vdp;

ARCHITECTURE rtl OF vdp IS
BEGIN

--
-- for you to write
--

END rtl;      


