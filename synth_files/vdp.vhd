--
-- Written by Synplicity
-- Product Version "I-2013.09-SP1 "
-- Program "Synplify Premier", Mapper "maprc, Build 1911R"
-- Sun Mar 20 21:12:00 2016
--

--
-- Written by Synplify Premier version Build 1911R
-- Sun Mar 20 21:12:00 2016
--

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use WORK.cycloneii_components.all;

entity swap_0 is
port(
  x1_1 :  in std_logic;
  x1_0 :  in std_logic;
  x1_2 :  in std_logic;
  x1_3 :  in std_logic;
  yout_1 :  out std_logic;
  yout_0 :  out std_logic;
  yout_5 :  out std_logic;
  yout_2 :  out std_logic;
  yout_3 :  out std_logic;
  yout_4 :  out std_logic;
  y1_1 :  in std_logic;
  y1_0 :  in std_logic;
  b_1 :  in std_logic;
  b_0 :  in std_logic;
  b_5 :  in std_logic;
  b_2 :  in std_logic;
  b_3 :  in std_logic;
  b_4 :  in std_logic;
  xout_1 :  out std_logic;
  xout_0 :  out std_logic;
  xout_5 :  out std_logic;
  xout_2 :  out std_logic;
  xout_3 :  out std_logic;
  xout_4 :  out std_logic;
  negx :  in std_logic;
  swapxy :  in std_logic;
  negy :  in std_logic);
end swap_0;

architecture beh of swap_0 is
  signal devclrn : std_logic := '1';
  signal devpor : std_logic := '1';
  signal devoe : std_logic := '0';
  signal GND : std_logic ;
  signal VCC : std_logic ;
begin
\YOUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_1,
dataa => negx,
datab => x1_1,
datac => swapxy,
datad => b_1);
\XOUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_1,
dataa => negx,
datab => x1_1,
datac => swapxy,
datad => b_1);
\YOUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_0,
dataa => negx,
datab => x1_0,
datac => swapxy,
datad => b_0);
\YOUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => yout_5,
dataa => negy,
datab => y1_1,
datac => swapxy,
datad => b_5);
\XOUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_0,
dataa => negx,
datab => x1_0,
datac => swapxy,
datad => b_0);
\XOUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => xout_5,
dataa => negy,
datab => y1_1,
datac => swapxy,
datad => b_5);
\YOUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_2,
dataa => negx,
datab => x1_2,
datac => swapxy,
datad => b_2);
\YOUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_3,
dataa => negx,
datab => x1_3,
datac => swapxy,
datad => b_3);
\YOUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => yout_4,
dataa => negy,
datab => y1_0,
datac => swapxy,
datad => b_4);
\XOUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_2,
dataa => negx,
datab => x1_2,
datac => swapxy,
datad => b_2);
\XOUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_3,
dataa => negx,
datab => x1_3,
datac => swapxy,
datad => b_3);
\XOUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => xout_4,
dataa => negy,
datab => y1_0,
datac => swapxy,
datad => b_4);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use WORK.cycloneii_components.all;

entity inv_signal_2 is
port(
b_1 :  out std_logic;
b_0 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
y1_1 :  in std_logic;
y1_0 :  in std_logic;
y1_2 :  in std_logic;
y1_3 :  in std_logic;
negy :  in std_logic);
end inv_signal_2;

architecture beh of inv_signal_2 is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
\B_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_1,
dataa => y1_1,
datab => negy);
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_0,
dataa => y1_0,
datab => negy);
\B_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_2,
dataa => y1_2,
datab => negy);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_3,
dataa => y1_3,
datab => negy);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use WORK.cycloneii_components.all;

entity inv_signal_1 is
port(
b_1 :  out std_logic;
b_0 :  out std_logic;
x1_1 :  in std_logic;
x1_0 :  in std_logic;
negx :  in std_logic);
end inv_signal_1;

architecture beh of inv_signal_1 is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
\B_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_1,
dataa => x1_1,
datab => negx);
\B_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_0,
dataa => x1_0,
datab => negx);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity draw_octant is
port(
y1_5 :  out std_logic;
y1_4 :  out std_logic;
y1_3 :  out std_logic;
y1_2 :  out std_logic;
y1_1 :  out std_logic;
y1_0 :  out std_logic;
b_5 :  in std_logic;
b_4 :  in std_logic;
b_3 :  in std_logic;
b_2 :  in std_logic;
b_1 :  in std_logic;
b_0 :  in std_logic;
b_0_5 :  in std_logic;
b_0_4 :  in std_logic;
b_0_3 :  in std_logic;
b_0_2 :  in std_logic;
b_0_1 :  in std_logic;
b_0_0 :  in std_logic;
x1_5 :  out std_logic;
x1_0 :  out std_logic;
x1_1 :  out std_logic;
x1_2 :  out std_logic;
x1_3 :  out std_logic;
x1_4 :  out std_logic;
db_fsm_state_2 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_0 :  in std_logic;
clk_c :  in std_logic;
un7_state :  in std_logic;
un3_x1 :  out std_logic;
disable_i_a2 :  in std_logic;
is_same :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic;
xbias1 :  in std_logic;
swapxy1 :  in std_logic);
end draw_octant;

architecture beh of draw_octant is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal ERROR : std_logic_vector(5 downto 0);
signal YINCR : std_logic_vector(5 downto 0);
signal XINCR : std_logic_vector(5 downto 0);
signal YNEW : std_logic_vector(5 downto 0);
signal XNEW : std_logic_vector(5 downto 0);
signal INF_ABS1 : std_logic_vector(6 downto 1);
signal INF_ABS0 : std_logic_vector(6 downto 1);
signal UN4_0_A2 : std_logic_vector(5 downto 0);
signal UN1_ERROR_2_V : std_logic_vector(5 downto 0);
signal UN1_ERROR_2_V_0 : std_logic_vector(5 downto 0);
signal UN4_0_A2_1 : std_logic_vector(5 to 5);
signal UN4_0_A2_0_A1_2 : std_logic_vector(5 to 5);
signal UN4_0_A2_0_A1_1 : std_logic_vector(5 to 5);
signal UN4_0_A2_0_A0_2_2 : std_logic_vector(5 to 5);
signal UN4_0_A2_0_A0 : std_logic_vector(5 to 5);
signal Y1_E5_0_M5 : std_logic ;
signal Y1_E4_0_G3 : std_logic ;
signal Y1_E4_0_G4 : std_logic ;
signal Y1_E0_0_G0_I_O4 : std_logic ;
signal Y1_E3_0_M5 : std_logic ;
signal Y1_E2_0_M5 : std_logic ;
signal Y1_E1_0_M5 : std_logic ;
signal Y1_E0_0_G0_I_X4 : std_logic ;
signal X1_E5_0_G8 : std_logic ;
signal X1_E5_0_G1 : std_logic ;
signal X1_E0_0_G0X : std_logic ;
signal X1_E0_0_G0_E_I : std_logic ;
signal UN1_ERROR_2_ADD5 : std_logic ;
signal UN1_ERROR_2_ADD4 : std_logic ;
signal UN1_ERROR_2_ADD3 : std_logic ;
signal UN1_ERROR_2_ADD2 : std_logic ;
signal UN1_ERROR_2_ADD1 : std_logic ;
signal UN1_ERROR_2_ADD0 : std_logic ;
signal YINCR_2_ADD5 : std_logic ;
signal \XINCR_2_0_0__G0_E\ : std_logic ;
signal YINCR_2_ADD4 : std_logic ;
signal YINCR_2_ADD3 : std_logic ;
signal YINCR_2_ADD2 : std_logic ;
signal YINCR_2_ADD1 : std_logic ;
signal YINCR_2_ADD0 : std_logic ;
signal XINCR_3_ADD5 : std_logic ;
signal XINCR_3_ADD4 : std_logic ;
signal XINCR_3_ADD3 : std_logic ;
signal XINCR_3_ADD2 : std_logic ;
signal XINCR_3_ADD1 : std_logic ;
signal XINCR_3_ADD0 : std_logic ;
signal X1_E1_0_G4 : std_logic ;
signal X1_E1_0_G1 : std_logic ;
signal X1_E2_0_G4 : std_logic ;
signal X1_E2_0_G1 : std_logic ;
signal X1_E3_0_G4 : std_logic ;
signal X1_E3_0_G1 : std_logic ;
signal X1_E4_0_G4 : std_logic ;
signal X1_E4_0_G1 : std_logic ;
signal UN15_DISABLE_1 : std_logic ;
signal LT_0 : std_logic ;
signal UN9_ERR1_ADD0 : std_logic ;
signal RESULT_1_ADD0 : std_logic ;
signal UN15_DISABLE_2 : std_logic ;
signal LT_1 : std_logic ;
signal UN15_DISABLE_3 : std_logic ;
signal LT_2 : std_logic ;
signal UN15_DISABLE_4 : std_logic ;
signal LT_3 : std_logic ;
signal UN15_DISABLE_5 : std_logic ;
signal LT_4 : std_logic ;
signal UN15_DISABLE_6 : std_logic ;
signal LT_5 : std_logic ;
signal UN15_DISABLE_7 : std_logic ;
signal UN15_DISABLE_7_COUT : std_logic ;
signal UN1_ERROR_2_0_ADD0 : std_logic ;
signal UN1_ERROR_2_0_CARRY_0 : std_logic ;
signal Y1_2_SQMUXA : std_logic ;
signal UN1_ERROR_2_0_ADD0_START_COUT : std_logic ;
signal UN1_ERROR_2_0_ADD1 : std_logic ;
signal UN1_ERROR_2_0_CARRY_1 : std_logic ;
signal UN1_ERROR_2_0_ADD2 : std_logic ;
signal UN1_ERROR_2_0_CARRY_2 : std_logic ;
signal UN1_ERROR_2_0_ADD3 : std_logic ;
signal UN1_ERROR_2_0_CARRY_3 : std_logic ;
signal UN1_ERROR_2_0_ADD4 : std_logic ;
signal UN1_ERROR_2_0_CARRY_4 : std_logic ;
signal UN1_ERROR_2_0_ADD5 : std_logic ;
signal UN1_ERROR_2_CARRY_0 : std_logic ;
signal UN1_ERROR_2_CARRY_1 : std_logic ;
signal UN1_ERROR_2_CARRY_2 : std_logic ;
signal UN1_ERROR_2_CARRY_3 : std_logic ;
signal UN1_ERROR_2_CARRY_4 : std_logic ;
signal RESULT_1_CARRY_0 : std_logic ;
signal UN2_ERR2_ADD0 : std_logic ;
signal RESULT_1_ADD1 : std_logic ;
signal RESULT_1_CARRY_1 : std_logic ;
signal UN2_ERR2_ADD1 : std_logic ;
signal RESULT_1_ADD2 : std_logic ;
signal RESULT_1_CARRY_2 : std_logic ;
signal UN2_ERR2_ADD2 : std_logic ;
signal RESULT_1_ADD3 : std_logic ;
signal RESULT_1_CARRY_3 : std_logic ;
signal UN2_ERR2_ADD3 : std_logic ;
signal RESULT_1_ADD4 : std_logic ;
signal RESULT_1_CARRY_4 : std_logic ;
signal UN2_ERR2_ADD4 : std_logic ;
signal RESULT_1_ADD5 : std_logic ;
signal RESULT_1_CARRY_5 : std_logic ;
signal UN2_ERR2_ADD5 : std_logic ;
signal RESULT_1_ADD6 : std_logic ;
signal GND : std_logic ;
signal YINCR_2_CARRY_0 : std_logic ;
signal YINCR_2_ADD0_START_COUT : std_logic ;
signal YINCR_2_CARRY_1 : std_logic ;
signal YINCR_2_CARRY_2 : std_logic ;
signal YINCR_2_CARRY_3 : std_logic ;
signal YINCR_2_CARRY_4 : std_logic ;
signal UN9_ERR1_CARRY_0 : std_logic ;
signal UN9_ERR1_ADD1 : std_logic ;
signal UN9_ERR1_CARRY_1 : std_logic ;
signal UN9_ERR1_ADD2 : std_logic ;
signal UN9_ERR1_CARRY_2 : std_logic ;
signal UN9_ERR1_ADD3 : std_logic ;
signal UN9_ERR1_CARRY_3 : std_logic ;
signal UN9_ERR1_ADD4 : std_logic ;
signal UN9_ERR1_CARRY_4 : std_logic ;
signal UN9_ERR1_ADD5 : std_logic ;
signal UN9_ERR1_CARRY_5 : std_logic ;
signal UN9_ERR1_ADD6 : std_logic ;
signal UN2_ERR2_CARRY_0 : std_logic ;
signal UN2_ERR2_ADD0_START_COUT : std_logic ;
signal UN2_ERR2_CARRY_1 : std_logic ;
signal UN2_ERR2_CARRY_2 : std_logic ;
signal UN2_ERR2_CARRY_3 : std_logic ;
signal UN2_ERR2_CARRY_4 : std_logic ;
signal XINCR_3_CARRY_0 : std_logic ;
signal XINCR_3_ADD0_START_COUT : std_logic ;
signal XINCR_3_CARRY_1 : std_logic ;
signal XINCR_3_CARRY_2 : std_logic ;
signal XINCR_3_CARRY_3 : std_logic ;
signal XINCR_3_CARRY_4 : std_logic ;
signal UN2_X1_0 : std_logic ;
signal INF_ABS0_A_0_ANC2 : std_logic ;
signal INF_ABS1_A_1_ANC2 : std_logic ;
signal X1_C2 : std_logic ;
signal Y1_C2 : std_logic ;
signal UN3_X1_1 : std_logic ;
signal UN3_X1_2 : std_logic ;
signal UN3_X1_4 : std_logic ;
signal UN3_X1_8 : std_logic ;
signal INF_ABS0_A_0_ANC4 : std_logic ;
signal INF_ABS1_A_1_ANC4 : std_logic ;
signal X1_E5_0_G6 : std_logic ;
signal Y1_E5_0_G4 : std_logic ;
signal UN3_X1_10 : std_logic ;
signal Y1_E5_0_M2 : std_logic ;
signal UN12_DISABLE : std_logic ;
signal UN12_DISABLE_5 : std_logic ;
signal UN1_DISABLE_1 : std_logic ;
signal UN3_X1_12 : std_logic ;
signal Y1_E1_0_M3 : std_logic ;
signal UN7_DISABLE : std_logic ;
signal Y1_E3_0_M3 : std_logic ;
signal Y1_E2_0_M5_A : std_logic ;
signal UN15_DISABLE : std_logic ;
signal G0_3_0 : std_logic ;
signal G0_3_1 : std_logic ;
signal G3_4 : std_logic ;
signal G3_0 : std_logic ;
signal G3_5 : std_logic ;
signal G0_2 : std_logic ;
signal VCC : std_logic ;
signal Y1_0_0 : std_logic ;
signal Y1_1_0 : std_logic ;
signal Y1_2_0 : std_logic ;
signal Y1_3_0 : std_logic ;
signal Y1_4_0 : std_logic ;
signal Y1_5_0 : std_logic ;
signal X1_6 : std_logic ;
signal X1_7 : std_logic ;
signal X1_8 : std_logic ;
signal X1_9 : std_logic ;
signal X1_10 : std_logic ;
signal X1_11 : std_logic ;
signal DB_FSM_STATE_2_I : std_logic ;
begin
\R1_Y1_5_\: cycloneii_lcell_ff port map (
regout => Y1_0_0,
datain => Y1_E5_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_4_\: cycloneii_lcell_ff port map (
regout => Y1_1_0,
datain => Y1_E4_0_G3,
clk => clk_c,
sload => DB_FSM_STATE_2_I,
sdata => Y1_E4_0_G4,
ena => Y1_E0_0_G0_I_O4,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_3_\: cycloneii_lcell_ff port map (
regout => Y1_2_0,
datain => Y1_E3_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_2_\: cycloneii_lcell_ff port map (
regout => Y1_3_0,
datain => Y1_E2_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_1_\: cycloneii_lcell_ff port map (
regout => Y1_4_0,
datain => Y1_E1_0_M5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_Y1_0_\: cycloneii_lcell_ff port map (
regout => Y1_5_0,
datain => Y1_E0_0_G0_I_X4,
clk => clk_c,
ena => Y1_E0_0_G0_I_O4,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_5_\: cycloneii_lcell_ff port map (
regout => X1_6,
datain => X1_E5_0_G8,
clk => clk_c,
sload => DB_FSM_STATE_2_I,
sdata => X1_E5_0_G1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_X1_0_\: cycloneii_lcell_ff port map (
regout => X1_7,
datain => X1_E0_0_G0X,
clk => clk_c,
ena => X1_E0_0_G0_E_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_ERROR_5_\: cycloneii_lcell_ff port map (
regout => ERROR(5),
datain => UN1_ERROR_2_ADD5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_4_\: cycloneii_lcell_ff port map (
regout => ERROR(4),
datain => UN1_ERROR_2_ADD4,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_3_\: cycloneii_lcell_ff port map (
regout => ERROR(3),
datain => UN1_ERROR_2_ADD3,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_2_\: cycloneii_lcell_ff port map (
regout => ERROR(2),
datain => UN1_ERROR_2_ADD2,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_1_\: cycloneii_lcell_ff port map (
regout => ERROR(1),
datain => UN1_ERROR_2_ADD1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_0_\: cycloneii_lcell_ff port map (
regout => ERROR(0),
datain => UN1_ERROR_2_ADD0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_5_\: cycloneii_lcell_ff port map (
regout => YINCR(5),
datain => YINCR_2_ADD5,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_4_\: cycloneii_lcell_ff port map (
regout => YINCR(4),
datain => YINCR_2_ADD4,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_3_\: cycloneii_lcell_ff port map (
regout => YINCR(3),
datain => YINCR_2_ADD3,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_2_\: cycloneii_lcell_ff port map (
regout => YINCR(2),
datain => YINCR_2_ADD2,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_1_\: cycloneii_lcell_ff port map (
regout => YINCR(1),
datain => YINCR_2_ADD1,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YINCR_0_\: cycloneii_lcell_ff port map (
regout => YINCR(0),
datain => YINCR_2_ADD0,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_5_\: cycloneii_lcell_ff port map (
regout => XINCR(5),
datain => XINCR_3_ADD5,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_4_\: cycloneii_lcell_ff port map (
regout => XINCR(4),
datain => XINCR_3_ADD4,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_3_\: cycloneii_lcell_ff port map (
regout => XINCR(3),
datain => XINCR_3_ADD3,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_2_\: cycloneii_lcell_ff port map (
regout => XINCR(2),
datain => XINCR_3_ADD2,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_1_\: cycloneii_lcell_ff port map (
regout => XINCR(1),
datain => XINCR_3_ADD1,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_XINCR_0_\: cycloneii_lcell_ff port map (
regout => XINCR(0),
datain => XINCR_3_ADD0,
clk => clk_c,
sclr => db_fsm_state_2,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_5_\: cycloneii_lcell_ff port map (
regout => YNEW(5),
datain => b_5,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_4_\: cycloneii_lcell_ff port map (
regout => YNEW(4),
datain => b_4,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_3_\: cycloneii_lcell_ff port map (
regout => YNEW(3),
datain => b_3,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_2_\: cycloneii_lcell_ff port map (
regout => YNEW(2),
datain => b_2,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_1_\: cycloneii_lcell_ff port map (
regout => YNEW(1),
datain => b_1,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_0_\: cycloneii_lcell_ff port map (
regout => YNEW(0),
datain => b_0,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_5_\: cycloneii_lcell_ff port map (
regout => XNEW(5),
datain => b_0_5,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_4_\: cycloneii_lcell_ff port map (
regout => XNEW(4),
datain => b_0_4,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_3_\: cycloneii_lcell_ff port map (
regout => XNEW(3),
datain => b_0_3,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_2_\: cycloneii_lcell_ff port map (
regout => XNEW(2),
datain => b_0_2,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_1_\: cycloneii_lcell_ff port map (
regout => XNEW(1),
datain => b_0_1,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_0_\: cycloneii_lcell_ff port map (
regout => XNEW(0),
datain => b_0_0,
clk => clk_c,
ena => \XINCR_2_0_0__G0_E\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_1_\: cycloneii_lcell_ff port map (
regout => X1_8,
datain => X1_E1_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E1_0_G1,
ena => X1_E0_0_G0_E_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_2_\: cycloneii_lcell_ff port map (
regout => X1_9,
datain => X1_E2_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E2_0_G1,
ena => X1_E0_0_G0_E_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_3_\: cycloneii_lcell_ff port map (
regout => X1_10,
datain => X1_E3_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E3_0_G1,
ena => X1_E0_0_G0_E_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_4_\: cycloneii_lcell_ff port map (
regout => X1_11,
datain => X1_E4_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E4_0_G1,
ena => X1_E0_0_G0_E_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
R1_UN15_DISABLE_R1_UN15_DISABLE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN15_DISABLE_1,
cout => LT_0,
dataa => UN9_ERR1_ADD0,
datab => RESULT_1_ADD0);
R1_UN15_DISABLE_R1_UN15_DISABLE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_2,
cout => LT_1,
dataa => INF_ABS1(1),
datab => INF_ABS0(1),
cin => LT_0);
R1_UN15_DISABLE_R1_UN15_DISABLE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_3,
cout => LT_2,
dataa => INF_ABS1(2),
datab => INF_ABS0(2),
cin => LT_1);
R1_UN15_DISABLE_R1_UN15_DISABLE_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_4,
cout => LT_3,
dataa => INF_ABS1(3),
datab => INF_ABS0(3),
cin => LT_2);
R1_UN15_DISABLE_R1_UN15_DISABLE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_5,
cout => LT_4,
dataa => INF_ABS1(4),
datab => INF_ABS0(4),
cin => LT_3);
R1_UN15_DISABLE_R1_UN15_DISABLE_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_6,
cout => LT_5,
dataa => INF_ABS1(5),
datab => INF_ABS0(5),
cin => LT_4);
R1_UN15_DISABLE_R1_UN15_DISABLE_7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100111010100")
port map (
combout => UN15_DISABLE_7,
cout => UN15_DISABLE_7_COUT,
dataa => INF_ABS1(6),
datab => INF_ABS0(6),
cin => LT_5);
UN1_ERROR_2_0_ADD0_Z334: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD0,
cout => UN1_ERROR_2_0_CARRY_0,
dataa => Y1_2_SQMUXA,
datab => UN4_0_A2(5),
cin => UN1_ERROR_2_0_ADD0_START_COUT);
UN1_ERROR_2_0_ADD1_Z335: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD1,
cout => UN1_ERROR_2_0_CARRY_1,
dataa => UN4_0_A2(4),
datab => UN1_ERROR_2_V(1),
cin => UN1_ERROR_2_0_CARRY_0);
UN1_ERROR_2_0_ADD2_Z336: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD2,
cout => UN1_ERROR_2_0_CARRY_2,
dataa => UN4_0_A2(3),
datab => UN1_ERROR_2_V(2),
cin => UN1_ERROR_2_0_CARRY_1);
UN1_ERROR_2_0_ADD3_Z337: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD3,
cout => UN1_ERROR_2_0_CARRY_3,
dataa => UN4_0_A2(2),
datab => UN1_ERROR_2_V(3),
cin => UN1_ERROR_2_0_CARRY_2);
UN1_ERROR_2_0_ADD4_Z338: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD4,
cout => UN1_ERROR_2_0_CARRY_4,
dataa => UN4_0_A2(1),
datab => UN1_ERROR_2_V(4),
cin => UN1_ERROR_2_0_CARRY_3);
UN1_ERROR_2_0_ADD5_Z339: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_0_ADD5,
dataa => UN4_0_A2(0),
datab => UN1_ERROR_2_V(5),
cin => UN1_ERROR_2_0_CARRY_4);
UN1_ERROR_2_ADD0_Z340: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN1_ERROR_2_ADD0,
cout => UN1_ERROR_2_CARRY_0,
dataa => UN1_ERROR_2_0_ADD0,
datab => UN1_ERROR_2_V_0(0));
UN1_ERROR_2_ADD1_Z341: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD1,
cout => UN1_ERROR_2_CARRY_1,
dataa => UN1_ERROR_2_0_ADD1,
datab => UN1_ERROR_2_V_0(1),
cin => UN1_ERROR_2_CARRY_0);
UN1_ERROR_2_ADD2_Z342: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD2,
cout => UN1_ERROR_2_CARRY_2,
dataa => UN1_ERROR_2_0_ADD2,
datab => UN1_ERROR_2_V_0(2),
cin => UN1_ERROR_2_CARRY_1);
UN1_ERROR_2_ADD3_Z343: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD3,
cout => UN1_ERROR_2_CARRY_3,
dataa => UN1_ERROR_2_0_ADD3,
datab => UN1_ERROR_2_V_0(3),
cin => UN1_ERROR_2_CARRY_2);
UN1_ERROR_2_ADD4_Z344: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD4,
cout => UN1_ERROR_2_CARRY_4,
dataa => UN1_ERROR_2_0_ADD4,
datab => UN1_ERROR_2_V_0(4),
cin => UN1_ERROR_2_CARRY_3);
UN1_ERROR_2_ADD5_Z345: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_ADD5,
dataa => UN1_ERROR_2_0_ADD5,
datab => UN1_ERROR_2_V_0(5),
cin => UN1_ERROR_2_CARRY_4);
RESULT_1_ADD0_Z346: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100100100010")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => UN2_ERR2_ADD0,
datab => ERROR(0));
RESULT_1_ADD1_Z347: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => UN2_ERR2_ADD1,
datab => ERROR(1),
cin => RESULT_1_CARRY_0);
RESULT_1_ADD2_Z348: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => UN2_ERR2_ADD2,
datab => ERROR(2),
cin => RESULT_1_CARRY_1);
RESULT_1_ADD3_Z349: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => UN2_ERR2_ADD3,
datab => ERROR(3),
cin => RESULT_1_CARRY_2);
RESULT_1_ADD4_Z350: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => UN2_ERR2_ADD4,
datab => ERROR(4),
cin => RESULT_1_CARRY_3);
RESULT_1_ADD5_Z351: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_CARRY_5,
dataa => UN2_ERR2_ADD5,
datab => ERROR(5),
cin => RESULT_1_CARRY_4);
RESULT_1_ADD6_Z352: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010110100101")
port map (
combout => RESULT_1_ADD6,
dataa => ERROR(5),
datab => GND,
cin => RESULT_1_CARRY_5);
R1_YINCR_2_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD0,
cout => YINCR_2_CARRY_0,
dataa => Y1_5_0,
datab => b_0,
cin => YINCR_2_ADD0_START_COUT);
R1_YINCR_2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD1,
cout => YINCR_2_CARRY_1,
dataa => Y1_4_0,
datab => b_1,
cin => YINCR_2_CARRY_0);
R1_YINCR_2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD2,
cout => YINCR_2_CARRY_2,
dataa => Y1_3_0,
datab => b_2,
cin => YINCR_2_CARRY_1);
R1_YINCR_2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD3,
cout => YINCR_2_CARRY_3,
dataa => Y1_2_0,
datab => b_3,
cin => YINCR_2_CARRY_2);
R1_YINCR_2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD4,
cout => YINCR_2_CARRY_4,
dataa => Y1_1_0,
datab => b_4,
cin => YINCR_2_CARRY_3);
R1_YINCR_2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => YINCR_2_ADD5,
dataa => Y1_0_0,
datab => b_5,
cin => YINCR_2_CARRY_4);
UN9_ERR1_ADD0_Z359: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN9_ERR1_ADD0,
cout => UN9_ERR1_CARRY_0,
dataa => YINCR(0),
datab => ERROR(0));
UN9_ERR1_ADD1_Z360: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD1,
cout => UN9_ERR1_CARRY_1,
dataa => YINCR(1),
datab => ERROR(1),
cin => UN9_ERR1_CARRY_0);
UN9_ERR1_ADD2_Z361: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD2,
cout => UN9_ERR1_CARRY_2,
dataa => YINCR(2),
datab => ERROR(2),
cin => UN9_ERR1_CARRY_1);
UN9_ERR1_ADD3_Z362: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD3,
cout => UN9_ERR1_CARRY_3,
dataa => YINCR(3),
datab => ERROR(3),
cin => UN9_ERR1_CARRY_2);
UN9_ERR1_ADD4_Z363: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD4,
cout => UN9_ERR1_CARRY_4,
dataa => YINCR(4),
datab => ERROR(4),
cin => UN9_ERR1_CARRY_3);
UN9_ERR1_ADD5_Z364: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD5,
cout => UN9_ERR1_CARRY_5,
dataa => YINCR(5),
datab => ERROR(5),
cin => UN9_ERR1_CARRY_4);
UN9_ERR1_ADD6_Z365: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0011110000111100")
port map (
combout => UN9_ERR1_ADD6,
dataa => GND,
datab => ERROR(5),
cin => UN9_ERR1_CARRY_5);
C1_UN2_ERR2_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD0,
cout => UN2_ERR2_CARRY_0,
dataa => YINCR(0),
datab => XINCR(0),
cin => UN2_ERR2_ADD0_START_COUT);
C1_UN2_ERR2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD1,
cout => UN2_ERR2_CARRY_1,
dataa => YINCR(1),
datab => XINCR(1),
cin => UN2_ERR2_CARRY_0);
C1_UN2_ERR2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD2,
cout => UN2_ERR2_CARRY_2,
dataa => YINCR(2),
datab => XINCR(2),
cin => UN2_ERR2_CARRY_1);
C1_UN2_ERR2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD3,
cout => UN2_ERR2_CARRY_3,
dataa => YINCR(3),
datab => XINCR(3),
cin => UN2_ERR2_CARRY_2);
C1_UN2_ERR2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => UN2_ERR2_ADD4,
cout => UN2_ERR2_CARRY_4,
dataa => YINCR(4),
datab => XINCR(4),
cin => UN2_ERR2_CARRY_3);
C1_UN2_ERR2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => UN2_ERR2_ADD5,
dataa => YINCR(5),
datab => XINCR(5),
cin => UN2_ERR2_CARRY_4);
R1_XINCR_3_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD0,
cout => XINCR_3_CARRY_0,
dataa => X1_7,
datab => b_0_0,
cin => XINCR_3_ADD0_START_COUT);
R1_XINCR_3_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD1,
cout => XINCR_3_CARRY_1,
dataa => X1_8,
datab => b_0_1,
cin => XINCR_3_CARRY_0);
R1_XINCR_3_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD2,
cout => XINCR_3_CARRY_2,
dataa => X1_9,
datab => b_0_2,
cin => XINCR_3_CARRY_1);
R1_XINCR_3_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD3,
cout => XINCR_3_CARRY_3,
dataa => X1_10,
datab => b_0_3,
cin => XINCR_3_CARRY_2);
R1_XINCR_3_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD4,
cout => XINCR_3_CARRY_4,
dataa => X1_11,
datab => b_0_4,
cin => XINCR_3_CARRY_3);
R1_XINCR_3_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => XINCR_3_ADD5,
dataa => X1_6,
datab => b_0_5,
cin => XINCR_3_CARRY_4);
\R1_XINCR_2_0_0__G0_E\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \XINCR_2_0_0__G0_E\,
dataa => db_fsm_state_2,
datab => db_fsm_state_1);
\UN1_ERROR_2_V_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(5),
dataa => XINCR(5),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(4),
dataa => XINCR(4),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(3),
dataa => XINCR(3),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(2),
dataa => XINCR(2),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(1),
dataa => XINCR(1),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(0),
dataa => XINCR(0),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(2),
dataa => db_fsm_state_2,
datab => ERROR(2));
\UN1_ERROR_2_V_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(0),
dataa => db_fsm_state_2,
datab => ERROR(0));
\UN4_0_A2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(5),
dataa => YINCR(0),
datab => UN4_0_A2_1(5));
\UN4_0_A2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(4),
dataa => YINCR(1),
datab => UN4_0_A2_1(5));
\UN4_0_A2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(3),
dataa => YINCR(2),
datab => UN4_0_A2_1(5));
\UN4_0_A2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(2),
dataa => YINCR(3),
datab => UN4_0_A2_1(5));
\UN4_0_A2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(1),
dataa => YINCR(4),
datab => UN4_0_A2_1(5));
\UN4_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_0_A2(0),
dataa => YINCR(5),
datab => UN4_0_A2_1(5));
C1_UN2_X1_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN2_X1_0,
dataa => YNEW(0),
datab => Y1_5_0);
\UN1_ERROR_2_V_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(1),
dataa => db_fsm_state_2,
datab => ERROR(1));
\UN1_ERROR_2_V_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(3),
dataa => db_fsm_state_2,
datab => ERROR(3));
\UN1_ERROR_2_V_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(4),
dataa => db_fsm_state_2,
datab => ERROR(4));
\UN1_ERROR_2_V_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(5),
dataa => db_fsm_state_2,
datab => ERROR(5));
\C1_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110001101100")
port map (
combout => INF_ABS0(1),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD6);
INF_ABS0_A_0_ANC2_Z399: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => INF_ABS0_A_0_ANC2,
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2);
\C1_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000110110")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD6);
INF_ABS1_A_1_ANC2_Z401: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => INF_ABS1_A_1_ANC2,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2);
R1_X1_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => X1_C2,
dataa => X1_7,
datab => X1_8,
datac => X1_9);
R1_Y1_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => Y1_C2,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => Y1_3_0);
C1_UN3_X1_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_1,
dataa => XNEW(5),
datab => XNEW(4),
datac => X1_6,
datad => X1_11);
C1_UN3_X1_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_2,
dataa => YNEW(3),
datab => YNEW(2),
datac => Y1_2_0,
datad => Y1_3_0);
C1_UN3_X1_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_4,
dataa => XNEW(1),
datab => YNEW(4),
datac => X1_8,
datad => Y1_1_0);
\C1_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111011110000")
port map (
combout => INF_ABS0(2),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2,
datad => UN9_ERR1_ADD6);
\C1_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111101111000")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD6);
\UN4_0_A2_0_A0_2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000000000")
port map (
combout => UN4_0_A2_0_A1_2(5),
dataa => db_fsm_state_0,
datab => db_fsm_state_1,
datac => db_fsm_state_2,
datad => un7_state);
C1_UN3_X1_8: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100100000000")
port map (
combout => UN3_X1_8,
dataa => XNEW(2),
datab => X1_9,
datac => UN2_X1_0,
datad => UN3_X1_4);
\C1_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(3),
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC2);
INF_ABS0_A_0_ANC4_Z412: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => INF_ABS0_A_0_ANC4,
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD4,
datac => INF_ABS0_A_0_ANC2);
\C1_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001010110")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC2);
INF_ABS1_A_1_ANC4_Z414: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => INF_ABS1_A_1_ANC4,
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4,
datac => INF_ABS1_A_1_ANC2);
R1_X1_C2_RNIAC7P: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => X1_E5_0_G6,
dataa => X1_11,
datab => db_fsm_state_2,
datac => X1_10,
datad => X1_C2);
\R1_Y1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => Y1_E5_0_G4,
dataa => Y1_1_0,
datab => db_fsm_state_2,
datac => Y1_2_0,
datad => Y1_C2);
C1_UN3_X1_10: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000000000")
port map (
combout => UN3_X1_10,
dataa => XNEW(3),
datab => X1_10,
datac => UN3_X1_1,
datad => UN3_X1_8);
\C1_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110000111100")
port map (
combout => INF_ABS0(4),
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD4,
datac => UN9_ERR1_ADD6,
datad => INF_ABS0_A_0_ANC2);
\C1_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000111100")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD6,
datad => INF_ABS1_A_1_ANC2);
\C1_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => INF_ABS0(6),
dataa => UN9_ERR1_ADD5,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC4);
\C1_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => INF_ABS1(6),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC4);
\C1_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(5),
dataa => UN9_ERR1_ADD5,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC4);
\C1_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001010110")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC4);
\R1_X1_RNIP07D_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E2_0_G1,
dataa => db_fsm_state_2,
datab => X1_9,
datac => b_0_2);
\R1_X1_RNIR27D_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E3_0_G1,
dataa => db_fsm_state_2,
datab => X1_10,
datac => b_0_3);
\R1_X1_RNIT47D_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E4_0_G1,
dataa => db_fsm_state_2,
datab => X1_11,
datac => b_0_4);
\R1_X1_RNINU6D_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E1_0_G1,
dataa => db_fsm_state_2,
datab => X1_8,
datac => b_0_1);
\R1_X1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E5_0_G8,
dataa => X1_E5_0_G6,
datab => b_0_5);
\R1_Y1_RNO_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001101100011011")
port map (
combout => Y1_E5_0_M2,
dataa => db_fsm_state_2,
datab => Y1_0_0,
datac => b_5);
\R1_Y1_RNIVDNR_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => Y1_E4_0_G3,
dataa => db_fsm_state_2,
datab => Y1_1_0,
datac => b_4);
R1_UN12_DISABLE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN12_DISABLE,
dataa => UN15_DISABLE_6,
datab => UN12_DISABLE_5);
UN1_DISABLE_1_Z432: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111010001110101")
port map (
combout => UN1_DISABLE_1,
dataa => db_fsm_state_2,
datab => db_fsm_state_1,
datac => UN3_X1_12,
datad => disable_i_a2);
\R1_X1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => X1_E2_0_G4,
dataa => X1_7,
datab => X1_8,
datac => X1_E2_0_G1);
\R1_X1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E3_0_G4,
dataa => X1_C2,
datab => X1_E3_0_G1);
\R1_X1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => X1_E4_0_G4,
dataa => X1_10,
datab => X1_C2,
datac => X1_E4_0_G1);
\R1_Y1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => Y1_E1_0_M3,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => db_fsm_state_2,
datad => b_1);
\R1_X1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000111010001")
port map (
combout => X1_E0_0_G0X,
dataa => X1_7,
datab => db_fsm_state_2,
datac => b_0_0);
\R1_X1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E1_0_G4,
dataa => X1_7,
datab => X1_E1_0_G1);
R1_UN7_DISABLE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110011011100")
port map (
combout => UN7_DISABLE,
dataa => db_fsm_state_1,
datab => \XINCR_2_0_0__G0_E\,
datac => UN3_X1_12);
\R1_Y1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => Y1_E4_0_G4,
dataa => Y1_2_0,
datab => Y1_C2,
datac => Y1_E4_0_G3);
\R1_Y1_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000111101101")
port map (
combout => Y1_E3_0_M3,
dataa => Y1_2_0,
datab => db_fsm_state_2,
datac => Y1_C2,
datad => b_3);
\R1_Y1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000111010001")
port map (
combout => Y1_E0_0_G0_I_X4,
dataa => Y1_5_0,
datab => db_fsm_state_2,
datac => b_0);
\UN4_0_A2_0_A1_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001000")
port map (
combout => UN4_0_A2_0_A1_1(5),
dataa => UN4_0_A2_0_A1_2(5),
datab => is_same,
datac => UN3_X1_12);
\R1_Y1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => Y1_E1_0_M5,
dataa => Y1_4_0,
datab => Y1_E1_0_M3,
datac => Y1_E0_0_G0_I_O4);
C1_UN3_X1_10_RNIMFGI3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110111001100")
port map (
combout => X1_E0_0_G0_E_I,
dataa => db_fsm_state_1,
datab => db_fsm_state_2,
datac => UN3_X1_12,
datad => disable_i_a2);
\R1_Y1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001110101010")
port map (
combout => Y1_E5_0_M5,
dataa => Y1_0_0,
datab => Y1_E5_0_G4,
datac => Y1_E5_0_M2,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => Y1_E3_0_M5,
dataa => Y1_2_0,
datab => Y1_E3_0_M3,
datac => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011111110111")
port map (
combout => Y1_E2_0_M5_A,
dataa => Y1_5_0,
datab => Y1_4_0,
datac => db_fsm_state_2,
datad => b_2);
\R1_Y1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010110110101010")
port map (
combout => Y1_E2_0_M5,
dataa => Y1_3_0,
datab => db_fsm_state_2,
datac => Y1_E2_0_M5_A,
datad => Y1_E0_0_G0_I_O4);
\UN4_0_A2_0_A0_2_2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => UN4_0_A2_0_A0_2_2(5),
dataa => UN4_0_A2_0_A1_2(5),
datab => vram_write_i7lto31,
datac => m3,
datad => UN3_X1_12);
\R1_X1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => X1_E5_0_G1,
dataa => X1_6,
datab => X1_E5_0_G6,
datac => UN1_DISABLE_1);
R1_UN12_DISABLE_RNIGQE31: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111100001110")
port map (
combout => Y1_E0_0_G0_I_O4,
dataa => UN7_DISABLE,
datab => UN15_DISABLE,
datac => UN1_DISABLE_1,
datad => UN12_DISABLE);
\UN4_0_A2_0_A0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000010000")
port map (
combout => UN4_0_A2_0_A0(5),
dataa => word_reg_delayed_6,
datab => vram_write_i_4_0,
datac => UN4_0_A2_0_A0_2_2(5),
datad => vram_write_i_6);
\UN4_0_A2_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100010000")
port map (
combout => UN4_0_A2_1(5),
dataa => vram_write_i7lto31,
datab => m3,
datac => UN4_0_A2_0_A1_1(5),
datad => UN4_0_A2_0_A0(5));
\R1_YNEW_RNIJF801_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100100001001")
port map (
combout => G0_3_0,
dataa => YNEW(5),
datab => Y1_0_0,
datac => db_fsm_state_2);
\R1_XNEW_RNIQ25A1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => G0_3_1,
dataa => XNEW(0),
datab => YNEW(1),
datac => X1_7,
datad => Y1_4_0);
R1_UN15_DISABLE_R1_UN15_DISABLE_2_RNI7L291: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => G3_4,
dataa => UN15_DISABLE_2,
datab => UN15_DISABLE_4,
datac => UN15_DISABLE_7);
R1_UN15_DISABLE_R1_UN15_DISABLE_1_RNI6E7Q: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010010000")
port map (
combout => G3_0,
dataa => xbias1,
datab => swapxy1,
datac => UN15_DISABLE_1);
R1_UN12_DISABLE_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN12_DISABLE_5,
dataa => G3_0,
datab => UN15_DISABLE_3,
datac => UN15_DISABLE_5,
datad => G3_4);
C1_UN3_X1_10_RNICA2S2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN3_X1_12,
dataa => G0_3_1,
datab => G0_3_0,
datac => UN3_X1_2,
datad => UN3_X1_10);
R1_UN15_DISABLE_R1_UN15_DISABLE_3_RNIE3A32: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => G3_5,
dataa => G3_0,
datab => UN15_DISABLE_3,
datac => UN15_DISABLE_5,
datad => UN15_DISABLE_6);
C1_UN3_X1_10_RNIMFGI3_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => G0_2,
dataa => db_fsm_state_1,
datab => db_fsm_state_2,
datac => UN3_X1_12,
datad => disable_i_a2);
R1_UN15_DISABLE_R1_UN15_DISABLE_7_TERM_RNI7D567: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101000000000")
port map (
combout => Y1_2_SQMUXA,
dataa => UN15_DISABLE,
datab => G3_5,
datac => G3_4,
datad => G0_2);
R1_XINCR_3_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => XINCR_3_ADD0_START_COUT,
dataa => VCC);
C1_UN2_ERR2_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => UN2_ERR2_ADD0_START_COUT,
dataa => VCC);
R1_YINCR_2_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => YINCR_2_ADD0_START_COUT,
dataa => VCC);
UN1_ERROR_2_0_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => UN1_ERROR_2_0_ADD0_START_COUT,
dataa => UN1_ERROR_2_V(0));
R1_UN15_DISABLE_R1_UN15_DISABLE_7_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => UN15_DISABLE,
cin => UN15_DISABLE_7_COUT);
GND <= '0';
VCC <= '1';
DB_FSM_STATE_2_I <= not db_fsm_state_2;
y1_5 <= Y1_0_0;
y1_4 <= Y1_1_0;
y1_3 <= Y1_2_0;
y1_2 <= Y1_3_0;
y1_1 <= Y1_4_0;
y1_0 <= Y1_5_0;
x1_5 <= X1_6;
x1_0 <= X1_7;
x1_1 <= X1_8;
x1_2 <= X1_9;
x1_3 <= X1_10;
x1_4 <= X1_11;
un3_x1 <= UN3_X1_12;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity inv_signal_0 is
port(
b_0 :  out std_logic;
b_5 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
b_4 :  out std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
swapxy1 :  in std_logic;
negy1 :  in std_logic);
end inv_signal_0;

architecture beh of inv_signal_0 is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_0,
dataa => swapxy1,
datab => negy1,
datac => yin_0,
datad => xin_0);
\B_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_5,
dataa => swapxy1,
datab => negy1,
datac => yin_5,
datad => xin_5);
\B_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_1,
dataa => swapxy1,
datab => negy1,
datac => yin_1,
datad => xin_1);
\B_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_2,
dataa => swapxy1,
datab => negy1,
datac => yin_2,
datad => xin_2);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_3,
dataa => swapxy1,
datab => negy1,
datac => yin_3,
datad => xin_3);
\B_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_4,
dataa => swapxy1,
datab => negy1,
datac => yin_4,
datad => xin_4);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity inv_signal is
port(
b_0 :  out std_logic;
b_5 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
b_4 :  out std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
swapxy1 :  in std_logic;
negx1 :  in std_logic);
end inv_signal;

architecture beh of inv_signal is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_0,
dataa => swapxy1,
datab => negx1,
datac => xin_0,
datad => yin_0);
\B_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011100101101100")
port map (
combout => b_5,
dataa => swapxy1,
datab => negx1,
datac => yin_5,
datad => xin_5);
\B_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_1,
dataa => swapxy1,
datab => negx1,
datac => xin_1,
datad => yin_1);
\B_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_2,
dataa => swapxy1,
datab => negx1,
datac => xin_2,
datad => yin_2);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_3,
dataa => swapxy1,
datab => negx1,
datac => xin_3,
datad => yin_3);
\B_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011100101101100")
port map (
combout => b_4,
dataa => swapxy1,
datab => negx1,
datac => yin_4,
datad => xin_4);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity rd is
port(
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
negx :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy :  out std_logic;
negy1 :  in std_logic;
swapxy :  out std_logic;
swapxy1 :  in std_logic;
\cmd_1_0_2__g5\ :  in std_logic);
end rd;

architecture beh of rd is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal NEGX_0_0_G2_I : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
begin
R1_NEGX: cycloneii_lcell_ff port map (
regout => negx,
datain => negx1,
clk => clk_c,
ena => NEGX_0_0_G2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_NEGY: cycloneii_lcell_ff port map (
regout => negy,
datain => negy1,
clk => clk_c,
ena => NEGX_0_0_G2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_SWAPXY: cycloneii_lcell_ff port map (
regout => swapxy,
datain => swapxy1,
clk => clk_c,
ena => NEGX_0_0_G2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_NEGX_0_0_G2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011111110")
port map (
combout => NEGX_0_0_G2_I,
dataa => db_fsm_state_0,
datab => db_fsm_state_1,
datac => db_fsm_state_2,
datad => \cmd_1_0_2__g5\);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity ram_fsm is
port(
state_1 :  out std_logic;
state_0 :  out std_logic;
cache_store_reg_0_1 :  in std_logic;
cache_store_reg_0_0 :  in std_logic;
cache_store_reg_1_1 :  in std_logic;
cache_store_reg_1_0 :  in std_logic;
cache_store_reg_2_1 :  in std_logic;
cache_store_reg_2_0 :  in std_logic;
cache_store_reg_3_1 :  in std_logic;
cache_store_reg_3_0 :  in std_logic;
cache_store_reg_4_1 :  in std_logic;
cache_store_reg_4_0 :  in std_logic;
cache_store_reg_5_1 :  in std_logic;
cache_store_reg_5_0 :  in std_logic;
cache_store_reg_6_1 :  in std_logic;
cache_store_reg_6_0 :  in std_logic;
cache_store_reg_7_1 :  in std_logic;
cache_store_reg_7_0 :  in std_logic;
cache_store_reg_8_1 :  in std_logic;
cache_store_reg_8_0 :  in std_logic;
cache_store_reg_9_1 :  in std_logic;
cache_store_reg_9_0 :  in std_logic;
cache_store_reg_10_1 :  in std_logic;
cache_store_reg_10_0 :  in std_logic;
cache_store_reg_11_1 :  in std_logic;
cache_store_reg_11_0 :  in std_logic;
cache_store_reg_12_1 :  in std_logic;
cache_store_reg_12_0 :  in std_logic;
cache_store_reg_13_1 :  in std_logic;
cache_store_reg_13_0 :  in std_logic;
cache_store_reg_14_1 :  in std_logic;
cache_store_reg_14_0 :  in std_logic;
cache_store_reg_15_1 :  in std_logic;
cache_store_reg_15_0 :  in std_logic;
vraddr_7 :  in std_logic;
vraddr_6 :  in std_logic;
vraddr_5 :  in std_logic;
vraddr_4 :  in std_logic;
vraddr_3 :  in std_logic;
vraddr_2 :  in std_logic;
vraddr_1 :  in std_logic;
vraddr_0 :  in std_logic;
nstate_0_0 :  in std_logic;
Y_0 :  out std_logic;
Y_1 :  out std_logic;
Y_2 :  out std_logic;
Y_3 :  out std_logic;
Y_0_0 :  in std_logic;
Y_0_1 :  in std_logic;
Y_0_2 :  in std_logic;
Y_0_3 :  in std_logic;
Y_1_0 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_3 :  in std_logic;
X_1_0 :  in std_logic;
X_1_1 :  in std_logic;
addr_ram_7 :  out std_logic;
addr_ram_6 :  out std_logic;
addr_ram_5 :  out std_logic;
addr_ram_4 :  out std_logic;
addr_ram_3 :  out std_logic;
addr_ram_2 :  out std_logic;
addr_ram_1 :  out std_logic;
addr_ram_0 :  out std_logic;
data_ram_0 :  out std_logic;
data_ram_1 :  out std_logic;
data_ram_2 :  out std_logic;
data_ram_3 :  out std_logic;
data_ram_4 :  out std_logic;
data_ram_5 :  out std_logic;
data_ram_6 :  out std_logic;
data_ram_7 :  out std_logic;
data_ram_8 :  out std_logic;
data_ram_9 :  out std_logic;
data_ram_10 :  out std_logic;
data_ram_11 :  out std_logic;
data_ram_12 :  out std_logic;
data_ram_13 :  out std_logic;
data_ram_14 :  out std_logic;
data_ram_15 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
cmd_0 :  in std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  in std_logic;
X_3 :  in std_logic;
xout_0 :  in std_logic;
xout_1 :  in std_logic;
X_0_0 :  in std_logic;
X_0_1 :  in std_logic;
X_0_2 :  out std_logic;
X_0_3 :  out std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
pixopin_1_0 :  out std_logic;
db_fsm_state_i_0 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
word_reg_delayed_5 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
word_reg_delayed_4 :  in std_logic;
word_reg_delayed_1 :  in std_logic;
word_reg_delayed_3 :  in std_logic;
word_reg_delayed_2 :  in std_logic;
word_reg_delayed_7 :  in std_logic;
un1_vram_delay_4_0 :  out std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
clk_c :  in std_logic;
start_i :  out std_logic;
vram_write_i :  out std_logic;
un7_state :  out std_logic;
state_s0_0_a3 :  out std_logic;
vram_write :  in std_logic;
word_reg_delayed_6_scalar_0 :  out std_logic;
un6_vram_delay :  out std_logic;
vram_write_i_4_0 :  out std_logic;
un1_rcb_state22 :  out std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  in std_logic;
startcmd_i_a5 :  in std_logic;
Y_0_sqmuxa :  out std_logic;
lt5 :  in std_logic;
dav_c :  in std_logic;
un20_vram_delay_NE :  in std_logic;
vram_write_i7lto31 :  in std_logic;
vram_write_i_6 :  out std_logic;
vram_write_i_2 :  out std_logic;
is_same :  in std_logic;
idle_cycleslde_x :  out std_logic);
end ram_fsm;

architecture beh of ram_fsm is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal CACHE_REG_0 : std_logic_vector(1 downto 0);
signal CACHE_REG_1 : std_logic_vector(1 downto 0);
signal CACHE_REG_2 : std_logic_vector(1 downto 0);
signal CACHE_REG_3 : std_logic_vector(1 downto 0);
signal CACHE_REG_4 : std_logic_vector(1 downto 0);
signal CACHE_REG_5 : std_logic_vector(1 downto 0);
signal CACHE_REG_6 : std_logic_vector(1 downto 0);
signal CACHE_REG_7 : std_logic_vector(1 downto 0);
signal CACHE_REG_8 : std_logic_vector(1 downto 0);
signal CACHE_REG_9 : std_logic_vector(1 downto 0);
signal CACHE_REG_10 : std_logic_vector(1 downto 0);
signal CACHE_REG_11 : std_logic_vector(1 downto 0);
signal CACHE_REG_12 : std_logic_vector(1 downto 0);
signal CACHE_REG_13 : std_logic_vector(1 downto 0);
signal CACHE_REG_14 : std_logic_vector(1 downto 0);
signal CACHE_REG_15 : std_logic_vector(1 downto 0);
signal ADDR_RAM_SYNC_I : std_logic_vector(7 downto 0);
signal DATA_RAM_SYNC_I : std_logic_vector(15 downto 0);
signal DATA_CALCULATED_IV_0_M2_X : std_logic_vector(15 downto 0);
signal NSTATE : std_logic_vector(1 downto 0);
signal NSTATE_0_I : std_logic_vector(1 to 1);
signal NSTATE_0_O3_1 : std_logic_vector(0 to 0);
signal X_D : std_logic_vector(5 downto 4);
signal \STATE_SRSTS_0_1__G0_X\ : std_logic ;
signal \STATE_SRSTS_0_0__G0_0\ : std_logic ;
signal STATE_S2_0_A3 : std_logic ;
signal STATE_S1_0_A3_I : std_logic ;
signal \NSTATE_0_1_0__G0_0\ : std_logic ;
signal START_I_63 : std_logic ;
signal VRAM_WRITE_I_64 : std_logic ;
signal UN7_STATE_65 : std_logic ;
signal \STATE_SRSTS_0_0__G2\ : std_logic ;
signal UN6_VRAM_DELAY_67 : std_logic ;
signal VRAM_WRITE_I_4_68 : std_logic ;
signal VRAM_WRITE_I_6_2 : std_logic ;
signal VRAM_WRITE_I_6_1_A : std_logic ;
signal VRAM_WRITE_I_6_1 : std_logic ;
signal DBB_DELAYCMD_1_S : std_logic ;
signal VRAM_WRITE_I_69 : std_logic ;
signal VRAM_WRITE_I_70 : std_logic ;
signal N_150 : std_logic ;
signal N_149 : std_logic ;
signal N_148 : std_logic ;
signal N_147 : std_logic ;
signal N_2 : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal STATE_54 : std_logic ;
signal STATE_55 : std_logic ;
signal Y_56 : std_logic ;
signal Y_57 : std_logic ;
signal Y_58 : std_logic ;
signal X_59 : std_logic ;
signal X_60 : std_logic ;
signal X_0_61 : std_logic ;
signal X_0_62 : std_logic ;
signal WORD_REG_DELAYED_6_SCALAR_66 : std_logic ;
begin
\STATE_1_\: cycloneii_lcell_ff port map (
regout => STATE_54,
datain => \STATE_SRSTS_0_1__G0_X\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_0_\: cycloneii_lcell_ff port map (
regout => STATE_55,
datain => \STATE_SRSTS_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_0_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_0(1),
datain => cache_store_reg_0_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_0_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_0(0),
datain => cache_store_reg_0_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_1_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_1(1),
datain => cache_store_reg_1_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_1_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_1(0),
datain => cache_store_reg_1_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_2_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_2(1),
datain => cache_store_reg_2_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_2_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_2(0),
datain => cache_store_reg_2_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_3_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_3(1),
datain => cache_store_reg_3_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_3_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_3(0),
datain => cache_store_reg_3_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_4_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_4(1),
datain => cache_store_reg_4_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_4_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_4(0),
datain => cache_store_reg_4_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_5_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_5(1),
datain => cache_store_reg_5_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_5_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_5(0),
datain => cache_store_reg_5_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_6_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_6(1),
datain => cache_store_reg_6_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_6_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_6(0),
datain => cache_store_reg_6_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_7_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_7(1),
datain => cache_store_reg_7_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_7_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_7(0),
datain => cache_store_reg_7_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_8_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_8(1),
datain => cache_store_reg_8_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_8_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_8(0),
datain => cache_store_reg_8_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_9_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_9(1),
datain => cache_store_reg_9_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_9_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_9(0),
datain => cache_store_reg_9_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_10_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_10(1),
datain => cache_store_reg_10_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_10_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_10(0),
datain => cache_store_reg_10_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_11_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_11(1),
datain => cache_store_reg_11_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_11_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_11(0),
datain => cache_store_reg_11_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_12_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_12(1),
datain => cache_store_reg_12_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_12_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_12(0),
datain => cache_store_reg_12_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_13_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_13(1),
datain => cache_store_reg_13_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_13_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_13(0),
datain => cache_store_reg_13_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_14_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_14(1),
datain => cache_store_reg_14_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_14_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_14(0),
datain => cache_store_reg_14_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_15_1_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_15(1),
datain => cache_store_reg_15_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CACHE_REG_15_0_\: cycloneii_lcell_ff port map (
regout => CACHE_REG_15(0),
datain => cache_store_reg_15_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_ADDR_RAM_SYNC_I_7_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(7),
datain => vraddr_7,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_6_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(6),
datain => vraddr_6,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_5_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(5),
datain => vraddr_5,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_4_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(4),
datain => vraddr_4,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_3_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(3),
datain => vraddr_3,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_2_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(2),
datain => vraddr_2,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_1_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(1),
datain => vraddr_1,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_ADDR_RAM_SYNC_I_0_\: cycloneii_lcell_ff port map (
regout => ADDR_RAM_SYNC_I(0),
datain => vraddr_0,
clk => clk_c,
ena => STATE_S2_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_15_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(15),
datain => DATA_CALCULATED_IV_0_M2_X(15),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_14_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(14),
datain => DATA_CALCULATED_IV_0_M2_X(14),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_13_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(13),
datain => DATA_CALCULATED_IV_0_M2_X(13),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_12_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(12),
datain => DATA_CALCULATED_IV_0_M2_X(12),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_11_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(11),
datain => DATA_CALCULATED_IV_0_M2_X(11),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_10_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(10),
datain => DATA_CALCULATED_IV_0_M2_X(10),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_9_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(9),
datain => DATA_CALCULATED_IV_0_M2_X(9),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_8_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(8),
datain => DATA_CALCULATED_IV_0_M2_X(8),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_7_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(7),
datain => DATA_CALCULATED_IV_0_M2_X(7),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_6_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(6),
datain => DATA_CALCULATED_IV_0_M2_X(6),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_5_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(5),
datain => DATA_CALCULATED_IV_0_M2_X(5),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_4_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(4),
datain => DATA_CALCULATED_IV_0_M2_X(4),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_3_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(3),
datain => DATA_CALCULATED_IV_0_M2_X(3),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_2_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(2),
datain => DATA_CALCULATED_IV_0_M2_X(2),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_1_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(1),
datain => DATA_CALCULATED_IV_0_M2_X(1),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P1_DATA_RAM_SYNC_I_0_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(0),
datain => DATA_CALCULATED_IV_0_M2_X(0),
clk => clk_c,
ena => STATE_S1_0_A3_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\NSTATE_1_\: cycloneii_lcell_ff port map (
regout => NSTATE(1),
datain => NSTATE_0_I(1),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\NSTATE_0_\: cycloneii_lcell_ff port map (
regout => NSTATE(0),
datain => \NSTATE_0_1_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
P1_START_I: cycloneii_lcell_ff port map (
regout => START_I_63,
datain => VRAM_WRITE_I_64,
clk => clk_c,
ena => UN7_STATE_65,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
STATE_S0_0_A3_Z342: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => state_s0_0_a3,
dataa => STATE_54,
datab => STATE_55);
STATE_S1_0_A3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => STATE_S1_0_A3_I,
dataa => STATE_54,
datab => STATE_55);
STATE_S2_0_A3_Z344: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => STATE_S2_0_A3,
dataa => STATE_55,
datab => STATE_54);
\NSTATE_0_O3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => NSTATE_0_O3_1(0),
dataa => STATE_54,
datab => vram_write);
\SPLITXY_Y_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_56,
dataa => nstate_0_0,
datab => Y_0_0,
datac => Y_1_0);
\SPLITXY_Y_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_57,
dataa => nstate_0_0,
datab => Y_0_1,
datac => Y_1_1);
\SPLITXY_Y_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_2,
dataa => nstate_0_0,
datab => Y_0_2,
datac => Y_1_2);
\SPLITXY_Y_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_58,
dataa => nstate_0_0,
datab => Y_0_3,
datac => Y_1_3);
\SPLITXY_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_59,
dataa => nstate_0_0,
datab => X_0_0,
datac => X_1_0);
\SPLITXY_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_60,
dataa => nstate_0_0,
datab => X_0_1,
datac => X_1_1);
C1_UN7_STATE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001111110011111")
port map (
combout => UN7_STATE_65,
dataa => STATE_55,
datab => STATE_54,
datac => START_I_63);
\ADDR_RAM_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_7,
dataa => ADDR_RAM_SYNC_I(7),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_7);
\ADDR_RAM_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_6,
dataa => ADDR_RAM_SYNC_I(6),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_6);
\ADDR_RAM_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_5,
dataa => ADDR_RAM_SYNC_I(5),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_5);
\ADDR_RAM_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_4,
dataa => ADDR_RAM_SYNC_I(4),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_4);
\ADDR_RAM_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_3,
dataa => ADDR_RAM_SYNC_I(3),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_3);
\ADDR_RAM_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_2,
dataa => ADDR_RAM_SYNC_I(2),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_2);
\ADDR_RAM_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_1,
dataa => ADDR_RAM_SYNC_I(1),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_1);
\ADDR_RAM_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010100010")
port map (
combout => addr_ram_0,
dataa => ADDR_RAM_SYNC_I(0),
datab => STATE_54,
datac => STATE_55,
datad => vraddr_0);
\DATA_RAM_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_0,
dataa => DATA_RAM_SYNC_I(0),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(0));
\DATA_RAM_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_1,
dataa => DATA_RAM_SYNC_I(1),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(1));
\DATA_RAM_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_2,
dataa => DATA_RAM_SYNC_I(2),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(2));
\DATA_RAM_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_3,
dataa => DATA_RAM_SYNC_I(3),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(3));
\DATA_RAM_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_4,
dataa => DATA_RAM_SYNC_I(4),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(4));
\DATA_RAM_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_5,
dataa => DATA_RAM_SYNC_I(5),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(5));
\DATA_RAM_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_6,
dataa => DATA_RAM_SYNC_I(6),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(6));
\DATA_RAM_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_7,
dataa => DATA_RAM_SYNC_I(7),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(7));
\DATA_RAM_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_8,
dataa => DATA_RAM_SYNC_I(8),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(8));
\DATA_RAM_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_9,
dataa => DATA_RAM_SYNC_I(9),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(9));
\DATA_RAM_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_10,
dataa => DATA_RAM_SYNC_I(10),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(10));
\DATA_RAM_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_11,
dataa => DATA_RAM_SYNC_I(11),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(11));
\DATA_RAM_12_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_12,
dataa => DATA_RAM_SYNC_I(12),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(12));
\DATA_RAM_13_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_13,
dataa => DATA_RAM_SYNC_I(13),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(13));
\DATA_RAM_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_14,
dataa => DATA_RAM_SYNC_I(14),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(14));
\DATA_RAM_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101100001000")
port map (
combout => data_ram_15,
dataa => DATA_RAM_SYNC_I(15),
datab => STATE_55,
datac => STATE_54,
datad => DATA_CALCULATED_IV_0_M2_X(15));
SPLIT_WORD_REG_DELAYED_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100101101111000")
port map (
combout => WORD_REG_DELAYED_6_SCALAR_66,
dataa => Y_0_2,
datab => nstate_0_0,
datac => word_reg_delayed_6,
datad => Y_1_2);
\NSTATE_RNIDFBG_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001000")
port map (
combout => \STATE_SRSTS_0_0__G2\,
dataa => NSTATE(0),
datab => STATE_54,
datac => vram_write);
RCB_FSM_UN6_VRAM_DELAY: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000000000")
port map (
combout => UN6_VRAM_DELAY_67,
dataa => db_fsm_state_0,
datab => db_fsm_state_1,
datac => db_fsm_state_2,
datad => cmd_0);
\SPLITXY_X_D_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_D(4),
dataa => nstate_0_0,
datab => X_2,
datac => xout_0);
\SPLITXY_X_D_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_D(5),
dataa => nstate_0_0,
datab => X_3,
datac => xout_1);
VRAM_VRAM_WRITE_I_4_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => VRAM_WRITE_I_4_68,
dataa => word_reg_delayed_5,
datab => word_reg_delayed_0,
datac => Y_57,
datad => X_59);
VRAM_VRAM_WRITE_I_6_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => VRAM_WRITE_I_6_2,
dataa => word_reg_delayed_4,
datab => word_reg_delayed_1,
datac => Y_56,
datad => X_60);
UN1_RCB_STATE22_Z384: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000001010101")
port map (
combout => un1_rcb_state22,
dataa => reset_c,
datab => db_fsm_state_2,
datac => mux_out_i_a2,
datad => UN7_STATE_65);
\NSTATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100110010")
port map (
combout => \NSTATE_0_1_0__G0_0\,
dataa => reset_c,
datab => STATE_55,
datac => NSTATE_0_O3_1(0),
datad => \STATE_SRSTS_0_0__G2\);
\SPLITXY_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_0_61,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => xin_0,
datad => X_D(4));
\SPLITXY_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_0_62,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => xin_1,
datad => X_D(5));
\STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101111111010")
port map (
combout => \STATE_SRSTS_0_0__G0_0\,
dataa => reset_c,
datab => STATE_55,
datac => \STATE_SRSTS_0_0__G2\,
datad => NSTATE_0_O3_1(0));
\PIXOPIN_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011001101")
port map (
combout => pixopin_1_0,
dataa => cmd_0,
datab => nstate_0_0,
datac => startcmd_i_a5,
datad => vram_write);
CLRXY_REG_Y_0_SQMUXA: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => Y_0_sqmuxa,
dataa => nstate_0_0,
datab => UN6_VRAM_DELAY_67,
datac => UN7_STATE_65,
datad => lt5);
VRAM_VRAM_WRITE_I_6_1_A: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011111001101")
port map (
combout => VRAM_WRITE_I_6_1_A,
dataa => dav_c,
datab => word_reg_delayed_3,
datac => db_fsm_state_i_0,
datad => X_0_62);
VRAM_VRAM_WRITE_I_6_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011011110110")
port map (
combout => VRAM_WRITE_I_6_1,
dataa => word_reg_delayed_2,
datab => X_0_61,
datac => VRAM_WRITE_I_6_1_A);
DBB_DELAYCMD_1_S_Z393: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111100100")
port map (
combout => DBB_DELAYCMD_1_S,
dataa => nstate_0_0,
datab => UN6_VRAM_DELAY_67,
datac => un20_vram_delay_NE,
datad => vram_write_i7lto31);
VRAM_VRAM_WRITE_I_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => VRAM_WRITE_I_69,
dataa => word_reg_delayed_7,
datab => Y_58,
datac => VRAM_WRITE_I_6_2,
datad => VRAM_WRITE_I_6_1);
VRAM_VRAM_WRITE_I_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010101010100")
port map (
combout => VRAM_WRITE_I_70,
dataa => is_same,
datab => WORD_REG_DELAYED_6_SCALAR_66,
datac => VRAM_WRITE_I_4_68,
datad => VRAM_WRITE_I_69);
VRAM_WRITE_I_Z396: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => VRAM_WRITE_I_64,
dataa => vram_write_i7lto31,
datab => VRAM_WRITE_I_70);
\UN1_VRAM_DELAY_4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110110001")
port map (
combout => un1_vram_delay_4_0,
dataa => nstate_0_0,
datab => UN6_VRAM_DELAY_67,
datac => DBB_DELAYCMD_1_S,
datad => VRAM_WRITE_I_70);
\NSTATE_0_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001110000011")
port map (
combout => NSTATE_0_I(1),
dataa => NSTATE(1),
datab => STATE_55,
datac => STATE_54,
datad => VRAM_WRITE_I_64);
\STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \STATE_SRSTS_0_1__G0_X\,
dataa => reset_c,
datab => NSTATE_0_I(1));
C1_UN7_STATE_RNIGN84: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => idle_cycleslde_x,
dataa => reset_c,
datab => UN7_STATE_65);
\DATA_CALCULATED_IV_0_M2_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(5),
dataa => vdout_c_5,
datab => CACHE_REG_5(0),
datac => CACHE_REG_5(1));
\DATA_CALCULATED_IV_0_M2_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(4),
dataa => vdout_c_4,
datab => CACHE_REG_4(0),
datac => CACHE_REG_4(1));
\DATA_CALCULATED_IV_0_M2_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(3),
dataa => vdout_c_3,
datab => CACHE_REG_3(0),
datac => CACHE_REG_3(1));
\DATA_CALCULATED_IV_0_M2_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(2),
dataa => vdout_c_2,
datab => CACHE_REG_2(0),
datac => CACHE_REG_2(1));
\DATA_CALCULATED_IV_0_M2_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(1),
dataa => vdout_c_1,
datab => CACHE_REG_1(0),
datac => CACHE_REG_1(1));
\DATA_CALCULATED_IV_0_M2_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(0),
dataa => vdout_c_0,
datab => CACHE_REG_0(0),
datac => CACHE_REG_0(1));
\DATA_CALCULATED_IV_0_M2_X_12_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(12),
dataa => vdout_c_12,
datab => CACHE_REG_12(0),
datac => CACHE_REG_12(1));
\DATA_CALCULATED_IV_0_M2_X_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(11),
dataa => vdout_c_11,
datab => CACHE_REG_11(0),
datac => CACHE_REG_11(1));
\DATA_CALCULATED_IV_0_M2_X_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(10),
dataa => vdout_c_10,
datab => CACHE_REG_10(0),
datac => CACHE_REG_10(1));
\DATA_CALCULATED_IV_0_M2_X_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(9),
dataa => vdout_c_9,
datab => CACHE_REG_9(0),
datac => CACHE_REG_9(1));
\DATA_CALCULATED_IV_0_M2_X_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(8),
dataa => vdout_c_8,
datab => CACHE_REG_8(0),
datac => CACHE_REG_8(1));
\DATA_CALCULATED_IV_0_M2_X_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(7),
dataa => vdout_c_7,
datab => CACHE_REG_7(0),
datac => CACHE_REG_7(1));
\DATA_CALCULATED_IV_0_M2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(6),
dataa => vdout_c_6,
datab => CACHE_REG_6(0),
datac => CACHE_REG_6(1));
\DATA_CALCULATED_IV_0_M2_X_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(15),
dataa => vdout_c_15,
datab => CACHE_REG_15(0),
datac => CACHE_REG_15(1));
\DATA_CALCULATED_IV_0_M2_X_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(14),
dataa => vdout_c_14,
datab => CACHE_REG_14(0),
datac => CACHE_REG_14(1));
\DATA_CALCULATED_IV_0_M2_X_13_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(13),
dataa => vdout_c_13,
datab => CACHE_REG_13(0),
datac => CACHE_REG_13(1));
GND <= '0';
VCC <= '1';
state_1 <= STATE_54;
state_0 <= STATE_55;
Y_0 <= Y_56;
Y_1 <= Y_57;
Y_3 <= Y_58;
X_0 <= X_59;
X_1 <= X_60;
X_0_2 <= X_0_61;
X_0_3 <= X_0_62;
start_i <= START_I_63;
vram_write_i <= VRAM_WRITE_I_64;
un7_state <= UN7_STATE_65;
word_reg_delayed_6_scalar_0 <= WORD_REG_DELAYED_6_SCALAR_66;
un6_vram_delay <= UN6_VRAM_DELAY_67;
vram_write_i_4_0 <= VRAM_WRITE_I_4_68;
vram_write_i_6 <= VRAM_WRITE_I_69;
vram_write_i_2 <= VRAM_WRITE_I_70;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity pix_word_cache is
port(
pre_rdout_par_15_1 :  out std_logic;
pre_rdout_par_15_0 :  out std_logic;
pre_rdout_par_14_1 :  out std_logic;
pre_rdout_par_14_0 :  out std_logic;
pre_rdout_par_13_1 :  out std_logic;
pre_rdout_par_13_0 :  out std_logic;
pre_rdout_par_12_1 :  out std_logic;
pre_rdout_par_12_0 :  out std_logic;
pre_rdout_par_10_1 :  out std_logic;
pre_rdout_par_10_0 :  out std_logic;
pre_rdout_par_9_1 :  out std_logic;
pre_rdout_par_9_0 :  out std_logic;
pre_rdout_par_8_1 :  out std_logic;
pre_rdout_par_8_0 :  out std_logic;
pre_rdout_par_7_1 :  out std_logic;
pre_rdout_par_7_0 :  out std_logic;
pre_rdout_par_6_1 :  out std_logic;
pre_rdout_par_6_0 :  out std_logic;
pre_rdout_par_5_1 :  out std_logic;
pre_rdout_par_5_0 :  out std_logic;
pre_rdout_par_4_1 :  out std_logic;
pre_rdout_par_4_0 :  out std_logic;
pre_rdout_par_3_1 :  out std_logic;
pre_rdout_par_3_0 :  out std_logic;
pre_rdout_par_2_1 :  out std_logic;
pre_rdout_par_2_0 :  out std_logic;
pre_rdout_par_1_1 :  out std_logic;
pre_rdout_par_1_0 :  out std_logic;
pre_rdout_par_0_1 :  out std_logic;
pre_rdout_par_0_0 :  out std_logic;
pre_rdout_par_11_1 :  out std_logic;
pre_rdout_par_11_0 :  out std_logic;
nstate_0 :  in std_logic;
Y_0_0 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
Y_1_0 :  in std_logic;
X_0 :  in std_logic;
X_1 :  in std_logic;
X_0_0 :  in std_logic;
X_1_0 :  in std_logic;
pixopin_1_0 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
vram_write :  in std_logic;
is_same :  out std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic);
end pix_word_cache;

architecture beh of pix_word_cache is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal PRE_RDOUT_PAR_12_0_1_A2_0 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_4_0_1_A2_0 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_0_0_1_A2_0 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_3_EN_0_A2_0 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_15_EN_0_A2_0 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_7_EN_0_A2_0 : std_logic_vector(0 to 0);
signal UN2_RDOUT1_TO_OPRAM_I_I_A2_0 : std_logic_vector(4 to 4);
signal PRE_RDOUT_PAR_10_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_14_EN_0_A2_0 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_13_I_M2_A : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_13_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_10_I_M2_A : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_10_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_6_I_M2_A : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_6_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_3_I_M2_A : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_3_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_13_A : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_13 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_10_A : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_10 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_6_A : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_6 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_3_A : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_3 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_15_EN_0_A2_1 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_14_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_7_I_M2 : std_logic_vector(1 to 1);
signal RDOUT1_TO_OPRAM_14 : std_logic_vector(0 to 0);
signal RDOUT1_TO_OPRAM_7 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_14_EN_0_A2_1 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_12_EN_0_A2_0 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_9_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_8_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_0_0_1_A2_0_I : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_4_0_1_A2_0_I : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_12_0_1_A2_0_I : std_logic_vector(1 downto 0);
signal \PRE_RDOUT_PAR_15_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_15_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_15_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_15_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_10_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_10_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_9_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_9_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_8_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_8_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_1__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_1__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_0__G9\ : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_0__G3\ : std_logic ;
signal \PRE_RDOUT_PAR_11_1_0_1__G5\ : std_logic ;
signal \PRE_RDOUT_PAR_11_1_0__G0_0\ : std_logic ;
signal \PRE_RDOUT_PAR_11_1_0_0__G5\ : std_logic ;
signal M4 : std_logic ;
signal M7 : std_logic ;
signal IS_SAME_10 : std_logic ;
signal IS_SAME_16 : std_logic ;
signal IS_SAME_17 : std_logic ;
signal IS_SAME_18 : std_logic ;
signal IS_SAME_19 : std_logic ;
signal IS_SAME_20 : std_logic ;
signal IS_SAME_22 : std_logic ;
signal IS_SAME_23 : std_logic ;
signal IS_SAME_26 : std_logic ;
signal UN1_PW_6_0 : std_logic ;
signal IS_SAME_28 : std_logic ;
signal M4_E : std_logic ;
signal M7_E : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_0__G6\ : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal PRE_RDOUT_PAR_15_22 : std_logic ;
signal PRE_RDOUT_PAR_15_23 : std_logic ;
signal PRE_RDOUT_PAR_14_24 : std_logic ;
signal PRE_RDOUT_PAR_14_25 : std_logic ;
signal PRE_RDOUT_PAR_13_26 : std_logic ;
signal PRE_RDOUT_PAR_13_27 : std_logic ;
signal PRE_RDOUT_PAR_12_28 : std_logic ;
signal PRE_RDOUT_PAR_12_29 : std_logic ;
signal PRE_RDOUT_PAR_10_30 : std_logic ;
signal PRE_RDOUT_PAR_10_31 : std_logic ;
signal PRE_RDOUT_PAR_9_32 : std_logic ;
signal PRE_RDOUT_PAR_9_33 : std_logic ;
signal PRE_RDOUT_PAR_8_34 : std_logic ;
signal PRE_RDOUT_PAR_8_35 : std_logic ;
signal PRE_RDOUT_PAR_7_36 : std_logic ;
signal PRE_RDOUT_PAR_7_37 : std_logic ;
signal PRE_RDOUT_PAR_6_38 : std_logic ;
signal PRE_RDOUT_PAR_6_39 : std_logic ;
signal PRE_RDOUT_PAR_5_40 : std_logic ;
signal PRE_RDOUT_PAR_5_41 : std_logic ;
signal PRE_RDOUT_PAR_4_42 : std_logic ;
signal PRE_RDOUT_PAR_4_43 : std_logic ;
signal PRE_RDOUT_PAR_3_44 : std_logic ;
signal PRE_RDOUT_PAR_3_45 : std_logic ;
signal PRE_RDOUT_PAR_2_46 : std_logic ;
signal PRE_RDOUT_PAR_2_47 : std_logic ;
signal PRE_RDOUT_PAR_1_48 : std_logic ;
signal PRE_RDOUT_PAR_1_49 : std_logic ;
signal PRE_RDOUT_PAR_0_50 : std_logic ;
signal PRE_RDOUT_PAR_0_51 : std_logic ;
signal PRE_RDOUT_PAR_11_52 : std_logic ;
signal PRE_RDOUT_PAR_11_53 : std_logic ;
begin
\N1_PRE_RDOUT_PAR_15_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_15_22,
datain => \PRE_RDOUT_PAR_15_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_15_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_15_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_15_23,
datain => \PRE_RDOUT_PAR_15_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_15_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_14_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_14_24,
datain => \PRE_RDOUT_PAR_14_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_14_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_14_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_14_25,
datain => \PRE_RDOUT_PAR_14_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_14_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_13_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_13_26,
datain => \PRE_RDOUT_PAR_13_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_13_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_13_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_13_27,
datain => \PRE_RDOUT_PAR_13_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_13_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_12_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_12_28,
datain => \PRE_RDOUT_PAR_12_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_12_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_12_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_12_29,
datain => \PRE_RDOUT_PAR_12_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_12_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_12_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_10_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_10_30,
datain => \PRE_RDOUT_PAR_10_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_10_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_10_31,
datain => \PRE_RDOUT_PAR_10_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_9_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_9_32,
datain => \PRE_RDOUT_PAR_9_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_9_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_9_33,
datain => \PRE_RDOUT_PAR_9_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_8_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_8_34,
datain => \PRE_RDOUT_PAR_8_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_8_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_8_35,
datain => \PRE_RDOUT_PAR_8_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_7_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_7_36,
datain => \PRE_RDOUT_PAR_7_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_7_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_7_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_7_37,
datain => \PRE_RDOUT_PAR_7_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_7_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_6_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_6_38,
datain => \PRE_RDOUT_PAR_6_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_6_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_6_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_6_39,
datain => \PRE_RDOUT_PAR_6_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_6_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_5_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_5_40,
datain => \PRE_RDOUT_PAR_5_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_5_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_5_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_5_41,
datain => \PRE_RDOUT_PAR_5_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_5_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_4_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_4_42,
datain => \PRE_RDOUT_PAR_4_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_4_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_4_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_4_43,
datain => \PRE_RDOUT_PAR_4_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_4_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_4_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_3_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_3_44,
datain => \PRE_RDOUT_PAR_3_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_3_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_3_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_3_45,
datain => \PRE_RDOUT_PAR_3_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_3_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_2_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_2_46,
datain => \PRE_RDOUT_PAR_2_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_2_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_2_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_2_47,
datain => \PRE_RDOUT_PAR_2_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_2_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_1_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_1_48,
datain => \PRE_RDOUT_PAR_1_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_1_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_1_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_1_49,
datain => \PRE_RDOUT_PAR_1_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_1_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_0_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_0_50,
datain => \PRE_RDOUT_PAR_0_1_0_1__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(1),
sdata => \PRE_RDOUT_PAR_0_1_0_1__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_0_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_0_51,
datain => \PRE_RDOUT_PAR_0_1_0_0__G9\,
clk => clk_c,
sclr => reset_c,
sload => PRE_RDOUT_PAR_0_0_1_A2_0_I(0),
sdata => \PRE_RDOUT_PAR_0_1_0_0__G3\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_11_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_11_52,
datain => \PRE_RDOUT_PAR_11_1_0_1__G5\,
clk => clk_c,
sclr => reset_c,
ena => \PRE_RDOUT_PAR_11_1_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\N1_PRE_RDOUT_PAR_11_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_11_53,
datain => \PRE_RDOUT_PAR_11_1_0_0__G5\,
clk => clk_c,
sclr => reset_c,
ena => \PRE_RDOUT_PAR_11_1_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RDOUT1_TO_OPRAM_7_I_M2_RNIIORT2_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_0_0_1_A2_0(1),
dataa => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datab => M4);
\RDOUT1_TO_OPRAM_14_RNI4M243_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_12_0_1_A2_0(0),
dataa => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datab => M7);
\RDOUT1_TO_OPRAM_14_RNI4M243_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_0_0_1_A2_0(0),
dataa => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datab => M7);
\RDOUT1_TO_OPRAM_7_I_M2_RNIIORT2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_12_0_1_A2_0(1),
dataa => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datab => M4);
\RDOUT1_TO_OPRAM_14_RNI4M243_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_4_0_1_A2_0(0),
dataa => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datab => M7);
\RDOUT1_TO_OPRAM_7_I_M2_RNIIORT2_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PRE_RDOUT_PAR_4_0_1_A2_0(1),
dataa => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datab => M4);
IS_SAME_10_Z282: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => IS_SAME_10,
dataa => PRE_RDOUT_PAR_5_40,
datab => PRE_RDOUT_PAR_5_41);
\N1_PRE_RDOUT_PAR_15_EN_0_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100000000000")
port map (
combout => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
dataa => Y_0,
datab => nstate_0,
datac => Y_0_0,
datad => Y_1);
\N1_PRE_RDOUT_PAR_3_EN_0_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000111")
port map (
combout => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
dataa => Y_0,
datab => nstate_0,
datac => Y_0_0,
datad => Y_1);
\T1_UN2_RDOUT1_TO_OPRAM_I_I_A2_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100011100000000")
port map (
combout => UN2_RDOUT1_TO_OPRAM_I_I_A2_0(4),
dataa => Y_0,
datab => nstate_0,
datac => Y_0_0,
datad => Y_1);
\N1_PRE_RDOUT_PAR_7_EN_0_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010111000")
port map (
combout => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
dataa => Y_0,
datab => nstate_0,
datac => Y_0_0,
datad => Y_1);
IS_SAME_16_Z287: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_16,
dataa => PRE_RDOUT_PAR_14_25,
datab => PRE_RDOUT_PAR_14_24,
datac => PRE_RDOUT_PAR_15_23,
datad => PRE_RDOUT_PAR_15_22);
IS_SAME_17_Z288: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_17,
dataa => PRE_RDOUT_PAR_12_29,
datab => PRE_RDOUT_PAR_12_28,
datac => PRE_RDOUT_PAR_13_27,
datad => PRE_RDOUT_PAR_13_26);
IS_SAME_18_Z289: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_18,
dataa => PRE_RDOUT_PAR_10_31,
datab => PRE_RDOUT_PAR_10_30,
datac => PRE_RDOUT_PAR_11_53,
datad => PRE_RDOUT_PAR_11_52);
IS_SAME_19_Z290: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_19,
dataa => PRE_RDOUT_PAR_8_35,
datab => PRE_RDOUT_PAR_8_34,
datac => PRE_RDOUT_PAR_9_33,
datad => PRE_RDOUT_PAR_9_32);
IS_SAME_20_Z291: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_20,
dataa => PRE_RDOUT_PAR_6_39,
datab => PRE_RDOUT_PAR_6_38,
datac => PRE_RDOUT_PAR_7_37,
datad => PRE_RDOUT_PAR_7_36);
IS_SAME_22_Z292: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_22,
dataa => PRE_RDOUT_PAR_2_47,
datab => PRE_RDOUT_PAR_2_46,
datac => PRE_RDOUT_PAR_3_45,
datad => PRE_RDOUT_PAR_3_44);
IS_SAME_23_Z293: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_23,
dataa => PRE_RDOUT_PAR_0_51,
datab => PRE_RDOUT_PAR_0_50,
datac => PRE_RDOUT_PAR_1_49,
datad => PRE_RDOUT_PAR_1_48);
\N1_PRE_RDOUT_PAR_10_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => PRE_RDOUT_PAR_10_EN_0_A2(0),
dataa => Y_1_0,
datab => Y_1,
datac => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\RDOUT1_TO_OPRAM_13_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2_A(1),
dataa => PRE_RDOUT_PAR_11_52,
datab => PRE_RDOUT_PAR_15_22,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_13_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2(1),
dataa => PRE_RDOUT_PAR_7_36,
datab => PRE_RDOUT_PAR_3_44,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_13_I_M2_A(1));
\RDOUT1_TO_OPRAM_10_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2_A(1),
dataa => PRE_RDOUT_PAR_10_30,
datab => PRE_RDOUT_PAR_14_24,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_10_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2(1),
dataa => PRE_RDOUT_PAR_6_38,
datab => PRE_RDOUT_PAR_2_46,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_10_I_M2_A(1));
\RDOUT1_TO_OPRAM_6_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2_A(1),
dataa => PRE_RDOUT_PAR_9_32,
datab => PRE_RDOUT_PAR_13_26,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_6_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2(1),
dataa => PRE_RDOUT_PAR_5_40,
datab => PRE_RDOUT_PAR_1_48,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_6_I_M2_A(1));
\RDOUT1_TO_OPRAM_3_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2_A(1),
dataa => PRE_RDOUT_PAR_8_34,
datab => PRE_RDOUT_PAR_12_28,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_3_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2(1),
dataa => PRE_RDOUT_PAR_4_42,
datab => PRE_RDOUT_PAR_0_50,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_3_I_M2_A(1));
\RDOUT1_TO_OPRAM_13_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_13_A(0),
dataa => PRE_RDOUT_PAR_11_53,
datab => PRE_RDOUT_PAR_15_23,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_13_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_13(0),
dataa => PRE_RDOUT_PAR_7_37,
datab => PRE_RDOUT_PAR_3_45,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_13_A(0));
\RDOUT1_TO_OPRAM_10_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_10_A(0),
dataa => PRE_RDOUT_PAR_10_31,
datab => PRE_RDOUT_PAR_14_25,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_10_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_10(0),
dataa => PRE_RDOUT_PAR_6_39,
datab => PRE_RDOUT_PAR_2_47,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_10_A(0));
\RDOUT1_TO_OPRAM_6_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_6_A(0),
dataa => PRE_RDOUT_PAR_9_33,
datab => PRE_RDOUT_PAR_13_27,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_6_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_6(0),
dataa => PRE_RDOUT_PAR_5_41,
datab => PRE_RDOUT_PAR_1_49,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_6_A(0));
\RDOUT1_TO_OPRAM_3_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_3_A(0),
dataa => PRE_RDOUT_PAR_8_35,
datab => PRE_RDOUT_PAR_12_29,
datac => Y_1_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_3(0),
dataa => PRE_RDOUT_PAR_4_43,
datab => PRE_RDOUT_PAR_0_51,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_3_A(0));
\N1_PRE_RDOUT_PAR_15_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_15_22,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_15_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_15_23,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_14_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_14_24,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_14_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_14_25,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_6_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_6_38,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_6_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_6_39,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_2_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_2_46,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_2_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_2_47,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_3_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_3_45,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_3_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_3_44,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_7_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_7_37,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_7_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_7_36,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
IS_SAME_26_Z323: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => IS_SAME_26,
dataa => PRE_RDOUT_PAR_4_43,
datab => PRE_RDOUT_PAR_4_42,
datac => IS_SAME_10,
datad => IS_SAME_20);
UN1_PW_6_0_Z324: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101111111011111")
port map (
combout => UN1_PW_6_0,
dataa => X_0,
datab => Y_1_0,
datac => Y_1);
\RDOUT1_TO_OPRAM_14_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_14_I_M2(1),
dataa => X_0,
datab => RDOUT1_TO_OPRAM_13_I_M2(1),
datac => RDOUT1_TO_OPRAM_10_I_M2(1));
\RDOUT1_TO_OPRAM_7_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_7_I_M2(1),
dataa => X_0,
datab => RDOUT1_TO_OPRAM_6_I_M2(1),
datac => RDOUT1_TO_OPRAM_3_I_M2(1));
\RDOUT1_TO_OPRAM_14_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_14(0),
dataa => X_0,
datab => RDOUT1_TO_OPRAM_13(0),
datac => RDOUT1_TO_OPRAM_10(0));
\RDOUT1_TO_OPRAM_7_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_7(0),
dataa => X_0,
datab => RDOUT1_TO_OPRAM_6(0),
datac => RDOUT1_TO_OPRAM_3(0));
\N1_PRE_RDOUT_PAR_11_1_0__G0_0\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111010")
port map (
combout => \PRE_RDOUT_PAR_11_1_0__G0_0\,
dataa => reset_c,
datab => UN2_RDOUT1_TO_OPRAM_I_I_A2_0(4),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
IS_SAME_28_Z330: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => IS_SAME_28,
dataa => IS_SAME_18,
datab => IS_SAME_19,
datac => IS_SAME_16,
datad => IS_SAME_17);
IS_SAME_Z331: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => is_same,
dataa => IS_SAME_22,
datab => IS_SAME_23,
datac => IS_SAME_26,
datad => IS_SAME_28);
\RDOUT1_TO_OPRAM_7_I_M2_RNI2TDP_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011100100")
port map (
combout => M4_E,
dataa => X_1,
datab => RDOUT1_TO_OPRAM_7_I_M2(1),
datac => RDOUT1_TO_OPRAM_14_I_M2(1),
datad => vram_write);
\RDOUT1_TO_OPRAM_14_RNIKQKV_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011100100")
port map (
combout => M7_E,
dataa => X_1,
datab => RDOUT1_TO_OPRAM_7(0),
datac => RDOUT1_TO_OPRAM_14(0),
datad => vram_write);
\N1_PRE_RDOUT_PAR_14_EN_0_A2_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100000000000")
port map (
combout => PRE_RDOUT_PAR_14_EN_0_A2_1(0),
dataa => X_0_0,
datab => nstate_0,
datac => X_1_0,
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_14_EN_0_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => PRE_RDOUT_PAR_14_EN_0_A2_0(0),
dataa => X_1,
datab => X_0,
datac => pixopin_1_0);
\N1_PRE_RDOUT_PAR_12_EN_0_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => PRE_RDOUT_PAR_12_EN_0_A2_0(0),
dataa => X_1,
datab => X_0,
datac => pixopin_1_0);
\N1_PRE_RDOUT_PAR_15_EN_0_A2_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => PRE_RDOUT_PAR_15_EN_0_A2_1(0),
dataa => X_1,
datab => X_0,
datac => pixopin_1_0);
\RDOUT1_TO_OPRAM_14_RNIHGAT1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010001100001111")
port map (
combout => M7,
dataa => cmd_1,
datab => cmd_0,
datac => M7_E,
datad => pixopin_1_0);
\RDOUT1_TO_OPRAM_7_I_M2_RNIVI3N1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010001100001111")
port map (
combout => M4,
dataa => cmd_0,
datab => cmd_1,
datac => M4_E,
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_9_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => PRE_RDOUT_PAR_9_EN_0_A2(0),
dataa => X_1,
datab => X_0,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A2_0(4),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_8_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => PRE_RDOUT_PAR_8_EN_0_A2(0),
dataa => X_1,
datab => X_0,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A2_0(4),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_0_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111111111111")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_1_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111111111111")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_4_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111111111111")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_5_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111111111111")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_11_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => \PRE_RDOUT_PAR_11_1_0_0__G5\,
dataa => UN1_PW_6_0,
datab => PRE_RDOUT_PAR_14_EN_0_A2_1(0),
datac => M7);
\N1_PRE_RDOUT_PAR_11_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => \PRE_RDOUT_PAR_11_1_0_1__G5\,
dataa => UN1_PW_6_0,
datab => PRE_RDOUT_PAR_14_EN_0_A2_1(0),
datac => M4);
\N1_PRE_RDOUT_PAR_12_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111111111111")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_13_1_0_0__G6\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111111111111")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_0__G6\,
dataa => X_1,
datab => X_0,
datac => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datad => pixopin_1_0);
\N1_PRE_RDOUT_PAR_0_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_0_51,
datab => vram_write,
datac => \PRE_RDOUT_PAR_0_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_0_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_0_50,
datab => vram_write,
datac => \PRE_RDOUT_PAR_0_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_1_49,
datab => vram_write,
datac => \PRE_RDOUT_PAR_1_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_1_48,
datab => vram_write,
datac => \PRE_RDOUT_PAR_1_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_4_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_4_43,
datab => vram_write,
datac => \PRE_RDOUT_PAR_4_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_4_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_4_42,
datab => vram_write,
datac => \PRE_RDOUT_PAR_4_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_5_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_5_41,
datab => vram_write,
datac => \PRE_RDOUT_PAR_5_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_5_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_5_40,
datab => vram_write,
datac => \PRE_RDOUT_PAR_5_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_12_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_12_29,
datab => vram_write,
datac => \PRE_RDOUT_PAR_12_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_12_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_12_28,
datab => vram_write,
datac => \PRE_RDOUT_PAR_12_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_13_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_13_27,
datab => vram_write,
datac => \PRE_RDOUT_PAR_13_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_13_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001100100011")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_13_26,
datab => vram_write,
datac => \PRE_RDOUT_PAR_13_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_12_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_12_28,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_12_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_12_29,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_4_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_4_42,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_4_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_4_43,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_0_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_0_50,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_0_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_0_51,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_12_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_1_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_1_49,
datab => vram_write,
datac => \PRE_RDOUT_PAR_1_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_1_48,
datab => vram_write,
datac => \PRE_RDOUT_PAR_1_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_5_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_5_41,
datab => vram_write,
datac => \PRE_RDOUT_PAR_5_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_5_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_5_40,
datab => vram_write,
datac => \PRE_RDOUT_PAR_5_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_13_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_0__G3\,
dataa => PRE_RDOUT_PAR_13_27,
datab => vram_write,
datac => \PRE_RDOUT_PAR_13_1_0_0__G6\);
\N1_PRE_RDOUT_PAR_13_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_1__G3\,
dataa => PRE_RDOUT_PAR_13_26,
datab => vram_write,
datac => \PRE_RDOUT_PAR_13_1_0_0__G6\);
FINISH_X_Z374: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => finish_x,
dataa => dav_c,
datab => rcb_finish_i,
datac => db_fsm_state_i_0);
\N1_PRE_RDOUT_PAR_8_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001011110010")
port map (
combout => \PRE_RDOUT_PAR_8_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_8_34,
datab => vram_write,
datac => PRE_RDOUT_PAR_8_EN_0_A2(0),
datad => M4);
\N1_PRE_RDOUT_PAR_8_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001011110010")
port map (
combout => \PRE_RDOUT_PAR_8_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_8_35,
datab => vram_write,
datac => PRE_RDOUT_PAR_8_EN_0_A2(0),
datad => M7);
\N1_PRE_RDOUT_PAR_9_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001011110010")
port map (
combout => \PRE_RDOUT_PAR_9_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_9_33,
datab => vram_write,
datac => PRE_RDOUT_PAR_9_EN_0_A2(0),
datad => M7);
\N1_PRE_RDOUT_PAR_9_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001011110010")
port map (
combout => \PRE_RDOUT_PAR_9_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_9_32,
datab => vram_write,
datac => PRE_RDOUT_PAR_9_EN_0_A2(0),
datad => M4);
\N1_PRE_RDOUT_PAR_10_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111100100010")
port map (
combout => \PRE_RDOUT_PAR_10_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_10_31,
datab => vram_write,
datac => M7,
datad => PRE_RDOUT_PAR_10_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_10_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111100100010")
port map (
combout => \PRE_RDOUT_PAR_10_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_10_30,
datab => vram_write,
datac => M4,
datad => PRE_RDOUT_PAR_10_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_15_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_15_22,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_2_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_2_46,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_3_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_3_45,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_2_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_2_47,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_7_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_7_37,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_7_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_7_36,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_15_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_15_23,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_3_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_3_44,
datab => PRE_RDOUT_PAR_3_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_15_EN_0_A2_1(0));
\N1_PRE_RDOUT_PAR_14_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_14_24,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_14_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_14_25,
datab => PRE_RDOUT_PAR_15_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_6_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_1__G9\,
dataa => PRE_RDOUT_PAR_6_38,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
\N1_PRE_RDOUT_PAR_6_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000001010")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_0__G9\,
dataa => PRE_RDOUT_PAR_6_39,
datab => PRE_RDOUT_PAR_7_EN_0_A2_0(0),
datac => vram_write,
datad => PRE_RDOUT_PAR_14_EN_0_A2_0(0));
GND <= '0';
VCC <= '1';
PRE_RDOUT_PAR_0_0_1_A2_0_I(0) <= not PRE_RDOUT_PAR_0_0_1_A2_0(0);
PRE_RDOUT_PAR_0_0_1_A2_0_I(1) <= not PRE_RDOUT_PAR_0_0_1_A2_0(1);
PRE_RDOUT_PAR_4_0_1_A2_0_I(0) <= not PRE_RDOUT_PAR_4_0_1_A2_0(0);
PRE_RDOUT_PAR_4_0_1_A2_0_I(1) <= not PRE_RDOUT_PAR_4_0_1_A2_0(1);
PRE_RDOUT_PAR_12_0_1_A2_0_I(0) <= not PRE_RDOUT_PAR_12_0_1_A2_0(0);
PRE_RDOUT_PAR_12_0_1_A2_0_I(1) <= not PRE_RDOUT_PAR_12_0_1_A2_0(1);
pre_rdout_par_15_1 <= PRE_RDOUT_PAR_15_22;
pre_rdout_par_15_0 <= PRE_RDOUT_PAR_15_23;
pre_rdout_par_14_1 <= PRE_RDOUT_PAR_14_24;
pre_rdout_par_14_0 <= PRE_RDOUT_PAR_14_25;
pre_rdout_par_13_1 <= PRE_RDOUT_PAR_13_26;
pre_rdout_par_13_0 <= PRE_RDOUT_PAR_13_27;
pre_rdout_par_12_1 <= PRE_RDOUT_PAR_12_28;
pre_rdout_par_12_0 <= PRE_RDOUT_PAR_12_29;
pre_rdout_par_10_1 <= PRE_RDOUT_PAR_10_30;
pre_rdout_par_10_0 <= PRE_RDOUT_PAR_10_31;
pre_rdout_par_9_1 <= PRE_RDOUT_PAR_9_32;
pre_rdout_par_9_0 <= PRE_RDOUT_PAR_9_33;
pre_rdout_par_8_1 <= PRE_RDOUT_PAR_8_34;
pre_rdout_par_8_0 <= PRE_RDOUT_PAR_8_35;
pre_rdout_par_7_1 <= PRE_RDOUT_PAR_7_36;
pre_rdout_par_7_0 <= PRE_RDOUT_PAR_7_37;
pre_rdout_par_6_1 <= PRE_RDOUT_PAR_6_38;
pre_rdout_par_6_0 <= PRE_RDOUT_PAR_6_39;
pre_rdout_par_5_1 <= PRE_RDOUT_PAR_5_40;
pre_rdout_par_5_0 <= PRE_RDOUT_PAR_5_41;
pre_rdout_par_4_1 <= PRE_RDOUT_PAR_4_42;
pre_rdout_par_4_0 <= PRE_RDOUT_PAR_4_43;
pre_rdout_par_3_1 <= PRE_RDOUT_PAR_3_44;
pre_rdout_par_3_0 <= PRE_RDOUT_PAR_3_45;
pre_rdout_par_2_1 <= PRE_RDOUT_PAR_2_46;
pre_rdout_par_2_0 <= PRE_RDOUT_PAR_2_47;
pre_rdout_par_1_1 <= PRE_RDOUT_PAR_1_48;
pre_rdout_par_1_0 <= PRE_RDOUT_PAR_1_49;
pre_rdout_par_0_1 <= PRE_RDOUT_PAR_0_50;
pre_rdout_par_0_0 <= PRE_RDOUT_PAR_0_51;
pre_rdout_par_11_1 <= PRE_RDOUT_PAR_11_52;
pre_rdout_par_11_0 <= PRE_RDOUT_PAR_11_53;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity draw_any_octant is
port(
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
yout_1 :  out std_logic;
yout_0 :  out std_logic;
yout_5 :  out std_logic;
yout_2 :  out std_logic;
yout_3 :  out std_logic;
yout_4 :  out std_logic;
xout_1 :  out std_logic;
xout_0 :  out std_logic;
xout_5 :  out std_logic;
xout_2 :  out std_logic;
xout_3 :  out std_logic;
xout_4 :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy1 :  in std_logic;
swapxy1 :  in std_logic;
\cmd_1_0_2__g5\ :  in std_logic;
un7_state :  in std_logic;
un3_x1 :  out std_logic;
disable_i_a2 :  in std_logic;
is_same :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic;
xbias1 :  in std_logic);
end draw_any_octant;

architecture beh of draw_any_octant is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal B : std_logic_vector(5 downto 0);
signal B_0 : std_logic_vector(5 downto 0);
signal Y1 : std_logic_vector(5 downto 0);
signal X1 : std_logic_vector(5 downto 0);
signal B_1 : std_logic_vector(5 downto 0);
signal NEGX : std_logic ;
signal NEGY : std_logic ;
signal SWAPXY : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
component rd
port(
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
negx :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy :  out std_logic;
negy1 :  in std_logic;
swapxy :  out std_logic;
swapxy1 :  in std_logic;
\cmd_1_0_2__g5\ :  in std_logic  );
end component;
component inv_signal
port(
b_0 :  out std_logic;
b_5 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
b_4 :  out std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
swapxy1 :  in std_logic;
negx1 :  in std_logic  );
end component;
component inv_signal_0
port(
b_0 :  out std_logic;
b_5 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
b_4 :  out std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
swapxy1 :  in std_logic;
negy1 :  in std_logic  );
end component;
component draw_octant
port(
y1_5 :  out std_logic;
y1_4 :  out std_logic;
y1_3 :  out std_logic;
y1_2 :  out std_logic;
y1_1 :  out std_logic;
y1_0 :  out std_logic;
b_5 :  in std_logic;
b_4 :  in std_logic;
b_3 :  in std_logic;
b_2 :  in std_logic;
b_1 :  in std_logic;
b_0 :  in std_logic;
b_0_5 :  in std_logic;
b_0_4 :  in std_logic;
b_0_3 :  in std_logic;
b_0_2 :  in std_logic;
b_0_1 :  in std_logic;
b_0_0 :  in std_logic;
x1_5 :  out std_logic;
x1_0 :  out std_logic;
x1_1 :  out std_logic;
x1_2 :  out std_logic;
x1_3 :  out std_logic;
x1_4 :  out std_logic;
db_fsm_state_2 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_0 :  in std_logic;
clk_c :  in std_logic;
un7_state :  in std_logic;
un3_x1 :  out std_logic;
disable_i_a2 :  in std_logic;
is_same :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic;
xbias1 :  in std_logic;
swapxy1 :  in std_logic  );
end component;
component inv_signal_1
port(
b_1 :  out std_logic;
b_0 :  out std_logic;
x1_1 :  in std_logic;
x1_0 :  in std_logic;
negx :  in std_logic  );
end component;
component inv_signal_2
port(
b_1 :  out std_logic;
b_0 :  out std_logic;
b_2 :  out std_logic;
b_3 :  out std_logic;
y1_1 :  in std_logic;
y1_0 :  in std_logic;
y1_2 :  in std_logic;
y1_3 :  in std_logic;
negy :  in std_logic  );
end component;
component swap_0
port(
x1_1 :  in std_logic;
x1_0 :  in std_logic;
x1_2 :  in std_logic;
x1_3 :  in std_logic;
yout_1 :  out std_logic;
yout_0 :  out std_logic;
yout_5 :  out std_logic;
yout_2 :  out std_logic;
yout_3 :  out std_logic;
yout_4 :  out std_logic;
y1_1 :  in std_logic;
y1_0 :  in std_logic;
b_1 :  in std_logic;
b_0 :  in std_logic;
b_5 :  in std_logic;
b_2 :  in std_logic;
b_3 :  in std_logic;
b_4 :  in std_logic;
xout_1 :  out std_logic;
xout_0 :  out std_logic;
xout_5 :  out std_logic;
xout_2 :  out std_logic;
xout_3 :  out std_logic;
xout_4 :  out std_logic;
negx :  in std_logic;
swapxy :  in std_logic;
negy :  in std_logic  );
end component;
begin
RD1: rd port map (
db_fsm_state_0 => db_fsm_state_0,
db_fsm_state_1 => db_fsm_state_1,
db_fsm_state_2 => db_fsm_state_2,
negx => NEGX,
negx1 => negx1,
clk_c => clk_c,
negy => NEGY,
negy1 => negy1,
swapxy => SWAPXY,
swapxy1 => swapxy1,
\cmd_1_0_2__g5\ => \cmd_1_0_2__g5\);
INV1: inv_signal port map (
b_0 => B(0),
b_5 => B(5),
b_1 => B(1),
b_2 => B(2),
b_3 => B(3),
b_4 => B(4),
yin_0 => yin_0,
yin_5 => yin_5,
yin_1 => yin_1,
yin_2 => yin_2,
yin_3 => yin_3,
yin_4 => yin_4,
xin_0 => xin_0,
xin_5 => xin_5,
xin_1 => xin_1,
xin_2 => xin_2,
xin_3 => xin_3,
xin_4 => xin_4,
swapxy1 => swapxy1,
negx1 => negx1);
INV2: inv_signal_0 port map (
b_0 => B_0(0),
b_5 => B_0(5),
b_1 => B_0(1),
b_2 => B_0(2),
b_3 => B_0(3),
b_4 => B_0(4),
yin_0 => yin_0,
yin_5 => yin_5,
yin_1 => yin_1,
yin_2 => yin_2,
yin_3 => yin_3,
yin_4 => yin_4,
xin_0 => xin_0,
xin_5 => xin_5,
xin_1 => xin_1,
xin_2 => xin_2,
xin_3 => xin_3,
xin_4 => xin_4,
swapxy1 => swapxy1,
negy1 => negy1);
DRAW1: draw_octant port map (
y1_5 => Y1(5),
y1_4 => Y1(4),
y1_3 => Y1(3),
y1_2 => Y1(2),
y1_1 => Y1(1),
y1_0 => Y1(0),
b_5 => B_0(5),
b_4 => B_0(4),
b_3 => B_0(3),
b_2 => B_0(2),
b_1 => B_0(1),
b_0 => B_0(0),
b_0_5 => B(5),
b_0_4 => B(4),
b_0_3 => B(3),
b_0_2 => B(2),
b_0_1 => B(1),
b_0_0 => B(0),
x1_5 => X1(5),
x1_0 => X1(0),
x1_1 => X1(1),
x1_2 => X1(2),
x1_3 => X1(3),
x1_4 => X1(4),
db_fsm_state_2 => db_fsm_state_2,
db_fsm_state_1 => db_fsm_state_1,
db_fsm_state_0 => db_fsm_state_0,
clk_c => clk_c,
un7_state => un7_state,
un3_x1 => un3_x1,
disable_i_a2 => disable_i_a2,
is_same => is_same,
vram_write_i7lto31 => vram_write_i7lto31,
m3 => m3,
word_reg_delayed_6 => word_reg_delayed_6,
vram_write_i_4_0 => vram_write_i_4_0,
vram_write_i_6 => vram_write_i_6,
xbias1 => xbias1,
swapxy1 => swapxy1);
INV3: inv_signal_1 port map (
b_1 => B_1(5),
b_0 => B_1(4),
x1_1 => X1(5),
x1_0 => X1(4),
negx => NEGX);
INV4: inv_signal_2 port map (
b_1 => B_1(1),
b_0 => B_1(0),
b_2 => B_1(2),
b_3 => B_1(3),
y1_1 => Y1(1),
y1_0 => Y1(0),
y1_2 => Y1(2),
y1_3 => Y1(3),
negy => NEGY);
SWAP2: swap_0 port map (
x1_1 => X1(1),
x1_0 => X1(0),
x1_2 => X1(2),
x1_3 => X1(3),
yout_1 => yout_1,
yout_0 => yout_0,
yout_5 => yout_5,
yout_2 => yout_2,
yout_3 => yout_3,
yout_4 => yout_4,
y1_1 => Y1(5),
y1_0 => Y1(4),
b_1 => B_1(1),
b_0 => B_1(0),
b_5 => B_1(5),
b_2 => B_1(2),
b_3 => B_1(3),
b_4 => B_1(4),
xout_1 => xout_1,
xout_0 => xout_0,
xout_5 => xout_5,
xout_2 => xout_2,
xout_3 => xout_3,
xout_4 => xout_4,
negx => NEGX,
swapxy => SWAPXY,
negy => NEGY);
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity rcb is
port(
X_1_5 :  in std_logic;
X_1_4 :  in std_logic;
X_1_3 :  in std_logic;
X_1_2 :  in std_logic;
X_1_1 :  in std_logic;
X_1_0 :  in std_logic;
Y_1_5 :  in std_logic;
Y_1_4 :  in std_logic;
Y_1_3 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
cmd_2 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
addr_ram_7 :  out std_logic;
addr_ram_6 :  out std_logic;
addr_ram_5 :  out std_logic;
addr_ram_4 :  out std_logic;
addr_ram_3 :  out std_logic;
addr_ram_2 :  out std_logic;
addr_ram_1 :  out std_logic;
addr_ram_0 :  out std_logic;
data_ram_0 :  out std_logic;
data_ram_1 :  out std_logic;
data_ram_2 :  out std_logic;
data_ram_3 :  out std_logic;
data_ram_4 :  out std_logic;
data_ram_5 :  out std_logic;
data_ram_6 :  out std_logic;
data_ram_7 :  out std_logic;
data_ram_8 :  out std_logic;
data_ram_9 :  out std_logic;
data_ram_10 :  out std_logic;
data_ram_11 :  out std_logic;
data_ram_12 :  out std_logic;
data_ram_13 :  out std_logic;
data_ram_14 :  out std_logic;
data_ram_15 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
xout_0 :  in std_logic;
xout_1 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
clk_c :  in std_logic;
un7_state :  out std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
startcmd_i_a5 :  in std_logic;
m3 :  out std_logic;
vram_write_i7lto31 :  out std_logic;
vram_write_i_2 :  out std_logic;
is_same :  out std_logic;
finish_x :  out std_logic;
state_s0_0_a3 :  out std_logic;
word_reg_delayed_6 :  out std_logic;
vram_write_i_4_0 :  out std_logic;
mux_out_i_a2 :  in std_logic;
vram_write_i_6 :  out std_logic);
end rcb;

architecture beh of rcb is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal IDLE_CYCLES : std_logic_vector(31 downto 0);
signal Y : std_logic_vector(5 downto 0);
signal Y_10 : std_logic_vector(4 downto 0);
signal X : std_logic_vector(5 downto 0);
signal NSTATE : std_logic_vector(0 to 0);
signal OUTPUT_VALUE : std_logic_vector(5 downto 0);
signal X_0 : std_logic_vector(5 downto 0);
signal Y_0 : std_logic_vector(5 downto 0);
signal WORD_REG_DELAYED : std_logic_vector(7 downto 0);
signal Y_2 : std_logic_vector(5 downto 0);
signal X_2 : std_logic_vector(5 downto 0);
signal VRADDR : std_logic_vector(7 downto 0);
signal X_MIN : std_logic_vector(5 downto 0);
signal Y_3 : std_logic_vector(5 downto 0);
signal X_3 : std_logic_vector(5 downto 0);
signal CACHE_STORE_REG_15 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_15 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_14 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_14 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_13 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_13 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_12 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_12 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_11 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_11 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_10 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_10 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_9 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_9 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_8 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_8 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_7 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_7 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_6 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_6 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_5 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_5 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_4 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_4 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_3 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_3 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_2 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_2 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_1 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_1 : std_logic_vector(1 downto 0);
signal CACHE_STORE_REG_0 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_0 : std_logic_vector(1 downto 0);
signal NSTATE_RNO : std_logic_vector(0 to 0);
signal STATE : std_logic_vector(1 downto 0);
signal UN1_VRAM_DELAY_3 : std_logic_vector(0 to 0);
signal UN1_VRAM_DELAY_4 : std_logic_vector(0 to 0);
signal PIXOPIN_1 : std_logic_vector(0 to 0);
signal NSTATE_I : std_logic_vector(0 to 0);
signal IDLE_CYCLES_C0_COMBOUT : std_logic ;
signal UN1_RCB_STATE22 : std_logic ;
signal IDLE_CYCLESLDE_X : std_logic ;
signal IDLE_CYCLES_C1_COMBOUT : std_logic ;
signal IDLE_CYCLES_C2_COMBOUT : std_logic ;
signal IDLE_CYCLES_C3_COMBOUT : std_logic ;
signal IDLE_CYCLES_C4_COMBOUT : std_logic ;
signal IDLE_CYCLES_C5_COMBOUT : std_logic ;
signal IDLE_CYCLES_C6_COMBOUT : std_logic ;
signal IDLE_CYCLES_C7_COMBOUT : std_logic ;
signal IDLE_CYCLES_C8_COMBOUT : std_logic ;
signal IDLE_CYCLES_C9_COMBOUT : std_logic ;
signal IDLE_CYCLES_C10_COMBOUT : std_logic ;
signal IDLE_CYCLES_C11_COMBOUT : std_logic ;
signal IDLE_CYCLES_C12_COMBOUT : std_logic ;
signal IDLE_CYCLES_C13_COMBOUT : std_logic ;
signal IDLE_CYCLES_C14_COMBOUT : std_logic ;
signal IDLE_CYCLES_C15_COMBOUT : std_logic ;
signal IDLE_CYCLES_C16_COMBOUT : std_logic ;
signal IDLE_CYCLES_C17_COMBOUT : std_logic ;
signal IDLE_CYCLES_C18_COMBOUT : std_logic ;
signal IDLE_CYCLES_C19_COMBOUT : std_logic ;
signal IDLE_CYCLES_C20_COMBOUT : std_logic ;
signal IDLE_CYCLES_C21_COMBOUT : std_logic ;
signal IDLE_CYCLES_C22_COMBOUT : std_logic ;
signal IDLE_CYCLES_C23_COMBOUT : std_logic ;
signal IDLE_CYCLES_C24_COMBOUT : std_logic ;
signal IDLE_CYCLES_C25_COMBOUT : std_logic ;
signal IDLE_CYCLES_C26_COMBOUT : std_logic ;
signal IDLE_CYCLES_C27_COMBOUT : std_logic ;
signal IDLE_CYCLES_C28_COMBOUT : std_logic ;
signal IDLE_CYCLES_C29_COMBOUT : std_logic ;
signal IDLE_CYCLES_C30_COMBOUT : std_logic ;
signal IDLE_CYCLES_C31_COMBOUT : std_logic ;
signal Y_E5_0_G4 : std_logic ;
signal UN1_VRAM_DELAY_2 : std_logic ;
signal Y_E5_0_G1 : std_logic ;
signal Y_E4_0_G1 : std_logic ;
signal Y_E3_0_G1 : std_logic ;
signal Y_E2_0_G1 : std_logic ;
signal Y_E1_0_G1 : std_logic ;
signal Y_E0_0_G1 : std_logic ;
signal X_N5_0_186_M4 : std_logic ;
signal UN1_VRAM_DELAY_5 : std_logic ;
signal X_N4_0_154_M4 : std_logic ;
signal X_N3_0_122_M4 : std_logic ;
signal X_N2_0_90_M4 : std_logic ;
signal X_N1_0_56_M2 : std_logic ;
signal X_N0_0_29_M2 : std_logic ;
signal LT5_I : std_logic ;
signal LT5_I_0 : std_logic ;
signal UN7_STATE_71 : std_logic ;
signal RCB_FINISH_I : std_logic ;
signal RCB_FINISH_I_2_0_G4 : std_logic ;
signal RCB_FINISH_I_2_0_G0_I_0 : std_logic ;
signal \NSTATE_2_0_0__G0_0_X\ : std_logic ;
signal IDLE_CYCLES_C0_COUT : std_logic ;
signal VCC : std_logic ;
signal IDLE_CYCLES_C1_COUT : std_logic ;
signal IDLE_CYCLES_C2_COUT : std_logic ;
signal IDLE_CYCLES_C3_COUT : std_logic ;
signal IDLE_CYCLES_C4_COUT : std_logic ;
signal IDLE_CYCLES_C5_COUT : std_logic ;
signal IDLE_CYCLES_C6_COUT : std_logic ;
signal IDLE_CYCLES_C7_COUT : std_logic ;
signal IDLE_CYCLES_C8_COUT : std_logic ;
signal IDLE_CYCLES_C9_COUT : std_logic ;
signal IDLE_CYCLES_C10_COUT : std_logic ;
signal IDLE_CYCLES_C11_COUT : std_logic ;
signal IDLE_CYCLES_C12_COUT : std_logic ;
signal IDLE_CYCLES_C13_COUT : std_logic ;
signal IDLE_CYCLES_C14_COUT : std_logic ;
signal IDLE_CYCLES_C15_COUT : std_logic ;
signal IDLE_CYCLES_C16_COUT : std_logic ;
signal IDLE_CYCLES_C17_COUT : std_logic ;
signal IDLE_CYCLES_C18_COUT : std_logic ;
signal IDLE_CYCLES_C19_COUT : std_logic ;
signal IDLE_CYCLES_C20_COUT : std_logic ;
signal IDLE_CYCLES_C21_COUT : std_logic ;
signal IDLE_CYCLES_C22_COUT : std_logic ;
signal IDLE_CYCLES_C23_COUT : std_logic ;
signal IDLE_CYCLES_C24_COUT : std_logic ;
signal IDLE_CYCLES_C25_COUT : std_logic ;
signal IDLE_CYCLES_C26_COUT : std_logic ;
signal IDLE_CYCLES_C27_COUT : std_logic ;
signal IDLE_CYCLES_C28_COUT : std_logic ;
signal IDLE_CYCLES_C29_COUT : std_logic ;
signal IDLE_CYCLES_C30_COUT : std_logic ;
signal LT_0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT_3 : std_logic ;
signal LT_4 : std_logic ;
signal LT5 : std_logic ;
signal LT5_COUT : std_logic ;
signal LT_0_0 : std_logic ;
signal LT_1_0 : std_logic ;
signal LT_2_0 : std_logic ;
signal LT_3_0 : std_logic ;
signal LT_4_0 : std_logic ;
signal LT5_0 : std_logic ;
signal LT_0_1 : std_logic ;
signal LT_1_1 : std_logic ;
signal LT_2_1 : std_logic ;
signal LT_3_1 : std_logic ;
signal LT_4_1 : std_logic ;
signal LT_0_2 : std_logic ;
signal LT_1_2 : std_logic ;
signal LT_2_2 : std_logic ;
signal LT_3_2 : std_logic ;
signal LT_4_2 : std_logic ;
signal Y_0_SQMUXA : std_logic ;
signal X_N0_0_29_M4 : std_logic ;
signal UN17_VRAM_DELAY_NE : std_logic ;
signal X_2_SQMUXA : std_logic ;
signal X_C2 : std_logic ;
signal X_N1_0_56_M4 : std_logic ;
signal X_N2_0_90_X4 : std_logic ;
signal Y_C2 : std_logic ;
signal UN17_VRAM_DELAY_NE_0 : std_logic ;
signal UN17_VRAM_DELAY_NE_1 : std_logic ;
signal UN17_VRAM_DELAY_NE_2 : std_logic ;
signal VRAM_WRITE_I7LTO30_13 : std_logic ;
signal VRAM_WRITE_I7LTO30_14 : std_logic ;
signal VRAM_WRITE_I7LTO30_15 : std_logic ;
signal VRAM_WRITE_I7LTO30_16 : std_logic ;
signal VRAM_WRITE_I7LTO30_17 : std_logic ;
signal VRAM_WRITE_I7LTO30_18 : std_logic ;
signal VRAM_WRITE_I7LTO30_19 : std_logic ;
signal UN20_VRAM_DELAY_NE_0 : std_logic ;
signal UN20_VRAM_DELAY_NE_1 : std_logic ;
signal UN20_VRAM_DELAY_NE_2 : std_logic ;
signal RCB_FINISH_I_2_0_G4_1 : std_logic ;
signal X_N3_0_122_X4 : std_logic ;
signal Y_57_1 : std_logic ;
signal VRAM_WRITE : std_logic ;
signal VRAM_WRITE_I7LTO3 : std_logic ;
signal X_N4_0_154_X4 : std_logic ;
signal VRAM_WRITE_I7LTO30_23 : std_logic ;
signal VRAM_WRITE_I7LTO30_24 : std_logic ;
signal UN6_VRAM_DELAY : std_logic ;
signal X_N5_0_186_X4 : std_logic ;
signal UN20_VRAM_DELAY_NE : std_logic ;
signal Y_E5_0_G2 : std_logic ;
signal VRAM_WRITE_I7LTO31_72 : std_logic ;
signal START_I : std_logic ;
signal VRAM_WRITE_I_73 : std_logic ;
signal VRAM_WRITE_I : std_logic ;
signal IS_SAME_74 : std_logic ;
signal GND : std_logic ;
signal LT5_I_0_I : std_logic ;
signal LT5_I_I : std_logic ;
signal UN1_RCB_STATE22_I : std_logic ;
component pix_word_cache
port(
pre_rdout_par_15_1 :  out std_logic;
pre_rdout_par_15_0 :  out std_logic;
pre_rdout_par_14_1 :  out std_logic;
pre_rdout_par_14_0 :  out std_logic;
pre_rdout_par_13_1 :  out std_logic;
pre_rdout_par_13_0 :  out std_logic;
pre_rdout_par_12_1 :  out std_logic;
pre_rdout_par_12_0 :  out std_logic;
pre_rdout_par_10_1 :  out std_logic;
pre_rdout_par_10_0 :  out std_logic;
pre_rdout_par_9_1 :  out std_logic;
pre_rdout_par_9_0 :  out std_logic;
pre_rdout_par_8_1 :  out std_logic;
pre_rdout_par_8_0 :  out std_logic;
pre_rdout_par_7_1 :  out std_logic;
pre_rdout_par_7_0 :  out std_logic;
pre_rdout_par_6_1 :  out std_logic;
pre_rdout_par_6_0 :  out std_logic;
pre_rdout_par_5_1 :  out std_logic;
pre_rdout_par_5_0 :  out std_logic;
pre_rdout_par_4_1 :  out std_logic;
pre_rdout_par_4_0 :  out std_logic;
pre_rdout_par_3_1 :  out std_logic;
pre_rdout_par_3_0 :  out std_logic;
pre_rdout_par_2_1 :  out std_logic;
pre_rdout_par_2_0 :  out std_logic;
pre_rdout_par_1_1 :  out std_logic;
pre_rdout_par_1_0 :  out std_logic;
pre_rdout_par_0_1 :  out std_logic;
pre_rdout_par_0_0 :  out std_logic;
pre_rdout_par_11_1 :  out std_logic;
pre_rdout_par_11_0 :  out std_logic;
nstate_0 :  in std_logic;
Y_0_0 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
Y_1_0 :  in std_logic;
X_0 :  in std_logic;
X_1 :  in std_logic;
X_0_0 :  in std_logic;
X_1_0 :  in std_logic;
pixopin_1_0 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
vram_write :  in std_logic;
is_same :  out std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic  );
end component;
component ram_fsm
port(
state_1 :  out std_logic;
state_0 :  out std_logic;
cache_store_reg_0_1 :  in std_logic;
cache_store_reg_0_0 :  in std_logic;
cache_store_reg_1_1 :  in std_logic;
cache_store_reg_1_0 :  in std_logic;
cache_store_reg_2_1 :  in std_logic;
cache_store_reg_2_0 :  in std_logic;
cache_store_reg_3_1 :  in std_logic;
cache_store_reg_3_0 :  in std_logic;
cache_store_reg_4_1 :  in std_logic;
cache_store_reg_4_0 :  in std_logic;
cache_store_reg_5_1 :  in std_logic;
cache_store_reg_5_0 :  in std_logic;
cache_store_reg_6_1 :  in std_logic;
cache_store_reg_6_0 :  in std_logic;
cache_store_reg_7_1 :  in std_logic;
cache_store_reg_7_0 :  in std_logic;
cache_store_reg_8_1 :  in std_logic;
cache_store_reg_8_0 :  in std_logic;
cache_store_reg_9_1 :  in std_logic;
cache_store_reg_9_0 :  in std_logic;
cache_store_reg_10_1 :  in std_logic;
cache_store_reg_10_0 :  in std_logic;
cache_store_reg_11_1 :  in std_logic;
cache_store_reg_11_0 :  in std_logic;
cache_store_reg_12_1 :  in std_logic;
cache_store_reg_12_0 :  in std_logic;
cache_store_reg_13_1 :  in std_logic;
cache_store_reg_13_0 :  in std_logic;
cache_store_reg_14_1 :  in std_logic;
cache_store_reg_14_0 :  in std_logic;
cache_store_reg_15_1 :  in std_logic;
cache_store_reg_15_0 :  in std_logic;
vraddr_7 :  in std_logic;
vraddr_6 :  in std_logic;
vraddr_5 :  in std_logic;
vraddr_4 :  in std_logic;
vraddr_3 :  in std_logic;
vraddr_2 :  in std_logic;
vraddr_1 :  in std_logic;
vraddr_0 :  in std_logic;
nstate_0_0 :  in std_logic;
Y_0 :  out std_logic;
Y_1 :  out std_logic;
Y_2 :  out std_logic;
Y_3 :  out std_logic;
Y_0_0 :  in std_logic;
Y_0_1 :  in std_logic;
Y_0_2 :  in std_logic;
Y_0_3 :  in std_logic;
Y_1_0 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_3 :  in std_logic;
X_1_0 :  in std_logic;
X_1_1 :  in std_logic;
addr_ram_7 :  out std_logic;
addr_ram_6 :  out std_logic;
addr_ram_5 :  out std_logic;
addr_ram_4 :  out std_logic;
addr_ram_3 :  out std_logic;
addr_ram_2 :  out std_logic;
addr_ram_1 :  out std_logic;
addr_ram_0 :  out std_logic;
data_ram_0 :  out std_logic;
data_ram_1 :  out std_logic;
data_ram_2 :  out std_logic;
data_ram_3 :  out std_logic;
data_ram_4 :  out std_logic;
data_ram_5 :  out std_logic;
data_ram_6 :  out std_logic;
data_ram_7 :  out std_logic;
data_ram_8 :  out std_logic;
data_ram_9 :  out std_logic;
data_ram_10 :  out std_logic;
data_ram_11 :  out std_logic;
data_ram_12 :  out std_logic;
data_ram_13 :  out std_logic;
data_ram_14 :  out std_logic;
data_ram_15 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
cmd_0 :  in std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  in std_logic;
X_3 :  in std_logic;
xout_0 :  in std_logic;
xout_1 :  in std_logic;
X_0_0 :  in std_logic;
X_0_1 :  in std_logic;
X_0_2 :  out std_logic;
X_0_3 :  out std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
pixopin_1_0 :  out std_logic;
db_fsm_state_i_0 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
word_reg_delayed_5 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
word_reg_delayed_4 :  in std_logic;
word_reg_delayed_1 :  in std_logic;
word_reg_delayed_3 :  in std_logic;
word_reg_delayed_2 :  in std_logic;
word_reg_delayed_7 :  in std_logic;
un1_vram_delay_4_0 :  out std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
clk_c :  in std_logic;
start_i :  out std_logic;
vram_write_i :  out std_logic;
un7_state :  out std_logic;
state_s0_0_a3 :  out std_logic;
vram_write :  in std_logic;
word_reg_delayed_6_scalar_0 :  out std_logic;
un6_vram_delay :  out std_logic;
vram_write_i_4_0 :  out std_logic;
un1_rcb_state22 :  out std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  in std_logic;
startcmd_i_a5 :  in std_logic;
Y_0_sqmuxa :  out std_logic;
lt5 :  in std_logic;
dav_c :  in std_logic;
un20_vram_delay_NE :  in std_logic;
vram_write_i7lto31 :  in std_logic;
vram_write_i_6 :  out std_logic;
vram_write_i_2 :  out std_logic;
is_same :  in std_logic;
idle_cycleslde_x :  out std_logic  );
end component;
begin
\RCB_FSM_IDLE_CYCLES_0_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(0),
datain => IDLE_CYCLES_C0_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_1_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(1),
datain => IDLE_CYCLES_C1_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_2_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(2),
datain => IDLE_CYCLES_C2_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_3_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(3),
datain => IDLE_CYCLES_C3_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_4_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(4),
datain => IDLE_CYCLES_C4_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_5_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(5),
datain => IDLE_CYCLES_C5_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_6_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(6),
datain => IDLE_CYCLES_C6_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_7_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(7),
datain => IDLE_CYCLES_C7_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_8_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(8),
datain => IDLE_CYCLES_C8_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_9_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(9),
datain => IDLE_CYCLES_C9_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_10_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(10),
datain => IDLE_CYCLES_C10_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_11_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(11),
datain => IDLE_CYCLES_C11_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_12_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(12),
datain => IDLE_CYCLES_C12_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_13_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(13),
datain => IDLE_CYCLES_C13_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_14_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(14),
datain => IDLE_CYCLES_C14_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_15_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(15),
datain => IDLE_CYCLES_C15_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_16_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(16),
datain => IDLE_CYCLES_C16_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_17_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(17),
datain => IDLE_CYCLES_C17_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_18_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(18),
datain => IDLE_CYCLES_C18_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_19_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(19),
datain => IDLE_CYCLES_C19_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_20_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(20),
datain => IDLE_CYCLES_C20_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_21_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(21),
datain => IDLE_CYCLES_C21_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_22_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(22),
datain => IDLE_CYCLES_C22_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_23_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(23),
datain => IDLE_CYCLES_C23_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_24_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(24),
datain => IDLE_CYCLES_C24_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_25_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(25),
datain => IDLE_CYCLES_C25_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_26_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(26),
datain => IDLE_CYCLES_C26_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_27_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(27),
datain => IDLE_CYCLES_C27_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_28_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(28),
datain => IDLE_CYCLES_C28_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_29_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(29),
datain => IDLE_CYCLES_C29_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_30_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(30),
datain => IDLE_CYCLES_C30_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_31_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(31),
datain => IDLE_CYCLES_C31_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I,
ena => IDLE_CYCLESLDE_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_Y_5_\: cycloneii_lcell_ff port map (
regout => Y(5),
datain => Y_E5_0_G4,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_E5_0_G1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_Y_4_\: cycloneii_lcell_ff port map (
regout => Y(4),
datain => Y_E4_0_G1,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_10(4),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_Y_3_\: cycloneii_lcell_ff port map (
regout => Y(3),
datain => Y_E3_0_G1,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_10(3),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_Y_2_\: cycloneii_lcell_ff port map (
regout => Y(2),
datain => Y_E2_0_G1,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_10(2),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_Y_1_\: cycloneii_lcell_ff port map (
regout => Y(1),
datain => Y_E1_0_G1,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_10(1),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_Y_0_\: cycloneii_lcell_ff port map (
regout => Y(0),
datain => Y_E0_0_G1,
clk => clk_c,
sload => NSTATE_RNO(0),
sdata => Y_10(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_X_5_\: cycloneii_lcell_ff port map (
regout => X(5),
datain => X_N5_0_186_M4,
clk => clk_c,
sload => NSTATE_I(0),
sdata => OUTPUT_VALUE(5),
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CLRXY_REG_X_4_\: cycloneii_lcell_ff port map (
regout => X(4),
datain => X_N4_0_154_M4,
clk => clk_c,
sload => NSTATE_I(0),
sdata => OUTPUT_VALUE(4),
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CLRXY_REG_X_3_\: cycloneii_lcell_ff port map (
regout => X(3),
datain => X_N3_0_122_M4,
clk => clk_c,
sload => NSTATE_I(0),
sdata => OUTPUT_VALUE(3),
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CLRXY_REG_X_2_\: cycloneii_lcell_ff port map (
regout => X(2),
datain => X_N2_0_90_M4,
clk => clk_c,
sload => NSTATE_I(0),
sdata => OUTPUT_VALUE(2),
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CLRXY_REG_X_1_\: cycloneii_lcell_ff port map (
regout => X(1),
datain => X_N1_0_56_M2,
clk => clk_c,
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_0_\: cycloneii_lcell_ff port map (
regout => X(0),
datain => X_N0_0_29_M2,
clk => clk_c,
ena => UN1_VRAM_DELAY_5,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_XY_PREV_X_5_\: cycloneii_lcell_ff port map (
regout => X_0(5),
datain => X_1_5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_X_4_\: cycloneii_lcell_ff port map (
regout => X_0(4),
datain => X_1_4,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_X_3_\: cycloneii_lcell_ff port map (
regout => X_0(3),
datain => X_1_3,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_X_2_\: cycloneii_lcell_ff port map (
regout => X_0(2),
datain => X_1_2,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_X_1_\: cycloneii_lcell_ff port map (
regout => X_0(1),
datain => X_1_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_X_0_\: cycloneii_lcell_ff port map (
regout => X_0(0),
datain => X_1_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_5_\: cycloneii_lcell_ff port map (
regout => Y_0(5),
datain => Y_1_5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_4_\: cycloneii_lcell_ff port map (
regout => Y_0(4),
datain => Y_1_4,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_3_\: cycloneii_lcell_ff port map (
regout => Y_0(3),
datain => Y_1_3,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_2_\: cycloneii_lcell_ff port map (
regout => Y_0(2),
datain => Y_1_2,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_1_\: cycloneii_lcell_ff port map (
regout => Y_0(1),
datain => Y_1_1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_XY_PREV_Y_0_\: cycloneii_lcell_ff port map (
regout => Y_0(0),
datain => Y_1_0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_7_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(7),
datain => Y_2(5),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_6_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(6),
datain => Y_2(4),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_5_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(5),
datain => Y_2(3),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_4_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(4),
datain => Y_2(2),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_3_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(3),
datain => X_2(5),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_2_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(2),
datain => X_2(4),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_1_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(1),
datain => X_2(3),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_0_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED(0),
datain => X_2(2),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_7_\: cycloneii_lcell_ff port map (
regout => VRADDR(7),
datain => WORD_REG_DELAYED(7),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_6_\: cycloneii_lcell_ff port map (
regout => VRADDR(6),
datain => WORD_REG_DELAYED(6),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_5_\: cycloneii_lcell_ff port map (
regout => VRADDR(5),
datain => WORD_REG_DELAYED(5),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_4_\: cycloneii_lcell_ff port map (
regout => VRADDR(4),
datain => WORD_REG_DELAYED(4),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_3_\: cycloneii_lcell_ff port map (
regout => VRADDR(3),
datain => WORD_REG_DELAYED(3),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_2_\: cycloneii_lcell_ff port map (
regout => VRADDR(2),
datain => WORD_REG_DELAYED(2),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_1_\: cycloneii_lcell_ff port map (
regout => VRADDR(1),
datain => WORD_REG_DELAYED(1),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_VRADDR_0_\: cycloneii_lcell_ff port map (
regout => VRADDR(0),
datain => WORD_REG_DELAYED(0),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_X_MIN_5_\: cycloneii_lcell_ff port map (
regout => X_MIN(5),
datain => OUTPUT_VALUE(5),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_X_MIN_4_\: cycloneii_lcell_ff port map (
regout => X_MIN(4),
datain => OUTPUT_VALUE(4),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_X_MIN_3_\: cycloneii_lcell_ff port map (
regout => X_MIN(3),
datain => OUTPUT_VALUE(3),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_X_MIN_2_\: cycloneii_lcell_ff port map (
regout => X_MIN(2),
datain => OUTPUT_VALUE(2),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_X_MIN_1_\: cycloneii_lcell_ff port map (
regout => X_MIN(1),
datain => OUTPUT_VALUE(1),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_X_MIN_0_\: cycloneii_lcell_ff port map (
regout => X_MIN(0),
datain => OUTPUT_VALUE(0),
clk => clk_c,
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_XY_MAX_Y_5_\: cycloneii_lcell_ff port map (
regout => Y_3(5),
datain => Y_1_5,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(5),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_4_\: cycloneii_lcell_ff port map (
regout => Y_3(4),
datain => Y_1_4,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(4),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_3_\: cycloneii_lcell_ff port map (
regout => Y_3(3),
datain => Y_1_3,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(3),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_2_\: cycloneii_lcell_ff port map (
regout => Y_3(2),
datain => Y_1_2,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(2),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_1_\: cycloneii_lcell_ff port map (
regout => Y_2(1),
datain => Y_1_1,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(1),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_0_\: cycloneii_lcell_ff port map (
regout => Y_2(0),
datain => Y_1_0,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(0),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_5_\: cycloneii_lcell_ff port map (
regout => X_3(5),
datain => X_1_5,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(5),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_4_\: cycloneii_lcell_ff port map (
regout => X_3(4),
datain => X_1_4,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(4),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_3_\: cycloneii_lcell_ff port map (
regout => X_3(3),
datain => X_1_3,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(3),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_2_\: cycloneii_lcell_ff port map (
regout => X_3(2),
datain => X_1_2,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(2),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_1_\: cycloneii_lcell_ff port map (
regout => X_2(1),
datain => X_1_1,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(1),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_0_\: cycloneii_lcell_ff port map (
regout => X_2(0),
datain => X_1_0,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(0),
ena => NSTATE_RNO(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CACHE_STORE_REG_15_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_15(1),
datain => PRE_RDOUT_PAR_15(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_15_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_15(0),
datain => PRE_RDOUT_PAR_15(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_14_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_14(1),
datain => PRE_RDOUT_PAR_14(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_14_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_14(0),
datain => PRE_RDOUT_PAR_14(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_13_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_13(1),
datain => PRE_RDOUT_PAR_13(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_13_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_13(0),
datain => PRE_RDOUT_PAR_13(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_12_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_12(1),
datain => PRE_RDOUT_PAR_12(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_12_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_12(0),
datain => PRE_RDOUT_PAR_12(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_11_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_11(1),
datain => PRE_RDOUT_PAR_11(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_11_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_11(0),
datain => PRE_RDOUT_PAR_11(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_10_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_10(1),
datain => PRE_RDOUT_PAR_10(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_10_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_10(0),
datain => PRE_RDOUT_PAR_10(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_9_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_9(1),
datain => PRE_RDOUT_PAR_9(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_9_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_9(0),
datain => PRE_RDOUT_PAR_9(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_8_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_8(1),
datain => PRE_RDOUT_PAR_8(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_8_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_8(0),
datain => PRE_RDOUT_PAR_8(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_7_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_7(1),
datain => PRE_RDOUT_PAR_7(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_7_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_7(0),
datain => PRE_RDOUT_PAR_7(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_6_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_6(1),
datain => PRE_RDOUT_PAR_6(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_6_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_6(0),
datain => PRE_RDOUT_PAR_6(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_5_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_5(1),
datain => PRE_RDOUT_PAR_5(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_5_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_5(0),
datain => PRE_RDOUT_PAR_5(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_4_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_4(1),
datain => PRE_RDOUT_PAR_4(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_4_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_4(0),
datain => PRE_RDOUT_PAR_4(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_3_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_3(1),
datain => PRE_RDOUT_PAR_3(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_3_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_3(0),
datain => PRE_RDOUT_PAR_3(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_2_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_2(1),
datain => PRE_RDOUT_PAR_2(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_2_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_2(0),
datain => PRE_RDOUT_PAR_2(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_1_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_1(1),
datain => PRE_RDOUT_PAR_1(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_1_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_1(0),
datain => PRE_RDOUT_PAR_1(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_0_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_0(1),
datain => PRE_RDOUT_PAR_0(1),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CACHE_STORE_REG_0_0_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_0(0),
datain => PRE_RDOUT_PAR_0(0),
clk => clk_c,
ena => UN7_STATE_71,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
RCB_FSM_RCB_FINISH_I: cycloneii_lcell_ff port map (
regout => RCB_FINISH_I,
datain => RCB_FINISH_I_2_0_G4,
clk => clk_c,
sclr => reset_c,
ena => RCB_FINISH_I_2_0_G0_I_0,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\NSTATE_0_\: cycloneii_lcell_ff port map (
regout => NSTATE(0),
datain => NSTATE_RNO(0),
clk => clk_c,
sclr => reset_c,
ena => \NSTATE_2_0_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
NSTATE_RNO(0) <= not UN1_VRAM_DELAY_2;
RCB_FSM_IDLE_CYCLES_C0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => IDLE_CYCLES_C0_COMBOUT,
cout => IDLE_CYCLES_C0_COUT,
dataa => IDLE_CYCLES(0),
datab => VCC);
RCB_FSM_IDLE_CYCLES_C1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C1_COMBOUT,
cout => IDLE_CYCLES_C1_COUT,
dataa => IDLE_CYCLES(1),
cin => IDLE_CYCLES_C0_COUT);
RCB_FSM_IDLE_CYCLES_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C2_COMBOUT,
cout => IDLE_CYCLES_C2_COUT,
dataa => IDLE_CYCLES(2),
cin => IDLE_CYCLES_C1_COUT);
RCB_FSM_IDLE_CYCLES_C3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C3_COMBOUT,
cout => IDLE_CYCLES_C3_COUT,
dataa => IDLE_CYCLES(3),
cin => IDLE_CYCLES_C2_COUT);
RCB_FSM_IDLE_CYCLES_C4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C4_COMBOUT,
cout => IDLE_CYCLES_C4_COUT,
dataa => IDLE_CYCLES(4),
cin => IDLE_CYCLES_C3_COUT);
RCB_FSM_IDLE_CYCLES_C5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C5_COMBOUT,
cout => IDLE_CYCLES_C5_COUT,
dataa => IDLE_CYCLES(5),
cin => IDLE_CYCLES_C4_COUT);
RCB_FSM_IDLE_CYCLES_C6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C6_COMBOUT,
cout => IDLE_CYCLES_C6_COUT,
dataa => IDLE_CYCLES(6),
cin => IDLE_CYCLES_C5_COUT);
RCB_FSM_IDLE_CYCLES_C7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C7_COMBOUT,
cout => IDLE_CYCLES_C7_COUT,
dataa => IDLE_CYCLES(7),
cin => IDLE_CYCLES_C6_COUT);
RCB_FSM_IDLE_CYCLES_C8: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C8_COMBOUT,
cout => IDLE_CYCLES_C8_COUT,
dataa => IDLE_CYCLES(8),
cin => IDLE_CYCLES_C7_COUT);
RCB_FSM_IDLE_CYCLES_C9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C9_COMBOUT,
cout => IDLE_CYCLES_C9_COUT,
dataa => IDLE_CYCLES(9),
cin => IDLE_CYCLES_C8_COUT);
RCB_FSM_IDLE_CYCLES_C10: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C10_COMBOUT,
cout => IDLE_CYCLES_C10_COUT,
dataa => IDLE_CYCLES(10),
cin => IDLE_CYCLES_C9_COUT);
RCB_FSM_IDLE_CYCLES_C11: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C11_COMBOUT,
cout => IDLE_CYCLES_C11_COUT,
dataa => IDLE_CYCLES(11),
cin => IDLE_CYCLES_C10_COUT);
RCB_FSM_IDLE_CYCLES_C12: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C12_COMBOUT,
cout => IDLE_CYCLES_C12_COUT,
dataa => IDLE_CYCLES(12),
cin => IDLE_CYCLES_C11_COUT);
RCB_FSM_IDLE_CYCLES_C13: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C13_COMBOUT,
cout => IDLE_CYCLES_C13_COUT,
dataa => IDLE_CYCLES(13),
cin => IDLE_CYCLES_C12_COUT);
RCB_FSM_IDLE_CYCLES_C14: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C14_COMBOUT,
cout => IDLE_CYCLES_C14_COUT,
dataa => IDLE_CYCLES(14),
cin => IDLE_CYCLES_C13_COUT);
RCB_FSM_IDLE_CYCLES_C15: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C15_COMBOUT,
cout => IDLE_CYCLES_C15_COUT,
dataa => IDLE_CYCLES(15),
cin => IDLE_CYCLES_C14_COUT);
RCB_FSM_IDLE_CYCLES_C16: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C16_COMBOUT,
cout => IDLE_CYCLES_C16_COUT,
dataa => IDLE_CYCLES(16),
cin => IDLE_CYCLES_C15_COUT);
RCB_FSM_IDLE_CYCLES_C17: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C17_COMBOUT,
cout => IDLE_CYCLES_C17_COUT,
dataa => IDLE_CYCLES(17),
cin => IDLE_CYCLES_C16_COUT);
RCB_FSM_IDLE_CYCLES_C18: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C18_COMBOUT,
cout => IDLE_CYCLES_C18_COUT,
dataa => IDLE_CYCLES(18),
cin => IDLE_CYCLES_C17_COUT);
RCB_FSM_IDLE_CYCLES_C19: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C19_COMBOUT,
cout => IDLE_CYCLES_C19_COUT,
dataa => IDLE_CYCLES(19),
cin => IDLE_CYCLES_C18_COUT);
RCB_FSM_IDLE_CYCLES_C20: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C20_COMBOUT,
cout => IDLE_CYCLES_C20_COUT,
dataa => IDLE_CYCLES(20),
cin => IDLE_CYCLES_C19_COUT);
RCB_FSM_IDLE_CYCLES_C21: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C21_COMBOUT,
cout => IDLE_CYCLES_C21_COUT,
dataa => IDLE_CYCLES(21),
cin => IDLE_CYCLES_C20_COUT);
RCB_FSM_IDLE_CYCLES_C22: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C22_COMBOUT,
cout => IDLE_CYCLES_C22_COUT,
dataa => IDLE_CYCLES(22),
cin => IDLE_CYCLES_C21_COUT);
RCB_FSM_IDLE_CYCLES_C23: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C23_COMBOUT,
cout => IDLE_CYCLES_C23_COUT,
dataa => IDLE_CYCLES(23),
cin => IDLE_CYCLES_C22_COUT);
RCB_FSM_IDLE_CYCLES_C24: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C24_COMBOUT,
cout => IDLE_CYCLES_C24_COUT,
dataa => IDLE_CYCLES(24),
cin => IDLE_CYCLES_C23_COUT);
RCB_FSM_IDLE_CYCLES_C25: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C25_COMBOUT,
cout => IDLE_CYCLES_C25_COUT,
dataa => IDLE_CYCLES(25),
cin => IDLE_CYCLES_C24_COUT);
RCB_FSM_IDLE_CYCLES_C26: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C26_COMBOUT,
cout => IDLE_CYCLES_C26_COUT,
dataa => IDLE_CYCLES(26),
cin => IDLE_CYCLES_C25_COUT);
RCB_FSM_IDLE_CYCLES_C27: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C27_COMBOUT,
cout => IDLE_CYCLES_C27_COUT,
dataa => IDLE_CYCLES(27),
cin => IDLE_CYCLES_C26_COUT);
RCB_FSM_IDLE_CYCLES_C28: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C28_COMBOUT,
cout => IDLE_CYCLES_C28_COUT,
dataa => IDLE_CYCLES(28),
cin => IDLE_CYCLES_C27_COUT);
RCB_FSM_IDLE_CYCLES_C29: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C29_COMBOUT,
cout => IDLE_CYCLES_C29_COUT,
dataa => IDLE_CYCLES(29),
cin => IDLE_CYCLES_C28_COUT);
RCB_FSM_IDLE_CYCLES_C30: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => IDLE_CYCLES_C30_COMBOUT,
cout => IDLE_CYCLES_C30_COUT,
dataa => IDLE_CYCLES(30),
cin => IDLE_CYCLES_C29_COUT);
RCB_FSM_IDLE_CYCLES_C31: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => IDLE_CYCLES_C31_COMBOUT,
dataa => IDLE_CYCLES(31),
cin => IDLE_CYCLES_C30_COUT);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => X_0(0),
datab => X_1_0);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => X_0(1),
datab => X_1_1,
cin => LT_0);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => X_0(2),
datab => X_1_2,
cin => LT_1);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3,
dataa => X_0(3),
datab => X_1_3,
cin => LT_2);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4,
dataa => X_0(4),
datab => X_1_4,
cin => LT_3);
RCB_FSM_MIN_SLV_MIN_UN6_OUTPUT_VALUE_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5,
cout => LT5_COUT,
dataa => X_0(5),
datab => X_1_5,
cin => LT_4);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_0,
dataa => Y_0(0),
datab => Y_1_0);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_0,
dataa => Y_0(1),
datab => Y_1_1,
cin => LT_0_0);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_0,
dataa => Y_0(2),
datab => Y_1_2,
cin => LT_1_0);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_0,
dataa => Y_0(3),
datab => Y_1_3,
cin => LT_2_0);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_0,
dataa => Y_0(4),
datab => Y_1_4,
cin => LT_3_0);
RCB_FSM_MIN_SLV_MIN_UN40_OUTPUT_VALUE_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5_0,
dataa => Y_0(5),
datab => Y_1_5,
cin => LT_4_0);
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_1,
dataa => X_1_0,
datab => X_0(0));
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_1,
dataa => X_1_1,
datab => X_0(1),
cin => LT_0_1);
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_1,
dataa => X_1_2,
datab => X_0(2),
cin => LT_1_1);
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_1,
dataa => X_1_3,
datab => X_0(3),
cin => LT_2_1);
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_1,
dataa => X_1_4,
datab => X_0(4),
cin => LT_3_1);
RCB_FSM_MAX_SLV_MAX_UN6_OUTPUT_VALUE_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0010101100101011")
port map (
combout => LT5_I_0,
dataa => X_1_5,
datab => X_0(5),
cin => LT_4_1);
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_2,
dataa => Y_1_0,
datab => Y_0(0));
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_2,
dataa => Y_1_1,
datab => Y_0(1),
cin => LT_0_2);
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_2,
dataa => Y_1_2,
datab => Y_0(2),
cin => LT_1_2);
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_2,
dataa => Y_1_3,
datab => Y_0(3),
cin => LT_2_2);
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_2,
dataa => Y_1_4,
datab => Y_0(4),
cin => LT_3_2);
RCB_FSM_MAX_SLV_MAX_UN23_OUTPUT_VALUE_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0010101100101011")
port map (
combout => LT5_I,
dataa => Y_1_5,
datab => Y_0(5),
cin => LT_4_2);
\SPLITXY_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_3(1),
dataa => NSTATE(0),
datab => X(1),
datac => X_1_1);
\SPLITXY_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_3(0),
dataa => NSTATE(0),
datab => X(0),
datac => X_1_0);
\SPLITXY_Y_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_3(1),
dataa => NSTATE(0),
datab => Y(1),
datac => Y_1_1);
\SPLITXY_Y_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_3(0),
dataa => NSTATE(0),
datab => Y(0),
datac => Y_1_0);
\OUTPUT_VALUE_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE(3),
dataa => X_0(3),
datab => X_1_3,
datac => LT5);
\OUTPUT_VALUE_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE(2),
dataa => X_0(2),
datab => X_1_2,
datac => LT5);
\OUTPUT_VALUE_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE(1),
dataa => X_0(1),
datab => X_1_1,
datac => LT5);
\RCB_FSM_CLRXY_REG_Y_10_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(4),
dataa => Y_0(4),
datab => Y_1_4,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_10_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(3),
dataa => Y_0(3),
datab => Y_1_3,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_10_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(2),
dataa => Y_0(2),
datab => Y_1_2,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_10_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(1),
dataa => Y_0(1),
datab => Y_1_1,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_10_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(0),
dataa => Y_0(0),
datab => Y_1_0,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_X_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010111000101")
port map (
combout => X_N0_0_29_M4,
dataa => X_MIN(0),
datab => X(0),
datac => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_Y_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => Y_E0_0_G1,
dataa => Y(0),
datab => X_2_SQMUXA);
\RCB_FSM_CLRXY_REG_X_RNIQGT9_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => X_C2,
dataa => X(0),
datab => X(1),
datac => X(2));
\RCB_FSM_CLRXY_REG_X_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001101010101")
port map (
combout => X_N1_0_56_M4,
dataa => X_MIN(1),
datab => X(0),
datac => X(1),
datad => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_X_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000011110000111")
port map (
combout => X_N2_0_90_X4,
dataa => X(0),
datab => X(1),
datac => X(2));
\RCB_FSM_CLRXY_REG_X_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => X_N0_0_29_M2,
dataa => NSTATE(0),
datab => X_N0_0_29_M4,
datac => OUTPUT_VALUE(0));
\RCB_FSM_CLRXY_REG_Y_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100011011000110")
port map (
combout => Y_E1_0_G1,
dataa => Y(0),
datab => Y(1),
datac => X_2_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_RNITP6D_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => Y_C2,
dataa => Y(0),
datab => Y(1),
datac => Y(2));
RCB_FSM_UN17_VRAM_DELAY_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_VRAM_DELAY_NE_0,
dataa => X_3(5),
datab => X_2(0),
datac => X(5),
datad => X(0));
RCB_FSM_UN17_VRAM_DELAY_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_VRAM_DELAY_NE_1,
dataa => X_3(2),
datab => X_2(1),
datac => X(2),
datad => X(1));
RCB_FSM_UN17_VRAM_DELAY_NE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_VRAM_DELAY_NE_2,
dataa => X_3(4),
datab => X_3(3),
datac => X(4),
datad => X(3));
VRAM_VRAM_WRITE_I7LTO30_13: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => VRAM_WRITE_I7LTO30_13,
dataa => IDLE_CYCLES(25),
datab => IDLE_CYCLES(26),
datac => IDLE_CYCLES(24));
VRAM_VRAM_WRITE_I7LTO30_14: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_14,
dataa => IDLE_CYCLES(21),
datab => IDLE_CYCLES(22),
datac => IDLE_CYCLES(20),
datad => IDLE_CYCLES(27));
VRAM_VRAM_WRITE_I7LTO30_15: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_15,
dataa => IDLE_CYCLES(29),
datab => IDLE_CYCLES(30),
datac => IDLE_CYCLES(23),
datad => IDLE_CYCLES(28));
VRAM_VRAM_WRITE_I7LTO30_16: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_16,
dataa => IDLE_CYCLES(6),
datab => IDLE_CYCLES(7),
datac => IDLE_CYCLES(4),
datad => IDLE_CYCLES(5));
VRAM_VRAM_WRITE_I7LTO30_17: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_17,
dataa => IDLE_CYCLES(10),
datab => IDLE_CYCLES(11),
datac => IDLE_CYCLES(8),
datad => IDLE_CYCLES(9));
VRAM_VRAM_WRITE_I7LTO30_18: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_18,
dataa => IDLE_CYCLES(14),
datab => IDLE_CYCLES(15),
datac => IDLE_CYCLES(12),
datad => IDLE_CYCLES(13));
VRAM_VRAM_WRITE_I7LTO30_19: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_19,
dataa => IDLE_CYCLES(18),
datab => IDLE_CYCLES(19),
datac => IDLE_CYCLES(16),
datad => IDLE_CYCLES(17));
RCB_FSM_UN20_VRAM_DELAY_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN20_VRAM_DELAY_NE_0,
dataa => Y_2(1),
datab => Y_2(0),
datac => Y(1),
datad => Y(0));
RCB_FSM_UN20_VRAM_DELAY_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN20_VRAM_DELAY_NE_1,
dataa => Y_3(5),
datab => Y_3(2),
datac => Y(5),
datad => Y(2));
RCB_FSM_UN20_VRAM_DELAY_NE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN20_VRAM_DELAY_NE_2,
dataa => Y_3(4),
datab => Y_3(3),
datac => Y(4),
datad => Y(3));
RCB_FSM_RCB_FINISH_I_RNO_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => RCB_FINISH_I_2_0_G4_1,
dataa => dav_c,
datab => db_fsm_state_i_0,
datac => STATE(0),
datad => STATE(1));
\RCB_FSM_CLRXY_REG_X_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => X_N1_0_56_M2,
dataa => NSTATE(0),
datab => X_N1_0_56_M4,
datac => OUTPUT_VALUE(1));
\RCB_FSM_CLRXY_REG_X_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => X_N2_0_90_M4,
dataa => X_MIN(2),
datab => X_N2_0_90_X4,
datac => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_X_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000001111111")
port map (
combout => X_N3_0_122_X4,
dataa => X(0),
datab => X(1),
datac => X(2),
datad => X(3));
\RCB_FSM_CLRXY_REG_Y_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y_57_1,
dataa => Y(0),
datab => Y(1),
datac => Y(2),
datad => Y(3));
UN1_CLRXY_REG_X_2_SQMUXA: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100011111111")
port map (
combout => X_2_SQMUXA,
dataa => NSTATE(0),
datab => UN17_VRAM_DELAY_NE,
datac => VRAM_WRITE,
datad => UN1_VRAM_DELAY_5);
VRAM_VRAM_WRITE_I7LTO3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000000000")
port map (
combout => VRAM_WRITE_I7LTO3,
dataa => IDLE_CYCLES(0),
datab => IDLE_CYCLES(1),
datac => IDLE_CYCLES(2),
datad => IDLE_CYCLES(3));
RCB_FSM_RCB_FINISH_I_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => RCB_FINISH_I_2_0_G4,
dataa => RCB_FINISH_I_2_0_G4_1,
datab => VRAM_WRITE);
\RCB_FSM_CLRXY_REG_X_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => X_N3_0_122_M4,
dataa => X_MIN(3),
datab => X_N3_0_122_X4,
datac => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_X_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001001110010011")
port map (
combout => X_N4_0_154_X4,
dataa => X(3),
datab => X(4),
datac => X_C2);
\RCB_FSM_CLRXY_REG_Y_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_E3_0_G1,
dataa => Y(3),
datab => Y_C2,
datac => X_2_SQMUXA);
RCB_FSM_UN17_VRAM_DELAY_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => UN17_VRAM_DELAY_NE,
dataa => UN17_VRAM_DELAY_NE_0,
datab => UN17_VRAM_DELAY_NE_1,
datac => UN17_VRAM_DELAY_NE_2);
VRAM_VRAM_WRITE_I7LTO30_23: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => VRAM_WRITE_I7LTO30_23,
dataa => VRAM_WRITE_I7LTO30_13,
datab => VRAM_WRITE_I7LTO30_14,
datac => VRAM_WRITE_I7LTO30_15);
VRAM_VRAM_WRITE_I7LTO30_24: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_24,
dataa => VRAM_WRITE_I7LTO30_18,
datab => VRAM_WRITE_I7LTO30_19,
datac => VRAM_WRITE_I7LTO30_16,
datad => VRAM_WRITE_I7LTO30_17);
RCB_FSM_RCB_FINISH_I_RNO_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101110101010")
port map (
combout => RCB_FINISH_I_2_0_G0_I_0,
dataa => reset_c,
datab => NSTATE(0),
datac => UN6_VRAM_DELAY,
datad => UN7_STATE_71);
UN1_VRAM_DELAY_2_Z698: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111111")
port map (
combout => UN1_VRAM_DELAY_2,
dataa => cmd_2,
datab => NSTATE(0),
datac => startcmd_i_a5,
datad => UN7_STATE_71);
\OUTPUT_VALUE_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE(5),
dataa => X_0(5),
datab => X_1_5,
datac => LT5);
\OUTPUT_VALUE_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE(4),
dataa => X_0(4),
datab => X_1_4,
datac => LT5);
\RCB_FSM_CLRXY_REG_X_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => X_N4_0_154_M4,
dataa => X_MIN(4),
datab => X_N4_0_154_X4,
datac => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_X_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000011100001111")
port map (
combout => X_N5_0_186_X4,
dataa => X(3),
datab => X(4),
datac => X(5),
datad => X_C2);
\RCB_FSM_CLRXY_REG_Y_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_E4_0_G1,
dataa => Y(4),
datab => Y_57_1,
datac => X_2_SQMUXA);
RCB_FSM_UN20_VRAM_DELAY_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => UN20_VRAM_DELAY_NE,
dataa => UN20_VRAM_DELAY_NE_0,
datab => UN20_VRAM_DELAY_NE_2,
datac => UN20_VRAM_DELAY_NE_1,
datad => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_Y_RNIUG8O_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y_E5_0_G2,
dataa => Y(3),
datab => Y(4),
datac => Y_C2,
datad => UN1_VRAM_DELAY_2);
RCB_LOG_DELAYCMD_4_M3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100111000000010")
port map (
combout => m3,
dataa => cmd_2,
datab => NSTATE(0),
datac => startcmd_i_a5,
datad => UN20_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_X_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => X_N5_0_186_M4,
dataa => X_MIN(5),
datab => X_N5_0_186_X4,
datac => UN17_VRAM_DELAY_NE);
\RCB_FSM_CLRXY_REG_Y_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101101000111100")
port map (
combout => Y_E5_0_G1,
dataa => Y_0(5),
datab => Y_1_5,
datac => Y_E5_0_G2,
datad => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_E5_0_G4,
dataa => Y(5),
datab => Y_E5_0_G2,
datac => X_2_SQMUXA);
VRAM_VRAM_WRITE_I7LTO31: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010101010100")
port map (
combout => VRAM_WRITE_I7LTO31_72,
dataa => IDLE_CYCLES(31),
datab => VRAM_WRITE_I7LTO3,
datac => VRAM_WRITE_I7LTO30_23,
datad => VRAM_WRITE_I7LTO30_24);
VRAM_WRITE_Z711: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011100010")
port map (
combout => VRAM_WRITE,
dataa => START_I,
datab => UN7_STATE_71,
datac => VRAM_WRITE_I7LTO31_72,
datad => VRAM_WRITE_I_73);
\UN1_VRAM_DELAY_3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101100011011")
port map (
combout => UN1_VRAM_DELAY_3(0),
dataa => NSTATE(0),
datab => UN6_VRAM_DELAY,
datac => UN20_VRAM_DELAY_NE,
datad => VRAM_WRITE_I);
UN1_VRAM_DELAY_5_Z713: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010011111")
port map (
combout => UN1_VRAM_DELAY_5,
dataa => STATE(0),
datab => STATE(1),
datac => START_I,
datad => UN1_VRAM_DELAY_3(0));
\NSTATE_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111010101110")
port map (
combout => \NSTATE_2_0_0__G0_0_X\,
dataa => reset_c,
datab => UN7_STATE_71,
datac => UN1_VRAM_DELAY_4(0));
\RCB_FSM_CLRXY_REG_Y_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001111000")
port map (
combout => Y_E2_0_G1,
dataa => Y(0),
datab => Y(1),
datac => Y(2),
datad => X_2_SQMUXA);
\OUTPUT_VALUE_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100101011001010")
port map (
combout => OUTPUT_VALUE(0),
dataa => X_1_0,
datab => X_0(0),
cin => LT5_COUT);
E1: pix_word_cache port map (
pre_rdout_par_15_1 => PRE_RDOUT_PAR_15(1),
pre_rdout_par_15_0 => PRE_RDOUT_PAR_15(0),
pre_rdout_par_14_1 => PRE_RDOUT_PAR_14(1),
pre_rdout_par_14_0 => PRE_RDOUT_PAR_14(0),
pre_rdout_par_13_1 => PRE_RDOUT_PAR_13(1),
pre_rdout_par_13_0 => PRE_RDOUT_PAR_13(0),
pre_rdout_par_12_1 => PRE_RDOUT_PAR_12(1),
pre_rdout_par_12_0 => PRE_RDOUT_PAR_12(0),
pre_rdout_par_10_1 => PRE_RDOUT_PAR_10(1),
pre_rdout_par_10_0 => PRE_RDOUT_PAR_10(0),
pre_rdout_par_9_1 => PRE_RDOUT_PAR_9(1),
pre_rdout_par_9_0 => PRE_RDOUT_PAR_9(0),
pre_rdout_par_8_1 => PRE_RDOUT_PAR_8(1),
pre_rdout_par_8_0 => PRE_RDOUT_PAR_8(0),
pre_rdout_par_7_1 => PRE_RDOUT_PAR_7(1),
pre_rdout_par_7_0 => PRE_RDOUT_PAR_7(0),
pre_rdout_par_6_1 => PRE_RDOUT_PAR_6(1),
pre_rdout_par_6_0 => PRE_RDOUT_PAR_6(0),
pre_rdout_par_5_1 => PRE_RDOUT_PAR_5(1),
pre_rdout_par_5_0 => PRE_RDOUT_PAR_5(0),
pre_rdout_par_4_1 => PRE_RDOUT_PAR_4(1),
pre_rdout_par_4_0 => PRE_RDOUT_PAR_4(0),
pre_rdout_par_3_1 => PRE_RDOUT_PAR_3(1),
pre_rdout_par_3_0 => PRE_RDOUT_PAR_3(0),
pre_rdout_par_2_1 => PRE_RDOUT_PAR_2(1),
pre_rdout_par_2_0 => PRE_RDOUT_PAR_2(0),
pre_rdout_par_1_1 => PRE_RDOUT_PAR_1(1),
pre_rdout_par_1_0 => PRE_RDOUT_PAR_1(0),
pre_rdout_par_0_1 => PRE_RDOUT_PAR_0(1),
pre_rdout_par_0_0 => PRE_RDOUT_PAR_0(0),
pre_rdout_par_11_1 => PRE_RDOUT_PAR_11(1),
pre_rdout_par_11_0 => PRE_RDOUT_PAR_11(0),
nstate_0 => NSTATE(0),
Y_0_0 => Y_1_0,
Y_0 => Y(0),
Y_1 => Y_3(1),
Y_1_0 => Y_3(0),
X_0 => X_3(0),
X_1 => X_3(1),
X_0_0 => X(1),
X_1_0 => X_1_1,
pixopin_1_0 => PIXOPIN_1(0),
cmd_1 => cmd_1,
cmd_0 => cmd_0,
db_fsm_state_i_0 => db_fsm_state_i_0,
clk_c => clk_c,
reset_c => reset_c,
vram_write => VRAM_WRITE,
is_same => IS_SAME_74,
finish_x => finish_x,
dav_c => dav_c,
rcb_finish_i => RCB_FINISH_I);
E2: ram_fsm port map (
state_1 => STATE(1),
state_0 => STATE(0),
cache_store_reg_0_1 => CACHE_STORE_REG_0(1),
cache_store_reg_0_0 => CACHE_STORE_REG_0(0),
cache_store_reg_1_1 => CACHE_STORE_REG_1(1),
cache_store_reg_1_0 => CACHE_STORE_REG_1(0),
cache_store_reg_2_1 => CACHE_STORE_REG_2(1),
cache_store_reg_2_0 => CACHE_STORE_REG_2(0),
cache_store_reg_3_1 => CACHE_STORE_REG_3(1),
cache_store_reg_3_0 => CACHE_STORE_REG_3(0),
cache_store_reg_4_1 => CACHE_STORE_REG_4(1),
cache_store_reg_4_0 => CACHE_STORE_REG_4(0),
cache_store_reg_5_1 => CACHE_STORE_REG_5(1),
cache_store_reg_5_0 => CACHE_STORE_REG_5(0),
cache_store_reg_6_1 => CACHE_STORE_REG_6(1),
cache_store_reg_6_0 => CACHE_STORE_REG_6(0),
cache_store_reg_7_1 => CACHE_STORE_REG_7(1),
cache_store_reg_7_0 => CACHE_STORE_REG_7(0),
cache_store_reg_8_1 => CACHE_STORE_REG_8(1),
cache_store_reg_8_0 => CACHE_STORE_REG_8(0),
cache_store_reg_9_1 => CACHE_STORE_REG_9(1),
cache_store_reg_9_0 => CACHE_STORE_REG_9(0),
cache_store_reg_10_1 => CACHE_STORE_REG_10(1),
cache_store_reg_10_0 => CACHE_STORE_REG_10(0),
cache_store_reg_11_1 => CACHE_STORE_REG_11(1),
cache_store_reg_11_0 => CACHE_STORE_REG_11(0),
cache_store_reg_12_1 => CACHE_STORE_REG_12(1),
cache_store_reg_12_0 => CACHE_STORE_REG_12(0),
cache_store_reg_13_1 => CACHE_STORE_REG_13(1),
cache_store_reg_13_0 => CACHE_STORE_REG_13(0),
cache_store_reg_14_1 => CACHE_STORE_REG_14(1),
cache_store_reg_14_0 => CACHE_STORE_REG_14(0),
cache_store_reg_15_1 => CACHE_STORE_REG_15(1),
cache_store_reg_15_0 => CACHE_STORE_REG_15(0),
vraddr_7 => VRADDR(7),
vraddr_6 => VRADDR(6),
vraddr_5 => VRADDR(5),
vraddr_4 => VRADDR(4),
vraddr_3 => VRADDR(3),
vraddr_2 => VRADDR(2),
vraddr_1 => VRADDR(1),
vraddr_0 => VRADDR(0),
nstate_0_0 => NSTATE(0),
Y_0 => Y_2(2),
Y_1 => Y_2(3),
Y_2 => Y_2(4),
Y_3 => Y_2(5),
Y_0_0 => Y(2),
Y_0_1 => Y(3),
Y_0_2 => Y(4),
Y_0_3 => Y(5),
Y_1_0 => Y_1_2,
Y_1_1 => Y_1_3,
Y_1_2 => Y_1_4,
Y_1_3 => Y_1_5,
X_1_0 => X_1_2,
X_1_1 => X_1_3,
addr_ram_7 => addr_ram_7,
addr_ram_6 => addr_ram_6,
addr_ram_5 => addr_ram_5,
addr_ram_4 => addr_ram_4,
addr_ram_3 => addr_ram_3,
addr_ram_2 => addr_ram_2,
addr_ram_1 => addr_ram_1,
addr_ram_0 => addr_ram_0,
data_ram_0 => data_ram_0,
data_ram_1 => data_ram_1,
data_ram_2 => data_ram_2,
data_ram_3 => data_ram_3,
data_ram_4 => data_ram_4,
data_ram_5 => data_ram_5,
data_ram_6 => data_ram_6,
data_ram_7 => data_ram_7,
data_ram_8 => data_ram_8,
data_ram_9 => data_ram_9,
data_ram_10 => data_ram_10,
data_ram_11 => data_ram_11,
data_ram_12 => data_ram_12,
data_ram_13 => data_ram_13,
data_ram_14 => data_ram_14,
data_ram_15 => data_ram_15,
db_fsm_state_0 => db_fsm_state_0,
db_fsm_state_1 => db_fsm_state_1,
db_fsm_state_2 => db_fsm_state_2,
cmd_0 => cmd_2,
X_0 => X_2(2),
X_1 => X_2(3),
X_2 => X(4),
X_3 => X(5),
xout_0 => xout_0,
xout_1 => xout_1,
X_0_0 => X(2),
X_0_1 => X(3),
X_0_2 => X_2(4),
X_0_3 => X_2(5),
xin_0 => xin_0,
xin_1 => xin_1,
pixopin_1_0 => PIXOPIN_1(0),
db_fsm_state_i_0 => db_fsm_state_i_0,
word_reg_delayed_6 => WORD_REG_DELAYED(6),
word_reg_delayed_5 => WORD_REG_DELAYED(5),
word_reg_delayed_0 => WORD_REG_DELAYED(0),
word_reg_delayed_4 => WORD_REG_DELAYED(4),
word_reg_delayed_1 => WORD_REG_DELAYED(1),
word_reg_delayed_3 => WORD_REG_DELAYED(3),
word_reg_delayed_2 => WORD_REG_DELAYED(2),
word_reg_delayed_7 => WORD_REG_DELAYED(7),
un1_vram_delay_4_0 => UN1_VRAM_DELAY_4(0),
vdout_c_5 => vdout_c_5,
vdout_c_4 => vdout_c_4,
vdout_c_3 => vdout_c_3,
vdout_c_2 => vdout_c_2,
vdout_c_1 => vdout_c_1,
vdout_c_0 => vdout_c_0,
vdout_c_12 => vdout_c_12,
vdout_c_11 => vdout_c_11,
vdout_c_10 => vdout_c_10,
vdout_c_9 => vdout_c_9,
vdout_c_8 => vdout_c_8,
vdout_c_7 => vdout_c_7,
vdout_c_6 => vdout_c_6,
vdout_c_15 => vdout_c_15,
vdout_c_14 => vdout_c_14,
vdout_c_13 => vdout_c_13,
clk_c => clk_c,
start_i => START_I,
vram_write_i => VRAM_WRITE_I,
un7_state => UN7_STATE_71,
state_s0_0_a3 => state_s0_0_a3,
vram_write => VRAM_WRITE,
word_reg_delayed_6_scalar_0 => word_reg_delayed_6,
un6_vram_delay => UN6_VRAM_DELAY,
vram_write_i_4_0 => vram_write_i_4_0,
un1_rcb_state22 => UN1_RCB_STATE22,
reset_c => reset_c,
mux_out_i_a2 => mux_out_i_a2,
startcmd_i_a5 => startcmd_i_a5,
Y_0_sqmuxa => Y_0_SQMUXA,
lt5 => LT5_0,
dav_c => dav_c,
un20_vram_delay_NE => UN20_VRAM_DELAY_NE,
vram_write_i7lto31 => VRAM_WRITE_I7LTO31_72,
vram_write_i_6 => vram_write_i_6,
vram_write_i_2 => VRAM_WRITE_I_73,
is_same => IS_SAME_74,
idle_cycleslde_x => IDLE_CYCLESLDE_X);
VCC <= '1';
GND <= '0';
LT5_I_0_I <= not LT5_I_0;
LT5_I_I <= not LT5_I;
NSTATE_I(0) <= not NSTATE(0);
UN1_RCB_STATE22_I <= not UN1_RCB_STATE22;
un7_state <= UN7_STATE_71;
vram_write_i7lto31 <= VRAM_WRITE_I7LTO31_72;
vram_write_i_2 <= VRAM_WRITE_I_73;
is_same <= IS_SAME_74;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity db is
port(
db_fsm_state_i_0 :  out std_logic;
cmd_2 :  out std_logic;
cmd_1 :  out std_logic;
cmd_0 :  out std_logic;
db_fsm_state_1 :  out std_logic;
db_fsm_state_2 :  out std_logic;
db_fsm_state_0 :  out std_logic;
hdb_c_13 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_8 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_2 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_0 :  in std_logic;
hdb_c_15 :  in std_logic;
hdb_c_14 :  in std_logic;
xin_5 :  out std_logic;
xin_4 :  out std_logic;
Y_1 :  out std_logic;
Y_0 :  out std_logic;
Y_5 :  out std_logic;
Y_2 :  out std_logic;
Y_3 :  out std_logic;
Y_4 :  out std_logic;
X_1 :  out std_logic;
X_0 :  out std_logic;
X_5 :  out std_logic;
X_2 :  out std_logic;
X_3 :  out std_logic;
X_4 :  out std_logic;
xout_5 :  out std_logic;
xout_4 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  out std_logic;
startcmd_i_a5 :  out std_logic;
dav_c :  in std_logic;
un7_state :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
vram_write_i_2 :  in std_logic;
is_same :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic);
end db;

architecture beh of db is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal DB_FSM_STATE : std_logic_vector(7 downto 3);
signal XY_OLD_REG : std_logic_vector(11 downto 0);
signal HDB_REG : std_logic_vector(13 downto 0);
signal INF_ABS0 : std_logic_vector(6 downto 1);
signal INF_ABS1 : std_logic_vector(6 downto 1);
signal RESULT_1_I : std_logic_vector(6 to 6);
signal RESULT_1_1_I : std_logic_vector(6 to 6);
signal DB_FSM_STATE_SRSTS_I_A2 : std_logic_vector(2 to 2);
signal XIN : std_logic_vector(3 downto 0);
signal YIN : std_logic_vector(5 downto 0);
signal DB_FSM_STATE_SRSTS_0_A2_X : std_logic_vector(6 to 6);
signal YOUT : std_logic_vector(5 downto 0);
signal XOUT : std_logic_vector(3 downto 0);
signal DB_FSM_STATE_NSS_I_I_A5_1 : std_logic_vector(0 to 0);
signal DB_FSM_STATE_SRSTS_I_A5_0 : std_logic_vector(2 to 2);
signal UN1_DB_FSM_NSTATE_1_I_O5 : std_logic ;
signal N_172_I_0_G0 : std_logic ;
signal \DB_FSM_STATE_SRSTS_0_A5_0_6__G0\ : std_logic ;
signal \DB_FSM_STATE_SRSTS_0_A5_0_7__G0\ : std_logic ;
signal N_179_I_0_G0 : std_logic ;
signal \CMD_1_0_2__G0\ : std_logic ;
signal \CMD_1_0_1__G4\ : std_logic ;
signal \CMD_1_0_0__G0_I_O4\ : std_logic ;
signal \CMD_1_0_0__G4\ : std_logic ;
signal \XY_OLD_REG_1_0_0__G2\ : std_logic ;
signal XBIAS1 : std_logic ;
signal XBIAS1_0_0_G0_I_X4 : std_logic ;
signal NEGX1_0_0_G0_I_O4_I : std_logic ;
signal SWAPXY1 : std_logic ;
signal LT6 : std_logic ;
signal NEGX1 : std_logic ;
signal NEGX1_0_0_G3 : std_logic ;
signal NEGY1 : std_logic ;
signal NEGY1_0_0_G3 : std_logic ;
signal N_169_I_0_G0_0_X : std_logic ;
signal LT_0 : std_logic ;
signal RESULT_1_ADD0 : std_logic ;
signal RESULT_1_1_ADD0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT_3 : std_logic ;
signal LT_4 : std_logic ;
signal LT_5 : std_logic ;
signal LT6_COUT : std_logic ;
signal RESULT_1_1_CARRY_0 : std_logic ;
signal RESULT_1_1_ADD0_START_COUT : std_logic ;
signal RESULT_1_1_ADD1 : std_logic ;
signal RESULT_1_1_CARRY_1 : std_logic ;
signal RESULT_1_1_ADD2 : std_logic ;
signal RESULT_1_1_CARRY_2 : std_logic ;
signal RESULT_1_1_ADD3 : std_logic ;
signal RESULT_1_1_CARRY_3 : std_logic ;
signal RESULT_1_1_ADD4 : std_logic ;
signal RESULT_1_1_CARRY_4 : std_logic ;
signal RESULT_1_1_ADD5 : std_logic ;
signal RESULT_1_1_ADD5_COUT : std_logic ;
signal RESULT_1_CARRY_0 : std_logic ;
signal RESULT_1_ADD0_START_COUT : std_logic ;
signal RESULT_1_ADD1 : std_logic ;
signal RESULT_1_CARRY_1 : std_logic ;
signal RESULT_1_ADD2 : std_logic ;
signal RESULT_1_CARRY_2 : std_logic ;
signal RESULT_1_ADD3 : std_logic ;
signal RESULT_1_CARRY_3 : std_logic ;
signal RESULT_1_ADD4 : std_logic ;
signal RESULT_1_CARRY_4 : std_logic ;
signal RESULT_1_ADD5 : std_logic ;
signal RESULT_1_ADD5_COUT : std_logic ;
signal \CMD_1_0_2__G4\ : std_logic ;
signal \CMD_1_0_2__G5\ : std_logic ;
signal DISABLE_I_A2 : std_logic ;
signal INF_ABS0_A_0_ANC2 : std_logic ;
signal INF_ABS1_A_1_ANC2 : std_logic ;
signal \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\ : std_logic ;
signal INF_ABS0_A_0_ANC3 : std_logic ;
signal INF_ABS1_A_1_ANC3 : std_logic ;
signal N_179_I_0_G0_2 : std_logic ;
signal N_179_I_0_G0_2_A_X : std_logic ;
signal \CMD_1_0_2__G1\ : std_logic ;
signal UN3_X1 : std_logic ;
signal VCC : std_logic ;
signal N_120 : std_logic ;
signal N_119 : std_logic ;
signal N_118 : std_logic ;
signal N_117 : std_logic ;
signal N_116 : std_logic ;
signal N_115 : std_logic ;
signal N_114 : std_logic ;
signal N_113 : std_logic ;
signal N_112 : std_logic ;
signal GND : std_logic ;
signal DB_FSM_STATE_I_13 : std_logic ;
signal CMD_14 : std_logic ;
signal DB_FSM_STATE_15 : std_logic ;
signal DB_FSM_STATE_16 : std_logic ;
signal DB_FSM_STATE_17 : std_logic ;
signal XIN_18 : std_logic ;
signal XIN_19 : std_logic ;
signal XOUT_20 : std_logic ;
signal XOUT_21 : std_logic ;
signal DB_FSM_STATE_I_0_I : std_logic ;
component draw_any_octant
port(
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
yin_0 :  in std_logic;
yin_5 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_3 :  in std_logic;
yin_4 :  in std_logic;
xin_0 :  in std_logic;
xin_5 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_3 :  in std_logic;
xin_4 :  in std_logic;
yout_1 :  out std_logic;
yout_0 :  out std_logic;
yout_5 :  out std_logic;
yout_2 :  out std_logic;
yout_3 :  out std_logic;
yout_4 :  out std_logic;
xout_1 :  out std_logic;
xout_0 :  out std_logic;
xout_5 :  out std_logic;
xout_2 :  out std_logic;
xout_3 :  out std_logic;
xout_4 :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy1 :  in std_logic;
swapxy1 :  in std_logic;
\cmd_1_0_2__g5\ :  in std_logic;
un7_state :  in std_logic;
un3_x1 :  out std_logic;
disable_i_a2 :  in std_logic;
is_same :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic;
xbias1 :  in std_logic  );
end component;
begin
\DB_FSM_STATE_1_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE_15,
datain => UN1_DB_FSM_NSTATE_1_I_O5,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_2_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE_16,
datain => N_172_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_3_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE(3),
datain => DB_FSM_STATE(4),
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_4_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE(4),
datain => DB_FSM_STATE(5),
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_5_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE(5),
datain => DB_FSM_STATE(6),
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_6_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE(6),
datain => \DB_FSM_STATE_SRSTS_0_A5_0_6__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_7_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE(7),
datain => \DB_FSM_STATE_SRSTS_0_A5_0_7__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\DB_FSM_STATE_I_8_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE_I_13,
datain => N_179_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\CMD_O_CMD_2_\: cycloneii_lcell_ff port map (
regout => CMD_14,
datain => \CMD_1_0_2__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\CMD_O_CMD_1_\: cycloneii_lcell_ff port map (
regout => cmd_1,
datain => \CMD_1_0_1__G4\,
clk => clk_c,
ena => \CMD_1_0_0__G0_I_O4\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CMD_O_CMD_0_\: cycloneii_lcell_ff port map (
regout => cmd_0,
datain => \CMD_1_0_0__G4\,
clk => clk_c,
ena => \CMD_1_0_0__G0_I_O4\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_11_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(11),
datain => HDB_REG(13),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_10_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(10),
datain => HDB_REG(12),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_9_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(9),
datain => HDB_REG(11),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_8_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(8),
datain => HDB_REG(10),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_7_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(7),
datain => HDB_REG(9),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_6_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(6),
datain => HDB_REG(8),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_5_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(5),
datain => HDB_REG(7),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_4_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(4),
datain => HDB_REG(6),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_3_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(3),
datain => HDB_REG(5),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_2_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(2),
datain => HDB_REG(4),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_1_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(1),
datain => HDB_REG(3),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_XY_OLD_REG_0_\: cycloneii_lcell_ff port map (
regout => XY_OLD_REG(0),
datain => HDB_REG(2),
clk => clk_c,
ena => \XY_OLD_REG_1_0_0__G2\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_13_\: cycloneii_lcell_ff port map (
regout => HDB_REG(13),
datain => hdb_c_13,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_12_\: cycloneii_lcell_ff port map (
regout => HDB_REG(12),
datain => hdb_c_12,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_11_\: cycloneii_lcell_ff port map (
regout => HDB_REG(11),
datain => hdb_c_11,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_10_\: cycloneii_lcell_ff port map (
regout => HDB_REG(10),
datain => hdb_c_10,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_9_\: cycloneii_lcell_ff port map (
regout => HDB_REG(9),
datain => hdb_c_9,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_8_\: cycloneii_lcell_ff port map (
regout => HDB_REG(8),
datain => hdb_c_8,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_7_\: cycloneii_lcell_ff port map (
regout => HDB_REG(7),
datain => hdb_c_7,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_6_\: cycloneii_lcell_ff port map (
regout => HDB_REG(6),
datain => hdb_c_6,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_5_\: cycloneii_lcell_ff port map (
regout => HDB_REG(5),
datain => hdb_c_5,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_4_\: cycloneii_lcell_ff port map (
regout => HDB_REG(4),
datain => hdb_c_4,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_3_\: cycloneii_lcell_ff port map (
regout => HDB_REG(3),
datain => hdb_c_3,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_2_\: cycloneii_lcell_ff port map (
regout => HDB_REG(2),
datain => hdb_c_2,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_1_\: cycloneii_lcell_ff port map (
regout => HDB_REG(1),
datain => hdb_c_1,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\REG_HDB_REG_0_\: cycloneii_lcell_ff port map (
regout => HDB_REG(0),
datain => hdb_c_0,
clk => clk_c,
ena => DB_FSM_STATE_I_0_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
REG_XBIAS1: cycloneii_lcell_ff port map (
regout => XBIAS1,
datain => XBIAS1_0_0_G0_I_X4,
clk => clk_c,
ena => NEGX1_0_0_G0_I_O4_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
REG_SWAPXY1: cycloneii_lcell_ff port map (
regout => SWAPXY1,
datain => LT6,
clk => clk_c,
ena => NEGX1_0_0_G0_I_O4_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
REG_NEGX1: cycloneii_lcell_ff port map (
regout => NEGX1,
datain => NEGX1_0_0_G3,
clk => clk_c,
ena => NEGX1_0_0_G0_I_O4_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
REG_NEGY1: cycloneii_lcell_ff port map (
regout => NEGY1,
datain => NEGY1_0_0_G3,
clk => clk_c,
ena => NEGX1_0_0_G0_I_O4_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\DB_FSM_STATE_0_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE_17,
datain => DB_FSM_STATE_15,
clk => clk_c,
sclr => reset_c,
ena => N_169_I_0_G0_0_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
OCTANT_CMB_SWAPXY2_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => RESULT_1_ADD0,
datab => RESULT_1_1_ADD0);
OCTANT_CMB_SWAPXY2_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => INF_ABS0(1),
datab => INF_ABS1(1),
cin => LT_0);
OCTANT_CMB_SWAPXY2_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => INF_ABS0(2),
datab => INF_ABS1(2),
cin => LT_1);
OCTANT_CMB_SWAPXY2_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3,
dataa => INF_ABS0(3),
datab => INF_ABS1(3),
cin => LT_2);
OCTANT_CMB_SWAPXY2_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4,
dataa => INF_ABS0(4),
datab => INF_ABS1(4),
cin => LT_3);
OCTANT_CMB_SWAPXY2_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_5,
dataa => INF_ABS0(5),
datab => INF_ABS1(5),
cin => LT_4);
OCTANT_CMB_SWAPXY2_LT6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT6,
cout => LT6_COUT,
dataa => INF_ABS1(6),
datab => INF_ABS0(6),
cin => LT_5);
OCTANT_CMB_RESULT_1_1_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD0,
cout => RESULT_1_1_CARRY_0,
dataa => XY_OLD_REG(0),
datab => HDB_REG(2),
cin => RESULT_1_1_ADD0_START_COUT);
OCTANT_CMB_RESULT_1_1_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD1,
cout => RESULT_1_1_CARRY_1,
dataa => XY_OLD_REG(1),
datab => HDB_REG(3),
cin => RESULT_1_1_CARRY_0);
OCTANT_CMB_RESULT_1_1_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD2,
cout => RESULT_1_1_CARRY_2,
dataa => XY_OLD_REG(2),
datab => HDB_REG(4),
cin => RESULT_1_1_CARRY_1);
OCTANT_CMB_RESULT_1_1_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD3,
cout => RESULT_1_1_CARRY_3,
dataa => XY_OLD_REG(3),
datab => HDB_REG(5),
cin => RESULT_1_1_CARRY_2);
OCTANT_CMB_RESULT_1_1_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD4,
cout => RESULT_1_1_CARRY_4,
dataa => XY_OLD_REG(4),
datab => HDB_REG(6),
cin => RESULT_1_1_CARRY_3);
OCTANT_CMB_RESULT_1_1_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD5,
cout => RESULT_1_1_ADD5_COUT,
dataa => XY_OLD_REG(5),
datab => HDB_REG(7),
cin => RESULT_1_1_CARRY_4);
OCTANT_CMB_RESULT_1_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => XY_OLD_REG(6),
datab => HDB_REG(8),
cin => RESULT_1_ADD0_START_COUT);
OCTANT_CMB_RESULT_1_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => XY_OLD_REG(7),
datab => HDB_REG(9),
cin => RESULT_1_CARRY_0);
OCTANT_CMB_RESULT_1_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => XY_OLD_REG(8),
datab => HDB_REG(10),
cin => RESULT_1_CARRY_1);
OCTANT_CMB_RESULT_1_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => XY_OLD_REG(9),
datab => HDB_REG(11),
cin => RESULT_1_CARRY_2);
OCTANT_CMB_RESULT_1_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => XY_OLD_REG(10),
datab => HDB_REG(12),
cin => RESULT_1_CARRY_3);
OCTANT_CMB_RESULT_1_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_ADD5_COUT,
dataa => XY_OLD_REG(11),
datab => HDB_REG(13),
cin => RESULT_1_CARRY_4);
REG_XBIAS1_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => XBIAS1_0_0_G0_I_X4,
dataa => RESULT_1_I(6),
datab => RESULT_1_1_I(6));
REG_NEGY1_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101001101010011")
port map (
combout => NEGY1_0_0_G3,
dataa => RESULT_1_I(6),
datab => RESULT_1_1_I(6),
datac => LT6);
\DB_FSM_STATE_RNIGPBL1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => \CMD_1_0_2__G4\,
dataa => DB_FSM_STATE_17,
datab => \CMD_1_0_2__G5\);
DISABLE_I_A2_Z286: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => DISABLE_I_A2,
dataa => DB_FSM_STATE_16,
datab => \CMD_1_0_2__G5\);
MUX_OUT_I_A2_Z287: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => mux_out_i_a2,
dataa => DB_FSM_STATE_15,
datab => DB_FSM_STATE_17);
\DB_FSM_STATE_SRSTS_I_A2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => DB_FSM_STATE_SRSTS_I_A2(2),
dataa => DB_FSM_STATE(3),
datab => DB_FSM_STATE_16);
\OCTANT_CMB_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101001011010010")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_I(6),
datac => RESULT_1_1_ADD1);
\OCTANT_CMB_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101001011010010")
port map (
combout => INF_ABS0(1),
dataa => RESULT_1_ADD0,
datab => RESULT_1_I(6),
datac => RESULT_1_ADD1);
INF_ABS0_A_0_ANC2_Z291: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => INF_ABS0_A_0_ANC2,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2);
INF_ABS1_A_1_ANC2_Z292: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => INF_ABS1_A_1_ANC2,
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_ADD1,
datac => RESULT_1_1_ADD2);
DBB_BUS_STARTCMD_I_A5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => startcmd_i_a5,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => DB_FSM_STATE_16);
\DB_FSM_STATE_I_RNIS6S21_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
dataa => hdb_c_15,
datab => hdb_c_14,
datac => dav_c,
datad => DB_FSM_STATE_I_13);
\DB_FSM_STATE_RNIHSGK_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => \XY_OLD_REG_1_0_0__G2\,
dataa => DB_FSM_STATE_16,
datab => DB_FSM_STATE(7),
datac => DB_FSM_STATE_17);
\DB_FSM_STATE_RNIETBR_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => NEGX1_0_0_G0_I_O4_I,
dataa => DB_FSM_STATE(4),
datab => DB_FSM_STATE(5),
datac => DB_FSM_STATE_16,
datad => DB_FSM_STATE(3));
\OCTANT_CMB_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110100110010")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_I(6),
datac => RESULT_1_1_ADD1,
datad => RESULT_1_1_ADD2);
\OCTANT_CMB_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110100110010")
port map (
combout => INF_ABS0(2),
dataa => RESULT_1_ADD0,
datab => RESULT_1_I(6),
datac => RESULT_1_ADD1,
datad => RESULT_1_ADD2);
INF_ABS0_A_0_ANC3_Z299: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS0_A_0_ANC3,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD3);
INF_ABS1_A_1_ANC3_Z300: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS1_A_1_ANC3,
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_ADD1,
datac => RESULT_1_1_ADD2,
datad => RESULT_1_1_ADD3);
UN1_DB_FSM_NSTATE_1_I_O5_Z301: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110110011101100")
port map (
combout => UN1_DB_FSM_NSTATE_1_I_O5,
dataa => DB_FSM_STATE_15,
datab => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datac => \CMD_1_0_2__G5\);
\XIN_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN_18,
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(11),
datac => HDB_REG(13),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(2),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(8),
datac => HDB_REG(10),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(0),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(6),
datac => HDB_REG(8),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(5),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(5),
datac => HDB_REG(7),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(2),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(2),
datac => HDB_REG(4),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(0),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(0),
datac => HDB_REG(2),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(1),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(7),
datac => HDB_REG(9),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(1),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(1),
datac => HDB_REG(3),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(3),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(3),
datac => HDB_REG(5),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(4),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(4),
datac => HDB_REG(6),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(3),
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(9),
datac => HDB_REG(11),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN_19,
dataa => DB_FSM_STATE_17,
datab => XY_OLD_REG(10),
datac => HDB_REG(12),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\DB_FSM_STATE_RNO_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_6__G0\,
dataa => hdb_c_15,
datab => hdb_c_14,
datac => reset_c,
datad => DB_FSM_STATE_SRSTS_0_A2_X(6));
\DB_FSM_STATE_RNO_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_7__G0\,
dataa => hdb_c_15,
datab => hdb_c_14,
datac => reset_c,
datad => DB_FSM_STATE_SRSTS_0_A2_X(6));
\OCTANT_CMB_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100100111001001")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_1_I(6),
datab => RESULT_1_1_ADD3,
datac => INF_ABS1_A_1_ANC2);
\OCTANT_CMB_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100100111001001")
port map (
combout => INF_ABS0(3),
dataa => RESULT_1_I(6),
datab => RESULT_1_ADD3,
datac => INF_ABS0_A_0_ANC2);
\DBB_BUS_Y_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_1,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(1),
datad => YIN(1));
\DBB_BUS_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_1,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT(1),
datad => XIN(1));
\CMD_O_CMD_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \CMD_1_0_1__G4\,
dataa => HDB_REG(1),
datab => DB_FSM_STATE_15,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => \CMD_1_0_2__G5\);
\CMD_O_CMD_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \CMD_1_0_0__G4\,
dataa => HDB_REG(0),
datab => DB_FSM_STATE_15,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => \CMD_1_0_2__G5\);
\DBB_BUS_Y_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_0,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(0),
datad => YIN(0));
\DBB_BUS_Y_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_5,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(5),
datad => YIN(5));
\DBB_BUS_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_0,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT(0),
datad => XIN(0));
\DBB_BUS_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_5,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT_20,
datad => XIN_18);
\DBB_BUS_Y_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_2,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(2),
datad => YIN(2));
\DBB_BUS_Y_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_3,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(3),
datad => YIN(3));
\DBB_BUS_Y_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_4,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => YOUT(4),
datad => YIN(4));
\DBB_BUS_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_2,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT(2),
datad => XIN(2));
\DBB_BUS_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_3,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT(3),
datad => XIN(3));
\DBB_BUS_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_4,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => XOUT_21,
datad => XIN_19);
\DB_FSM_STATE_RNI3VT53_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => \CMD_1_0_0__G0_I_O4\,
dataa => DB_FSM_STATE_15,
datab => DB_FSM_STATE(6),
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => \CMD_1_0_2__G4\);
\DB_FSM_STATE_I_RNO_0_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001010100")
port map (
combout => N_179_I_0_G0_2,
dataa => reset_c,
datab => N_179_I_0_G0_2_A_X,
datac => DB_FSM_STATE_I_13,
datad => DB_FSM_STATE(7));
\OCTANT_CMB_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_1_I(6),
datab => RESULT_1_1_ADD3,
datac => RESULT_1_1_ADD4,
datad => INF_ABS1_A_1_ANC2);
\OCTANT_CMB_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS0(4),
dataa => RESULT_1_I(6),
datab => RESULT_1_ADD3,
datac => RESULT_1_ADD4,
datad => INF_ABS0_A_0_ANC2);
\CMD_O_CMD_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100000100")
port map (
combout => \CMD_1_0_2__G1\,
dataa => DB_FSM_STATE(6),
datab => CMD_14,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => \CMD_1_0_2__G4\);
\OCTANT_CMB_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => INF_ABS0(6),
dataa => RESULT_1_I(6),
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD5,
datad => INF_ABS0_A_0_ANC3);
\OCTANT_CMB_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => INF_ABS1(6),
dataa => RESULT_1_1_I(6),
datab => RESULT_1_1_ADD4,
datac => RESULT_1_1_ADD5,
datad => INF_ABS1_A_1_ANC3);
\OCTANT_CMB_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_1_I(6),
datab => RESULT_1_1_ADD4,
datac => RESULT_1_1_ADD5,
datad => INF_ABS1_A_1_ANC3);
\OCTANT_CMB_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS0(5),
dataa => RESULT_1_I(6),
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD5,
datad => INF_ABS0_A_0_ANC3);
\CMD_O_CMD_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111110001100")
port map (
combout => \CMD_1_0_2__G0\,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_15,
datac => \CMD_1_0_2__G5\,
datad => \CMD_1_0_2__G1\);
\DB_FSM_STATE_NSS_I_I_A5_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000000")
port map (
combout => DB_FSM_STATE_NSS_I_I_A5_1(0),
dataa => DB_FSM_STATE(3),
datab => DB_FSM_STATE_16,
datac => UN3_X1,
datad => \CMD_1_0_2__G5\);
\DB_FSM_STATE_SRSTS_I_A5_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => DB_FSM_STATE_SRSTS_I_A5_0(2),
dataa => DB_FSM_STATE(3),
datab => UN3_X1);
\DB_FSM_STATE_I_RNO_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011000100")
port map (
combout => N_179_I_0_G0,
dataa => DB_FSM_STATE_17,
datab => N_179_I_0_G0_2,
datac => \CMD_1_0_2__G5\,
datad => DB_FSM_STATE_NSS_I_I_A5_1(0));
\DB_FSM_STATE_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100000001")
port map (
combout => N_172_I_0_G0,
dataa => reset_c,
datab => DB_FSM_STATE_SRSTS_I_A2(2),
datac => DB_FSM_STATE_SRSTS_I_A5_0(2),
datad => \CMD_1_0_2__G5\);
\CMD_O_CMD_1_0_2__G5\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => \CMD_1_0_2__G5\,
dataa => un7_state,
datab => vram_write_i7lto31,
datac => m3,
datad => vram_write_i_2);
\DB_FSM_STATE_I_RNO_1_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111000001110000")
port map (
combout => N_179_I_0_G0_2_A_X,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => dav_c);
\DB_FSM_STATE_SRSTS_0_A2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => DB_FSM_STATE_SRSTS_0_A2_X(6),
dataa => dav_c,
datab => DB_FSM_STATE_I_13);
\DB_FSM_STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => N_169_I_0_G0_0_X,
dataa => reset_c,
datab => \CMD_1_0_2__G5\);
REG_NEGX1_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0011010100110101")
port map (
combout => NEGX1_0_0_G3,
dataa => RESULT_1_I(6),
datab => RESULT_1_1_I(6),
cin => LT6_COUT);
OCTANT_CMB_RESULT_1_ADD5_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => RESULT_1_I(6),
cin => RESULT_1_ADD5_COUT);
OCTANT_CMB_RESULT_1_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => RESULT_1_ADD0_START_COUT,
dataa => VCC);
OCTANT_CMB_RESULT_1_1_ADD5_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => RESULT_1_1_I(6),
cin => RESULT_1_1_ADD5_COUT);
OCTANT_CMB_RESULT_1_1_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => RESULT_1_1_ADD0_START_COUT,
dataa => VCC);
DAB: draw_any_octant port map (
db_fsm_state_0 => DB_FSM_STATE_16,
db_fsm_state_1 => DB_FSM_STATE(3),
db_fsm_state_2 => DB_FSM_STATE(4),
yin_0 => YIN(0),
yin_5 => YIN(5),
yin_1 => YIN(1),
yin_2 => YIN(2),
yin_3 => YIN(3),
yin_4 => YIN(4),
xin_0 => XIN(0),
xin_5 => XIN_18,
xin_1 => XIN(1),
xin_2 => XIN(2),
xin_3 => XIN(3),
xin_4 => XIN_19,
yout_1 => YOUT(1),
yout_0 => YOUT(0),
yout_5 => YOUT(5),
yout_2 => YOUT(2),
yout_3 => YOUT(3),
yout_4 => YOUT(4),
xout_1 => XOUT(1),
xout_0 => XOUT(0),
xout_5 => XOUT_20,
xout_2 => XOUT(2),
xout_3 => XOUT(3),
xout_4 => XOUT_21,
negx1 => NEGX1,
clk_c => clk_c,
negy1 => NEGY1,
swapxy1 => SWAPXY1,
\cmd_1_0_2__g5\ => \CMD_1_0_2__G5\,
un7_state => un7_state,
un3_x1 => UN3_X1,
disable_i_a2 => DISABLE_I_A2,
is_same => is_same,
vram_write_i7lto31 => vram_write_i7lto31,
m3 => m3,
word_reg_delayed_6 => word_reg_delayed_6,
vram_write_i_4_0 => vram_write_i_4_0,
vram_write_i_6 => vram_write_i_6,
xbias1 => XBIAS1);
VCC <= '1';
GND <= '0';
DB_FSM_STATE_I_0_I <= not DB_FSM_STATE_I_13;
db_fsm_state_i_0 <= DB_FSM_STATE_I_13;
cmd_2 <= CMD_14;
db_fsm_state_1 <= DB_FSM_STATE_15;
db_fsm_state_2 <= DB_FSM_STATE_16;
db_fsm_state_0 <= DB_FSM_STATE_17;
xin_5 <= XIN_18;
xin_4 <= XIN_19;
xout_5 <= XOUT_20;
xout_4 <= XOUT_21;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity vdp is
port(
clk :  in std_logic;
reset :  in std_logic;
hdb : in std_logic_vector(15 downto 0);
dav :  in std_logic;
hdb_busy :  out std_logic;
vdin : out std_logic_vector(15 downto 0);
vdout : in std_logic_vector(15 downto 0);
vaddr : out std_logic_vector(7 downto 0);
vwrite :  out std_logic;
finish :  out std_logic);
end vdp;

architecture beh of vdp is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal \DB1.DBB_BUS.X\ : std_logic_vector(5 downto 0);
signal \DB1.CMD_O.CMD\ : std_logic_vector(2 downto 0);
signal \DB1.DB_FSM_STATE\ : std_logic_vector(2 downto 0);
signal \DB1.DB_FSM_STATE_I\ : std_logic_vector(8 to 8);
signal \RCB1.E2.DATA_RAM\ : std_logic_vector(15 downto 0);
signal \RCB1.E2.ADDR_RAM\ : std_logic_vector(7 downto 0);
signal HDB_C : std_logic_vector(15 downto 0);
signal VDOUT_C : std_logic_vector(15 downto 0);
signal \DB1.DAB.SWAP2.XOUT\ : std_logic_vector(5 downto 4);
signal \DB1.XIN\ : std_logic_vector(5 downto 4);
signal \DB1.DBB_BUS.Y\ : std_logic_vector(5 downto 0);
signal VDINZ : std_logic_vector(15 downto 0);
signal VADDRZ : std_logic_vector(7 downto 0);
signal VCC : std_logic ;
signal GND : std_logic ;
signal \RCB1.E2.C1.UN7_STATE\ : std_logic ;
signal \RCB1.E2.STATE_S0_0_A3\ : std_logic ;
signal \RCB1.E1.FINISH_X\ : std_logic ;
signal CLK_C : std_logic ;
signal RESET_C : std_logic ;
signal DAV_C : std_logic ;
signal \DB1.DBB_BUS.STARTCMD_I_A5\ : std_logic ;
signal \RCB1.RCB_LOG.DELAYCMD_4.M3\ : std_logic ;
signal \DB1.MUX_OUT_I_A2\ : std_logic ;
signal \RCB1.E2.SPLIT.WORD_REG_DELAYED_6\ : std_logic ;
signal \RCB1.E1.IS_SAME\ : std_logic ;
signal \RCB1.VRAM.VRAM_WRITE_I7LTO31\ : std_logic ;
signal \RCB1.E2.VRAM.VRAM_WRITE_I_2\ : std_logic ;
signal \RCB1.E2.VRAM.VRAM_WRITE_I_6\ : std_logic ;
signal \RCB1.E2.VRAM.VRAM_WRITE_I_4_0\ : std_logic ;
signal CLK_INTERNAL : std_logic ;
signal RESET_INTERNAL : std_logic ;
signal HDB_INTERNAL : std_logic ;
signal HDB_INTERNAL_0 : std_logic ;
signal HDB_INTERNAL_1 : std_logic ;
signal HDB_INTERNAL_2 : std_logic ;
signal HDB_INTERNAL_3 : std_logic ;
signal HDB_INTERNAL_4 : std_logic ;
signal HDB_INTERNAL_5 : std_logic ;
signal HDB_INTERNAL_6 : std_logic ;
signal HDB_INTERNAL_7 : std_logic ;
signal HDB_INTERNAL_8 : std_logic ;
signal HDB_INTERNAL_9 : std_logic ;
signal HDB_INTERNAL_10 : std_logic ;
signal HDB_INTERNAL_11 : std_logic ;
signal HDB_INTERNAL_12 : std_logic ;
signal HDB_INTERNAL_13 : std_logic ;
signal HDB_INTERNAL_14 : std_logic ;
signal DAV_INTERNAL : std_logic ;
signal VDOUT_INTERNAL : std_logic ;
signal VDOUT_INTERNAL_0 : std_logic ;
signal VDOUT_INTERNAL_1 : std_logic ;
signal VDOUT_INTERNAL_2 : std_logic ;
signal VDOUT_INTERNAL_3 : std_logic ;
signal VDOUT_INTERNAL_4 : std_logic ;
signal VDOUT_INTERNAL_5 : std_logic ;
signal VDOUT_INTERNAL_6 : std_logic ;
signal VDOUT_INTERNAL_7 : std_logic ;
signal VDOUT_INTERNAL_8 : std_logic ;
signal VDOUT_INTERNAL_9 : std_logic ;
signal VDOUT_INTERNAL_10 : std_logic ;
signal VDOUT_INTERNAL_11 : std_logic ;
signal VDOUT_INTERNAL_12 : std_logic ;
signal VDOUT_INTERNAL_13 : std_logic ;
signal VDOUT_INTERNAL_14 : std_logic ;
signal N_1 : std_logic ;
signal N_2 : std_logic ;
signal N_3 : std_logic ;
signal N_4 : std_logic ;
signal N_5 : std_logic ;
signal N_6 : std_logic ;
signal N_7 : std_logic ;
signal N_8 : std_logic ;
signal N_9 : std_logic ;
signal N_10 : std_logic ;
signal N_11 : std_logic ;
signal N_12 : std_logic ;
signal N_13 : std_logic ;
signal N_14 : std_logic ;
signal N_15 : std_logic ;
signal N_16 : std_logic ;
signal N_17 : std_logic ;
signal N_18 : std_logic ;
signal N_19 : std_logic ;
signal N_75 : std_logic ;
signal N_76 : std_logic ;
signal N_77 : std_logic ;
signal N_78 : std_logic ;
signal N_79 : std_logic ;
signal N_80 : std_logic ;
signal N_81 : std_logic ;
signal N_82 : std_logic ;
signal N_83 : std_logic ;
signal N_84 : std_logic ;
signal N_85 : std_logic ;
signal N_86 : std_logic ;
signal N_87 : std_logic ;
signal N_88 : std_logic ;
signal N_89 : std_logic ;
signal N_90 : std_logic ;
signal N_91 : std_logic ;
signal N_37 : std_logic ;
signal N_38 : std_logic ;
signal N_39 : std_logic ;
signal N_40 : std_logic ;
signal N_41 : std_logic ;
signal N_42 : std_logic ;
signal N_43 : std_logic ;
signal N_44 : std_logic ;
signal N_45 : std_logic ;
signal N_46 : std_logic ;
signal N_47 : std_logic ;
signal N_48 : std_logic ;
signal N_49 : std_logic ;
signal N_50 : std_logic ;
signal N_51 : std_logic ;
signal N_52 : std_logic ;
signal N_92 : std_logic ;
signal N_93 : std_logic ;
signal N_94 : std_logic ;
signal N_95 : std_logic ;
signal N_96 : std_logic ;
signal N_97 : std_logic ;
signal N_98 : std_logic ;
signal N_99 : std_logic ;
signal N_100 : std_logic ;
signal N_101 : std_logic ;
signal HDB_BUSYZ : std_logic ;
signal VWRITEZ : std_logic ;
signal FINISHZ : std_logic ;
component db
port(
db_fsm_state_i_0 :  out std_logic;
cmd_2 :  out std_logic;
cmd_1 :  out std_logic;
cmd_0 :  out std_logic;
db_fsm_state_1 :  out std_logic;
db_fsm_state_2 :  out std_logic;
db_fsm_state_0 :  out std_logic;
hdb_c_13 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_8 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_2 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_0 :  in std_logic;
hdb_c_15 :  in std_logic;
hdb_c_14 :  in std_logic;
xin_5 :  out std_logic;
xin_4 :  out std_logic;
Y_1 :  out std_logic;
Y_0 :  out std_logic;
Y_5 :  out std_logic;
Y_2 :  out std_logic;
Y_3 :  out std_logic;
Y_4 :  out std_logic;
X_1 :  out std_logic;
X_0 :  out std_logic;
X_5 :  out std_logic;
X_2 :  out std_logic;
X_3 :  out std_logic;
X_4 :  out std_logic;
xout_5 :  out std_logic;
xout_4 :  out std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  out std_logic;
startcmd_i_a5 :  out std_logic;
dav_c :  in std_logic;
un7_state :  in std_logic;
vram_write_i7lto31 :  in std_logic;
m3 :  in std_logic;
vram_write_i_2 :  in std_logic;
is_same :  in std_logic;
word_reg_delayed_6 :  in std_logic;
vram_write_i_4_0 :  in std_logic;
vram_write_i_6 :  in std_logic  );
end component;
component rcb
port(
X_1_5 :  in std_logic;
X_1_4 :  in std_logic;
X_1_3 :  in std_logic;
X_1_2 :  in std_logic;
X_1_1 :  in std_logic;
X_1_0 :  in std_logic;
Y_1_5 :  in std_logic;
Y_1_4 :  in std_logic;
Y_1_3 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
cmd_2 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
addr_ram_7 :  out std_logic;
addr_ram_6 :  out std_logic;
addr_ram_5 :  out std_logic;
addr_ram_4 :  out std_logic;
addr_ram_3 :  out std_logic;
addr_ram_2 :  out std_logic;
addr_ram_1 :  out std_logic;
addr_ram_0 :  out std_logic;
data_ram_0 :  out std_logic;
data_ram_1 :  out std_logic;
data_ram_2 :  out std_logic;
data_ram_3 :  out std_logic;
data_ram_4 :  out std_logic;
data_ram_5 :  out std_logic;
data_ram_6 :  out std_logic;
data_ram_7 :  out std_logic;
data_ram_8 :  out std_logic;
data_ram_9 :  out std_logic;
data_ram_10 :  out std_logic;
data_ram_11 :  out std_logic;
data_ram_12 :  out std_logic;
data_ram_13 :  out std_logic;
data_ram_14 :  out std_logic;
data_ram_15 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
xout_0 :  in std_logic;
xout_1 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_13 :  in std_logic;
clk_c :  in std_logic;
un7_state :  out std_logic;
reset_c :  in std_logic;
dav_c :  in std_logic;
startcmd_i_a5 :  in std_logic;
m3 :  out std_logic;
vram_write_i7lto31 :  out std_logic;
vram_write_i_2 :  out std_logic;
is_same :  out std_logic;
finish_x :  out std_logic;
state_s0_0_a3 :  out std_logic;
word_reg_delayed_6 :  out std_logic;
vram_write_i_4_0 :  out std_logic;
mux_out_i_a2 :  in std_logic;
vram_write_i_6 :  out std_logic  );
end component;
begin
VCC <= '1';
GND <= '0';
\VDOUT_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_52,
combout => VDOUT_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_51,
combout => VDOUT_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_50,
combout => VDOUT_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_49,
combout => VDOUT_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_48,
combout => VDOUT_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_47,
combout => VDOUT_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_46,
combout => VDOUT_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_45,
combout => VDOUT_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_44,
combout => VDOUT_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_43,
combout => VDOUT_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_42,
combout => VDOUT_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_41,
combout => VDOUT_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_40,
combout => VDOUT_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_39,
combout => VDOUT_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_38,
combout => VDOUT_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_37,
combout => VDOUT_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
DAV_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_19,
combout => DAV_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_18,
combout => HDB_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_17,
combout => HDB_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_16,
combout => HDB_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_15,
combout => HDB_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_14,
combout => HDB_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_13,
combout => HDB_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_12,
combout => HDB_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_11,
combout => HDB_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_10,
combout => HDB_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_9,
combout => HDB_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_8,
combout => HDB_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_7,
combout => HDB_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_6,
combout => HDB_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_5,
combout => HDB_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_4,
combout => HDB_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_3,
combout => HDB_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
RESET_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_2,
combout => RESET_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
CLK_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_1,
combout => CLK_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
FINISH_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => FINISHZ,
datain => \RCB1.E1.FINISH_X\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
VWRITE_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VWRITEZ,
datain => \RCB1.E2.STATE_S0_0_A3\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(7),
datain => \RCB1.E2.ADDR_RAM\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(6),
datain => \RCB1.E2.ADDR_RAM\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(5),
datain => \RCB1.E2.ADDR_RAM\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(4),
datain => \RCB1.E2.ADDR_RAM\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(3),
datain => \RCB1.E2.ADDR_RAM\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(2),
datain => \RCB1.E2.ADDR_RAM\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(1),
datain => \RCB1.E2.ADDR_RAM\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(0),
datain => \RCB1.E2.ADDR_RAM\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_15_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(15),
datain => \RCB1.E2.DATA_RAM\(15),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_14_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(14),
datain => \RCB1.E2.DATA_RAM\(14),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_13_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(13),
datain => \RCB1.E2.DATA_RAM\(13),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_12_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(12),
datain => \RCB1.E2.DATA_RAM\(12),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_11_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(11),
datain => \RCB1.E2.DATA_RAM\(11),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_10_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(10),
datain => \RCB1.E2.DATA_RAM\(10),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_9_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(9),
datain => \RCB1.E2.DATA_RAM\(9),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_8_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(8),
datain => \RCB1.E2.DATA_RAM\(8),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(7),
datain => \RCB1.E2.DATA_RAM\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(6),
datain => \RCB1.E2.DATA_RAM\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(5),
datain => \RCB1.E2.DATA_RAM\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(4),
datain => \RCB1.E2.DATA_RAM\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(3),
datain => \RCB1.E2.DATA_RAM\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(2),
datain => \RCB1.E2.DATA_RAM\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(1),
datain => \RCB1.E2.DATA_RAM\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(0),
datain => \RCB1.E2.DATA_RAM\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
HDB_BUSY_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => HDB_BUSYZ,
datain => \DB1.DB_FSM_STATE_I\(8),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
DB1: db port map (
db_fsm_state_i_0 => \DB1.DB_FSM_STATE_I\(8),
cmd_2 => \DB1.CMD_O.CMD\(2),
cmd_1 => \DB1.CMD_O.CMD\(1),
cmd_0 => \DB1.CMD_O.CMD\(0),
db_fsm_state_1 => \DB1.DB_FSM_STATE\(1),
db_fsm_state_2 => \DB1.DB_FSM_STATE\(2),
db_fsm_state_0 => \DB1.DB_FSM_STATE\(0),
hdb_c_13 => HDB_C(13),
hdb_c_12 => HDB_C(12),
hdb_c_11 => HDB_C(11),
hdb_c_10 => HDB_C(10),
hdb_c_9 => HDB_C(9),
hdb_c_8 => HDB_C(8),
hdb_c_7 => HDB_C(7),
hdb_c_6 => HDB_C(6),
hdb_c_5 => HDB_C(5),
hdb_c_4 => HDB_C(4),
hdb_c_3 => HDB_C(3),
hdb_c_2 => HDB_C(2),
hdb_c_1 => HDB_C(1),
hdb_c_0 => HDB_C(0),
hdb_c_15 => HDB_C(15),
hdb_c_14 => HDB_C(14),
xin_5 => \DB1.XIN\(5),
xin_4 => \DB1.XIN\(4),
Y_1 => \DB1.DBB_BUS.Y\(1),
Y_0 => \DB1.DBB_BUS.Y\(0),
Y_5 => \DB1.DBB_BUS.Y\(5),
Y_2 => \DB1.DBB_BUS.Y\(2),
Y_3 => \DB1.DBB_BUS.Y\(3),
Y_4 => \DB1.DBB_BUS.Y\(4),
X_1 => \DB1.DBB_BUS.X\(1),
X_0 => \DB1.DBB_BUS.X\(0),
X_5 => \DB1.DBB_BUS.X\(5),
X_2 => \DB1.DBB_BUS.X\(2),
X_3 => \DB1.DBB_BUS.X\(3),
X_4 => \DB1.DBB_BUS.X\(4),
xout_5 => \DB1.DAB.SWAP2.XOUT\(5),
xout_4 => \DB1.DAB.SWAP2.XOUT\(4),
clk_c => CLK_C,
reset_c => RESET_C,
mux_out_i_a2 => \DB1.MUX_OUT_I_A2\,
startcmd_i_a5 => \DB1.DBB_BUS.STARTCMD_I_A5\,
dav_c => DAV_C,
un7_state => \RCB1.E2.C1.UN7_STATE\,
vram_write_i7lto31 => \RCB1.VRAM.VRAM_WRITE_I7LTO31\,
m3 => \RCB1.RCB_LOG.DELAYCMD_4.M3\,
vram_write_i_2 => \RCB1.E2.VRAM.VRAM_WRITE_I_2\,
is_same => \RCB1.E1.IS_SAME\,
word_reg_delayed_6 => \RCB1.E2.SPLIT.WORD_REG_DELAYED_6\,
vram_write_i_4_0 => \RCB1.E2.VRAM.VRAM_WRITE_I_4_0\,
vram_write_i_6 => \RCB1.E2.VRAM.VRAM_WRITE_I_6\);
RCB1: rcb port map (
X_1_5 => \DB1.DBB_BUS.X\(5),
X_1_4 => \DB1.DBB_BUS.X\(4),
X_1_3 => \DB1.DBB_BUS.X\(3),
X_1_2 => \DB1.DBB_BUS.X\(2),
X_1_1 => \DB1.DBB_BUS.X\(1),
X_1_0 => \DB1.DBB_BUS.X\(0),
Y_1_5 => \DB1.DBB_BUS.Y\(5),
Y_1_4 => \DB1.DBB_BUS.Y\(4),
Y_1_3 => \DB1.DBB_BUS.Y\(3),
Y_1_2 => \DB1.DBB_BUS.Y\(2),
Y_1_1 => \DB1.DBB_BUS.Y\(1),
Y_1_0 => \DB1.DBB_BUS.Y\(0),
db_fsm_state_i_0 => \DB1.DB_FSM_STATE_I\(8),
cmd_2 => \DB1.CMD_O.CMD\(2),
cmd_1 => \DB1.CMD_O.CMD\(1),
cmd_0 => \DB1.CMD_O.CMD\(0),
addr_ram_7 => \RCB1.E2.ADDR_RAM\(7),
addr_ram_6 => \RCB1.E2.ADDR_RAM\(6),
addr_ram_5 => \RCB1.E2.ADDR_RAM\(5),
addr_ram_4 => \RCB1.E2.ADDR_RAM\(4),
addr_ram_3 => \RCB1.E2.ADDR_RAM\(3),
addr_ram_2 => \RCB1.E2.ADDR_RAM\(2),
addr_ram_1 => \RCB1.E2.ADDR_RAM\(1),
addr_ram_0 => \RCB1.E2.ADDR_RAM\(0),
data_ram_0 => \RCB1.E2.DATA_RAM\(0),
data_ram_1 => \RCB1.E2.DATA_RAM\(1),
data_ram_2 => \RCB1.E2.DATA_RAM\(2),
data_ram_3 => \RCB1.E2.DATA_RAM\(3),
data_ram_4 => \RCB1.E2.DATA_RAM\(4),
data_ram_5 => \RCB1.E2.DATA_RAM\(5),
data_ram_6 => \RCB1.E2.DATA_RAM\(6),
data_ram_7 => \RCB1.E2.DATA_RAM\(7),
data_ram_8 => \RCB1.E2.DATA_RAM\(8),
data_ram_9 => \RCB1.E2.DATA_RAM\(9),
data_ram_10 => \RCB1.E2.DATA_RAM\(10),
data_ram_11 => \RCB1.E2.DATA_RAM\(11),
data_ram_12 => \RCB1.E2.DATA_RAM\(12),
data_ram_13 => \RCB1.E2.DATA_RAM\(13),
data_ram_14 => \RCB1.E2.DATA_RAM\(14),
data_ram_15 => \RCB1.E2.DATA_RAM\(15),
db_fsm_state_0 => \DB1.DB_FSM_STATE\(0),
db_fsm_state_1 => \DB1.DB_FSM_STATE\(1),
db_fsm_state_2 => \DB1.DB_FSM_STATE\(2),
xout_0 => \DB1.DAB.SWAP2.XOUT\(4),
xout_1 => \DB1.DAB.SWAP2.XOUT\(5),
xin_0 => \DB1.XIN\(4),
xin_1 => \DB1.XIN\(5),
vdout_c_5 => VDOUT_C(5),
vdout_c_4 => VDOUT_C(4),
vdout_c_3 => VDOUT_C(3),
vdout_c_2 => VDOUT_C(2),
vdout_c_1 => VDOUT_C(1),
vdout_c_0 => VDOUT_C(0),
vdout_c_12 => VDOUT_C(12),
vdout_c_11 => VDOUT_C(11),
vdout_c_10 => VDOUT_C(10),
vdout_c_9 => VDOUT_C(9),
vdout_c_8 => VDOUT_C(8),
vdout_c_7 => VDOUT_C(7),
vdout_c_6 => VDOUT_C(6),
vdout_c_15 => VDOUT_C(15),
vdout_c_14 => VDOUT_C(14),
vdout_c_13 => VDOUT_C(13),
clk_c => CLK_C,
un7_state => \RCB1.E2.C1.UN7_STATE\,
reset_c => RESET_C,
dav_c => DAV_C,
startcmd_i_a5 => \DB1.DBB_BUS.STARTCMD_I_A5\,
m3 => \RCB1.RCB_LOG.DELAYCMD_4.M3\,
vram_write_i7lto31 => \RCB1.VRAM.VRAM_WRITE_I7LTO31\,
vram_write_i_2 => \RCB1.E2.VRAM.VRAM_WRITE_I_2\,
is_same => \RCB1.E1.IS_SAME\,
finish_x => \RCB1.E1.FINISH_X\,
state_s0_0_a3 => \RCB1.E2.STATE_S0_0_A3\,
word_reg_delayed_6 => \RCB1.E2.SPLIT.WORD_REG_DELAYED_6\,
vram_write_i_4_0 => \RCB1.E2.VRAM.VRAM_WRITE_I_4_0\,
mux_out_i_a2 => \DB1.MUX_OUT_I_A2\,
vram_write_i_6 => \RCB1.E2.VRAM.VRAM_WRITE_I_6\);
N_1 <= CLK_INTERNAL;
N_2 <= RESET_INTERNAL;
N_3 <= HDB_INTERNAL;
N_4 <= HDB_INTERNAL_0;
N_5 <= HDB_INTERNAL_1;
N_6 <= HDB_INTERNAL_2;
N_7 <= HDB_INTERNAL_3;
N_8 <= HDB_INTERNAL_4;
N_9 <= HDB_INTERNAL_5;
N_10 <= HDB_INTERNAL_6;
N_11 <= HDB_INTERNAL_7;
N_12 <= HDB_INTERNAL_8;
N_13 <= HDB_INTERNAL_9;
N_14 <= HDB_INTERNAL_10;
N_15 <= HDB_INTERNAL_11;
N_16 <= HDB_INTERNAL_12;
N_17 <= HDB_INTERNAL_13;
N_18 <= HDB_INTERNAL_14;
N_19 <= DAV_INTERNAL;
N_75 <= HDB_BUSYZ;
N_76 <= VDINZ(0);
N_77 <= VDINZ(1);
N_78 <= VDINZ(2);
N_79 <= VDINZ(3);
N_80 <= VDINZ(4);
N_81 <= VDINZ(5);
N_82 <= VDINZ(6);
N_83 <= VDINZ(7);
N_84 <= VDINZ(8);
N_85 <= VDINZ(9);
N_86 <= VDINZ(10);
N_87 <= VDINZ(11);
N_88 <= VDINZ(12);
N_89 <= VDINZ(13);
N_90 <= VDINZ(14);
N_91 <= VDINZ(15);
N_37 <= VDOUT_INTERNAL;
N_38 <= VDOUT_INTERNAL_0;
N_39 <= VDOUT_INTERNAL_1;
N_40 <= VDOUT_INTERNAL_2;
N_41 <= VDOUT_INTERNAL_3;
N_42 <= VDOUT_INTERNAL_4;
N_43 <= VDOUT_INTERNAL_5;
N_44 <= VDOUT_INTERNAL_6;
N_45 <= VDOUT_INTERNAL_7;
N_46 <= VDOUT_INTERNAL_8;
N_47 <= VDOUT_INTERNAL_9;
N_48 <= VDOUT_INTERNAL_10;
N_49 <= VDOUT_INTERNAL_11;
N_50 <= VDOUT_INTERNAL_12;
N_51 <= VDOUT_INTERNAL_13;
N_52 <= VDOUT_INTERNAL_14;
N_92 <= VADDRZ(0);
N_93 <= VADDRZ(1);
N_94 <= VADDRZ(2);
N_95 <= VADDRZ(3);
N_96 <= VADDRZ(4);
N_97 <= VADDRZ(5);
N_98 <= VADDRZ(6);
N_99 <= VADDRZ(7);
N_100 <= VWRITEZ;
N_101 <= FINISHZ;
hdb_busy <= N_75;
vdin(0) <= N_76;
vdin(1) <= N_77;
vdin(2) <= N_78;
vdin(3) <= N_79;
vdin(4) <= N_80;
vdin(5) <= N_81;
vdin(6) <= N_82;
vdin(7) <= N_83;
vdin(8) <= N_84;
vdin(9) <= N_85;
vdin(10) <= N_86;
vdin(11) <= N_87;
vdin(12) <= N_88;
vdin(13) <= N_89;
vdin(14) <= N_90;
vdin(15) <= N_91;
vaddr(0) <= N_92;
vaddr(1) <= N_93;
vaddr(2) <= N_94;
vaddr(3) <= N_95;
vaddr(4) <= N_96;
vaddr(5) <= N_97;
vaddr(6) <= N_98;
vaddr(7) <= N_99;
vwrite <= N_100;
finish <= N_101;
CLK_INTERNAL <= clk;
RESET_INTERNAL <= reset;
HDB_INTERNAL <= hdb(0);
HDB_INTERNAL_0 <= hdb(1);
HDB_INTERNAL_1 <= hdb(2);
HDB_INTERNAL_2 <= hdb(3);
HDB_INTERNAL_3 <= hdb(4);
HDB_INTERNAL_4 <= hdb(5);
HDB_INTERNAL_5 <= hdb(6);
HDB_INTERNAL_6 <= hdb(7);
HDB_INTERNAL_7 <= hdb(8);
HDB_INTERNAL_8 <= hdb(9);
HDB_INTERNAL_9 <= hdb(10);
HDB_INTERNAL_10 <= hdb(11);
HDB_INTERNAL_11 <= hdb(12);
HDB_INTERNAL_12 <= hdb(13);
HDB_INTERNAL_13 <= hdb(14);
HDB_INTERNAL_14 <= hdb(15);
DAV_INTERNAL <= dav;
VDOUT_INTERNAL <= vdout(0);
VDOUT_INTERNAL_0 <= vdout(1);
VDOUT_INTERNAL_1 <= vdout(2);
VDOUT_INTERNAL_2 <= vdout(3);
VDOUT_INTERNAL_3 <= vdout(4);
VDOUT_INTERNAL_4 <= vdout(5);
VDOUT_INTERNAL_5 <= vdout(6);
VDOUT_INTERNAL_6 <= vdout(7);
VDOUT_INTERNAL_7 <= vdout(8);
VDOUT_INTERNAL_8 <= vdout(9);
VDOUT_INTERNAL_9 <= vdout(10);
VDOUT_INTERNAL_10 <= vdout(11);
VDOUT_INTERNAL_11 <= vdout(12);
VDOUT_INTERNAL_12 <= vdout(13);
VDOUT_INTERNAL_13 <= vdout(14);
VDOUT_INTERNAL_14 <= vdout(15);
end beh;

