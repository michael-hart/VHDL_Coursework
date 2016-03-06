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
	SIGNAL clrx_reg, clry_reg : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
	SIGNAL split_x, split_y : STD_LOGIC_VECTOR(VSIZE-1 DOWNTO 0);
BEGIN

	-- Use a multiplexer with inputs (X, Y) or (CLRX, CLRY) and select bits 0 if not clear command, 1 if clearcommand
	-- Note that rcb_cmd is the wrong length. TODO check this statement is correct.
	IF dbb_bus.rcb_cmd(1 DOWNTO 0) /= clearscreen_h THEN
		-- Clearscreen command is not active, so output X, Y
		split_x <= ddb_bus.X;
		split_y <= ddb_bus.Y;
	ELSE
		split_x <= clrx_reg;
		split_y <= clry_reg;
	END IF; -- Multiplexer on RCB command
	
	-- split_x, split_y are inputs to SPLIT block
		

END rtl1;
