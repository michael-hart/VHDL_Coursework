USE WORK.config_pack.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE project_pack IS


	-- Type definitions
	TYPE db_2_rcb IS RECORD             -- possible type for interface from DB to RCD. Change as required
		X, Y     : std_logic_vector(VSIZE - 1 DOWNTO 0);
		rcb_cmd  : std_logic_vector(2 DOWNTO 0);
		startcmd : std_logic;
	END RECORD;

	TYPE  state_db IS (s_wait, s_move, s_draw1, s_draw2, s_draw3, s_draw4, s_draw5, s_clear1, s_clear2);

	-- Taken from pix_cache_pak.vhd
	TYPE pixop_t IS ARRAY (1 DOWNTO 0) OF std_logic;
	TYPE store_t IS ARRAY (0 TO 15) OF pixop_t;


	-- Module constants
	CONSTANT psame   : pixop_t := "00";
	CONSTANT pblack  : pixop_t := "10";
	CONSTANT pwhite  : pixop_t := "01";
	CONSTANT pinvert : pixop_t := "11";

	-- Used for RCB commands
	CONSTANT rcb_cmd_movepen : slv(2 DOWNTO 0) := "000";
	CONSTANT rcb_cmd_draw_white : slv(2 DOWNTO 0) := "001";
	CONSTANT rcb_cmd_draw_black : slv(2 DOWNTO 0) := "010";
	CONSTANT rcb_cmd_draw_invert : slv(2 DOWNTO 0) := "011";
	-- CONSTANT rcb_cmd_NOTUSED : slv(2 DOWNTO 0) := "100";
	CONSTANT rcb_cmd_clear_white : slv(2 DOWNTO 0) := "101";
	CONSTANT rcb_cmd_clear_black : slv(2 DOWNTO 0) := "110";
	CONSTANT rcb_cmd_clear_invert : slv(2 DOWNTO 0) := "101";
	
	CONSTANT RAM_WORD_SIZE : INTEGER := 16; -- fixed for this project could be changed by other applications


	-- Function definitions

	-- Minimum of two integers; should be defined in numeric_std, but not working
	FUNCTION MIN(LEFT, RIGHT : INTEGER) RETURN INTEGER;

	-- Maximum of two integers; should be defined in numeric_std, but not working
	FUNCTION MAX(LEFT, RIGHT : INTEGER) RETURN INTEGER;	

	-- Minimum of two input std_logic_vectors, interpreted as unsigned
	FUNCTION MIN_SLV(LEFT, RIGHT: slv) RETURN slv;

	-- Maximum of two input std_logic_vectors, interpreted as unsigned
	FUNCTION MAX_SLV(LEFT, RIGHT: slv) RETURN slv;

END PACKAGE project_pack;


PACKAGE BODY project_pack IS

	FUNCTION MIN(LEFT, RIGHT : INTEGER) RETURN INTEGER IS
	BEGIN
		IF LEFT < RIGHT THEN
			RETURN LEFT;
		ELSE
			RETURN RIGHT;
		END IF;
	END MIN;

	-- Maximum of two integers; should be defined in numeric_std, but not working
	FUNCTION MAX(LEFT, RIGHT : INTEGER) RETURN INTEGER IS
	BEGIN
		IF LEFT > RIGHT THEN
			RETURN LEFT;
		ELSE
			RETURN RIGHT;
		END IF;
	END MAX;

	FUNCTION MIN_SLV(LEFT, RIGHT: slv) RETURN slv IS
		CONSTANT output_length : INTEGER := MAX(LEFT'LENGTH, RIGHT'LENGTH);
		VARIABLE output_value : INTEGER;
	BEGIN
		output_value := MIN(to_integer(unsigned(LEFT)), to_integer(unsigned(RIGHT)));
		RETURN slv(to_unsigned(output_value, output_length));
	END MIN_SLV;

	FUNCTION MAX_SLV(LEFT, RIGHT: slv) RETURN slv IS
		CONSTANT output_length : INTEGER := MAX(LEFT'LENGTH, RIGHT'LENGTH);
		VARIABLE output_value : INTEGER;
	BEGIN
		output_value := MAX(to_integer(unsigned(LEFT)), to_integer(unsigned(RIGHT)));
		RETURN slv(to_unsigned(output_value, output_length));
	END MAX_SLV;

END PACKAGE BODY project_pack;
