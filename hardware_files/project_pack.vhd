USE WORK.config_pack.ALL;
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

PACKAGE project_pack IS

	CONSTANT RAM_WORD_SIZE : INTEGER := 16; -- fixed for this project could be changed by other applications

	TYPE db_2_rcb IS RECORD             -- possible type for interface from DB to RCD. Change as required
		X, Y     : std_logic_vector(VSIZE - 1 DOWNTO 0);
		rcb_cmd  : std_logic_vector(2 DOWNTO 0);
		startcmd : std_logic;
	END RECORD;


	-- Taken from pix_cache_pak.vhd
	TYPE pixop_t IS ARRAY (1 DOWNTO 0) OF std_logic;

	CONSTANT psame   : pixop_t := "00";
	CONSTANT pblack  : pixop_t := "10";
	CONSTANT pwhite  : pixop_t := "01";
	CONSTANT pinvert : pixop_t := "11";

	TYPE store_t IS ARRAY (0 TO 15) OF pixop_t;

	TYPE  state_db IS (s_wait, s_move, s_draw1, s_draw2, s_draw3, s_draw4, s_draw5, s_clear1, s_clear2);

END PACKAGE project_pack;
