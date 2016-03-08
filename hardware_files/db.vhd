LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;

ENTITY db IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- host processor connections
		hdb          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dav          : IN  STD_LOGIC;
		hdb_busy     : OUT STD_LOGIC;

		-- rcb connections
		dbb_bus      : OUT db_2_rcb;
		dbb_delaycmd : IN  STD_LOGIC;

		-- vdp connection
		db_finish    : OUT STD_LOGIC
	);
END db;

ARCHITECTURE rtl OF db IS
-- All registers from diagram.
SIGNAL hdb_reg : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL xy_new_reg : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL xy_old_reg : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL pen_op_reg : STD_LOGIC_VECTOR(3 DOWNTO 0);

-- Multiplexer signals, controlled by DB_FSM
SIGNAL mux_in, mux_out : std_logic;

-- Connections of draw_any_octant
-- From OCTANT_CMB
SIGNAL swapxy, negx, negy, xbias : STD_LOGIC;
-- I/O
SIGNAL x_in, y_in, x_out, y_out : std_logic_vector(5 DOWNTO 0);
-- To/from DB_FSM
SIGNAL draw, resetx, done, disable : std_logic;

-- For DB_FSM
SIGNAL db_fsm_state, db_fsm_nstate : state_db;

BEGIN

	-- Process for clocked registers.
	REG : PROCESS BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1';
		hdb_reg <= hdb;
		xy_new_reg <= hdb_reg(13 DOWNTO 2);
		xy_old_reg <= xy_new_reg;
		pen_op_reg <= (hdb(15 DOWNTO 14), hdb(1 DOWNTO 0));
	END PROCESS REG;

	-- Octant-cmb block
	OCTANT_CMB :PROCESS (xy_new_reg, xy_old_reg) BEGIN
		-- Create variables.
		VARIABLE dx, dy : std_logic_vector(6 DOWNTO 0);
		VARIABLE x_more, y_more, x_y_comp : std_logic;
		VARIABLE oct_together : std_logic_vector(2 DOWNTO 1);

		-- Assign values.
		dx := signed(unsigned(xy_new_reg(11 DOWNTO 6))-unsigned(xy_old_reg(11 DOWNTO 6)));
		dy := signed(unsigned(xy_new_reg(5 DOWNTO 0))-unsigned(xy_old_reg(5 DOWNTO 0)));

		IF dx >= 0 THEN
			x_more := '1';
		ELSE
			x_more := '0';
		END IF;

		IF dy >= 0 THEN
			y_more := '1';
		ELSE
			y_more := '0';
		END IF;

		IF abs(dy) >= abs(dx) THEN
			x_y_comp := '1';
		ELSE
			x_y_comp := '0';
		END IF;

		-- Concatenate for case statement.
		oct_together := (x_more, y_more, x_y_comp);

		CASE oct_together IS
			WHEN "110" | "111"	=> 	negx <= '0';
															negy <= '0';
			WHEN "000" | "001"	=> 	negx <= '1';
															negy <= '1':
			WHEN "011" : "100"	=> 	negx <= '0';
															negy <= '1';
			WHEN "010" | "101"	=> 	negx <= '1';
															negy <= '0';
			WHEN OTHERS 				=> 	NULL;
		END CASE;

		-- No need to include in case. Makes easier to read.
		swapxy <= x_y_comp;
		xbias <= '1';
	END PROCESS OCTANT_CMB;

	-- Multiplexer at draw_any_octant input.
	IN_MUX : PROCESS (mux_in, xy_new_reg, xy_old_reg) BEGIN

	IF mux_in = '1' THEN
		x_in <= xy_new_reg(11 DOWNTO 6);
		y_in <= xy_new_reg(5 DOWNTO 0);
	ELSE
		x_in <= xy_old_reg(11 DOWNTO 6);
		y_in <= xy_old_reg(5 DOWNTO 0);
	END IF;

	END PROCESS IN_MUX;

	-- Multiplexer at draw_any_octant output.
	OUT_MUX : PROCESS (mux_out, x_in, y_in, x_out, y_out) BEGIN

	IF mux_out = '1' THEN
		dbb_bus.X <= x_in;
		dbb_bus.Y <= y_in;
	ELSE
		dbb_bus.X <= x_out;
		dbb_bus.Y <= y_out
	END IF;

	END PROCESS OUT_MUX;

	FSM : PROCESS BEGIN

	END PROCESS FSM;

	N_FSM : PROCESS () BEGIN

END rtl;
