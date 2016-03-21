USE STD.TEXTIO.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE config_pack IS

	CONSTANT VSIZE : INTEGER := 6;      -- length of pixel coordinates.
	-- for this project will always be 6
	-- could be changed for other applications

	CONSTANT config_clock_period : time := 10 ns; -- period of clock

	CONSTANT config_file_name : string := "../tests/sample_host_commands.txt"; -- name of file of VDP commands run this test

	CONSTANT config_post_cycles : integer := 100; -- this makes testbench wait after last command is passed to
	-- VDP before checking final state of RAM. If VDP takes a long
	-- time processing commands it may need to be extended.
	CONSTANT post_command_delay : time    := config_clock_period * config_post_cycles;

	CONSTANT config_window_width : integer := 64; -- this reduces the number of pixels displayed
	-- on the screen at the end of the testbench
	-- set to 64 for full display of RAM memory


	-- RAM timing spec. Note that by default this is all scaled to
	-- clock period so that changing clock frequency doe snot alter
	-- system timing the constants below specify times in number of
	-- clock cycles.
	CONSTANT config_tracc : real := 1.0;
	CONSTANT config_taws  : real := 0.4;
	CONSTANT config_twp   : real := 0.9;
	CONSTANT config_twds  : real := 0.2;

	-- Constants defining commands from host CPU to Draw Block
	ALIAS slv IS std_logic_vector;

	CONSTANT rcb_cmd_movepen : slv(2 DOWNTO 0) := "000";
	CONSTANT rcb_cmd_draw_white : slv(2 DOWNTO 0) := "001";
	CONSTANT rcb_cmd_draw_black : slv(2 DOWNTO 0) := "010";
	CONSTANT rcb_cmd_draw_invert : slv(2 DOWNTO 0) := "011";
	-- CONSTANT rcb_cmd_NOTUSED : slv(2 DOWNTO 0) := "100";
	CONSTANT rcb_cmd_clear_white : slv(2 DOWNTO 0) := "101";
	CONSTANT rcb_cmd_clear_black : slv(2 DOWNTO 0) := "110";
	CONSTANT rcb_cmd_clear_invert : slv(2 DOWNTO 0) := "101";

END;
