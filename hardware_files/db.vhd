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
-- Possible size changes if vsize!=6
SIGNAL hdb_reg : STD_LOGIC_VECTOR(15 DOWNTO 0);
-- Consider spliting x and y, pen and op.
SIGNAL xy_new_reg : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL xy_old_reg : STD_LOGIC_VECTOR(11 DOWNTO 0);
-- SIGNAL pen_op_reg : STD_LOGIC_VECTOR(3 DOWNTO 0);

SIGNAL swapxy, negx, negy, xbias : STD_LOGIC;
SIGNAL db_fsm_state, db_fsm_nstate : state_db;
BEGIN

-- Process for clocked events on posedge.
REG : PROCESS BEGIN
	WAIT UNTIL clk'EVENT AND clk = '1';
	hdb_reg <= hdb;
	xy_new_reg <= hdb_reg(13 DOWNTO 2);
	xy_old_reg <= xy_new_reg;
	--pen_op_reg <= (hdb(15 DOWNTO 14), hdb(1 DOWNTO 0));
END PROCESS REG;

-- Octant-cmb block
octant_cmb :PROCESS (xy_new_reg, xy_new_reg) BEGIN

-- Drive swapxy, negx, negy, xbias

END PROCESS octant_cmb;

FSM : PROCESS BEGIN
	WAIT UNTIL clk'EVENT AND clk = '1';
	IF reset = '1' THEN
		db_fsm_state <= swait;
	ELSE
		db_fsm_state <= db_fsm_nstate;
	END IF;
END PROCESS FSM;

N_FSM : PROCESS () BEGIN

END rtl;
