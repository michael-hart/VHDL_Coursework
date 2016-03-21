--
-- Written by Synplicity
-- Product Version "I-2013.09-SP1 "
-- Program "Synplify Premier", Mapper "maprc, Build 1911R"
-- Mon Mar 21 18:56:42 2016
--

--
-- Written by Synplify Premier version Build 1911R
-- Mon Mar 21 18:56:42 2016
--

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use work.cycloneii_components.all;

entity swap_0 is
port(
  x1_0 :  in std_logic;
  x1_1 :  in std_logic;
  x1_2 :  in std_logic;
  yout_5 :  out std_logic;
  yout_3 :  out std_logic;
  yout_0 :  out std_logic;
  yout_1 :  out std_logic;
  yout_2 :  out std_logic;
  yout_4 :  out std_logic;
  y1_2 :  in std_logic;
  y1_0 :  in std_logic;
  y1_1 :  in std_logic;
  b_5 :  in std_logic;
  b_3 :  in std_logic;
  b_0 :  in std_logic;
  b_1 :  in std_logic;
  b_2 :  in std_logic;
  b_4 :  in std_logic;
  xout_5 :  out std_logic;
  xout_3 :  out std_logic;
  xout_0 :  out std_logic;
  xout_1 :  out std_logic;
  xout_2 :  out std_logic;
  xout_4 :  out std_logic;
  negy :  in std_logic;
  swapxy :  in std_logic;
  negx :  in std_logic);
end swap_0;

architecture beh of swap_0 is
  signal devclrn : std_logic := '1';
  signal devpor : std_logic := '1';
  signal devoe : std_logic := '0';
  signal GND : std_logic ;
  signal VCC : std_logic ;
begin
\XOUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => xout_5,
dataa => negy,
datab => y1_2,
datac => swapxy,
datad => b_5);
\YOUT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => yout_5,
dataa => negy,
datab => y1_2,
datac => swapxy,
datad => b_5);
\YOUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => yout_3,
dataa => negy,
datab => y1_0,
datac => swapxy,
datad => b_3);
\XOUT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => xout_3,
dataa => negy,
datab => y1_0,
datac => swapxy,
datad => b_3);
\YOUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_0,
dataa => negx,
datab => x1_0,
datac => swapxy,
datad => b_0);
\YOUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_1,
dataa => negx,
datab => x1_1,
datac => swapxy,
datad => b_1);
\YOUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => yout_2,
dataa => negx,
datab => x1_2,
datac => swapxy,
datad => b_2);
\YOUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => yout_4,
dataa => negy,
datab => y1_1,
datac => swapxy,
datad => b_4);
\XOUT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_0,
dataa => negx,
datab => x1_0,
datac => swapxy,
datad => b_0);
\XOUT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_1,
dataa => negx,
datab => x1_1,
datac => swapxy,
datad => b_1);
\XOUT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011000000110")
port map (
combout => xout_2,
dataa => negx,
datab => x1_2,
datac => swapxy,
datad => b_2);
\XOUT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111101100000")
port map (
combout => xout_4,
dataa => negy,
datab => y1_1,
datac => swapxy,
datad => b_4);
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

entity inv_signal_2 is
port(
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
y1_0 :  in std_logic;
y1_1 :  in std_logic;
y1_2 :  in std_logic;
negy :  in std_logic);
end inv_signal_2;

architecture beh of inv_signal_2 is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_0,
dataa => y1_0,
datab => negy);
\B_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_1,
dataa => y1_1,
datab => negy);
\B_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_2,
dataa => y1_2,
datab => negy);
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

entity inv_signal_1 is
port(
b_2 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
x1_2 :  in std_logic;
x1_0 :  in std_logic;
x1_1 :  in std_logic;
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
combout => b_2,
dataa => x1_2,
datab => negx);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_0,
dataa => x1_0,
datab => negx);
\B_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => b_1,
dataa => x1_1,
datab => negx);
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
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
clk_c :  in std_logic;
un14_state_i :  in std_logic;
un5_x1 :  out std_logic;
xbias_i :  in std_logic;
negx_0_0_g2_0_0 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
vram_write_i7lto31 :  in std_logic;
negx_0_0_g2 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic);
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
signal UN1_ERROR_2_V_0 : std_logic_vector(5 downto 0);
signal UN4_0_A2_0 : std_logic_vector(5 downto 4);
signal UN1_ERROR_2_V : std_logic_vector(5 downto 0);
signal UN4_0_A2 : std_logic_vector(3 downto 0);
signal UN4_0_A2_A0_2_1 : std_logic_vector(5 to 5);
signal UN4_0_A2_A0_2 : std_logic_vector(4 to 4);
signal UN4_0_A2_A0_0 : std_logic_vector(5 to 5);
signal UN4_0_A2_A0_1 : std_logic_vector(4 to 4);
signal UN4_0_A2_A1_1 : std_logic_vector(5 to 5);
signal UN4_0_A2_A1_2 : std_logic_vector(4 to 4);
signal UN4_0_A2_A0_6 : std_logic_vector(4 to 4);
signal UN4_0_A2_A0 : std_logic_vector(5 to 5);
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
signal UN1_DISABLE_1 : std_logic ;
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
signal UN1_ERROR_2_CARRY_0 : std_logic ;
signal UN1_ERROR_2_0_ADD0 : std_logic ;
signal UN1_ERROR_2_CARRY_1 : std_logic ;
signal UN1_ERROR_2_0_ADD1 : std_logic ;
signal UN1_ERROR_2_CARRY_2 : std_logic ;
signal UN1_ERROR_2_0_ADD2 : std_logic ;
signal UN1_ERROR_2_CARRY_3 : std_logic ;
signal UN1_ERROR_2_0_ADD3 : std_logic ;
signal UN1_ERROR_2_CARRY_4 : std_logic ;
signal UN1_ERROR_2_0_ADD4 : std_logic ;
signal UN1_ERROR_2_0_ADD5 : std_logic ;
signal UN1_ERROR_2_0_CARRY_0 : std_logic ;
signal Y1_2_SQMUXA : std_logic ;
signal UN1_ERROR_2_0_ADD0_START_COUT : std_logic ;
signal UN1_ERROR_2_0_CARRY_1 : std_logic ;
signal UN1_ERROR_2_0_CARRY_2 : std_logic ;
signal UN1_ERROR_2_0_CARRY_3 : std_logic ;
signal UN1_ERROR_2_0_CARRY_4 : std_logic ;
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
signal INF_ABS1_A_1_ANC4_0 : std_logic ;
signal INF_ABS1_A_1_ANC2 : std_logic ;
signal X1_C2 : std_logic ;
signal Y1_C2 : std_logic ;
signal UN3_X1_1 : std_logic ;
signal UN3_X1_2 : std_logic ;
signal UN3_X1_3 : std_logic ;
signal UN3_X1_4 : std_logic ;
signal UN3_X1_5 : std_logic ;
signal INF_ABS0_A_0_ANC3 : std_logic ;
signal INF_ABS0_A_0_SUM3 : std_logic ;
signal UN3_X1_6 : std_logic ;
signal Y1_2_SQMUXA_0 : std_logic ;
signal UN5_X1_13 : std_logic ;
signal UN15_DISABLE : std_logic ;
signal X1_E5_0_G6 : std_logic ;
signal Y1_E5_0_G4 : std_logic ;
signal UN3_X1_9 : std_logic ;
signal UN12_DISABLE_5_3 : std_logic ;
signal UN3_X1 : std_logic ;
signal UN12_DISABLE_5 : std_logic ;
signal Y1_E5_0_M2 : std_logic ;
signal UN12_DISABLE : std_logic ;
signal Y1_E3_0_M3 : std_logic ;
signal Y1_E1_0_M3 : std_logic ;
signal Y1_E2_0_M5_A : std_logic ;
signal VCC : std_logic ;
signal Y1_1_0 : std_logic ;
signal Y1_2_0 : std_logic ;
signal Y1_3_0 : std_logic ;
signal Y1_4_0 : std_logic ;
signal Y1_5_0 : std_logic ;
signal Y1_6 : std_logic ;
signal X1_5Z : std_logic ;
signal X1_7 : std_logic ;
signal X1_8 : std_logic ;
signal X1_9 : std_logic ;
signal X1_10 : std_logic ;
signal X1_11 : std_logic ;
signal X1_12 : std_logic ;
signal DB_FSM_STATE_2_I : std_logic ;
begin
\R1_Y1_5_\: cycloneii_lcell_ff port map (
regout => Y1_1_0,
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
regout => Y1_2_0,
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
regout => Y1_3_0,
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
regout => Y1_4_0,
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
regout => Y1_5_0,
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
regout => Y1_6,
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
regout => X1_7,
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
regout => X1_8,
datain => X1_E0_0_G0X,
clk => clk_c,
ena => UN1_DISABLE_1,
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
regout => X1_9,
datain => X1_E1_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E1_0_G1,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_2_\: cycloneii_lcell_ff port map (
regout => X1_10,
datain => X1_E2_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E2_0_G1,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_3_\: cycloneii_lcell_ff port map (
regout => X1_11,
datain => X1_E3_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E3_0_G1,
ena => UN1_DISABLE_1,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_4_\: cycloneii_lcell_ff port map (
regout => X1_12,
datain => X1_E4_0_G4,
clk => clk_c,
sload => db_fsm_state_2,
sdata => X1_E4_0_G1,
ena => UN1_DISABLE_1,
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
UN1_ERROR_2_ADD0_Z344: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN1_ERROR_2_ADD0,
cout => UN1_ERROR_2_CARRY_0,
dataa => UN1_ERROR_2_0_ADD0,
datab => UN1_ERROR_2_V_0(0));
UN1_ERROR_2_ADD1_Z345: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD1,
cout => UN1_ERROR_2_CARRY_1,
dataa => UN1_ERROR_2_0_ADD1,
datab => UN1_ERROR_2_V_0(1),
cin => UN1_ERROR_2_CARRY_0);
UN1_ERROR_2_ADD2_Z346: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD2,
cout => UN1_ERROR_2_CARRY_2,
dataa => UN1_ERROR_2_0_ADD2,
datab => UN1_ERROR_2_V_0(2),
cin => UN1_ERROR_2_CARRY_1);
UN1_ERROR_2_ADD3_Z347: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD3,
cout => UN1_ERROR_2_CARRY_3,
dataa => UN1_ERROR_2_0_ADD3,
datab => UN1_ERROR_2_V_0(3),
cin => UN1_ERROR_2_CARRY_2);
UN1_ERROR_2_ADD4_Z348: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_ADD4,
cout => UN1_ERROR_2_CARRY_4,
dataa => UN1_ERROR_2_0_ADD4,
datab => UN1_ERROR_2_V_0(4),
cin => UN1_ERROR_2_CARRY_3);
UN1_ERROR_2_ADD5_Z349: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_ADD5,
dataa => UN1_ERROR_2_0_ADD5,
datab => UN1_ERROR_2_V_0(5),
cin => UN1_ERROR_2_CARRY_4);
UN1_ERROR_2_0_ADD0_Z350: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD0,
cout => UN1_ERROR_2_0_CARRY_0,
dataa => Y1_2_SQMUXA,
datab => UN4_0_A2_0(5),
cin => UN1_ERROR_2_0_ADD0_START_COUT);
UN1_ERROR_2_0_ADD1_Z351: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD1,
cout => UN1_ERROR_2_0_CARRY_1,
dataa => UN4_0_A2_0(4),
datab => UN1_ERROR_2_V(1),
cin => UN1_ERROR_2_0_CARRY_0);
UN1_ERROR_2_0_ADD2_Z352: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD2,
cout => UN1_ERROR_2_0_CARRY_2,
dataa => UN4_0_A2(3),
datab => UN1_ERROR_2_V(2),
cin => UN1_ERROR_2_0_CARRY_1);
UN1_ERROR_2_0_ADD3_Z353: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD3,
cout => UN1_ERROR_2_0_CARRY_3,
dataa => UN4_0_A2(2),
datab => UN1_ERROR_2_V(3),
cin => UN1_ERROR_2_0_CARRY_2);
UN1_ERROR_2_0_ADD4_Z354: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_2_0_ADD4,
cout => UN1_ERROR_2_0_CARRY_4,
dataa => UN4_0_A2(1),
datab => UN1_ERROR_2_V(4),
cin => UN1_ERROR_2_0_CARRY_3);
UN1_ERROR_2_0_ADD5_Z355: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011010010110")
port map (
combout => UN1_ERROR_2_0_ADD5,
dataa => UN4_0_A2(0),
datab => UN1_ERROR_2_V(5),
cin => UN1_ERROR_2_0_CARRY_4);
RESULT_1_ADD0_Z356: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100100100010")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => UN2_ERR2_ADD0,
datab => ERROR(0));
RESULT_1_ADD1_Z357: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => UN2_ERR2_ADD1,
datab => ERROR(1),
cin => RESULT_1_CARRY_0);
RESULT_1_ADD2_Z358: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => UN2_ERR2_ADD2,
datab => ERROR(2),
cin => RESULT_1_CARRY_1);
RESULT_1_ADD3_Z359: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => UN2_ERR2_ADD3,
datab => ERROR(3),
cin => RESULT_1_CARRY_2);
RESULT_1_ADD4_Z360: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => UN2_ERR2_ADD4,
datab => ERROR(4),
cin => RESULT_1_CARRY_3);
RESULT_1_ADD5_Z361: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_CARRY_5,
dataa => UN2_ERR2_ADD5,
datab => ERROR(5),
cin => RESULT_1_CARRY_4);
RESULT_1_ADD6_Z362: cycloneii_lcell_comb generic map (
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
dataa => Y1_6,
datab => b_0,
cin => YINCR_2_ADD0_START_COUT);
R1_YINCR_2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD1,
cout => YINCR_2_CARRY_1,
dataa => Y1_5_0,
datab => b_1,
cin => YINCR_2_CARRY_0);
R1_YINCR_2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD2,
cout => YINCR_2_CARRY_2,
dataa => Y1_4_0,
datab => b_2,
cin => YINCR_2_CARRY_1);
R1_YINCR_2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD3,
cout => YINCR_2_CARRY_3,
dataa => Y1_3_0,
datab => b_3,
cin => YINCR_2_CARRY_2);
R1_YINCR_2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD4,
cout => YINCR_2_CARRY_4,
dataa => Y1_2_0,
datab => b_4,
cin => YINCR_2_CARRY_3);
R1_YINCR_2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => YINCR_2_ADD5,
dataa => Y1_1_0,
datab => b_5,
cin => YINCR_2_CARRY_4);
UN9_ERR1_ADD0_Z369: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN9_ERR1_ADD0,
cout => UN9_ERR1_CARRY_0,
dataa => YINCR(0),
datab => ERROR(0));
UN9_ERR1_ADD1_Z370: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD1,
cout => UN9_ERR1_CARRY_1,
dataa => YINCR(1),
datab => ERROR(1),
cin => UN9_ERR1_CARRY_0);
UN9_ERR1_ADD2_Z371: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD2,
cout => UN9_ERR1_CARRY_2,
dataa => YINCR(2),
datab => ERROR(2),
cin => UN9_ERR1_CARRY_1);
UN9_ERR1_ADD3_Z372: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD3,
cout => UN9_ERR1_CARRY_3,
dataa => YINCR(3),
datab => ERROR(3),
cin => UN9_ERR1_CARRY_2);
UN9_ERR1_ADD4_Z373: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD4,
cout => UN9_ERR1_CARRY_4,
dataa => YINCR(4),
datab => ERROR(4),
cin => UN9_ERR1_CARRY_3);
UN9_ERR1_ADD5_Z374: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN9_ERR1_ADD5,
cout => UN9_ERR1_CARRY_5,
dataa => YINCR(5),
datab => ERROR(5),
cin => UN9_ERR1_CARRY_4);
UN9_ERR1_ADD6_Z375: cycloneii_lcell_comb generic map (
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
dataa => X1_8,
datab => b_0_0,
cin => XINCR_3_ADD0_START_COUT);
R1_XINCR_3_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD1,
cout => XINCR_3_CARRY_1,
dataa => X1_9,
datab => b_0_1,
cin => XINCR_3_CARRY_0);
R1_XINCR_3_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD2,
cout => XINCR_3_CARRY_2,
dataa => X1_10,
datab => b_0_2,
cin => XINCR_3_CARRY_1);
R1_XINCR_3_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD3,
cout => XINCR_3_CARRY_3,
dataa => X1_11,
datab => b_0_3,
cin => XINCR_3_CARRY_2);
R1_XINCR_3_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD4,
cout => XINCR_3_CARRY_4,
dataa => X1_12,
datab => b_0_4,
cin => XINCR_3_CARRY_3);
R1_XINCR_3_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => XINCR_3_ADD5,
dataa => X1_7,
datab => b_0_5,
cin => XINCR_3_CARRY_4);
\R1_XINCR_2_0_0__G0_E\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \XINCR_2_0_0__G0_E\,
dataa => db_fsm_state_2,
datab => db_fsm_state_1);
\UN1_ERROR_2_V_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(0),
dataa => db_fsm_state_2,
datab => ERROR(0));
\UN1_ERROR_2_V_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(1),
dataa => db_fsm_state_2,
datab => ERROR(1));
C1_X1_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_5Z,
dataa => XNEW(5),
datab => X1_7);
\UN1_ERROR_2_V_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(0),
dataa => XINCR(0),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(1),
dataa => XINCR(1),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(2),
dataa => XINCR(2),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(3),
dataa => XINCR(3),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(4),
dataa => XINCR(4),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V_0(5),
dataa => XINCR(5),
datab => Y1_2_SQMUXA);
\UN1_ERROR_2_V_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(5),
dataa => db_fsm_state_2,
datab => ERROR(5));
\UN1_ERROR_2_V_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(4),
dataa => db_fsm_state_2,
datab => ERROR(4));
\UN1_ERROR_2_V_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(3),
dataa => db_fsm_state_2,
datab => ERROR(3));
\UN1_ERROR_2_V_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_ERROR_2_V(2),
dataa => db_fsm_state_2,
datab => ERROR(2));
INF_ABS1_A_1_ANC4_0_Z402: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => INF_ABS1_A_1_ANC4_0,
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4);
\C1_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110001101100")
port map (
combout => INF_ABS0(1),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD6);
\C1_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000110110")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD6);
INF_ABS1_A_1_ANC2_Z405: cycloneii_lcell_comb generic map (
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
dataa => X1_8,
datab => X1_9,
datac => X1_10);
R1_Y1_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => Y1_C2,
dataa => Y1_6,
datab => Y1_5_0,
datac => Y1_4_0);
C1_UN3_X1_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_1,
dataa => YNEW(1),
datab => YNEW(0),
datac => Y1_5_0,
datad => Y1_6);
C1_UN3_X1_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_2,
dataa => YNEW(3),
datab => YNEW(2),
datac => Y1_3_0,
datad => Y1_4_0);
C1_UN3_X1_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_3,
dataa => XNEW(0),
datab => YNEW(5),
datac => X1_8,
datad => Y1_1_0);
C1_UN3_X1_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_4,
dataa => XNEW(1),
datab => YNEW(4),
datac => X1_9,
datad => Y1_2_0);
C1_UN3_X1_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN3_X1_5,
dataa => XNEW(4),
datab => XNEW(2),
datac => X1_12,
datad => X1_10);
\UN4_0_A2_A0_2_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001000")
port map (
combout => UN4_0_A2_A0_2_1(5),
dataa => YINCR(0),
datab => db_fsm_state_0,
datac => db_fsm_state_1,
datad => db_fsm_state_2);
\C1_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111011110000")
port map (
combout => INF_ABS0(2),
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2,
datad => UN9_ERR1_ADD6);
INF_ABS0_A_0_ANC3_Z415: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS0_A_0_ANC3,
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2,
datad => UN9_ERR1_ADD3);
INF_ABS0_A_0_SUM3_Z416: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000111111110")
port map (
combout => INF_ABS0_A_0_SUM3,
dataa => UN9_ERR1_ADD0,
datab => UN9_ERR1_ADD1,
datac => UN9_ERR1_ADD2,
datad => UN9_ERR1_ADD3);
\C1_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111101111000")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD6);
\UN4_0_A2_A0_2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000000000")
port map (
combout => UN4_0_A2_A0_2(4),
dataa => YINCR(1),
datab => db_fsm_state_0,
datac => \XINCR_2_0_0__G0_E\,
datad => un14_state_i);
C1_UN3_X1_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010010000")
port map (
combout => UN3_X1_6,
dataa => XNEW(3),
datab => X1_11,
datac => UN3_X1_1);
Y1_2_SQMUXA_0_Z420: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010000")
port map (
combout => Y1_2_SQMUXA_0,
dataa => \XINCR_2_0_0__G0_E\,
datab => UN5_X1_13,
datac => UN15_DISABLE_6,
datad => UN15_DISABLE);
\C1_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(3),
dataa => UN9_ERR1_ADD3,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_SUM3);
\C1_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001010110")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC2);
\C1_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => INF_ABS1(6),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC2,
datad => INF_ABS1_A_1_ANC4_0);
R1_X1_C2_RNIAC7P: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => X1_E5_0_G6,
dataa => X1_12,
datab => db_fsm_state_2,
datac => X1_11,
datad => X1_C2);
\R1_Y1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => Y1_E5_0_G4,
dataa => Y1_2_0,
datab => db_fsm_state_2,
datac => Y1_3_0,
datad => Y1_C2);
C1_UN3_X1_9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN3_X1_9,
dataa => db_fsm_state_2,
datab => X1_5Z,
datac => UN3_X1_2,
datad => UN3_X1_3);
\UN4_0_A2_A0_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001000")
port map (
combout => UN4_0_A2_A0_0(5),
dataa => UN4_0_A2_A0_2_1(5),
datab => un14_state_i,
datac => UN5_X1_13);
R1_UN12_DISABLE_5_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => UN12_DISABLE_5_3,
dataa => xbias_i,
datab => UN15_DISABLE_1,
datac => UN15_DISABLE_2,
datad => UN15_DISABLE_7);
\C1_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => INF_ABS0(4),
dataa => UN9_ERR1_ADD4,
datab => UN9_ERR1_ADD6,
datac => INF_ABS0_A_0_ANC3);
\C1_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011000111100")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD6,
datad => INF_ABS1_A_1_ANC2);
\C1_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101011001100110")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD6,
datac => INF_ABS1_A_1_ANC2,
datad => INF_ABS1_A_1_ANC4_0);
\UN4_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010100000")
port map (
combout => UN4_0_A2(0),
dataa => YINCR(5),
datab => \XINCR_2_0_0__G0_E\,
datac => negx_0_0_g2_0_0,
datad => vram_write_i_0_a2_0);
\UN4_0_A2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010100000")
port map (
combout => UN4_0_A2(1),
dataa => YINCR(4),
datab => \XINCR_2_0_0__G0_E\,
datac => negx_0_0_g2_0_0,
datad => vram_write_i_0_a2_0);
\UN4_0_A2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010100000")
port map (
combout => UN4_0_A2(2),
dataa => YINCR(3),
datab => \XINCR_2_0_0__G0_E\,
datac => negx_0_0_g2_0_0,
datad => vram_write_i_0_a2_0);
\UN4_0_A2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010100000")
port map (
combout => UN4_0_A2(3),
dataa => YINCR(2),
datab => \XINCR_2_0_0__G0_E\,
datac => negx_0_0_g2_0_0,
datad => vram_write_i_0_a2_0);
\C1_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => INF_ABS0(6),
dataa => UN9_ERR1_ADD4,
datab => UN9_ERR1_ADD5,
datac => UN9_ERR1_ADD6,
datad => INF_ABS0_A_0_ANC3);
C1_UN3_X1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN3_X1,
dataa => UN3_X1_4,
datab => UN3_X1_5,
datac => UN3_X1_6,
datad => UN3_X1_9);
R1_UN12_DISABLE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN12_DISABLE_5,
dataa => UN15_DISABLE_3,
datab => UN15_DISABLE_4,
datac => UN15_DISABLE_5,
datad => UN12_DISABLE_5_3);
\UN4_0_A2_A0_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => UN4_0_A2_A0_1(4),
dataa => vram_write_i7lto31,
datab => UN4_0_A2_A0_2(4),
datac => UN5_X1_13);
\C1_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110110000111100")
port map (
combout => INF_ABS0(5),
dataa => UN9_ERR1_ADD4,
datab => UN9_ERR1_ADD5,
datac => UN9_ERR1_ADD6,
datad => INF_ABS0_A_0_ANC3);
C1_UN5_X1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN5_X1_13,
dataa => db_fsm_state_1,
datab => UN3_X1);
\R1_X1_RNINU6D_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E1_0_G1,
dataa => db_fsm_state_2,
datab => X1_9,
datac => b_0_1);
\R1_X1_RNIP07D_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E2_0_G1,
dataa => db_fsm_state_2,
datab => X1_10,
datac => b_0_2);
\R1_X1_RNIR27D_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E3_0_G1,
dataa => db_fsm_state_2,
datab => X1_11,
datac => b_0_3);
\R1_X1_RNIT47D_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => X1_E4_0_G1,
dataa => db_fsm_state_2,
datab => X1_12,
datac => b_0_4);
\R1_Y1_RNO_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001101100011011")
port map (
combout => Y1_E5_0_M2,
dataa => db_fsm_state_2,
datab => Y1_1_0,
datac => b_5);
\R1_Y1_RNIVDNR_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011100100")
port map (
combout => Y1_E4_0_G3,
dataa => db_fsm_state_2,
datab => Y1_2_0,
datac => b_4);
\R1_X1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E5_0_G8,
dataa => X1_E5_0_G6,
datab => b_0_5);
\R1_X1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110101001101010")
port map (
combout => X1_E5_0_G1,
dataa => X1_7,
datab => X1_E5_0_G6,
datac => UN1_DISABLE_1);
R1_UN12_DISABLE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN12_DISABLE,
dataa => UN15_DISABLE_6,
datab => UN12_DISABLE_5);
UN1_DISABLE_1_Z451: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000101100000000")
port map (
combout => UN1_DISABLE_1,
dataa => db_fsm_state_2,
datab => db_fsm_state_1,
datac => UN3_X1,
datad => negx_0_0_g2);
\R1_X1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000111010001")
port map (
combout => X1_E0_0_G0X,
dataa => X1_8,
datab => db_fsm_state_2,
datac => b_0_0);
\R1_X1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E1_0_G4,
dataa => X1_8,
datab => X1_E1_0_G1);
\R1_X1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => X1_E2_0_G4,
dataa => X1_8,
datab => X1_9,
datac => X1_E2_0_G1);
\R1_X1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => X1_E4_0_G4,
dataa => X1_11,
datab => X1_C2,
datac => X1_E4_0_G1);
\R1_Y1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => Y1_E4_0_G4,
dataa => Y1_3_0,
datab => Y1_C2,
datac => Y1_E4_0_G3);
\R1_Y1_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000111101101")
port map (
combout => Y1_E3_0_M3,
dataa => Y1_3_0,
datab => db_fsm_state_2,
datac => Y1_C2,
datad => b_3);
\R1_Y1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => Y1_E1_0_M3,
dataa => Y1_6,
datab => Y1_5_0,
datac => db_fsm_state_2,
datad => b_1);
\R1_Y1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000111010001")
port map (
combout => Y1_E0_0_G0_I_X4,
dataa => Y1_6,
datab => db_fsm_state_2,
datac => b_0);
Y1_2_SQMUXA_Z460: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000010000000")
port map (
combout => Y1_2_SQMUXA,
dataa => UN15_DISABLE,
datab => negx_0_0_g2,
datac => Y1_2_SQMUXA_0,
datad => UN12_DISABLE_5);
\UN4_0_A2_A1_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => UN4_0_A2_A1_1(5),
dataa => UN4_0_A2_A0_2_1(5),
datab => un14_state_i,
datac => is_same,
datad => UN5_X1_13);
R1_UN12_DISABLE_RNI24H51: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000011100000")
port map (
combout => Y1_E0_0_G0_I_O4,
dataa => \XINCR_2_0_0__G0_E\,
datab => UN15_DISABLE,
datac => UN1_DISABLE_1,
datad => UN12_DISABLE);
\R1_Y1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001110101010")
port map (
combout => Y1_E5_0_M5,
dataa => Y1_1_0,
datab => Y1_E5_0_G4,
datac => Y1_E5_0_M2,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => Y1_E3_0_M5,
dataa => Y1_3_0,
datab => Y1_E3_0_M3,
datac => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011111110111")
port map (
combout => Y1_E2_0_M5_A,
dataa => Y1_6,
datab => Y1_5_0,
datac => db_fsm_state_2,
datad => b_2);
\R1_Y1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010110110101010")
port map (
combout => Y1_E2_0_M5,
dataa => Y1_4_0,
datab => db_fsm_state_2,
datac => Y1_E2_0_M5_A,
datad => Y1_E0_0_G0_I_O4);
\R1_Y1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011101000111010")
port map (
combout => Y1_E1_0_M5,
dataa => Y1_5_0,
datab => Y1_E1_0_M3,
datac => Y1_E0_0_G0_I_O4);
\UN4_0_A2_A1_2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => UN4_0_A2_A1_2(4),
dataa => is_same,
datab => vram_write_i7lto31,
datac => UN4_0_A2_A0_2(4),
datad => UN5_X1_13);
\UN4_0_A2_A0_6_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001001")
port map (
combout => UN4_0_A2_A0_6(4),
dataa => word_reg_delayed_0,
datab => X_i_m2_0,
datac => vram_write_i_0_o2_0_4_0,
datad => vram_write_i_0_o2_0_6);
\UN4_0_A2_A0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN4_0_A2_A0(5),
dataa => vram_write_i7lto31,
datab => \cmd_1_0_2__g5_0\,
datac => UN4_0_A2_A0_0(5),
datad => UN4_0_A2_A0_6(4));
\UN4_0_A2_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100010000")
port map (
combout => UN4_0_A2_0(5),
dataa => vram_write_i7lto31,
datab => \cmd_1_0_2__g5_0\,
datac => UN4_0_A2_A1_1(5),
datad => UN4_0_A2_A0(5));
\UN4_0_A2_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010001010000")
port map (
combout => UN4_0_A2_0(4),
dataa => \cmd_1_0_2__g5_0\,
datab => UN4_0_A2_A0_1(4),
datac => UN4_0_A2_A1_2(4),
datad => UN4_0_A2_A0_6(4));
FINISH_X_Z473: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000010000")
port map (
combout => finish_x,
dataa => dav_c,
datab => db_fsm_state_i_0,
datac => rcb_finish_i);
\R1_X1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111110000000")
port map (
combout => X1_E3_0_G4,
dataa => X1_9,
datab => X1_8,
datac => X1_10,
datad => X1_E3_0_G1);
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
y1_5 <= Y1_1_0;
y1_4 <= Y1_2_0;
y1_3 <= Y1_3_0;
y1_2 <= Y1_4_0;
y1_1 <= Y1_5_0;
y1_0 <= Y1_6;
x1_5 <= X1_7;
x1_0 <= X1_8;
x1_1 <= X1_9;
x1_2 <= X1_10;
x1_3 <= X1_11;
x1_4 <= X1_12;
un5_x1 <= UN5_X1_13;
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
b_5 :  out std_logic;
b_3 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_4 :  out std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
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
\B_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011100101101100")
port map (
combout => b_5,
dataa => swapxy1,
datab => negy1,
datac => xin_5,
datad => yin_5);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_3,
dataa => swapxy1,
datab => negy1,
datac => yin_3,
datad => xin_3);
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_0,
dataa => swapxy1,
datab => negy1,
datac => yin_0,
datad => xin_0);
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
b_5 :  out std_logic;
b_3 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_4 :  out std_logic;
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_4 :  in std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
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
\B_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_5,
dataa => swapxy1,
datab => negx1,
datac => xin_5,
datad => yin_5);
\B_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_3,
dataa => swapxy1,
datab => negx1,
datac => xin_3,
datad => yin_3);
\B_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_0,
dataa => swapxy1,
datab => negx1,
datac => xin_0,
datad => yin_0);
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
\B_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011011010011100")
port map (
combout => b_4,
dataa => swapxy1,
datab => negx1,
datac => xin_4,
datad => yin_4);
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

entity swap is
port(
xbias_i :  out std_logic;
xbias1 :  in std_logic;
swapxy1 :  in std_logic);
end swap;

architecture beh of swap is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal GND : std_logic ;
signal VCC : std_logic ;
begin
XBIAS_I_Z5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => xbias_i,
dataa => xbias1,
datab => swapxy1);
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
negx_0_0_g2 :  out std_logic;
negy :  out std_logic;
negy1 :  in std_logic;
swapxy :  out std_logic;
swapxy1 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
negx_0_0_g2_0_0 :  out std_logic;
un5_x1 :  in std_logic);
end rd;

architecture beh of rd is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal NEGX_0_0_G2_0 : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
begin
R1_NEGX: cycloneii_lcell_ff port map (
regout => negx,
datain => negx1,
clk => clk_c,
ena => NEGX_0_0_G2_0,
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
ena => NEGX_0_0_G2_0,
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
ena => NEGX_0_0_G2_0,
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
combout => NEGX_0_0_G2_0,
dataa => db_fsm_state_0,
datab => db_fsm_state_1,
datac => db_fsm_state_2,
datad => vram_write_i_0_a2_0);
R1_NEGX_0_0_G2_0_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000010000")
port map (
combout => negx_0_0_g2_0_0,
dataa => db_fsm_state_1,
datab => db_fsm_state_2,
datac => db_fsm_state_0,
datad => un5_x1);
GND <= '0';
VCC <= '1';
negx_0_0_g2 <= NEGX_0_0_G2_0;
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
addr_delayed_7 :  out std_logic;
addr_delayed_6 :  out std_logic;
addr_delayed_5 :  out std_logic;
addr_delayed_4 :  out std_logic;
addr_delayed_3 :  out std_logic;
addr_delayed_2 :  out std_logic;
addr_delayed_1 :  out std_logic;
addr_delayed_0 :  out std_logic;
data_delayed_15 :  out std_logic;
data_delayed_14 :  out std_logic;
data_delayed_13 :  out std_logic;
data_delayed_12 :  out std_logic;
data_delayed_11 :  out std_logic;
data_delayed_10 :  out std_logic;
data_delayed_9 :  out std_logic;
data_delayed_8 :  out std_logic;
data_delayed_7 :  out std_logic;
data_delayed_6 :  out std_logic;
data_delayed_5 :  out std_logic;
data_delayed_4 :  out std_logic;
data_delayed_3 :  out std_logic;
data_delayed_2 :  out std_logic;
data_delayed_1 :  out std_logic;
data_delayed_0 :  out std_logic;
nstate_0_0 :  in std_logic;
X_2_0 :  out std_logic;
X_2_1 :  in std_logic;
X_5 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
X_2 :  in std_logic;
X_3 :  in std_logic;
X_4 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
Y_3 :  in std_logic;
Y_2 :  in std_logic;
yout_0 :  in std_logic;
yout_1 :  in std_logic;
yout_3 :  in std_logic;
yout_2 :  in std_logic;
xout_1 :  in std_logic;
xout_2 :  in std_logic;
xout_0 :  in std_logic;
pre_rdout_par_3_en_0_a4_0 :  in std_logic;
db_fsm_state_0 :  in std_logic;
Y_i_m2_0 :  out std_logic;
Y_i_m2_1 :  out std_logic;
Y_i_m2_3 :  out std_logic;
Y_i_m2_2 :  out std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_3 :  in std_logic;
yin_2 :  in std_logic;
X_i_m2_3 :  out std_logic;
X_i_m2_1 :  out std_logic;
X_i_m2_2 :  out std_logic;
X_i_m2_0 :  out std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_0 :  in std_logic;
x_min_0 :  in std_logic;
x_min_5 :  in std_logic;
word_reg_delayed_4 :  in std_logic;
word_reg_delayed_7 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
word_reg_delayed_5 :  in std_logic;
word_reg_delayed_1 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
word_reg_delayed_2 :  in std_logic;
word_reg_delayed_3 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
output_value_5 :  out std_logic;
output_value_1 :  out std_logic;
output_value_0 :  out std_logic;
output_value_3 :  out std_logic;
output_value_4 :  out std_logic;
output_value_2 :  out std_logic;
X_0_5 :  in std_logic;
X_0_1 :  in std_logic;
X_0_0 :  in std_logic;
X_0_3 :  in std_logic;
X_0_4 :  in std_logic;
X_0_2 :  in std_logic;
X_1_0 :  in std_logic;
X_1_5 :  in std_logic;
X_1_1 :  out std_logic;
X_1_3 :  in std_logic;
X_1_4 :  in std_logic;
X_1_2 :  in std_logic;
clk_c :  in std_logic;
vram_write_i_0_o2 :  out std_logic;
un14_state_i :  out std_logic;
lt5 :  in std_logic;
un17_vram_delay_NE :  in std_logic;
G_270 :  out std_logic;
un1_vram_delay_2 :  out std_logic;
Y_0_sqmuxa_0 :  in std_logic;
state_s0_i_0 :  out std_logic;
X_n0_0_41_m2 :  out std_logic;
X_c2 :  out std_logic;
X_45_1 :  out std_logic;
rcb_finish_i_0_i_a2 :  out std_logic;
rcb_finish_i :  in std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  in std_logic;
dbb_delaycmd_0_1 :  out std_logic;
reset_c :  in std_logic;
G_266 :  out std_logic;
\pre_rdout_par_2_1_0_0__g0_e_x\ :  in std_logic;
un1_rcb_state22_i_0_i :  out std_logic;
mux_out_i_a2 :  in std_logic;
un1_vram_delay_5_i :  out std_logic;
X_e1_0_g1_0_69_i_o4_0 :  in std_logic;
X_e1_0_g1_0_69_i_o4 :  in std_logic;
X_2_sqmuxa :  out std_logic;
X_e1_0_g1_0_69_i_m6 :  in std_logic;
vram_write_i_0_o2_0_4_0 :  out std_logic;
X_n5_0_222_m2 :  out std_logic;
vram_write_i_0_o2_0_6 :  out std_logic;
vram_write_i7lto31 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
vram_write_i_0_a2_0 :  out std_logic;
is_same :  in std_logic;
idle_cycleslde_i_a2_x_i :  out std_logic;
lt5_cout :  in std_logic);
end ram_fsm;

architecture beh of ram_fsm is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal CYCLE_COUNT : std_logic_vector(31 downto 0);
signal STATE : std_logic_vector(1 downto 0);
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
signal NSTATE_0_I_I : std_logic_vector(1 to 1);
signal X_I_M2_D : std_logic_vector(4 downto 2);
signal Y_I_M2_D : std_logic_vector(5 downto 2);
signal NSTATE_0_I_I_O2 : std_logic_vector(1 to 1);
signal CYCLE_COUNT_C0_COMBOUT : std_logic ;
signal CYCLE_COUNT_1_SQMUXA_I_0_0_I : std_logic ;
signal CYCLE_COUNT_C1_COMBOUT : std_logic ;
signal CYCLE_COUNT_C2_COMBOUT : std_logic ;
signal CYCLE_COUNT_C3_COMBOUT : std_logic ;
signal CYCLE_COUNT_C4_COMBOUT : std_logic ;
signal CYCLE_COUNT_C5_COMBOUT : std_logic ;
signal CYCLE_COUNT_C6_COMBOUT : std_logic ;
signal CYCLE_COUNT_C7_COMBOUT : std_logic ;
signal CYCLE_COUNT_C8_COMBOUT : std_logic ;
signal CYCLE_COUNT_C9_COMBOUT : std_logic ;
signal CYCLE_COUNT_C10_COMBOUT : std_logic ;
signal CYCLE_COUNT_C11_COMBOUT : std_logic ;
signal CYCLE_COUNT_C12_COMBOUT : std_logic ;
signal CYCLE_COUNT_C13_COMBOUT : std_logic ;
signal CYCLE_COUNT_C14_COMBOUT : std_logic ;
signal CYCLE_COUNT_C15_COMBOUT : std_logic ;
signal CYCLE_COUNT_C16_COMBOUT : std_logic ;
signal CYCLE_COUNT_C17_COMBOUT : std_logic ;
signal CYCLE_COUNT_C18_COMBOUT : std_logic ;
signal CYCLE_COUNT_C19_COMBOUT : std_logic ;
signal CYCLE_COUNT_C20_COMBOUT : std_logic ;
signal CYCLE_COUNT_C21_COMBOUT : std_logic ;
signal CYCLE_COUNT_C22_COMBOUT : std_logic ;
signal CYCLE_COUNT_C23_COMBOUT : std_logic ;
signal CYCLE_COUNT_C24_COMBOUT : std_logic ;
signal CYCLE_COUNT_C25_COMBOUT : std_logic ;
signal CYCLE_COUNT_C26_COMBOUT : std_logic ;
signal CYCLE_COUNT_C27_COMBOUT : std_logic ;
signal CYCLE_COUNT_C28_COMBOUT : std_logic ;
signal CYCLE_COUNT_C29_COMBOUT : std_logic ;
signal CYCLE_COUNT_C30_COMBOUT : std_logic ;
signal CYCLE_COUNT_C31_COMBOUT : std_logic ;
signal \STATE_SRSTS_0_1__G0_0_X\ : std_logic ;
signal \STATE_SRSTS_0_0__G0_X\ : std_logic ;
signal STATE_S2_0_A3_0_A4 : std_logic ;
signal CLK_C_I : std_logic ;
signal CYCLE_COUNT_1_SQMUXA_I_0_0_O2 : std_logic ;
signal \NSTATE_0_0_0_0__G0_0\ : std_logic ;
signal DONE_I : std_logic ;
signal N_263_I_0_G0 : std_logic ;
signal START_DELAYED : std_logic ;
signal START_I : std_logic ;
signal VRAM_WRITE_I_0_O2_81 : std_logic ;
signal UN14_STATE_I_82 : std_logic ;
signal CYCLE_COUNT_C0_COUT : std_logic ;
signal VCC : std_logic ;
signal CYCLE_COUNT_C1_COUT : std_logic ;
signal CYCLE_COUNT_C2_COUT : std_logic ;
signal CYCLE_COUNT_C3_COUT : std_logic ;
signal CYCLE_COUNT_C4_COUT : std_logic ;
signal CYCLE_COUNT_C5_COUT : std_logic ;
signal CYCLE_COUNT_C6_COUT : std_logic ;
signal CYCLE_COUNT_C7_COUT : std_logic ;
signal CYCLE_COUNT_C8_COUT : std_logic ;
signal CYCLE_COUNT_C9_COUT : std_logic ;
signal CYCLE_COUNT_C10_COUT : std_logic ;
signal CYCLE_COUNT_C11_COUT : std_logic ;
signal CYCLE_COUNT_C12_COUT : std_logic ;
signal CYCLE_COUNT_C13_COUT : std_logic ;
signal CYCLE_COUNT_C14_COUT : std_logic ;
signal CYCLE_COUNT_C15_COUT : std_logic ;
signal CYCLE_COUNT_C16_COUT : std_logic ;
signal CYCLE_COUNT_C17_COUT : std_logic ;
signal CYCLE_COUNT_C18_COUT : std_logic ;
signal CYCLE_COUNT_C19_COUT : std_logic ;
signal CYCLE_COUNT_C20_COUT : std_logic ;
signal CYCLE_COUNT_C21_COUT : std_logic ;
signal CYCLE_COUNT_C22_COUT : std_logic ;
signal CYCLE_COUNT_C23_COUT : std_logic ;
signal CYCLE_COUNT_C24_COUT : std_logic ;
signal CYCLE_COUNT_C25_COUT : std_logic ;
signal CYCLE_COUNT_C26_COUT : std_logic ;
signal CYCLE_COUNT_C27_COUT : std_logic ;
signal CYCLE_COUNT_C28_COUT : std_logic ;
signal CYCLE_COUNT_C29_COUT : std_logic ;
signal CYCLE_COUNT_C30_COUT : std_logic ;
signal X_N0_0_41_M4 : std_logic ;
signal DONE_I_1_SQMUXA_1_I_0_O4 : std_logic ;
signal UN14_STATE_I_0 : std_logic ;
signal X_C2_83 : std_logic ;
signal \NSTATE_0_0_0_0__G0_0_2\ : std_logic ;
signal DBB_DELAYCMD_0_84 : std_logic ;
signal \STATE_SRSTS_0_0__G3\ : std_logic ;
signal X_N5_0_222_O4 : std_logic ;
signal VRAM_WRITE_I_0_X2_6 : std_logic ;
signal X_N5_0_222_M4 : std_logic ;
signal VRAM_WRITE_I_0_O2_0_4_85 : std_logic ;
signal VRAM_WRITE_I_0_O2_0_6_1 : std_logic ;
signal VRAM_WRITE_I_0_O2_0_6_2 : std_logic ;
signal VRAM_WRITE_I_0_O2_0_4 : std_logic ;
signal VRAM_WRITE_I_0_O2_0_86 : std_logic ;
signal VRAM_WRITE_I_0_A2_0_1 : std_logic ;
signal N_228 : std_logic ;
signal N_227 : std_logic ;
signal N_226 : std_logic ;
signal N_225 : std_logic ;
signal GND : std_logic ;
signal X_2_69 : std_logic ;
signal Y_I_M2_70 : std_logic ;
signal Y_I_M2_71 : std_logic ;
signal Y_I_M2_72 : std_logic ;
signal Y_I_M2_73 : std_logic ;
signal X_I_M2_74 : std_logic ;
signal X_I_M2_75 : std_logic ;
signal X_I_M2_76 : std_logic ;
signal X_I_M2_77 : std_logic ;
signal OUTPUT_VALUE_78 : std_logic ;
signal OUTPUT_VALUE_79 : std_logic ;
signal X_1_80 : std_logic ;
signal CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I : std_logic ;
signal STATE_S2_0_A3_0_A4_I : std_logic ;
signal CYCLE_COUNT_1_SQMUXA_I_0_0_I_I : std_logic ;
begin
\P1_CYCLE_COUNT_0_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(0),
datain => CYCLE_COUNT_C0_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_1_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(1),
datain => CYCLE_COUNT_C1_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_2_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(2),
datain => CYCLE_COUNT_C2_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_3_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(3),
datain => CYCLE_COUNT_C3_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_4_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(4),
datain => CYCLE_COUNT_C4_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_5_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(5),
datain => CYCLE_COUNT_C5_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_6_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(6),
datain => CYCLE_COUNT_C6_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_7_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(7),
datain => CYCLE_COUNT_C7_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_8_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(8),
datain => CYCLE_COUNT_C8_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_9_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(9),
datain => CYCLE_COUNT_C9_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_10_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(10),
datain => CYCLE_COUNT_C10_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_11_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(11),
datain => CYCLE_COUNT_C11_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_12_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(12),
datain => CYCLE_COUNT_C12_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_13_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(13),
datain => CYCLE_COUNT_C13_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_14_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(14),
datain => CYCLE_COUNT_C14_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_15_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(15),
datain => CYCLE_COUNT_C15_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_16_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(16),
datain => CYCLE_COUNT_C16_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_17_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(17),
datain => CYCLE_COUNT_C17_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_18_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(18),
datain => CYCLE_COUNT_C18_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_19_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(19),
datain => CYCLE_COUNT_C19_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_20_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(20),
datain => CYCLE_COUNT_C20_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_21_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(21),
datain => CYCLE_COUNT_C21_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_22_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(22),
datain => CYCLE_COUNT_C22_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_23_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(23),
datain => CYCLE_COUNT_C23_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_24_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(24),
datain => CYCLE_COUNT_C24_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_25_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(25),
datain => CYCLE_COUNT_C25_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_26_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(26),
datain => CYCLE_COUNT_C26_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_27_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(27),
datain => CYCLE_COUNT_C27_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_28_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(28),
datain => CYCLE_COUNT_C28_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_29_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(29),
datain => CYCLE_COUNT_C29_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_30_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(30),
datain => CYCLE_COUNT_C30_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\P1_CYCLE_COUNT_31_\: cycloneii_lcell_ff port map (
regout => CYCLE_COUNT(31),
datain => CYCLE_COUNT_C31_COMBOUT,
clk => clk_c,
sclr => CYCLE_COUNT_1_SQMUXA_I_0_0_I_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_1_\: cycloneii_lcell_ff port map (
regout => STATE(1),
datain => \STATE_SRSTS_0_1__G0_0_X\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_0_\: cycloneii_lcell_ff port map (
regout => STATE(0),
datain => \STATE_SRSTS_0_0__G0_X\,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
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
ena => STATE_S2_0_A3_0_A4,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P2_ADDR_DELAYED_7_\: cycloneii_lcell_ff port map (
regout => addr_delayed_7,
datain => vraddr_7,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(7),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_6_\: cycloneii_lcell_ff port map (
regout => addr_delayed_6,
datain => vraddr_6,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(6),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_5_\: cycloneii_lcell_ff port map (
regout => addr_delayed_5,
datain => vraddr_5,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(5),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_4_\: cycloneii_lcell_ff port map (
regout => addr_delayed_4,
datain => vraddr_4,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(4),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_3_\: cycloneii_lcell_ff port map (
regout => addr_delayed_3,
datain => vraddr_3,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(3),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_2_\: cycloneii_lcell_ff port map (
regout => addr_delayed_2,
datain => vraddr_2,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(2),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_1_\: cycloneii_lcell_ff port map (
regout => addr_delayed_1,
datain => vraddr_1,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(1),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_ADDR_DELAYED_0_\: cycloneii_lcell_ff port map (
regout => addr_delayed_0,
datain => vraddr_0,
clk => CLK_C_I,
sload => STATE_S2_0_A3_0_A4_I,
sdata => ADDR_RAM_SYNC_I(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P1_DATA_RAM_SYNC_I_15_\: cycloneii_lcell_ff port map (
regout => DATA_RAM_SYNC_I(15),
datain => DATA_CALCULATED_IV_0_M2_X(15),
clk => clk_c,
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
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
ena => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\P2_DATA_DELAYED_15_\: cycloneii_lcell_ff port map (
regout => data_delayed_15,
datain => DATA_CALCULATED_IV_0_M2_X(15),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(15),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_14_\: cycloneii_lcell_ff port map (
regout => data_delayed_14,
datain => DATA_CALCULATED_IV_0_M2_X(14),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(14),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_13_\: cycloneii_lcell_ff port map (
regout => data_delayed_13,
datain => DATA_CALCULATED_IV_0_M2_X(13),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(13),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_12_\: cycloneii_lcell_ff port map (
regout => data_delayed_12,
datain => DATA_CALCULATED_IV_0_M2_X(12),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(12),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_11_\: cycloneii_lcell_ff port map (
regout => data_delayed_11,
datain => DATA_CALCULATED_IV_0_M2_X(11),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(11),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_10_\: cycloneii_lcell_ff port map (
regout => data_delayed_10,
datain => DATA_CALCULATED_IV_0_M2_X(10),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(10),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_9_\: cycloneii_lcell_ff port map (
regout => data_delayed_9,
datain => DATA_CALCULATED_IV_0_M2_X(9),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(9),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_8_\: cycloneii_lcell_ff port map (
regout => data_delayed_8,
datain => DATA_CALCULATED_IV_0_M2_X(8),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(8),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_7_\: cycloneii_lcell_ff port map (
regout => data_delayed_7,
datain => DATA_CALCULATED_IV_0_M2_X(7),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(7),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_6_\: cycloneii_lcell_ff port map (
regout => data_delayed_6,
datain => DATA_CALCULATED_IV_0_M2_X(6),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(6),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_5_\: cycloneii_lcell_ff port map (
regout => data_delayed_5,
datain => DATA_CALCULATED_IV_0_M2_X(5),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(5),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_4_\: cycloneii_lcell_ff port map (
regout => data_delayed_4,
datain => DATA_CALCULATED_IV_0_M2_X(4),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(4),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_3_\: cycloneii_lcell_ff port map (
regout => data_delayed_3,
datain => DATA_CALCULATED_IV_0_M2_X(3),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(3),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_2_\: cycloneii_lcell_ff port map (
regout => data_delayed_2,
datain => DATA_CALCULATED_IV_0_M2_X(2),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(2),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_1_\: cycloneii_lcell_ff port map (
regout => data_delayed_1,
datain => DATA_CALCULATED_IV_0_M2_X(1),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(1),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\P2_DATA_DELAYED_0_\: cycloneii_lcell_ff port map (
regout => data_delayed_0,
datain => DATA_CALCULATED_IV_0_M2_X(0),
clk => CLK_C_I,
sload => CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I,
sdata => DATA_RAM_SYNC_I(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\NSTATE_1_\: cycloneii_lcell_ff port map (
regout => NSTATE(1),
datain => NSTATE_0_I_I(1),
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
datain => \NSTATE_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
P1_DONE_I: cycloneii_lcell_ff port map (
regout => DONE_I,
datain => N_263_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
P1_START_DELAYED: cycloneii_lcell_ff port map (
regout => START_DELAYED,
datain => START_I,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
P1_START_I: cycloneii_lcell_ff port map (
regout => START_I,
datain => VRAM_WRITE_I_0_O2_81,
clk => clk_c,
ena => UN14_STATE_I_82,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
P1_CYCLE_COUNT_C0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => CYCLE_COUNT_C0_COMBOUT,
cout => CYCLE_COUNT_C0_COUT,
dataa => CYCLE_COUNT(0),
datab => VCC);
P1_CYCLE_COUNT_C1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C1_COMBOUT,
cout => CYCLE_COUNT_C1_COUT,
dataa => CYCLE_COUNT(1),
cin => CYCLE_COUNT_C0_COUT);
P1_CYCLE_COUNT_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C2_COMBOUT,
cout => CYCLE_COUNT_C2_COUT,
dataa => CYCLE_COUNT(2),
cin => CYCLE_COUNT_C1_COUT);
P1_CYCLE_COUNT_C3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C3_COMBOUT,
cout => CYCLE_COUNT_C3_COUT,
dataa => CYCLE_COUNT(3),
cin => CYCLE_COUNT_C2_COUT);
P1_CYCLE_COUNT_C4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C4_COMBOUT,
cout => CYCLE_COUNT_C4_COUT,
dataa => CYCLE_COUNT(4),
cin => CYCLE_COUNT_C3_COUT);
P1_CYCLE_COUNT_C5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C5_COMBOUT,
cout => CYCLE_COUNT_C5_COUT,
dataa => CYCLE_COUNT(5),
cin => CYCLE_COUNT_C4_COUT);
P1_CYCLE_COUNT_C6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C6_COMBOUT,
cout => CYCLE_COUNT_C6_COUT,
dataa => CYCLE_COUNT(6),
cin => CYCLE_COUNT_C5_COUT);
P1_CYCLE_COUNT_C7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C7_COMBOUT,
cout => CYCLE_COUNT_C7_COUT,
dataa => CYCLE_COUNT(7),
cin => CYCLE_COUNT_C6_COUT);
P1_CYCLE_COUNT_C8: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C8_COMBOUT,
cout => CYCLE_COUNT_C8_COUT,
dataa => CYCLE_COUNT(8),
cin => CYCLE_COUNT_C7_COUT);
P1_CYCLE_COUNT_C9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C9_COMBOUT,
cout => CYCLE_COUNT_C9_COUT,
dataa => CYCLE_COUNT(9),
cin => CYCLE_COUNT_C8_COUT);
P1_CYCLE_COUNT_C10: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C10_COMBOUT,
cout => CYCLE_COUNT_C10_COUT,
dataa => CYCLE_COUNT(10),
cin => CYCLE_COUNT_C9_COUT);
P1_CYCLE_COUNT_C11: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C11_COMBOUT,
cout => CYCLE_COUNT_C11_COUT,
dataa => CYCLE_COUNT(11),
cin => CYCLE_COUNT_C10_COUT);
P1_CYCLE_COUNT_C12: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C12_COMBOUT,
cout => CYCLE_COUNT_C12_COUT,
dataa => CYCLE_COUNT(12),
cin => CYCLE_COUNT_C11_COUT);
P1_CYCLE_COUNT_C13: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C13_COMBOUT,
cout => CYCLE_COUNT_C13_COUT,
dataa => CYCLE_COUNT(13),
cin => CYCLE_COUNT_C12_COUT);
P1_CYCLE_COUNT_C14: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C14_COMBOUT,
cout => CYCLE_COUNT_C14_COUT,
dataa => CYCLE_COUNT(14),
cin => CYCLE_COUNT_C13_COUT);
P1_CYCLE_COUNT_C15: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C15_COMBOUT,
cout => CYCLE_COUNT_C15_COUT,
dataa => CYCLE_COUNT(15),
cin => CYCLE_COUNT_C14_COUT);
P1_CYCLE_COUNT_C16: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C16_COMBOUT,
cout => CYCLE_COUNT_C16_COUT,
dataa => CYCLE_COUNT(16),
cin => CYCLE_COUNT_C15_COUT);
P1_CYCLE_COUNT_C17: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C17_COMBOUT,
cout => CYCLE_COUNT_C17_COUT,
dataa => CYCLE_COUNT(17),
cin => CYCLE_COUNT_C16_COUT);
P1_CYCLE_COUNT_C18: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C18_COMBOUT,
cout => CYCLE_COUNT_C18_COUT,
dataa => CYCLE_COUNT(18),
cin => CYCLE_COUNT_C17_COUT);
P1_CYCLE_COUNT_C19: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C19_COMBOUT,
cout => CYCLE_COUNT_C19_COUT,
dataa => CYCLE_COUNT(19),
cin => CYCLE_COUNT_C18_COUT);
P1_CYCLE_COUNT_C20: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C20_COMBOUT,
cout => CYCLE_COUNT_C20_COUT,
dataa => CYCLE_COUNT(20),
cin => CYCLE_COUNT_C19_COUT);
P1_CYCLE_COUNT_C21: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C21_COMBOUT,
cout => CYCLE_COUNT_C21_COUT,
dataa => CYCLE_COUNT(21),
cin => CYCLE_COUNT_C20_COUT);
P1_CYCLE_COUNT_C22: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C22_COMBOUT,
cout => CYCLE_COUNT_C22_COUT,
dataa => CYCLE_COUNT(22),
cin => CYCLE_COUNT_C21_COUT);
P1_CYCLE_COUNT_C23: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C23_COMBOUT,
cout => CYCLE_COUNT_C23_COUT,
dataa => CYCLE_COUNT(23),
cin => CYCLE_COUNT_C22_COUT);
P1_CYCLE_COUNT_C24: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C24_COMBOUT,
cout => CYCLE_COUNT_C24_COUT,
dataa => CYCLE_COUNT(24),
cin => CYCLE_COUNT_C23_COUT);
P1_CYCLE_COUNT_C25: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C25_COMBOUT,
cout => CYCLE_COUNT_C25_COUT,
dataa => CYCLE_COUNT(25),
cin => CYCLE_COUNT_C24_COUT);
P1_CYCLE_COUNT_C26: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C26_COMBOUT,
cout => CYCLE_COUNT_C26_COUT,
dataa => CYCLE_COUNT(26),
cin => CYCLE_COUNT_C25_COUT);
P1_CYCLE_COUNT_C27: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C27_COMBOUT,
cout => CYCLE_COUNT_C27_COUT,
dataa => CYCLE_COUNT(27),
cin => CYCLE_COUNT_C26_COUT);
P1_CYCLE_COUNT_C28: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C28_COMBOUT,
cout => CYCLE_COUNT_C28_COUT,
dataa => CYCLE_COUNT(28),
cin => CYCLE_COUNT_C27_COUT);
P1_CYCLE_COUNT_C29: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C29_COMBOUT,
cout => CYCLE_COUNT_C29_COUT,
dataa => CYCLE_COUNT(29),
cin => CYCLE_COUNT_C28_COUT);
P1_CYCLE_COUNT_C30: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CYCLE_COUNT_C30_COMBOUT,
cout => CYCLE_COUNT_C30_COUT,
dataa => CYCLE_COUNT(30),
cin => CYCLE_COUNT_C29_COUT);
P1_CYCLE_COUNT_C31: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => CYCLE_COUNT_C31_COMBOUT,
dataa => CYCLE_COUNT(31),
cin => CYCLE_COUNT_C30_COUT);
\OUTPUT_VALUE_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE_78,
dataa => X_5,
datab => X_0_5,
datac => lt5);
\OUTPUT_VALUE_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => output_value_1,
dataa => X_1,
datab => X_0_1,
datac => lt5);
\OUTPUT_VALUE_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => OUTPUT_VALUE_79,
dataa => X_0,
datab => X_0_0,
datac => lt5);
RCB_FSM_CLRXY_REG_X_N0_0_41_M4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010111000101")
port map (
combout => X_N0_0_41_M4,
dataa => x_min_0,
datab => X_1_0,
datac => un17_vram_delay_NE);
G_270_Z591: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => G_270,
dataa => nstate_0_0,
datab => un17_vram_delay_NE);
\SPLITXY_X_I_M2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_I_M2_74,
dataa => nstate_0_0,
datab => X_1_5,
datac => X_0_5);
DONE_I_1_SQMUXA_1_I_0_O4_Z593: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => DONE_I_1_SQMUXA_1_I_0_O4,
dataa => STATE(0),
datab => CYCLE_COUNT(31));
UN1_VRAM_DELAY_2_Z594: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111011101110111")
port map (
combout => un1_vram_delay_2,
dataa => Y_0_sqmuxa_0,
datab => UN14_STATE_I_82);
\SPLITXY_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_2_69,
dataa => nstate_0_0,
datab => X_1_0,
datac => X_0_0);
\SPLITXY_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_1_80,
dataa => nstate_0_0,
datab => X_2_1,
datac => X_0_1);
\STATE_RNI9LI9_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011101")
port map (
combout => CYCLE_COUNT_1_SQMUXA_I_0_0_O2,
dataa => STATE(0),
datab => STATE(1));
STATE_S0_I_0_Z598: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => state_s0_i_0,
dataa => STATE(1),
datab => STATE(0));
STATE_S2_0_A3_0_A4_Z599: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => STATE_S2_0_A3_0_A4,
dataa => STATE(0),
datab => STATE(1));
C1_UN14_STATE_I_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => UN14_STATE_I_0,
dataa => START_DELAYED,
datab => START_I);
\OUTPUT_VALUE_RNIT6VD1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => X_n0_0_41_m2,
dataa => nstate_0_0,
datab => X_N0_0_41_M4,
datac => OUTPUT_VALUE_79);
RCB_FSM_CLRXY_REG_X_C2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => X_C2_83,
dataa => X_1_0,
datab => X_2_1,
datac => X_2);
RCB_FSM_CLRXY_REG_X_45_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => X_45_1,
dataa => X_1_0,
datab => X_2_1,
datac => X_2,
datad => X_3);
RCB_FSM_RCB_FINISH_I_0_I_A2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110110011101100")
port map (
combout => rcb_finish_i_0_i_a2,
dataa => DONE_I,
datab => rcb_finish_i,
datac => db_fsm_nstate_0_sqmuxa_0_a5_x);
\P1_CYCLE_COUNT_RNIB49R_31_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100001101000000")
port map (
combout => \NSTATE_0_0_0_0__G0_0_2\,
dataa => STATE(1),
datab => STATE(0),
datac => CYCLE_COUNT(31),
datad => DBB_DELAYCMD_0_84);
\NSTATE_RNIV5GO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011000000110000")
port map (
combout => \STATE_SRSTS_0_0__G3\,
dataa => NSTATE(0),
datab => STATE(0),
datac => STATE(1),
datad => DBB_DELAYCMD_0_84);
\SPLITXY_X_I_M2_D_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_I_M2_D(3),
dataa => nstate_0_0,
datab => X_3,
datac => xout_1);
\SPLITXY_Y_I_M2_D_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_I_M2_D(2),
dataa => nstate_0_0,
datab => Y_0,
datac => yout_0);
\SPLITXY_Y_I_M2_D_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_I_M2_D(3),
dataa => nstate_0_0,
datab => Y_1,
datac => yout_1);
P1_DONE_I_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001100000010")
port map (
combout => N_263_I_0_G0,
dataa => reset_c,
datab => STATE(1),
datac => DONE_I_1_SQMUXA_1_I_0_O4,
datad => DBB_DELAYCMD_0_84);
\SPLITXY_X_I_M2_D_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_I_M2_D(4),
dataa => nstate_0_0,
datab => X_4,
datac => xout_2);
\SPLITXY_Y_I_M2_D_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_I_M2_D(5),
dataa => nstate_0_0,
datab => Y_3,
datac => yout_3);
\SPLITXY_Y_I_M2_D_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_I_M2_D(4),
dataa => nstate_0_0,
datab => Y_2,
datac => yout_2);
\SPLITXY_X_I_M2_D_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_I_M2_D(2),
dataa => nstate_0_0,
datab => X_2,
datac => xout_0);
C1_UN14_STATE_I: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111000001")
port map (
combout => UN14_STATE_I_82,
dataa => CYCLE_COUNT(31),
datab => STATE(0),
datac => STATE(1),
datad => UN14_STATE_I_0);
\P1_CYCLE_COUNT_RNI0PEO_31_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000101000001")
port map (
combout => CYCLE_COUNT_1_SQMUXA_I_0_0_I,
dataa => reset_c,
datab => STATE(1),
datac => STATE(0),
datad => CYCLE_COUNT(31));
RCB_FSM_CLRXY_REG_X_N5_0_222_O4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111101111111")
port map (
combout => X_N5_0_222_O4,
dataa => X_3,
datab => X_4,
datac => X_C2_83);
\SPLITXY_X_RNIT0HJ1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000111100001111")
port map (
combout => G_266,
dataa => X_1_80,
datab => X_2_69,
datac => \pre_rdout_par_2_1_0_0__g0_e_x\,
datad => pre_rdout_par_3_en_0_a4_0);
UN1_RCB_STATE22_I_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000001010101")
port map (
combout => un1_rcb_state22_i_0_i,
dataa => reset_c,
datab => db_fsm_state_0,
datac => mux_out_i_a2,
datad => UN14_STATE_I_82);
\SPLITXY_X_I_M2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_I_M2_75,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => xin_1,
datad => X_I_M2_D(3));
\SPLITXY_Y_I_M2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_I_M2_70,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => yin_0,
datad => Y_I_M2_D(2));
\SPLITXY_Y_I_M2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_I_M2_71,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => yin_1,
datad => Y_I_M2_D(3));
\SPLITXY_X_I_M2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_I_M2_76,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => xin_2,
datad => X_I_M2_D(4));
\SPLITXY_Y_I_M2_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_I_M2_72,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => yin_3,
datad => Y_I_M2_D(5));
\SPLITXY_Y_I_M2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_I_M2_73,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => yin_2,
datad => Y_I_M2_D(4));
\SPLITXY_X_I_M2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_I_M2_77,
dataa => nstate_0_0,
datab => mux_out_i_a2,
datac => xin_0,
datad => X_I_M2_D(2));
\OUTPUT_VALUE_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => output_value_3,
dataa => X_0_3,
datab => X_1_3,
datac => lt5);
\OUTPUT_VALUE_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => output_value_4,
dataa => X_0_4,
datab => X_1_4,
datac => lt5);
UN1_VRAM_DELAY_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000010110000")
port map (
combout => un1_vram_delay_5_i,
dataa => nstate_0_0,
datab => X_e1_0_g1_0_69_i_o4_0,
datac => UN14_STATE_I_82,
datad => X_e1_0_g1_0_69_i_o4);
VRAM_WRITE_I_0_X2_6_Z630: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => VRAM_WRITE_I_0_X2_6,
dataa => word_reg_delayed_4,
datab => Y_I_M2_70);
\NSTATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110010")
port map (
combout => \NSTATE_0_0_0_0__G0_0\,
dataa => reset_c,
datab => DONE_I_1_SQMUXA_1_I_0_O4,
datac => \NSTATE_0_0_0_0__G0_0_2\,
datad => \STATE_SRSTS_0_0__G3\);
RCB_FSM_CLRXY_REG_X_N5_0_222_M4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100001110101010")
port map (
combout => X_N5_0_222_M4,
dataa => x_min_5,
datab => X_1_5,
datac => X_N5_0_222_O4,
datad => un17_vram_delay_NE);
UN1_CLRXY_REG_X_2_SQMUXA: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110001111")
port map (
combout => X_2_sqmuxa,
dataa => nstate_0_0,
datab => un17_vram_delay_NE,
datac => UN14_STATE_I_82,
datad => X_e1_0_g1_0_69_i_m6);
VRAM_WRITE_I_0_O2_0_4_0_Z634: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => VRAM_WRITE_I_0_O2_0_4_85,
dataa => word_reg_delayed_7,
datab => word_reg_delayed_0,
datac => Y_I_M2_72,
datad => X_I_M2_77);
VRAM_WRITE_I_0_O2_0_6_1_Z635: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => VRAM_WRITE_I_0_O2_0_6_1,
dataa => word_reg_delayed_5,
datab => word_reg_delayed_1,
datac => Y_I_M2_71,
datad => X_I_M2_75);
VRAM_WRITE_I_0_O2_0_6_2_Z636: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => VRAM_WRITE_I_0_O2_0_6_2,
dataa => word_reg_delayed_6,
datab => word_reg_delayed_2,
datac => Y_I_M2_73,
datad => X_I_M2_76);
\OUTPUT_VALUE_RNI72HU1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => X_n5_0_222_m2,
dataa => nstate_0_0,
datab => X_N5_0_222_M4,
datac => OUTPUT_VALUE_78);
VRAM_WRITE_I_0_O2_0_4_Z638: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011011110110")
port map (
combout => VRAM_WRITE_I_0_O2_0_4,
dataa => word_reg_delayed_3,
datab => X_I_M2_74,
datac => VRAM_WRITE_I_0_O2_0_4_85);
VRAM_WRITE_I_0_O2_0_6_Z639: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I_0_O2_0_86,
dataa => db_fsm_nstate_0_sqmuxa_0_a5_x,
datab => VRAM_WRITE_I_0_X2_6,
datac => VRAM_WRITE_I_0_O2_0_6_1,
datad => VRAM_WRITE_I_0_O2_0_6_2);
C1_UN14_STATE_I_RNIR5LQ1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => VRAM_WRITE_I_0_A2_0_1,
dataa => UN14_STATE_I_82,
datab => vram_write_i7lto31,
datac => \cmd_1_0_2__g5_0\);
VRAM_WRITE_I_0_O2_0_4_RNI0PQ82: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011100")
port map (
combout => vram_write_i_0_a2_0,
dataa => is_same,
datab => VRAM_WRITE_I_0_A2_0_1,
datac => VRAM_WRITE_I_0_O2_0_4,
datad => VRAM_WRITE_I_0_O2_0_86);
VRAM_WRITE_I_0_O2_Z642: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011100")
port map (
combout => VRAM_WRITE_I_0_O2_81,
dataa => is_same,
datab => vram_write_i7lto31,
datac => VRAM_WRITE_I_0_O2_0_4,
datad => VRAM_WRITE_I_0_O2_0_86);
\NSTATE_0_I_I_O2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => NSTATE_0_I_I_O2(1),
dataa => NSTATE(1),
datab => VRAM_WRITE_I_0_O2_81);
DBB_DELAYCMD_0_1_Z644: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => DBB_DELAYCMD_0_84,
dataa => UN14_STATE_I_82,
datab => VRAM_WRITE_I_0_O2_81);
\NSTATE_0_I_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000100000001")
port map (
combout => NSTATE_0_I_I(1),
dataa => CYCLE_COUNT(31),
datab => STATE(0),
datac => STATE(1),
datad => NSTATE_0_I_I_O2(1));
\STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \STATE_SRSTS_0_1__G0_0_X\,
dataa => reset_c,
datab => NSTATE_0_I_I(1));
\STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => \STATE_SRSTS_0_0__G0_X\,
dataa => reset_c,
datab => \NSTATE_0_0_0_0__G0_0_2\,
datac => \STATE_SRSTS_0_0__G3\);
C1_UN14_STATE_I_RNI6D7H: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => idle_cycleslde_i_a2_x_i,
dataa => reset_c,
datab => UN14_STATE_I_82);
\DATA_CALCULATED_IV_0_M2_X_12_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(12),
dataa => vdout_c_12,
datab => CACHE_REG_12(0),
datac => CACHE_REG_12(1));
\DATA_CALCULATED_IV_0_M2_X_13_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(13),
dataa => vdout_c_13,
datab => CACHE_REG_13(0),
datac => CACHE_REG_13(1));
\DATA_CALCULATED_IV_0_M2_X_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(14),
dataa => vdout_c_14,
datab => CACHE_REG_14(0),
datac => CACHE_REG_14(1));
\DATA_CALCULATED_IV_0_M2_X_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(15),
dataa => vdout_c_15,
datab => CACHE_REG_15(0),
datac => CACHE_REG_15(1));
\DATA_CALCULATED_IV_0_M2_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(4),
dataa => vdout_c_4,
datab => CACHE_REG_4(0),
datac => CACHE_REG_4(1));
\DATA_CALCULATED_IV_0_M2_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(5),
dataa => vdout_c_5,
datab => CACHE_REG_5(0),
datac => CACHE_REG_5(1));
\DATA_CALCULATED_IV_0_M2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(6),
dataa => vdout_c_6,
datab => CACHE_REG_6(0),
datac => CACHE_REG_6(1));
\DATA_CALCULATED_IV_0_M2_X_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(7),
dataa => vdout_c_7,
datab => CACHE_REG_7(0),
datac => CACHE_REG_7(1));
\DATA_CALCULATED_IV_0_M2_X_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(8),
dataa => vdout_c_8,
datab => CACHE_REG_8(0),
datac => CACHE_REG_8(1));
\DATA_CALCULATED_IV_0_M2_X_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(9),
dataa => vdout_c_9,
datab => CACHE_REG_9(0),
datac => CACHE_REG_9(1));
\DATA_CALCULATED_IV_0_M2_X_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(10),
dataa => vdout_c_10,
datab => CACHE_REG_10(0),
datac => CACHE_REG_10(1));
\DATA_CALCULATED_IV_0_M2_X_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(11),
dataa => vdout_c_11,
datab => CACHE_REG_11(0),
datac => CACHE_REG_11(1));
\DATA_CALCULATED_IV_0_M2_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(0),
dataa => vdout_c_0,
datab => CACHE_REG_0(0),
datac => CACHE_REG_0(1));
\DATA_CALCULATED_IV_0_M2_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(1),
dataa => vdout_c_1,
datab => CACHE_REG_1(0),
datac => CACHE_REG_1(1));
\DATA_CALCULATED_IV_0_M2_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(2),
dataa => vdout_c_2,
datab => CACHE_REG_2(0),
datac => CACHE_REG_2(1));
\DATA_CALCULATED_IV_0_M2_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => DATA_CALCULATED_IV_0_M2_X(3),
dataa => vdout_c_3,
datab => CACHE_REG_3(0),
datac => CACHE_REG_3(1));
\OUTPUT_VALUE_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100101011001010")
port map (
combout => output_value_2,
dataa => X_0_2,
datab => X_1_2,
cin => lt5_cout);
CLK_C_I <= not clk_c;
VCC <= '1';
GND <= '0';
CYCLE_COUNT_1_SQMUXA_I_0_0_O2_I <= not CYCLE_COUNT_1_SQMUXA_I_0_0_O2;
STATE_S2_0_A3_0_A4_I <= not STATE_S2_0_A3_0_A4;
CYCLE_COUNT_1_SQMUXA_I_0_0_I_I <= not CYCLE_COUNT_1_SQMUXA_I_0_0_I;
X_2_0 <= X_2_69;
Y_i_m2_0 <= Y_I_M2_70;
Y_i_m2_1 <= Y_I_M2_71;
Y_i_m2_3 <= Y_I_M2_72;
Y_i_m2_2 <= Y_I_M2_73;
X_i_m2_3 <= X_I_M2_74;
X_i_m2_1 <= X_I_M2_75;
X_i_m2_2 <= X_I_M2_76;
X_i_m2_0 <= X_I_M2_77;
output_value_5 <= OUTPUT_VALUE_78;
output_value_0 <= OUTPUT_VALUE_79;
X_1_1 <= X_1_80;
vram_write_i_0_o2 <= VRAM_WRITE_I_0_O2_81;
un14_state_i <= UN14_STATE_I_82;
X_c2 <= X_C2_83;
dbb_delaycmd_0_1 <= DBB_DELAYCMD_0_84;
vram_write_i_0_o2_0_4_0 <= VRAM_WRITE_I_0_O2_0_4_85;
vram_write_i_0_o2_0_6 <= VRAM_WRITE_I_0_O2_0_86;
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
pre_rdout_par_11_1 :  out std_logic;
pre_rdout_par_11_0 :  out std_logic;
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
pre_rdout_par_0_0 :  out std_logic;
pre_rdout_par_0_1 :  out std_logic;
pre_rdout_par_1_0 :  out std_logic;
pre_rdout_par_1_1 :  out std_logic;
pre_rdout_par_2_0 :  out std_logic;
pre_rdout_par_2_1 :  out std_logic;
pre_rdout_par_3_0 :  out std_logic;
pre_rdout_par_3_1 :  out std_logic;
pre_rdout_par_3_en_0_a4_0 :  out std_logic;
nstate_0 :  in std_logic;
X_0_0 :  in std_logic;
X_0 :  in std_logic;
X_1 :  in std_logic;
X_1_0 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
pixopin_i_o2_0 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dbb_delaycmd_0_1 :  in std_logic;
\pre_rdout_par_2_1_0_0__g0_e_x\ :  out std_logic;
G_266 :  in std_logic;
is_same :  out std_logic);
end pix_word_cache;

architecture beh of pix_word_cache is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal PRE_RDOUT_PAR_0_0_1_A2_0 : std_logic_vector(1 downto 0);
signal OPOUT_TO_RDIN1_I_M2 : std_logic_vector(1 downto 0);
signal UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2 : std_logic_vector(14 to 14);
signal UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2 : std_logic_vector(15 to 15);
signal RDOUT1_TO_OPRAM_6_I_M2_A : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_6_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_13_I_M2_A : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_13_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_3_I_M2_A : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_3_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_10_I_M2_A : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_10_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_7_I_M2 : std_logic_vector(1 downto 0);
signal RDOUT1_TO_OPRAM_14_I_M2 : std_logic_vector(1 downto 0);
signal OPOUT_TO_RDIN1_I_O4 : std_logic_vector(1 downto 0);
signal PRE_RDOUT_PAR_12_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_13_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_5_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_15_EN_0_A4 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_6_EN_0_A4 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_10_EN_0_A4 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_9_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_8_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_14_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_7_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_6_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_15_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_10_EN_0_A2 : std_logic_vector(0 to 0);
signal PRE_RDOUT_PAR_11_EN_0_A2 : std_logic_vector(0 to 0);
signal \PRE_RDOUT_PAR_15_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_15_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_14_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_13_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_12_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_11_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_11_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_10_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_10_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_9_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_9_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_8_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_8_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_7_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_6_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_5_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_1__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_4_1_0_0__G2\ : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_0__G5\ : std_logic ;
signal G_251 : std_logic ;
signal \PRE_RDOUT_PAR_0_1_0_1__G5\ : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_0__G5\ : std_logic ;
signal G_257 : std_logic ;
signal \PRE_RDOUT_PAR_1_1_0_1__G5\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G4\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_68\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G6\ : std_logic ;
signal G_262 : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_1__G4\ : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_1__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_0__G4\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_0__G6\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_1__G4\ : std_logic ;
signal \PRE_RDOUT_PAR_3_1_0_1__G6\ : std_logic ;
signal IS_SAME_2 : std_logic ;
signal IS_SAME_6 : std_logic ;
signal IS_SAME_16 : std_logic ;
signal IS_SAME_18 : std_logic ;
signal IS_SAME_20 : std_logic ;
signal IS_SAME_21 : std_logic ;
signal IS_SAME_22 : std_logic ;
signal IS_SAME_23 : std_logic ;
signal IS_SAME_24 : std_logic ;
signal IS_SAME_25 : std_logic ;
signal IS_SAME_29 : std_logic ;
signal UN1_PW_13_I_A2_0_A2 : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal PRE_RDOUT_PAR_15_35 : std_logic ;
signal PRE_RDOUT_PAR_15_36 : std_logic ;
signal PRE_RDOUT_PAR_14_37 : std_logic ;
signal PRE_RDOUT_PAR_14_38 : std_logic ;
signal PRE_RDOUT_PAR_13_39 : std_logic ;
signal PRE_RDOUT_PAR_13_40 : std_logic ;
signal PRE_RDOUT_PAR_12_41 : std_logic ;
signal PRE_RDOUT_PAR_12_42 : std_logic ;
signal PRE_RDOUT_PAR_11_43 : std_logic ;
signal PRE_RDOUT_PAR_11_44 : std_logic ;
signal PRE_RDOUT_PAR_10_45 : std_logic ;
signal PRE_RDOUT_PAR_10_46 : std_logic ;
signal PRE_RDOUT_PAR_9_47 : std_logic ;
signal PRE_RDOUT_PAR_9_48 : std_logic ;
signal PRE_RDOUT_PAR_8_49 : std_logic ;
signal PRE_RDOUT_PAR_8_50 : std_logic ;
signal PRE_RDOUT_PAR_7_51 : std_logic ;
signal PRE_RDOUT_PAR_7_52 : std_logic ;
signal PRE_RDOUT_PAR_6_53 : std_logic ;
signal PRE_RDOUT_PAR_6_54 : std_logic ;
signal PRE_RDOUT_PAR_5_55 : std_logic ;
signal PRE_RDOUT_PAR_5_56 : std_logic ;
signal PRE_RDOUT_PAR_4_57 : std_logic ;
signal PRE_RDOUT_PAR_4_58 : std_logic ;
signal PRE_RDOUT_PAR_0_59 : std_logic ;
signal PRE_RDOUT_PAR_0_60 : std_logic ;
signal PRE_RDOUT_PAR_1_61 : std_logic ;
signal PRE_RDOUT_PAR_1_62 : std_logic ;
signal PRE_RDOUT_PAR_2_63 : std_logic ;
signal PRE_RDOUT_PAR_2_64 : std_logic ;
signal PRE_RDOUT_PAR_3_65 : std_logic ;
signal PRE_RDOUT_PAR_3_66 : std_logic ;
signal PRE_RDOUT_PAR_3_EN_0_A4_67 : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\ : std_logic ;
signal DBB_DELAYCMD_0_1_I : std_logic ;
begin
\N1_PRE_RDOUT_PAR_15_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_15_35,
datain => \PRE_RDOUT_PAR_15_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_15_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_15_36,
datain => \PRE_RDOUT_PAR_15_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_14_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_14_37,
datain => \PRE_RDOUT_PAR_14_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_14_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_14_38,
datain => \PRE_RDOUT_PAR_14_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_13_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_13_39,
datain => \PRE_RDOUT_PAR_13_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_13_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_13_40,
datain => \PRE_RDOUT_PAR_13_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_12_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_12_41,
datain => \PRE_RDOUT_PAR_12_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_12_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_12_42,
datain => \PRE_RDOUT_PAR_12_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_11_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_11_43,
datain => \PRE_RDOUT_PAR_11_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_11_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_11_44,
datain => \PRE_RDOUT_PAR_11_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_10_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_10_45,
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
regout => PRE_RDOUT_PAR_10_46,
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
regout => PRE_RDOUT_PAR_9_47,
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
regout => PRE_RDOUT_PAR_9_48,
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
regout => PRE_RDOUT_PAR_8_49,
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
regout => PRE_RDOUT_PAR_8_50,
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
regout => PRE_RDOUT_PAR_7_51,
datain => \PRE_RDOUT_PAR_7_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_7_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_7_52,
datain => \PRE_RDOUT_PAR_7_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_6_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_6_53,
datain => \PRE_RDOUT_PAR_6_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_6_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_6_54,
datain => \PRE_RDOUT_PAR_6_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_5_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_5_55,
datain => \PRE_RDOUT_PAR_5_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_5_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_5_56,
datain => \PRE_RDOUT_PAR_5_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_4_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_4_57,
datain => \PRE_RDOUT_PAR_4_1_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_4_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_4_58,
datain => \PRE_RDOUT_PAR_4_1_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\N1_PRE_RDOUT_PAR_0_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_0_59,
datain => PRE_RDOUT_PAR_0_0_1_A2_0(0),
clk => clk_c,
sclr => reset_c,
sload => DBB_DELAYCMD_0_1_I,
sdata => \PRE_RDOUT_PAR_0_1_0_0__G5\,
ena => G_251,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND);
\N1_PRE_RDOUT_PAR_0_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_0_60,
datain => PRE_RDOUT_PAR_0_0_1_A2_0(1),
clk => clk_c,
sclr => reset_c,
sload => DBB_DELAYCMD_0_1_I,
sdata => \PRE_RDOUT_PAR_0_1_0_1__G5\,
ena => G_251,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND);
\N1_PRE_RDOUT_PAR_1_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_1_61,
datain => PRE_RDOUT_PAR_0_0_1_A2_0(0),
clk => clk_c,
sclr => reset_c,
sload => DBB_DELAYCMD_0_1_I,
sdata => \PRE_RDOUT_PAR_1_1_0_0__G5\,
ena => G_257,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND);
\N1_PRE_RDOUT_PAR_1_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_1_62,
datain => PRE_RDOUT_PAR_0_0_1_A2_0(1),
clk => clk_c,
sclr => reset_c,
sload => DBB_DELAYCMD_0_1_I,
sdata => \PRE_RDOUT_PAR_1_1_0_1__G5\,
ena => G_257,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND);
\N1_PRE_RDOUT_PAR_2_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_2_63,
datain => \PRE_RDOUT_PAR_2_1_0_0__G4\,
clk => clk_c,
sload => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\,
sdata => \PRE_RDOUT_PAR_2_1_0_0__G6\,
ena => G_262,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\N1_PRE_RDOUT_PAR_2_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_2_64,
datain => \PRE_RDOUT_PAR_2_1_0_1__G4\,
clk => clk_c,
sload => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\,
sdata => \PRE_RDOUT_PAR_2_1_0_1__G6\,
ena => G_262,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\N1_PRE_RDOUT_PAR_3_0_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_3_65,
datain => \PRE_RDOUT_PAR_3_1_0_0__G4\,
clk => clk_c,
sload => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\,
sdata => \PRE_RDOUT_PAR_3_1_0_0__G6\,
ena => G_266,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\N1_PRE_RDOUT_PAR_3_1_\: cycloneii_lcell_ff port map (
regout => PRE_RDOUT_PAR_3_66,
datain => \PRE_RDOUT_PAR_3_1_0_1__G4\,
clk => clk_c,
sload => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\,
sdata => \PRE_RDOUT_PAR_3_1_0_1__G6\,
ena => G_266,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\OPOUT_TO_RDIN1_I_M2_RNIIRRA1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => PRE_RDOUT_PAR_0_0_1_A2_0(1),
dataa => PRE_RDOUT_PAR_3_EN_0_A4_67,
datab => OPOUT_TO_RDIN1_I_M2(1));
\OPOUT_TO_RDIN1_I_M2_RNIHQRA1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => PRE_RDOUT_PAR_0_0_1_A2_0(0),
dataa => PRE_RDOUT_PAR_3_EN_0_A4_67,
datab => OPOUT_TO_RDIN1_I_M2(0));
IS_SAME_2_Z243: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => IS_SAME_2,
dataa => PRE_RDOUT_PAR_13_39,
datab => PRE_RDOUT_PAR_13_40);
IS_SAME_6_Z244: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => IS_SAME_6,
dataa => PRE_RDOUT_PAR_9_47,
datab => PRE_RDOUT_PAR_9_48);
\T1_UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010111000")
port map (
combout => UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2(14),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => X_1);
\T1_UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000111")
port map (
combout => UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2(15),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => X_1);
IS_SAME_16_Z247: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_16,
dataa => PRE_RDOUT_PAR_14_38,
datab => PRE_RDOUT_PAR_14_37,
datac => PRE_RDOUT_PAR_15_36,
datad => PRE_RDOUT_PAR_15_35);
IS_SAME_18_Z248: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_18,
dataa => PRE_RDOUT_PAR_10_46,
datab => PRE_RDOUT_PAR_10_45,
datac => PRE_RDOUT_PAR_11_44,
datad => PRE_RDOUT_PAR_11_43);
IS_SAME_20_Z249: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_20,
dataa => PRE_RDOUT_PAR_6_54,
datab => PRE_RDOUT_PAR_6_53,
datac => PRE_RDOUT_PAR_7_52,
datad => PRE_RDOUT_PAR_7_51);
IS_SAME_21_Z250: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_21,
dataa => PRE_RDOUT_PAR_4_58,
datab => PRE_RDOUT_PAR_4_57,
datac => PRE_RDOUT_PAR_5_56,
datad => PRE_RDOUT_PAR_5_55);
IS_SAME_22_Z251: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_22,
dataa => PRE_RDOUT_PAR_2_63,
datab => PRE_RDOUT_PAR_2_64,
datac => PRE_RDOUT_PAR_3_65,
datad => PRE_RDOUT_PAR_3_66);
IS_SAME_23_Z252: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => IS_SAME_23,
dataa => PRE_RDOUT_PAR_0_59,
datab => PRE_RDOUT_PAR_0_60,
datac => PRE_RDOUT_PAR_1_61,
datad => PRE_RDOUT_PAR_1_62);
\N1_PRE_RDOUT_PAR_2_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_0__G4\,
dataa => reset_c,
datab => X_1,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_2_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_1__G4\,
dataa => reset_c,
datab => X_1,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_3_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_0__G4\,
dataa => reset_c,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_3_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_1__G4\,
dataa => reset_c,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_1__G5\,
dataa => X_1,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_1_1_0_0__G5\,
dataa => X_1,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_0_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_1__G5\,
dataa => X_1,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_0_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => \PRE_RDOUT_PAR_0_1_0_0__G5\,
dataa => X_1,
datab => X_1_0,
datac => PRE_RDOUT_PAR_3_EN_0_A4_67,
datad => OPOUT_TO_RDIN1_I_M2(0));
\RDOUT1_TO_OPRAM_6_I_M2_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2_A(0),
dataa => PRE_RDOUT_PAR_9_48,
datab => PRE_RDOUT_PAR_13_40,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_6_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2(0),
dataa => PRE_RDOUT_PAR_5_56,
datab => PRE_RDOUT_PAR_1_61,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_6_I_M2_A(0));
\RDOUT1_TO_OPRAM_6_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2_A(1),
dataa => PRE_RDOUT_PAR_9_47,
datab => PRE_RDOUT_PAR_13_39,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_6_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_6_I_M2(1),
dataa => PRE_RDOUT_PAR_5_55,
datab => PRE_RDOUT_PAR_1_62,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_6_I_M2_A(1));
\RDOUT1_TO_OPRAM_13_I_M2_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2_A(0),
dataa => PRE_RDOUT_PAR_11_44,
datab => PRE_RDOUT_PAR_15_36,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_13_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2(0),
dataa => PRE_RDOUT_PAR_7_52,
datab => PRE_RDOUT_PAR_3_65,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_13_I_M2_A(0));
\RDOUT1_TO_OPRAM_3_I_M2_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2_A(0),
dataa => PRE_RDOUT_PAR_8_50,
datab => PRE_RDOUT_PAR_12_42,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_3_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2(0),
dataa => PRE_RDOUT_PAR_4_58,
datab => PRE_RDOUT_PAR_0_59,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_3_I_M2_A(0));
\RDOUT1_TO_OPRAM_3_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2_A(1),
dataa => PRE_RDOUT_PAR_8_49,
datab => PRE_RDOUT_PAR_12_41,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_3_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_3_I_M2(1),
dataa => PRE_RDOUT_PAR_4_57,
datab => PRE_RDOUT_PAR_0_60,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_3_I_M2_A(1));
\RDOUT1_TO_OPRAM_10_I_M2_A_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2_A(0),
dataa => PRE_RDOUT_PAR_10_46,
datab => PRE_RDOUT_PAR_14_38,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_10_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2(0),
dataa => PRE_RDOUT_PAR_6_54,
datab => PRE_RDOUT_PAR_2_63,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_10_I_M2_A(0));
\RDOUT1_TO_OPRAM_10_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2_A(1),
dataa => PRE_RDOUT_PAR_10_45,
datab => PRE_RDOUT_PAR_14_37,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_10_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_10_I_M2(1),
dataa => PRE_RDOUT_PAR_6_53,
datab => PRE_RDOUT_PAR_2_64,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_10_I_M2_A(1));
\RDOUT1_TO_OPRAM_13_I_M2_A_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010100001111")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2_A(1),
dataa => PRE_RDOUT_PAR_11_43,
datab => PRE_RDOUT_PAR_15_35,
datac => Y_0,
datad => Y_1);
\RDOUT1_TO_OPRAM_13_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110011111010")
port map (
combout => RDOUT1_TO_OPRAM_13_I_M2(1),
dataa => PRE_RDOUT_PAR_7_51,
datab => PRE_RDOUT_PAR_3_66,
datac => Y_1,
datad => RDOUT1_TO_OPRAM_13_I_M2_A(1));
IS_SAME_24_Z277: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => IS_SAME_24,
dataa => PRE_RDOUT_PAR_12_42,
datab => PRE_RDOUT_PAR_12_41,
datac => IS_SAME_2,
datad => IS_SAME_16);
IS_SAME_25_Z278: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => IS_SAME_25,
dataa => PRE_RDOUT_PAR_8_50,
datab => PRE_RDOUT_PAR_8_49,
datac => IS_SAME_6,
datad => IS_SAME_18);
\N1_PRE_RDOUT_PAR_3_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_0__G6\,
dataa => reset_c,
datab => X_1,
datac => X_1_0,
datad => PRE_RDOUT_PAR_0_0_1_A2_0(0));
\N1_PRE_RDOUT_PAR_3_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => \PRE_RDOUT_PAR_3_1_0_1__G6\,
dataa => reset_c,
datab => X_1,
datac => X_1_0,
datad => PRE_RDOUT_PAR_0_0_1_A2_0(1));
G_262_Z281: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010111100001111")
port map (
combout => G_262,
dataa => X_1,
datab => X_1_0,
datac => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_68\,
datad => PRE_RDOUT_PAR_3_EN_0_A4_67);
\N1_PRE_RDOUT_PAR_2_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_1__G6\,
dataa => reset_c,
datab => X_1,
datac => X_1_0,
datad => PRE_RDOUT_PAR_0_0_1_A2_0(1));
\N1_PRE_RDOUT_PAR_2_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_0__G6\,
dataa => reset_c,
datab => X_1,
datac => X_1_0,
datad => PRE_RDOUT_PAR_0_0_1_A2_0(0));
\RDOUT1_TO_OPRAM_7_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_7_I_M2(0),
dataa => X_1_0,
datab => RDOUT1_TO_OPRAM_6_I_M2(0),
datac => RDOUT1_TO_OPRAM_3_I_M2(0));
\RDOUT1_TO_OPRAM_7_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_7_I_M2(1),
dataa => X_1_0,
datab => RDOUT1_TO_OPRAM_6_I_M2(1),
datac => RDOUT1_TO_OPRAM_3_I_M2(1));
\RDOUT1_TO_OPRAM_14_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_14_I_M2(0),
dataa => X_1_0,
datab => RDOUT1_TO_OPRAM_13_I_M2(0),
datac => RDOUT1_TO_OPRAM_10_I_M2(0));
\RDOUT1_TO_OPRAM_14_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => RDOUT1_TO_OPRAM_14_I_M2(1),
dataa => X_1_0,
datab => RDOUT1_TO_OPRAM_13_I_M2(1),
datac => RDOUT1_TO_OPRAM_10_I_M2(1));
G_251_Z288: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111110101111")
port map (
combout => G_251,
dataa => reset_c,
datab => UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2(15),
datac => dbb_delaycmd_0_1,
datad => PRE_RDOUT_PAR_3_EN_0_A4_67);
G_257_Z289: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111110101111")
port map (
combout => G_257,
dataa => reset_c,
datab => UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2(14),
datac => dbb_delaycmd_0_1,
datad => PRE_RDOUT_PAR_3_EN_0_A4_67);
IS_SAME_29_Z290: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => IS_SAME_29,
dataa => IS_SAME_22,
datab => IS_SAME_23,
datac => IS_SAME_20,
datad => IS_SAME_21);
IS_SAME_Z291: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => is_same,
dataa => IS_SAME_24,
datab => IS_SAME_25,
datac => IS_SAME_29);
\OPOUT_TO_RDIN1_I_O4_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001101111111111")
port map (
combout => OPOUT_TO_RDIN1_I_O4(1),
dataa => X_1,
datab => RDOUT1_TO_OPRAM_7_I_M2(1),
datac => RDOUT1_TO_OPRAM_14_I_M2(1),
datad => dbb_delaycmd_0_1);
\OPOUT_TO_RDIN1_I_O4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001101111111111")
port map (
combout => OPOUT_TO_RDIN1_I_O4(0),
dataa => X_1,
datab => RDOUT1_TO_OPRAM_7_I_M2(0),
datac => RDOUT1_TO_OPRAM_14_I_M2(0),
datad => dbb_delaycmd_0_1);
\N1_PRE_RDOUT_PAR_12_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => PRE_RDOUT_PAR_12_EN_0_A2(0),
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2(15),
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_13_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => PRE_RDOUT_PAR_13_EN_0_A2(0),
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2(14),
datad => pixopin_i_o2_0);
\OPOUT_TO_RDIN1_I_M2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110100011")
port map (
combout => OPOUT_TO_RDIN1_I_M2(1),
dataa => cmd_1,
datab => cmd_0,
datac => OPOUT_TO_RDIN1_I_O4(1),
datad => pixopin_i_o2_0);
\OPOUT_TO_RDIN1_I_M2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110100011")
port map (
combout => OPOUT_TO_RDIN1_I_M2(0),
dataa => cmd_0,
datab => cmd_1,
datac => OPOUT_TO_RDIN1_I_O4(0),
datad => pixopin_i_o2_0);
UN1_PW_13_I_A2_0_A2_Z298: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => UN1_PW_13_I_A2_0_A2,
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2(15),
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_5_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => PRE_RDOUT_PAR_5_EN_0_A2(0),
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2(14),
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_3_EN_0_A4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => PRE_RDOUT_PAR_3_EN_0_A4_67,
dataa => Y_0,
datab => Y_1,
datac => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_15_EN_0_A4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => PRE_RDOUT_PAR_15_EN_0_A4(0),
dataa => Y_0,
datab => X_1,
datac => Y_1,
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_6_EN_0_A4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001000")
port map (
combout => PRE_RDOUT_PAR_6_EN_0_A4(0),
dataa => Y_0,
datab => X_1,
datac => Y_1,
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_10_EN_0_A4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000000")
port map (
combout => PRE_RDOUT_PAR_10_EN_0_A4(0),
dataa => Y_0,
datab => X_1,
datac => Y_1,
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_9_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000000")
port map (
combout => PRE_RDOUT_PAR_9_EN_0_A2(0),
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_0_A2(14),
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_8_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000000")
port map (
combout => PRE_RDOUT_PAR_8_EN_0_A2(0),
dataa => Y_0,
datab => Y_1,
datac => UN2_RDOUT1_TO_OPRAM_I_I_A4_1_A2(15),
datad => pixopin_i_o2_0);
\N1_PRE_RDOUT_PAR_14_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100011100000000")
port map (
combout => PRE_RDOUT_PAR_14_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_15_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_7_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100000000000")
port map (
combout => PRE_RDOUT_PAR_7_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_6_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_6_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100011100000000")
port map (
combout => PRE_RDOUT_PAR_6_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_6_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_15_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100000000000")
port map (
combout => PRE_RDOUT_PAR_15_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_15_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_10_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100011100000000")
port map (
combout => PRE_RDOUT_PAR_10_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_10_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_11_EN_0_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100000000000")
port map (
combout => PRE_RDOUT_PAR_11_EN_0_A2(0),
dataa => X_0,
datab => nstate_0,
datac => X_0_0,
datad => PRE_RDOUT_PAR_10_EN_0_A4(0));
\N1_PRE_RDOUT_PAR_2_1_0_0__G0_E_X\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_68\,
dataa => reset_c,
datab => dbb_delaycmd_0_1);
\N1_PRE_RDOUT_PAR_8_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_8_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_8_49,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_8_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_5_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_5_55,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_5_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_4_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_4_57,
datab => dbb_delaycmd_0_1,
datac => UN1_PW_13_I_A2_0_A2,
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_9_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_9_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_9_48,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_9_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_4_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_4_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_4_58,
datab => dbb_delaycmd_0_1,
datac => UN1_PW_13_I_A2_0_A2,
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_9_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_9_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_9_47,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_9_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_5_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_5_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_5_56,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_5_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_8_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_8_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_8_50,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_8_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_13_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_13_39,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_13_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_13_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_13_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_13_40,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_13_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_12_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_12_42,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_12_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(0));
\N1_PRE_RDOUT_PAR_12_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000001000")
port map (
combout => \PRE_RDOUT_PAR_12_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_12_41,
datab => dbb_delaycmd_0_1,
datac => PRE_RDOUT_PAR_12_EN_0_A2(0),
datad => OPOUT_TO_RDIN1_I_M2(1));
\N1_PRE_RDOUT_PAR_14_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_14_38,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_14_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_7_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_7_51,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_7_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_10_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_10_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_10_46,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_10_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_10_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_10_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_10_45,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_10_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_11_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_11_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_11_44,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_11_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_11_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_11_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_11_43,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_11_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_14_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_14_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_14_37,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_14_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_15_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_15_36,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_15_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_15_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_15_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_15_35,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_15_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_6_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_6_54,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_6_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_6_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_6_1_0_1__G2\,
dataa => PRE_RDOUT_PAR_6_53,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(1),
datad => PRE_RDOUT_PAR_6_EN_0_A2(0));
\N1_PRE_RDOUT_PAR_7_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \PRE_RDOUT_PAR_7_1_0_0__G2\,
dataa => PRE_RDOUT_PAR_7_52,
datab => dbb_delaycmd_0_1,
datac => OPOUT_TO_RDIN1_I_M2(0),
datad => PRE_RDOUT_PAR_7_EN_0_A2(0));
GND <= '0';
VCC <= '1';
\PRE_RDOUT_PAR_2_1_0_0__G0_E_X_I\ <= not \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_68\;
DBB_DELAYCMD_0_1_I <= not dbb_delaycmd_0_1;
pre_rdout_par_15_1 <= PRE_RDOUT_PAR_15_35;
pre_rdout_par_15_0 <= PRE_RDOUT_PAR_15_36;
pre_rdout_par_14_1 <= PRE_RDOUT_PAR_14_37;
pre_rdout_par_14_0 <= PRE_RDOUT_PAR_14_38;
pre_rdout_par_13_1 <= PRE_RDOUT_PAR_13_39;
pre_rdout_par_13_0 <= PRE_RDOUT_PAR_13_40;
pre_rdout_par_12_1 <= PRE_RDOUT_PAR_12_41;
pre_rdout_par_12_0 <= PRE_RDOUT_PAR_12_42;
pre_rdout_par_11_1 <= PRE_RDOUT_PAR_11_43;
pre_rdout_par_11_0 <= PRE_RDOUT_PAR_11_44;
pre_rdout_par_10_1 <= PRE_RDOUT_PAR_10_45;
pre_rdout_par_10_0 <= PRE_RDOUT_PAR_10_46;
pre_rdout_par_9_1 <= PRE_RDOUT_PAR_9_47;
pre_rdout_par_9_0 <= PRE_RDOUT_PAR_9_48;
pre_rdout_par_8_1 <= PRE_RDOUT_PAR_8_49;
pre_rdout_par_8_0 <= PRE_RDOUT_PAR_8_50;
pre_rdout_par_7_1 <= PRE_RDOUT_PAR_7_51;
pre_rdout_par_7_0 <= PRE_RDOUT_PAR_7_52;
pre_rdout_par_6_1 <= PRE_RDOUT_PAR_6_53;
pre_rdout_par_6_0 <= PRE_RDOUT_PAR_6_54;
pre_rdout_par_5_1 <= PRE_RDOUT_PAR_5_55;
pre_rdout_par_5_0 <= PRE_RDOUT_PAR_5_56;
pre_rdout_par_4_1 <= PRE_RDOUT_PAR_4_57;
pre_rdout_par_4_0 <= PRE_RDOUT_PAR_4_58;
pre_rdout_par_0_0 <= PRE_RDOUT_PAR_0_59;
pre_rdout_par_0_1 <= PRE_RDOUT_PAR_0_60;
pre_rdout_par_1_0 <= PRE_RDOUT_PAR_1_61;
pre_rdout_par_1_1 <= PRE_RDOUT_PAR_1_62;
pre_rdout_par_2_0 <= PRE_RDOUT_PAR_2_63;
pre_rdout_par_2_1 <= PRE_RDOUT_PAR_2_64;
pre_rdout_par_3_0 <= PRE_RDOUT_PAR_3_65;
pre_rdout_par_3_1 <= PRE_RDOUT_PAR_3_66;
pre_rdout_par_3_en_0_a4_0 <= PRE_RDOUT_PAR_3_EN_0_A4_67;
\pre_rdout_par_2_1_0_0__g0_e_x\ <= \PRE_RDOUT_PAR_2_1_0_0__G0_E_X_68\;
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
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_4 :  in std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
yout_5 :  out std_logic;
yout_3 :  out std_logic;
yout_0 :  out std_logic;
yout_1 :  out std_logic;
yout_2 :  out std_logic;
yout_4 :  out std_logic;
xout_5 :  out std_logic;
xout_3 :  out std_logic;
xout_0 :  out std_logic;
xout_1 :  out std_logic;
xout_2 :  out std_logic;
xout_4 :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy1 :  in std_logic;
swapxy1 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
un5_x1 :  out std_logic;
xbias1 :  in std_logic;
un14_state_i :  in std_logic;
vram_write_i7lto31 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic);
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
signal NEGX_0_0_G2 : std_logic ;
signal NEGY : std_logic ;
signal SWAPXY : std_logic ;
signal NEGX_0_0_G2_0_0 : std_logic ;
signal UN5_X1_14 : std_logic ;
signal XBIAS_I : std_logic ;
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
negx_0_0_g2 :  out std_logic;
negy :  out std_logic;
negy1 :  in std_logic;
swapxy :  out std_logic;
swapxy1 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
negx_0_0_g2_0_0 :  out std_logic;
un5_x1 :  in std_logic  );
end component;
component swap
port(
xbias_i :  out std_logic;
xbias1 :  in std_logic;
swapxy1 :  in std_logic  );
end component;
component inv_signal
port(
b_5 :  out std_logic;
b_3 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_4 :  out std_logic;
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_4 :  in std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
swapxy1 :  in std_logic;
negx1 :  in std_logic  );
end component;
component inv_signal_0
port(
b_5 :  out std_logic;
b_3 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
b_4 :  out std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
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
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
clk_c :  in std_logic;
un14_state_i :  in std_logic;
un5_x1 :  out std_logic;
xbias_i :  in std_logic;
negx_0_0_g2_0_0 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
vram_write_i7lto31 :  in std_logic;
negx_0_0_g2 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic  );
end component;
component inv_signal_1
port(
b_2 :  out std_logic;
b_0 :  out std_logic;
b_1 :  out std_logic;
x1_2 :  in std_logic;
x1_0 :  in std_logic;
x1_1 :  in std_logic;
negx :  in std_logic  );
end component;
component inv_signal_2
port(
b_0 :  out std_logic;
b_1 :  out std_logic;
b_2 :  out std_logic;
y1_0 :  in std_logic;
y1_1 :  in std_logic;
y1_2 :  in std_logic;
negy :  in std_logic  );
end component;
component swap_0
port(
x1_0 :  in std_logic;
x1_1 :  in std_logic;
x1_2 :  in std_logic;
yout_5 :  out std_logic;
yout_3 :  out std_logic;
yout_0 :  out std_logic;
yout_1 :  out std_logic;
yout_2 :  out std_logic;
yout_4 :  out std_logic;
y1_2 :  in std_logic;
y1_0 :  in std_logic;
y1_1 :  in std_logic;
b_5 :  in std_logic;
b_3 :  in std_logic;
b_0 :  in std_logic;
b_1 :  in std_logic;
b_2 :  in std_logic;
b_4 :  in std_logic;
xout_5 :  out std_logic;
xout_3 :  out std_logic;
xout_0 :  out std_logic;
xout_1 :  out std_logic;
xout_2 :  out std_logic;
xout_4 :  out std_logic;
negy :  in std_logic;
swapxy :  in std_logic;
negx :  in std_logic  );
end component;
begin
RD1: rd port map (
db_fsm_state_0 => db_fsm_state_0,
db_fsm_state_1 => db_fsm_state_1,
db_fsm_state_2 => db_fsm_state_2,
negx => NEGX,
negx1 => negx1,
clk_c => clk_c,
negx_0_0_g2 => NEGX_0_0_G2,
negy => NEGY,
negy1 => negy1,
swapxy => SWAPXY,
swapxy1 => swapxy1,
vram_write_i_0_a2_0 => vram_write_i_0_a2_0,
negx_0_0_g2_0_0 => NEGX_0_0_G2_0_0,
un5_x1 => UN5_X1_14);
SWAP1: swap port map (
xbias_i => XBIAS_I,
xbias1 => xbias1,
swapxy1 => swapxy1);
INV1: inv_signal port map (
b_5 => B(5),
b_3 => B(3),
b_0 => B(0),
b_1 => B(1),
b_2 => B(2),
b_4 => B(4),
xin_5 => xin_5,
xin_3 => xin_3,
xin_0 => xin_0,
xin_1 => xin_1,
xin_2 => xin_2,
xin_4 => xin_4,
yin_5 => yin_5,
yin_3 => yin_3,
yin_0 => yin_0,
yin_1 => yin_1,
yin_2 => yin_2,
yin_4 => yin_4,
swapxy1 => swapxy1,
negx1 => negx1);
INV2: inv_signal_0 port map (
b_5 => B_0(5),
b_3 => B_0(3),
b_0 => B_0(0),
b_1 => B_0(1),
b_2 => B_0(2),
b_4 => B_0(4),
yin_5 => yin_5,
yin_3 => yin_3,
yin_0 => yin_0,
yin_1 => yin_1,
yin_2 => yin_2,
yin_4 => yin_4,
xin_5 => xin_5,
xin_3 => xin_3,
xin_0 => xin_0,
xin_1 => xin_1,
xin_2 => xin_2,
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
word_reg_delayed_0 => word_reg_delayed_0,
X_i_m2_0 => X_i_m2_0,
db_fsm_state_i_0 => db_fsm_state_i_0,
clk_c => clk_c,
un14_state_i => un14_state_i,
un5_x1 => UN5_X1_14,
xbias_i => XBIAS_I,
negx_0_0_g2_0_0 => NEGX_0_0_G2_0_0,
vram_write_i_0_a2_0 => vram_write_i_0_a2_0,
vram_write_i7lto31 => vram_write_i7lto31,
negx_0_0_g2 => NEGX_0_0_G2,
is_same => is_same,
vram_write_i_0_o2_0_4_0 => vram_write_i_0_o2_0_4_0,
vram_write_i_0_o2_0_6 => vram_write_i_0_o2_0_6,
\cmd_1_0_2__g5_0\ => \cmd_1_0_2__g5_0\,
finish_x => finish_x,
dav_c => dav_c,
rcb_finish_i => rcb_finish_i);
INV3: inv_signal_1 port map (
b_2 => B_1(5),
b_0 => B_1(3),
b_1 => B_1(4),
x1_2 => X1(5),
x1_0 => X1(3),
x1_1 => X1(4),
negx => NEGX);
INV4: inv_signal_2 port map (
b_0 => B_1(0),
b_1 => B_1(1),
b_2 => B_1(2),
y1_0 => Y1(0),
y1_1 => Y1(1),
y1_2 => Y1(2),
negy => NEGY);
SWAP2: swap_0 port map (
x1_0 => X1(0),
x1_1 => X1(1),
x1_2 => X1(2),
yout_5 => yout_5,
yout_3 => yout_3,
yout_0 => yout_0,
yout_1 => yout_1,
yout_2 => yout_2,
yout_4 => yout_4,
y1_2 => Y1(5),
y1_0 => Y1(3),
y1_1 => Y1(4),
b_5 => B_1(5),
b_3 => B_1(3),
b_0 => B_1(0),
b_1 => B_1(1),
b_2 => B_1(2),
b_4 => B_1(4),
xout_5 => xout_5,
xout_3 => xout_3,
xout_0 => xout_0,
xout_1 => xout_1,
xout_2 => xout_2,
xout_4 => xout_4,
negy => NEGY,
swapxy => SWAPXY,
negx => NEGX);
GND <= '0';
VCC <= '1';
un5_x1 <= UN5_X1_14;
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
word_reg_delayed_3 :  out std_logic;
X_i_m2_3 :  out std_logic;
nstate_0 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
cmd_2 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
addr_delayed_7 :  out std_logic;
addr_delayed_6 :  out std_logic;
addr_delayed_5 :  out std_logic;
addr_delayed_4 :  out std_logic;
addr_delayed_3 :  out std_logic;
addr_delayed_2 :  out std_logic;
addr_delayed_1 :  out std_logic;
addr_delayed_0 :  out std_logic;
data_delayed_15 :  out std_logic;
data_delayed_14 :  out std_logic;
data_delayed_13 :  out std_logic;
data_delayed_12 :  out std_logic;
data_delayed_11 :  out std_logic;
data_delayed_10 :  out std_logic;
data_delayed_9 :  out std_logic;
data_delayed_8 :  out std_logic;
data_delayed_7 :  out std_logic;
data_delayed_6 :  out std_logic;
data_delayed_5 :  out std_logic;
data_delayed_4 :  out std_logic;
data_delayed_3 :  out std_logic;
data_delayed_2 :  out std_logic;
data_delayed_1 :  out std_logic;
data_delayed_0 :  out std_logic;
yout_0 :  in std_logic;
yout_1 :  in std_logic;
yout_3 :  in std_logic;
yout_2 :  in std_logic;
xout_1 :  in std_logic;
xout_2 :  in std_logic;
xout_0 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_3 :  in std_logic;
yin_2 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
clk_c :  in std_logic;
un14_state_i :  out std_logic;
reset_c :  in std_logic;
rcb_finish_i :  out std_logic;
Y_0_sqmuxa_0 :  out std_logic;
vram_write_i_0_a2_0 :  out std_logic;
startcmd_i_a5 :  in std_logic;
un17_vram_delay_NE :  out std_logic;
un20_vram_delay_NE_4 :  out std_logic;
mux_out_i_a2 :  in std_logic;
vram_write_i7lto31 :  out std_logic;
is_same :  out std_logic;
state_s0_i_0 :  out std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  in std_logic;
vram_write_i_0_o2_0_4_0 :  out std_logic;
vram_write_i_0_o2_0_6 :  out std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic);
end rcb;

architecture beh of rcb is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal IDLE_CYCLES : std_logic_vector(31 downto 0);
signal Y : std_logic_vector(5 downto 0);
signal Y_10 : std_logic_vector(4 downto 0);
signal X : std_logic_vector(5 downto 0);
signal X_0 : std_logic_vector(5 downto 0);
signal Y_0 : std_logic_vector(5 downto 0);
signal WORD_REG_DELAYED : std_logic_vector(7 downto 0);
signal Y_I_M2 : std_logic_vector(5 downto 2);
signal X_I_M2 : std_logic_vector(4 downto 2);
signal VRADDR : std_logic_vector(7 downto 0);
signal X_MIN : std_logic_vector(5 downto 0);
signal OUTPUT_VALUE : std_logic_vector(5 downto 0);
signal Y_2 : std_logic_vector(5 downto 0);
signal X_2 : std_logic_vector(5 downto 0);
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
signal Y_3 : std_logic_vector(1 downto 0);
signal X_11 : std_logic_vector(4 downto 1);
signal PIXOPIN_I_O2 : std_logic_vector(1 to 1);
signal PRE_RDOUT_PAR_3_EN_0_A4 : std_logic_vector(0 to 0);
signal X_3 : std_logic_vector(1 downto 0);
signal IDLE_CYCLES_C0_COMBOUT : std_logic ;
signal UN1_RCB_STATE22_I_0_I : std_logic ;
signal IDLE_CYCLESLDE_I_A2_X_I : std_logic ;
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
signal X_N5_0_222_M2 : std_logic ;
signal UN1_VRAM_DELAY_5_I : std_logic ;
signal X_E4_0_G1_0_183_I : std_logic ;
signal UN14_STATE_I_90 : std_logic ;
signal X_E3_0_G1_0_145_I : std_logic ;
signal X_E2_0_G1_0_107_I : std_logic ;
signal X_E1_0_G1_0_69_I : std_logic ;
signal X_N0_0_41_M2 : std_logic ;
signal LT5_I : std_logic ;
signal LT5_I_0 : std_logic ;
signal \NSTATE_2_0_0__G2\ : std_logic ;
signal RCB_FINISH_I_91 : std_logic ;
signal RCB_FINISH_I_0_I_A2 : std_logic ;
signal RCB_FINISH_I_2_0_G0_I_0 : std_logic ;
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
signal LT5_COUT_0 : std_logic ;
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
signal UN20_VRAM_DELAY_9 : std_logic ;
signal X_2_SQMUXA : std_logic ;
signal VRAM_WRITE_I7LTO30_0 : std_logic ;
signal Y_0_SQMUXA_92 : std_logic ;
signal VRAM_WRITE_I_0_A2_93 : std_logic ;
signal Y_C2 : std_logic ;
signal UN17_VRAM_DELAY_NE_0 : std_logic ;
signal UN17_VRAM_DELAY_NE_1 : std_logic ;
signal UN17_VRAM_DELAY_NE_2 : std_logic ;
signal VRAM_WRITE_I7LTO30_14 : std_logic ;
signal VRAM_WRITE_I7LTO30_15 : std_logic ;
signal VRAM_WRITE_I7LTO30_16 : std_logic ;
signal VRAM_WRITE_I7LTO30_17 : std_logic ;
signal VRAM_WRITE_I7LTO30_18 : std_logic ;
signal VRAM_WRITE_I7LTO30_19 : std_logic ;
signal UN20_VRAM_DELAY_NE_1 : std_logic ;
signal UN20_VRAM_DELAY_NE_2 : std_logic ;
signal X_E2_0_G1_0_107_I_A6_0_0 : std_logic ;
signal X_E1_0_G1_0_69_I_O4_0 : std_logic ;
signal Y_0_SQMUXA : std_logic ;
signal Y_57_1 : std_logic ;
signal VRAM_WRITE_I7LTO3 : std_logic ;
signal UN20_VRAM_DELAY_NE_3 : std_logic ;
signal X_E1_0_G1_0_69_I_M6 : std_logic ;
signal X_E1_0_G1_0_69_I_O4 : std_logic ;
signal X_E1_0_G1_0_69_I_A6_2 : std_logic ;
signal UN17_VRAM_DELAY_NE_94 : std_logic ;
signal VRAM_WRITE_I7LTO30_23 : std_logic ;
signal VRAM_WRITE_I7LTO30_24 : std_logic ;
signal DBB_DELAYCMD_0_1 : std_logic ;
signal Y_E5_0_G2 : std_logic ;
signal X_E1_0_G1_0_69_I_1_A : std_logic ;
signal X_E1_0_G1_0_69_I_1 : std_logic ;
signal VRAM_WRITE_I7LTO31_95 : std_logic ;
signal X_E2_0_G1_0_107_I_A6_2 : std_logic ;
signal X_E4_0_G1_0_183_I_A6_2 : std_logic ;
signal X_E3_0_G1_0_145_I_A6_2 : std_logic ;
signal X_E2_0_G1_0_107_I_0 : std_logic ;
signal G_270 : std_logic ;
signal X_E3_0_G1_0_145_I_1_A : std_logic ;
signal X_C2 : std_logic ;
signal X_45_1 : std_logic ;
signal X_E3_0_G1_0_145_I_1 : std_logic ;
signal X_E2_0_G1_0_107_I_1 : std_logic ;
signal X_E4_0_G1_0_183_I_1_A : std_logic ;
signal X_E4_0_G1_0_183_I_1 : std_logic ;
signal VRAM_WRITE_I_0_O2 : std_logic ;
signal Y_0_SQMUXA_COUT : std_logic ;
signal \PRE_RDOUT_PAR_2_1_0_0__G0_E_X\ : std_logic ;
signal G_266 : std_logic ;
signal IS_SAME_96 : std_logic ;
signal GND : std_logic ;
signal WORD_REG_DELAYED_87 : std_logic ;
signal X_I_M2_88 : std_logic ;
signal NSTATE_89 : std_logic ;
signal LT5_I_0_I : std_logic ;
signal UN1_VRAM_DELAY_2_I : std_logic ;
signal LT5_I_I : std_logic ;
signal UN1_RCB_STATE22_I_0_I_I : std_logic ;
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
pre_rdout_par_11_1 :  out std_logic;
pre_rdout_par_11_0 :  out std_logic;
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
pre_rdout_par_0_0 :  out std_logic;
pre_rdout_par_0_1 :  out std_logic;
pre_rdout_par_1_0 :  out std_logic;
pre_rdout_par_1_1 :  out std_logic;
pre_rdout_par_2_0 :  out std_logic;
pre_rdout_par_2_1 :  out std_logic;
pre_rdout_par_3_0 :  out std_logic;
pre_rdout_par_3_1 :  out std_logic;
pre_rdout_par_3_en_0_a4_0 :  out std_logic;
nstate_0 :  in std_logic;
X_0_0 :  in std_logic;
X_0 :  in std_logic;
X_1 :  in std_logic;
X_1_0 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
pixopin_i_o2_0 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
dbb_delaycmd_0_1 :  in std_logic;
\pre_rdout_par_2_1_0_0__g0_e_x\ :  out std_logic;
G_266 :  in std_logic;
is_same :  out std_logic  );
end component;
component ram_fsm
port(
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
addr_delayed_7 :  out std_logic;
addr_delayed_6 :  out std_logic;
addr_delayed_5 :  out std_logic;
addr_delayed_4 :  out std_logic;
addr_delayed_3 :  out std_logic;
addr_delayed_2 :  out std_logic;
addr_delayed_1 :  out std_logic;
addr_delayed_0 :  out std_logic;
data_delayed_15 :  out std_logic;
data_delayed_14 :  out std_logic;
data_delayed_13 :  out std_logic;
data_delayed_12 :  out std_logic;
data_delayed_11 :  out std_logic;
data_delayed_10 :  out std_logic;
data_delayed_9 :  out std_logic;
data_delayed_8 :  out std_logic;
data_delayed_7 :  out std_logic;
data_delayed_6 :  out std_logic;
data_delayed_5 :  out std_logic;
data_delayed_4 :  out std_logic;
data_delayed_3 :  out std_logic;
data_delayed_2 :  out std_logic;
data_delayed_1 :  out std_logic;
data_delayed_0 :  out std_logic;
nstate_0_0 :  in std_logic;
X_2_0 :  out std_logic;
X_2_1 :  in std_logic;
X_5 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
X_2 :  in std_logic;
X_3 :  in std_logic;
X_4 :  in std_logic;
Y_0 :  in std_logic;
Y_1 :  in std_logic;
Y_3 :  in std_logic;
Y_2 :  in std_logic;
yout_0 :  in std_logic;
yout_1 :  in std_logic;
yout_3 :  in std_logic;
yout_2 :  in std_logic;
xout_1 :  in std_logic;
xout_2 :  in std_logic;
xout_0 :  in std_logic;
pre_rdout_par_3_en_0_a4_0 :  in std_logic;
db_fsm_state_0 :  in std_logic;
Y_i_m2_0 :  out std_logic;
Y_i_m2_1 :  out std_logic;
Y_i_m2_3 :  out std_logic;
Y_i_m2_2 :  out std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_3 :  in std_logic;
yin_2 :  in std_logic;
X_i_m2_3 :  out std_logic;
X_i_m2_1 :  out std_logic;
X_i_m2_2 :  out std_logic;
X_i_m2_0 :  out std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_0 :  in std_logic;
x_min_0 :  in std_logic;
x_min_5 :  in std_logic;
word_reg_delayed_4 :  in std_logic;
word_reg_delayed_7 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
word_reg_delayed_5 :  in std_logic;
word_reg_delayed_1 :  in std_logic;
word_reg_delayed_6 :  in std_logic;
word_reg_delayed_2 :  in std_logic;
word_reg_delayed_3 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
output_value_5 :  out std_logic;
output_value_1 :  out std_logic;
output_value_0 :  out std_logic;
output_value_3 :  out std_logic;
output_value_4 :  out std_logic;
output_value_2 :  out std_logic;
X_0_5 :  in std_logic;
X_0_1 :  in std_logic;
X_0_0 :  in std_logic;
X_0_3 :  in std_logic;
X_0_4 :  in std_logic;
X_0_2 :  in std_logic;
X_1_0 :  in std_logic;
X_1_5 :  in std_logic;
X_1_1 :  out std_logic;
X_1_3 :  in std_logic;
X_1_4 :  in std_logic;
X_1_2 :  in std_logic;
clk_c :  in std_logic;
vram_write_i_0_o2 :  out std_logic;
un14_state_i :  out std_logic;
lt5 :  in std_logic;
un17_vram_delay_NE :  in std_logic;
G_270 :  out std_logic;
un1_vram_delay_2 :  out std_logic;
Y_0_sqmuxa_0 :  in std_logic;
state_s0_i_0 :  out std_logic;
X_n0_0_41_m2 :  out std_logic;
X_c2 :  out std_logic;
X_45_1 :  out std_logic;
rcb_finish_i_0_i_a2 :  out std_logic;
rcb_finish_i :  in std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  in std_logic;
dbb_delaycmd_0_1 :  out std_logic;
reset_c :  in std_logic;
G_266 :  out std_logic;
\pre_rdout_par_2_1_0_0__g0_e_x\ :  in std_logic;
un1_rcb_state22_i_0_i :  out std_logic;
mux_out_i_a2 :  in std_logic;
un1_vram_delay_5_i :  out std_logic;
X_e1_0_g1_0_69_i_o4_0 :  in std_logic;
X_e1_0_g1_0_69_i_o4 :  in std_logic;
X_2_sqmuxa :  out std_logic;
X_e1_0_g1_0_69_i_m6 :  in std_logic;
vram_write_i_0_o2_0_4_0 :  out std_logic;
X_n5_0_222_m2 :  out std_logic;
vram_write_i_0_o2_0_6 :  out std_logic;
vram_write_i7lto31 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
vram_write_i_0_a2_0 :  out std_logic;
is_same :  in std_logic;
idle_cycleslde_i_a2_x_i :  out std_logic;
lt5_cout :  in std_logic  );
end component;
begin
\RCB_FSM_IDLE_CYCLES_0_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(0),
datain => IDLE_CYCLES_C0_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_1_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(1),
datain => IDLE_CYCLES_C1_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_2_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(2),
datain => IDLE_CYCLES_C2_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_3_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(3),
datain => IDLE_CYCLES_C3_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_4_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(4),
datain => IDLE_CYCLES_C4_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_5_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(5),
datain => IDLE_CYCLES_C5_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_6_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(6),
datain => IDLE_CYCLES_C6_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_7_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(7),
datain => IDLE_CYCLES_C7_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_8_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(8),
datain => IDLE_CYCLES_C8_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_9_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(9),
datain => IDLE_CYCLES_C9_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_10_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(10),
datain => IDLE_CYCLES_C10_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_11_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(11),
datain => IDLE_CYCLES_C11_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_12_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(12),
datain => IDLE_CYCLES_C12_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_13_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(13),
datain => IDLE_CYCLES_C13_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_14_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(14),
datain => IDLE_CYCLES_C14_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_15_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(15),
datain => IDLE_CYCLES_C15_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_16_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(16),
datain => IDLE_CYCLES_C16_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_17_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(17),
datain => IDLE_CYCLES_C17_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_18_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(18),
datain => IDLE_CYCLES_C18_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_19_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(19),
datain => IDLE_CYCLES_C19_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_20_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(20),
datain => IDLE_CYCLES_C20_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_21_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(21),
datain => IDLE_CYCLES_C21_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_22_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(22),
datain => IDLE_CYCLES_C22_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_23_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(23),
datain => IDLE_CYCLES_C23_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_24_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(24),
datain => IDLE_CYCLES_C24_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_25_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(25),
datain => IDLE_CYCLES_C25_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_26_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(26),
datain => IDLE_CYCLES_C26_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_27_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(27),
datain => IDLE_CYCLES_C27_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_28_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(28),
datain => IDLE_CYCLES_C28_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_29_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(29),
datain => IDLE_CYCLES_C29_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_30_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(30),
datain => IDLE_CYCLES_C30_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_IDLE_CYCLES_31_\: cycloneii_lcell_ff port map (
regout => IDLE_CYCLES(31),
datain => IDLE_CYCLES_C31_COMBOUT,
clk => clk_c,
sclr => UN1_RCB_STATE22_I_0_I_I,
ena => IDLE_CYCLESLDE_I_A2_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_Y_5_\: cycloneii_lcell_ff port map (
regout => Y(5),
datain => Y_E5_0_G4,
clk => clk_c,
sload => UN1_VRAM_DELAY_2_I,
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
sload => UN1_VRAM_DELAY_2_I,
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
sload => UN1_VRAM_DELAY_2_I,
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
sload => UN1_VRAM_DELAY_2_I,
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
sload => UN1_VRAM_DELAY_2_I,
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
sload => UN1_VRAM_DELAY_2_I,
sdata => Y_10(0),
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\RCB_FSM_CLRXY_REG_X_5_\: cycloneii_lcell_ff port map (
regout => X(5),
datain => X_N5_0_222_M2,
clk => clk_c,
ena => UN1_VRAM_DELAY_5_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_4_\: cycloneii_lcell_ff port map (
regout => X(4),
datain => X_E4_0_G1_0_183_I,
clk => clk_c,
ena => UN14_STATE_I_90,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_3_\: cycloneii_lcell_ff port map (
regout => X(3),
datain => X_E3_0_G1_0_145_I,
clk => clk_c,
ena => UN14_STATE_I_90,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_2_\: cycloneii_lcell_ff port map (
regout => X(2),
datain => X_E2_0_G1_0_107_I,
clk => clk_c,
ena => UN14_STATE_I_90,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_1_\: cycloneii_lcell_ff port map (
regout => X(1),
datain => X_E1_0_G1_0_69_I,
clk => clk_c,
ena => UN14_STATE_I_90,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_CLRXY_REG_X_0_\: cycloneii_lcell_ff port map (
regout => X(0),
datain => X_N0_0_41_M2,
clk => clk_c,
ena => UN1_VRAM_DELAY_5_I,
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
datain => Y_I_M2(5),
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
datain => Y_I_M2(4),
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
datain => Y_I_M2(3),
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
datain => Y_I_M2(2),
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\RCB_FSM_WORD_REG_DELAYED_3_\: cycloneii_lcell_ff port map (
regout => WORD_REG_DELAYED_87,
datain => X_I_M2_88,
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
datain => X_I_M2(4),
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
datain => X_I_M2(3),
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
datain => X_I_M2(2),
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
datain => WORD_REG_DELAYED_87,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\RCB_FSM_XY_MAX_Y_5_\: cycloneii_lcell_ff port map (
regout => Y_2(5),
datain => Y_1_5,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(5),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_4_\: cycloneii_lcell_ff port map (
regout => Y_2(4),
datain => Y_1_4,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(4),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_3_\: cycloneii_lcell_ff port map (
regout => Y_2(3),
datain => Y_1_3,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(3),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_Y_2_\: cycloneii_lcell_ff port map (
regout => Y_2(2),
datain => Y_1_2,
clk => clk_c,
sload => LT5_I_I,
sdata => Y_0(2),
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_5_\: cycloneii_lcell_ff port map (
regout => X_2(5),
datain => X_1_5,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(5),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_4_\: cycloneii_lcell_ff port map (
regout => X_2(4),
datain => X_1_4,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(4),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_3_\: cycloneii_lcell_ff port map (
regout => X_2(3),
datain => X_1_3,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(3),
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_XY_MAX_X_2_\: cycloneii_lcell_ff port map (
regout => X_2(2),
datain => X_1_2,
clk => clk_c,
sload => LT5_I_0_I,
sdata => X_0(2),
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
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
ena => UN1_VRAM_DELAY_2_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\RCB_FSM_CACHE_STORE_REG_15_1_\: cycloneii_lcell_ff port map (
regout => CACHE_STORE_REG_15(1),
datain => PRE_RDOUT_PAR_15(1),
clk => clk_c,
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
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
ena => UN14_STATE_I_90,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\NSTATE_0_\: cycloneii_lcell_ff port map (
regout => NSTATE_89,
datain => \NSTATE_2_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
RCB_FSM_RCB_FINISH_I: cycloneii_lcell_ff port map (
regout => RCB_FINISH_I_91,
datain => RCB_FINISH_I_0_I_A2,
clk => clk_c,
sclr => reset_c,
ena => RCB_FINISH_I_2_0_G0_I_0,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
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
    lut_mask => "0000000011010100")
port map (
cout => LT5_COUT_0,
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
RCB_FSM_UN20_VRAM_DELAY_9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN20_VRAM_DELAY_9,
dataa => Y_2(3),
datab => Y(3));
\RCB_FSM_CLRXY_REG_Y_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => Y_E0_0_G1,
dataa => Y(0),
datab => X_2_SQMUXA);
\SPLITXY_Y_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_3(0),
dataa => NSTATE_89,
datab => Y(0),
datac => Y_1_0);
\SPLITXY_Y_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101100011011000")
port map (
combout => Y_3(1),
dataa => NSTATE_89,
datab => Y(1),
datac => Y_1_1);
VRAM_VRAM_WRITE_I7LTO30_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => VRAM_WRITE_I7LTO30_0,
dataa => IDLE_CYCLES(26),
datab => IDLE_CYCLES(25));
\RCB_FSM_CLRXY_REG_X_11_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101000101010")
port map (
combout => X_11(1),
dataa => X_MIN(1),
datab => Y_0_SQMUXA_92,
datac => UN14_STATE_I_90,
datad => OUTPUT_VALUE(1));
\NSTATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011001110110011")
port map (
combout => \NSTATE_2_0_0__G2\,
dataa => NSTATE_89,
datab => UN1_VRAM_DELAY_2,
datac => VRAM_WRITE_I_0_A2_93);
\RCB_FSM_CLRXY_REG_Y_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100011011000110")
port map (
combout => Y_E1_0_G1,
dataa => Y(0),
datab => Y(1),
datac => X_2_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_RNO_0_3_\: cycloneii_lcell_comb generic map (
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
dataa => X_2(5),
datab => X_2(4),
datac => X(5),
datad => X(4));
RCB_FSM_UN17_VRAM_DELAY_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_VRAM_DELAY_NE_1,
dataa => X_2(3),
datab => X_2(2),
datac => X(3),
datad => X(2));
RCB_FSM_UN17_VRAM_DELAY_NE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_VRAM_DELAY_NE_2,
dataa => X_2(1),
datab => X_2(0),
datac => X(1),
datad => X(0));
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
RCB_FSM_UN20_VRAM_DELAY_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN20_VRAM_DELAY_NE_1,
dataa => Y_2(1),
datab => Y_2(0),
datac => Y(1),
datad => Y(0));
RCB_FSM_UN20_VRAM_DELAY_NE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN20_VRAM_DELAY_NE_2,
dataa => Y_2(5),
datab => Y_2(2),
datac => Y(5),
datad => Y(2));
\RCB_FSM_CLRXY_REG_X_RNO_3_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000011100000111")
port map (
combout => X_E2_0_G1_0_107_I_A6_0_0,
dataa => X(0),
datab => X(1),
datac => X(2));
RCB_FSM_CLRXY_REG_X_E1_0_G1_0_69_I_O4_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000111111111")
port map (
combout => X_E1_0_G1_0_69_I_O4_0,
dataa => db_fsm_state_0,
datab => db_fsm_state_1,
datac => db_fsm_state_2,
datad => cmd_2);
\RCB_FSM_CLRXY_REG_Y_10_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_10(1),
dataa => Y_0(1),
datab => Y_1_1,
datac => Y_0_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_RNIUPJH_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => Y_57_1,
dataa => Y(0),
datab => Y(1),
datac => Y(2),
datad => Y(3));
VRAM_VRAM_WRITE_I7LTO3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100000000000")
port map (
combout => VRAM_WRITE_I7LTO3,
dataa => IDLE_CYCLES(0),
datab => IDLE_CYCLES(1),
datac => IDLE_CYCLES(2),
datad => IDLE_CYCLES(3));
RCB_FSM_UN20_VRAM_DELAY_NE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => UN20_VRAM_DELAY_NE_3,
dataa => Y_2(4),
datab => Y(4),
datac => UN20_VRAM_DELAY_9,
datad => UN20_VRAM_DELAY_NE_1);
\NSTATE_RNIC8G22_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110100110001")
port map (
combout => X_E1_0_G1_0_69_I_M6,
dataa => cmd_2,
datab => NSTATE_89,
datac => startcmd_i_a5,
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_Y_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_E3_0_G1,
dataa => Y(3),
datab => Y_C2,
datac => X_2_SQMUXA);
\RCB_FSM_CLRXY_REG_X_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => X_E1_0_G1_0_69_I_A6_2,
dataa => NSTATE_89,
datab => UN17_VRAM_DELAY_NE_94,
datac => X_11(1),
datad => X_E1_0_G1_0_69_I_O4);
RCB_FSM_UN17_VRAM_DELAY_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => UN17_VRAM_DELAY_NE_94,
dataa => UN17_VRAM_DELAY_NE_0,
datab => UN17_VRAM_DELAY_NE_1,
datac => UN17_VRAM_DELAY_NE_2);
VRAM_VRAM_WRITE_I7LTO30_23: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_23,
dataa => IDLE_CYCLES(24),
datab => VRAM_WRITE_I7LTO30_0,
datac => VRAM_WRITE_I7LTO30_14,
datad => VRAM_WRITE_I7LTO30_15);
VRAM_VRAM_WRITE_I7LTO30_24: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => VRAM_WRITE_I7LTO30_24,
dataa => VRAM_WRITE_I7LTO30_18,
datab => VRAM_WRITE_I7LTO30_19,
datac => VRAM_WRITE_I7LTO30_16,
datad => VRAM_WRITE_I7LTO30_17);
RCB_FSM_UN20_VRAM_DELAY_NE_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => un20_vram_delay_NE_4,
dataa => UN20_VRAM_DELAY_NE_2,
datab => UN20_VRAM_DELAY_NE_3);
CLRXY_REG_Y_0_SQMUXA_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001100")
port map (
combout => Y_0_SQMUXA_92,
dataa => db_fsm_state_2,
datab => cmd_2,
datac => NSTATE_89,
datad => mux_out_i_a2);
\PIXOPIN_I_O2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011001011111111")
port map (
combout => PIXOPIN_I_O2(1),
dataa => cmd_2,
datab => NSTATE_89,
datac => startcmd_i_a5,
datad => DBB_DELAYCMD_0_1);
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
\RCB_FSM_CLRXY_REG_Y_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010011010100110")
port map (
combout => Y_E4_0_G1,
dataa => Y(4),
datab => Y_57_1,
datac => X_2_SQMUXA);
\RCB_FSM_CLRXY_REG_Y_RNILDR81_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100010001000")
port map (
combout => Y_E5_0_G2,
dataa => Y(4),
datab => Y_57_1,
datac => Y_0_SQMUXA_92,
datad => UN14_STATE_I_90);
\RCB_FSM_CLRXY_REG_X_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000010010000")
port map (
combout => X_E1_0_G1_0_69_I_1_A,
dataa => X(0),
datab => X(1),
datac => UN17_VRAM_DELAY_NE_94,
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000111110011")
port map (
combout => X_E1_0_G1_0_69_I_1,
dataa => NSTATE_89,
datab => Y_0_SQMUXA_92,
datac => X_11(1),
datad => X_E1_0_G1_0_69_I_1_A);
RCB_FSM_RCB_FINISH_I_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101010101010")
port map (
combout => RCB_FINISH_I_2_0_G0_I_0,
dataa => reset_c,
datab => NSTATE_89,
datac => X_E1_0_G1_0_69_I_O4_0,
datad => UN14_STATE_I_90);
\RCB_FSM_CLRXY_REG_X_11_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101000101010")
port map (
combout => X_11(2),
dataa => X_MIN(2),
datab => Y_0_SQMUXA_92,
datac => UN14_STATE_I_90,
datad => OUTPUT_VALUE(2));
\RCB_FSM_CLRXY_REG_X_11_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101000101010")
port map (
combout => X_11(4),
dataa => X_MIN(4),
datab => Y_0_SQMUXA_92,
datac => UN14_STATE_I_90,
datad => OUTPUT_VALUE(4));
\RCB_FSM_CLRXY_REG_X_11_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101000101010")
port map (
combout => X_11(3),
dataa => X_MIN(3),
datab => Y_0_SQMUXA_92,
datac => UN14_STATE_I_90,
datad => OUTPUT_VALUE(3));
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
combout => VRAM_WRITE_I7LTO31_95,
dataa => IDLE_CYCLES(31),
datab => VRAM_WRITE_I7LTO3,
datac => VRAM_WRITE_I7LTO30_23,
datad => VRAM_WRITE_I7LTO30_24);
\RCB_FSM_CLRXY_REG_X_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101100000000")
port map (
combout => X_E1_0_G1_0_69_I,
dataa => X(1),
datab => X_E1_0_G1_0_69_I_M6,
datac => X_E1_0_G1_0_69_I_A6_2,
datad => X_E1_0_G1_0_69_I_1);
\RCB_FSM_CLRXY_REG_X_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => X_E2_0_G1_0_107_I_A6_2,
dataa => NSTATE_89,
datab => UN17_VRAM_DELAY_NE_94,
datac => X_11(2),
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => X_E4_0_G1_0_183_I_A6_2,
dataa => NSTATE_89,
datab => UN17_VRAM_DELAY_NE_94,
datac => X_11(4),
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => X_E3_0_G1_0_145_I_A6_2,
dataa => NSTATE_89,
datab => UN17_VRAM_DELAY_NE_94,
datac => X_11(3),
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101111100010011")
port map (
combout => X_E2_0_G1_0_107_I_0,
dataa => X_E2_0_G1_0_107_I_A6_0_0,
datab => Y_0_SQMUXA_92,
datac => G_270,
datad => X_11(2));
\RCB_FSM_CLRXY_REG_X_RNO_2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110001")
port map (
combout => X_E3_0_G1_0_145_I_1_A,
dataa => X(3),
datab => X_C2,
datac => X_45_1,
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000111110101")
port map (
combout => X_E3_0_G1_0_145_I_1,
dataa => Y_0_SQMUXA_92,
datab => G_270,
datac => X_11(3),
datad => X_E3_0_G1_0_145_I_1_A);
\RCB_FSM_CLRXY_REG_X_RNO_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001110000")
port map (
combout => X_E2_0_G1_0_107_I_1,
dataa => X_C2,
datab => G_270,
datac => X_E2_0_G1_0_107_I_0,
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_2_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001001110010011")
port map (
combout => X_E4_0_G1_0_183_I_1_A,
dataa => X(3),
datab => X(4),
datac => X_C2,
datad => X_E1_0_G1_0_69_I_O4);
\RCB_FSM_CLRXY_REG_X_RNO_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000111110101")
port map (
combout => X_E4_0_G1_0_183_I_1,
dataa => Y_0_SQMUXA_92,
datab => G_270,
datac => X_11(4),
datad => X_E4_0_G1_0_183_I_1_A);
\RCB_FSM_CLRXY_REG_X_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101100000000")
port map (
combout => X_E2_0_G1_0_107_I,
dataa => X(2),
datab => X_E1_0_G1_0_69_I_M6,
datac => X_E2_0_G1_0_107_I_A6_2,
datad => X_E2_0_G1_0_107_I_1);
\RCB_FSM_CLRXY_REG_X_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101100000000")
port map (
combout => X_E4_0_G1_0_183_I,
dataa => X(4),
datab => X_E1_0_G1_0_69_I_M6,
datac => X_E4_0_G1_0_183_I_A6_2,
datad => X_E4_0_G1_0_183_I_1);
\RCB_FSM_CLRXY_REG_X_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101100000000")
port map (
combout => X_E3_0_G1_0_145_I,
dataa => X(3),
datab => X_E1_0_G1_0_69_I_M6,
datac => X_E3_0_G1_0_145_I_A6_2,
datad => X_E3_0_G1_0_145_I_1);
RCB_FSM_UN20_VRAM_DELAY_NE_2_RNI930G1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100000001")
port map (
combout => X_E1_0_G1_0_69_I_O4,
dataa => UN20_VRAM_DELAY_NE_2,
datab => UN20_VRAM_DELAY_NE_3,
datac => UN17_VRAM_DELAY_NE_94,
datad => VRAM_WRITE_I_0_O2);
\RCB_FSM_CLRXY_REG_Y_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001111000")
port map (
combout => Y_E2_0_G1,
dataa => Y(1),
datab => Y(0),
datac => Y(2),
datad => X_2_SQMUXA);
CLRXY_REG_Y_0_SQMUXA: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1000000010000000")
port map (
combout => Y_0_SQMUXA,
cout => Y_0_SQMUXA_COUT,
dataa => Y_0_SQMUXA_92,
datab => UN14_STATE_I_90,
cin => LT5_COUT_0);
\RCB_FSM_CLRXY_REG_Y_10_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100101011001010")
port map (
combout => Y_10(0),
dataa => Y_1_0,
datab => Y_0(0),
cin => Y_0_SQMUXA_COUT);
E1: pix_word_cache port map (
pre_rdout_par_15_1 => PRE_RDOUT_PAR_15(1),
pre_rdout_par_15_0 => PRE_RDOUT_PAR_15(0),
pre_rdout_par_14_1 => PRE_RDOUT_PAR_14(1),
pre_rdout_par_14_0 => PRE_RDOUT_PAR_14(0),
pre_rdout_par_13_1 => PRE_RDOUT_PAR_13(1),
pre_rdout_par_13_0 => PRE_RDOUT_PAR_13(0),
pre_rdout_par_12_1 => PRE_RDOUT_PAR_12(1),
pre_rdout_par_12_0 => PRE_RDOUT_PAR_12(0),
pre_rdout_par_11_1 => PRE_RDOUT_PAR_11(1),
pre_rdout_par_11_0 => PRE_RDOUT_PAR_11(0),
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
pre_rdout_par_0_0 => PRE_RDOUT_PAR_0(0),
pre_rdout_par_0_1 => PRE_RDOUT_PAR_0(1),
pre_rdout_par_1_0 => PRE_RDOUT_PAR_1(0),
pre_rdout_par_1_1 => PRE_RDOUT_PAR_1(1),
pre_rdout_par_2_0 => PRE_RDOUT_PAR_2(0),
pre_rdout_par_2_1 => PRE_RDOUT_PAR_2(1),
pre_rdout_par_3_0 => PRE_RDOUT_PAR_3(0),
pre_rdout_par_3_1 => PRE_RDOUT_PAR_3(1),
pre_rdout_par_3_en_0_a4_0 => PRE_RDOUT_PAR_3_EN_0_A4(0),
nstate_0 => NSTATE_89,
X_0_0 => X_1_0,
X_0 => X(0),
X_1 => X_3(1),
X_1_0 => X_3(0),
Y_0 => Y_3(0),
Y_1 => Y_3(1),
pixopin_i_o2_0 => PIXOPIN_I_O2(1),
cmd_1 => cmd_1,
cmd_0 => cmd_0,
clk_c => clk_c,
reset_c => reset_c,
dbb_delaycmd_0_1 => DBB_DELAYCMD_0_1,
\pre_rdout_par_2_1_0_0__g0_e_x\ => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X\,
G_266 => G_266,
is_same => IS_SAME_96);
E2: ram_fsm port map (
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
addr_delayed_7 => addr_delayed_7,
addr_delayed_6 => addr_delayed_6,
addr_delayed_5 => addr_delayed_5,
addr_delayed_4 => addr_delayed_4,
addr_delayed_3 => addr_delayed_3,
addr_delayed_2 => addr_delayed_2,
addr_delayed_1 => addr_delayed_1,
addr_delayed_0 => addr_delayed_0,
data_delayed_15 => data_delayed_15,
data_delayed_14 => data_delayed_14,
data_delayed_13 => data_delayed_13,
data_delayed_12 => data_delayed_12,
data_delayed_11 => data_delayed_11,
data_delayed_10 => data_delayed_10,
data_delayed_9 => data_delayed_9,
data_delayed_8 => data_delayed_8,
data_delayed_7 => data_delayed_7,
data_delayed_6 => data_delayed_6,
data_delayed_5 => data_delayed_5,
data_delayed_4 => data_delayed_4,
data_delayed_3 => data_delayed_3,
data_delayed_2 => data_delayed_2,
data_delayed_1 => data_delayed_1,
data_delayed_0 => data_delayed_0,
nstate_0_0 => NSTATE_89,
X_2_0 => X_3(0),
X_2_1 => X(1),
X_5 => X_0(5),
X_1 => X_0(1),
X_0 => X_0(0),
X_2 => X(2),
X_3 => X(3),
X_4 => X(4),
Y_0 => Y(2),
Y_1 => Y(3),
Y_3 => Y(5),
Y_2 => Y(4),
yout_0 => yout_0,
yout_1 => yout_1,
yout_3 => yout_3,
yout_2 => yout_2,
xout_1 => xout_1,
xout_2 => xout_2,
xout_0 => xout_0,
pre_rdout_par_3_en_0_a4_0 => PRE_RDOUT_PAR_3_EN_0_A4(0),
db_fsm_state_0 => db_fsm_state_2,
Y_i_m2_0 => Y_I_M2(2),
Y_i_m2_1 => Y_I_M2(3),
Y_i_m2_3 => Y_I_M2(5),
Y_i_m2_2 => Y_I_M2(4),
yin_0 => yin_0,
yin_1 => yin_1,
yin_3 => yin_3,
yin_2 => yin_2,
X_i_m2_3 => X_I_M2_88,
X_i_m2_1 => X_I_M2(3),
X_i_m2_2 => X_I_M2(4),
X_i_m2_0 => X_I_M2(2),
xin_1 => xin_1,
xin_2 => xin_2,
xin_0 => xin_0,
x_min_0 => X_MIN(0),
x_min_5 => X_MIN(5),
word_reg_delayed_4 => WORD_REG_DELAYED(4),
word_reg_delayed_7 => WORD_REG_DELAYED(7),
word_reg_delayed_0 => WORD_REG_DELAYED(0),
word_reg_delayed_5 => WORD_REG_DELAYED(5),
word_reg_delayed_1 => WORD_REG_DELAYED(1),
word_reg_delayed_6 => WORD_REG_DELAYED(6),
word_reg_delayed_2 => WORD_REG_DELAYED(2),
word_reg_delayed_3 => WORD_REG_DELAYED_87,
vdout_c_12 => vdout_c_12,
vdout_c_13 => vdout_c_13,
vdout_c_14 => vdout_c_14,
vdout_c_15 => vdout_c_15,
vdout_c_4 => vdout_c_4,
vdout_c_5 => vdout_c_5,
vdout_c_6 => vdout_c_6,
vdout_c_7 => vdout_c_7,
vdout_c_8 => vdout_c_8,
vdout_c_9 => vdout_c_9,
vdout_c_10 => vdout_c_10,
vdout_c_11 => vdout_c_11,
vdout_c_0 => vdout_c_0,
vdout_c_1 => vdout_c_1,
vdout_c_2 => vdout_c_2,
vdout_c_3 => vdout_c_3,
output_value_5 => OUTPUT_VALUE(5),
output_value_1 => OUTPUT_VALUE(1),
output_value_0 => OUTPUT_VALUE(0),
output_value_3 => OUTPUT_VALUE(3),
output_value_4 => OUTPUT_VALUE(4),
output_value_2 => OUTPUT_VALUE(2),
X_0_5 => X_1_5,
X_0_1 => X_1_1,
X_0_0 => X_1_0,
X_0_3 => X_0(3),
X_0_4 => X_0(4),
X_0_2 => X_1_2,
X_1_0 => X(0),
X_1_5 => X(5),
X_1_1 => X_3(1),
X_1_3 => X_1_3,
X_1_4 => X_1_4,
X_1_2 => X_0(2),
clk_c => clk_c,
vram_write_i_0_o2 => VRAM_WRITE_I_0_O2,
un14_state_i => UN14_STATE_I_90,
lt5 => LT5,
un17_vram_delay_NE => UN17_VRAM_DELAY_NE_94,
G_270 => G_270,
un1_vram_delay_2 => UN1_VRAM_DELAY_2,
Y_0_sqmuxa_0 => Y_0_SQMUXA_92,
state_s0_i_0 => state_s0_i_0,
X_n0_0_41_m2 => X_N0_0_41_M2,
X_c2 => X_C2,
X_45_1 => X_45_1,
rcb_finish_i_0_i_a2 => RCB_FINISH_I_0_I_A2,
rcb_finish_i => RCB_FINISH_I_91,
db_fsm_nstate_0_sqmuxa_0_a5_x => db_fsm_nstate_0_sqmuxa_0_a5_x,
dbb_delaycmd_0_1 => DBB_DELAYCMD_0_1,
reset_c => reset_c,
G_266 => G_266,
\pre_rdout_par_2_1_0_0__g0_e_x\ => \PRE_RDOUT_PAR_2_1_0_0__G0_E_X\,
un1_rcb_state22_i_0_i => UN1_RCB_STATE22_I_0_I,
mux_out_i_a2 => mux_out_i_a2,
un1_vram_delay_5_i => UN1_VRAM_DELAY_5_I,
X_e1_0_g1_0_69_i_o4_0 => X_E1_0_G1_0_69_I_O4_0,
X_e1_0_g1_0_69_i_o4 => X_E1_0_G1_0_69_I_O4,
X_2_sqmuxa => X_2_SQMUXA,
X_e1_0_g1_0_69_i_m6 => X_E1_0_G1_0_69_I_M6,
vram_write_i_0_o2_0_4_0 => vram_write_i_0_o2_0_4_0,
X_n5_0_222_m2 => X_N5_0_222_M2,
vram_write_i_0_o2_0_6 => vram_write_i_0_o2_0_6,
vram_write_i7lto31 => VRAM_WRITE_I7LTO31_95,
\cmd_1_0_2__g5_0\ => \cmd_1_0_2__g5_0\,
vram_write_i_0_a2_0 => VRAM_WRITE_I_0_A2_93,
is_same => IS_SAME_96,
idle_cycleslde_i_a2_x_i => IDLE_CYCLESLDE_I_A2_X_I,
lt5_cout => LT5_COUT);
VCC <= '1';
GND <= '0';
LT5_I_0_I <= not LT5_I_0;
UN1_VRAM_DELAY_2_I <= not UN1_VRAM_DELAY_2;
LT5_I_I <= not LT5_I;
UN1_RCB_STATE22_I_0_I_I <= not UN1_RCB_STATE22_I_0_I;
word_reg_delayed_3 <= WORD_REG_DELAYED_87;
X_i_m2_3 <= X_I_M2_88;
nstate_0 <= NSTATE_89;
un14_state_i <= UN14_STATE_I_90;
rcb_finish_i <= RCB_FINISH_I_91;
Y_0_sqmuxa_0 <= Y_0_SQMUXA_92;
vram_write_i_0_a2_0 <= VRAM_WRITE_I_0_A2_93;
un17_vram_delay_NE <= UN17_VRAM_DELAY_NE_94;
vram_write_i7lto31 <= VRAM_WRITE_I7LTO31_95;
is_same <= IS_SAME_96;
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
yin_5 :  out std_logic;
yin_3 :  out std_logic;
yin_2 :  out std_logic;
yin_4 :  out std_logic;
xin_3 :  out std_logic;
xin_2 :  out std_logic;
xin_4 :  out std_logic;
Y_5 :  out std_logic;
Y_3 :  out std_logic;
Y_0 :  out std_logic;
Y_1 :  out std_logic;
Y_2 :  out std_logic;
Y_4 :  out std_logic;
yout_5 :  out std_logic;
yout_3 :  out std_logic;
yout_2 :  out std_logic;
yout_4 :  out std_logic;
X_5 :  out std_logic;
X_3 :  out std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  out std_logic;
X_4 :  out std_logic;
xout_3 :  out std_logic;
xout_2 :  out std_logic;
xout_4 :  out std_logic;
nstate_0 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  out std_logic;
startcmd_i_a5 :  out std_logic;
dav_c :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
\cmd_1_0_2__g5_0\ :  out std_logic;
un17_vram_delay_NE :  in std_logic;
Y_0_sqmuxa_0 :  in std_logic;
un20_vram_delay_NE_4 :  in std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  out std_logic;
un14_state_i :  in std_logic;
vram_write_i7lto31 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
finish_x :  out std_logic;
rcb_finish_i :  in std_logic);
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
signal XIN : std_logic_vector(5 downto 0);
signal YIN : std_logic_vector(1 downto 0);
signal DB_FSM_STATE_SRSTS_0_A2_X : std_logic_vector(6 to 6);
signal XOUT : std_logic_vector(5 downto 0);
signal YOUT : std_logic_vector(1 downto 0);
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
signal \CMD_1_0_0__G0_I_O4_0\ : std_logic ;
signal INF_ABS0_A_0_ANC2 : std_logic ;
signal INF_ABS1_A_1_ANC2 : std_logic ;
signal \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\ : std_logic ;
signal INF_ABS0_A_0_ANC3 : std_logic ;
signal INF_ABS1_A_1_ANC3 : std_logic ;
signal N_172_I_0_G0_0_X : std_logic ;
signal UN5_X1 : std_logic ;
signal N_179_I_0_G0_2 : std_logic ;
signal N_179_I_0_G0_2_A_X : std_logic ;
signal N_179_I_0_G0_3 : std_logic ;
signal \CMD_1_0_2__G0_A\ : std_logic ;
signal \CMD_1_0_2__G5_34\ : std_logic ;
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
signal DB_FSM_STATE_I_15 : std_logic ;
signal CMD_16 : std_logic ;
signal DB_FSM_STATE_17 : std_logic ;
signal DB_FSM_STATE_18 : std_logic ;
signal DB_FSM_STATE_19 : std_logic ;
signal YIN_20 : std_logic ;
signal YIN_21 : std_logic ;
signal YIN_22 : std_logic ;
signal YIN_23 : std_logic ;
signal XIN_24 : std_logic ;
signal XIN_25 : std_logic ;
signal XIN_26 : std_logic ;
signal YOUT_27 : std_logic ;
signal YOUT_28 : std_logic ;
signal YOUT_29 : std_logic ;
signal YOUT_30 : std_logic ;
signal XOUT_31 : std_logic ;
signal XOUT_32 : std_logic ;
signal XOUT_33 : std_logic ;
signal DB_FSM_STATE_I_0_I : std_logic ;
component draw_any_octant
port(
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
xin_5 :  in std_logic;
xin_3 :  in std_logic;
xin_0 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_4 :  in std_logic;
yin_5 :  in std_logic;
yin_3 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_2 :  in std_logic;
yin_4 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
db_fsm_state_i_0 :  in std_logic;
yout_5 :  out std_logic;
yout_3 :  out std_logic;
yout_0 :  out std_logic;
yout_1 :  out std_logic;
yout_2 :  out std_logic;
yout_4 :  out std_logic;
xout_5 :  out std_logic;
xout_3 :  out std_logic;
xout_0 :  out std_logic;
xout_1 :  out std_logic;
xout_2 :  out std_logic;
xout_4 :  out std_logic;
negx1 :  in std_logic;
clk_c :  in std_logic;
negy1 :  in std_logic;
swapxy1 :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
un5_x1 :  out std_logic;
xbias1 :  in std_logic;
un14_state_i :  in std_logic;
vram_write_i7lto31 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic;
finish_x :  out std_logic;
dav_c :  in std_logic;
rcb_finish_i :  in std_logic  );
end component;
begin
\DB_FSM_STATE_1_\: cycloneii_lcell_ff port map (
regout => DB_FSM_STATE_17,
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
regout => DB_FSM_STATE_18,
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
regout => DB_FSM_STATE_I_15,
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
regout => CMD_16,
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
regout => DB_FSM_STATE_19,
datain => DB_FSM_STATE_17,
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
\DB_FSM_STATE_SRSTS_I_A2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => DB_FSM_STATE_SRSTS_I_A2(2),
dataa => DB_FSM_STATE(3),
datab => DB_FSM_STATE_18);
MUX_OUT_I_A2_Z301: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => mux_out_i_a2,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_19);
\DB_FSM_STATE_RNINULD_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \CMD_1_0_0__G0_I_O4_0\,
dataa => DB_FSM_STATE(6),
datab => DB_FSM_STATE_17);
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
INF_ABS0_A_0_ANC2_Z305: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000001")
port map (
combout => INF_ABS0_A_0_ANC2,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2);
INF_ABS1_A_1_ANC2_Z306: cycloneii_lcell_comb generic map (
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
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => DB_FSM_STATE_18);
\DB_FSM_STATE_I_RNIS6S21_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000100000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
dataa => hdb_c_15,
datab => hdb_c_14,
datac => dav_c,
datad => DB_FSM_STATE_I_15);
\DB_FSM_STATE_RNIHSGK_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => \XY_OLD_REG_1_0_0__G2\,
dataa => DB_FSM_STATE_18,
datab => DB_FSM_STATE(7),
datac => DB_FSM_STATE_19);
\DB_FSM_STATE_RNIETBR_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => NEGX1_0_0_G0_I_O4_I,
dataa => DB_FSM_STATE(4),
datab => DB_FSM_STATE(5),
datac => DB_FSM_STATE_18,
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
INF_ABS0_A_0_ANC3_Z313: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS0_A_0_ANC3,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD3);
INF_ABS1_A_1_ANC3_Z314: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS1_A_1_ANC3,
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_ADD1,
datac => RESULT_1_1_ADD2,
datad => RESULT_1_1_ADD3);
UN1_DB_FSM_NSTATE_1_I_O5_Z315: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110110011101100")
port map (
combout => UN1_DB_FSM_NSTATE_1_I_O5,
dataa => DB_FSM_STATE_17,
datab => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datac => vram_write_i_0_a2_0);
\XIN_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(5),
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(11),
datac => HDB_REG(13),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN_20,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(5),
datac => HDB_REG(7),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN_21,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(3),
datac => HDB_REG(5),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN_24,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(9),
datac => HDB_REG(11),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(0),
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(0),
datac => HDB_REG(2),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN(1),
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(1),
datac => HDB_REG(3),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN_22,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(2),
datac => HDB_REG(4),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\YIN_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => YIN_23,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(4),
datac => HDB_REG(6),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(0),
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(6),
datac => HDB_REG(8),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN(1),
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(7),
datac => HDB_REG(9),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN_25,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(8),
datac => HDB_REG(10),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\XIN_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110010011110000")
port map (
combout => XIN_26,
dataa => DB_FSM_STATE_19,
datab => XY_OLD_REG(10),
datac => HDB_REG(12),
datad => DB_FSM_STATE_SRSTS_I_A2(2));
\DB_FSM_STATE_RNO_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000000000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_6__G0\,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => reset_c,
datad => DB_FSM_STATE_SRSTS_0_A2_X(6));
\DB_FSM_STATE_RNO_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => \DB_FSM_STATE_SRSTS_0_A5_0_7__G0\,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => reset_c,
datad => DB_FSM_STATE_SRSTS_0_A2_X(6));
\DB_FSM_STATE_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110010001100")
port map (
combout => N_172_I_0_G0,
dataa => DB_FSM_STATE(3),
datab => N_172_I_0_G0_0_X,
datac => UN5_X1,
datad => vram_write_i_0_a2_0);
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
\CMD_O_CMD_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \CMD_1_0_1__G4\,
dataa => HDB_REG(1),
datab => DB_FSM_STATE_17,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => vram_write_i_0_a2_0);
\CMD_O_CMD_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000001010")
port map (
combout => \CMD_1_0_0__G4\,
dataa => HDB_REG(0),
datab => DB_FSM_STATE_17,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datad => vram_write_i_0_a2_0);
\DBB_BUS_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_5,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT(5),
datad => XIN(5));
\DBB_BUS_Y_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_5,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT_27,
datad => YIN_20);
\DBB_BUS_Y_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_3,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT_28,
datad => YIN_21);
\DBB_BUS_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_3,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT_31,
datad => XIN_24);
\DBB_BUS_Y_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_0,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT(0),
datad => YIN(0));
\DBB_BUS_Y_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_1,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT(1),
datad => YIN(1));
\DBB_BUS_Y_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_2,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT_29,
datad => YIN_22);
\DBB_BUS_Y_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => Y_4,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => YOUT_30,
datad => YIN_23);
\DBB_BUS_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_0,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT(0),
datad => XIN(0));
\DBB_BUS_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_1,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT(1),
datad => XIN(1));
\DBB_BUS_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_2,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT_32,
datad => XIN_25);
\DBB_BUS_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111000010000")
port map (
combout => X_4,
dataa => DB_FSM_STATE_19,
datab => DB_FSM_STATE_17,
datac => XOUT_33,
datad => XIN_26);
\DB_FSM_STATE_RNIBQ704_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111100")
port map (
combout => \CMD_1_0_0__G0_I_O4\,
dataa => DB_FSM_STATE_19,
datab => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\,
datac => \CMD_1_0_0__G0_I_O4_0\,
datad => vram_write_i_0_a2_0);
\DB_FSM_STATE_I_RNO_1_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001010100")
port map (
combout => N_179_I_0_G0_2,
dataa => reset_c,
datab => N_179_I_0_G0_2_A_X,
datac => DB_FSM_STATE_I_15,
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
\DB_FSM_STATE_I_RNO_0_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010011000100")
port map (
combout => N_179_I_0_G0_3,
dataa => DB_FSM_STATE_19,
datab => N_179_I_0_G0_2,
datac => vram_write_i_0_a2_0);
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
\CMD_O_CMD_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => \CMD_1_0_2__G0_A\,
dataa => DB_FSM_STATE(6),
datab => CMD_16,
datac => \DB_FSM_STATE_SRSTS_0_A5_0_1__G3\);
\CMD_O_CMD_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110011111010")
port map (
combout => \CMD_1_0_2__G0\,
dataa => DB_FSM_STATE_17,
datab => DB_FSM_STATE_19,
datac => \CMD_1_0_2__G0_A\,
datad => vram_write_i_0_a2_0);
\DB_FSM_STATE_I_RNO_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011100000000")
port map (
combout => N_179_I_0_G0,
dataa => DB_FSM_STATE_18,
datab => UN5_X1,
datac => vram_write_i_0_a2_0,
datad => N_179_I_0_G0_3);
\CMD_O_CMD_1_0_2__G5_0\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101011111000")
port map (
combout => \CMD_1_0_2__G5_34\,
dataa => nstate_0,
datab => un17_vram_delay_NE,
datac => Y_0_sqmuxa_0,
datad => un20_vram_delay_NE_4);
\DB_FSM_STATE_I_RNO_2_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111000001110000")
port map (
combout => N_179_I_0_G0_2_A_X,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => dav_c);
\DB_FSM_STATE_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010001010100")
port map (
combout => N_172_I_0_G0_0_X,
dataa => reset_c,
datab => DB_FSM_STATE_18,
datac => DB_FSM_STATE(3));
\DB_FSM_STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011101110111011")
port map (
combout => N_169_I_0_G0_0_X,
dataa => reset_c,
datab => vram_write_i_0_a2_0);
\DB_FSM_STATE_SRSTS_0_A2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => DB_FSM_STATE_SRSTS_0_A2_X(6),
dataa => dav_c,
datab => DB_FSM_STATE_I_15);
DB_FSM_NSTATE_0_SQMUXA_0_A5_X_Z364: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => db_fsm_nstate_0_sqmuxa_0_a5_x,
dataa => dav_c,
datab => DB_FSM_STATE_I_15);
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
db_fsm_state_0 => DB_FSM_STATE_18,
db_fsm_state_1 => DB_FSM_STATE(3),
db_fsm_state_2 => DB_FSM_STATE(4),
xin_5 => XIN(5),
xin_3 => XIN_24,
xin_0 => XIN(0),
xin_1 => XIN(1),
xin_2 => XIN_25,
xin_4 => XIN_26,
yin_5 => YIN_20,
yin_3 => YIN_21,
yin_0 => YIN(0),
yin_1 => YIN(1),
yin_2 => YIN_22,
yin_4 => YIN_23,
word_reg_delayed_0 => word_reg_delayed_0,
X_i_m2_0 => X_i_m2_0,
db_fsm_state_i_0 => DB_FSM_STATE_I_15,
yout_5 => YOUT_27,
yout_3 => YOUT_28,
yout_0 => YOUT(0),
yout_1 => YOUT(1),
yout_2 => YOUT_29,
yout_4 => YOUT_30,
xout_5 => XOUT(5),
xout_3 => XOUT_31,
xout_0 => XOUT(0),
xout_1 => XOUT(1),
xout_2 => XOUT_32,
xout_4 => XOUT_33,
negx1 => NEGX1,
clk_c => clk_c,
negy1 => NEGY1,
swapxy1 => SWAPXY1,
vram_write_i_0_a2_0 => vram_write_i_0_a2_0,
un5_x1 => UN5_X1,
xbias1 => XBIAS1,
un14_state_i => un14_state_i,
vram_write_i7lto31 => vram_write_i7lto31,
is_same => is_same,
vram_write_i_0_o2_0_4_0 => vram_write_i_0_o2_0_4_0,
vram_write_i_0_o2_0_6 => vram_write_i_0_o2_0_6,
\cmd_1_0_2__g5_0\ => \CMD_1_0_2__G5_34\,
finish_x => finish_x,
dav_c => dav_c,
rcb_finish_i => rcb_finish_i);
VCC <= '1';
GND <= '0';
DB_FSM_STATE_I_0_I <= not DB_FSM_STATE_I_15;
db_fsm_state_i_0 <= DB_FSM_STATE_I_15;
cmd_2 <= CMD_16;
db_fsm_state_1 <= DB_FSM_STATE_17;
db_fsm_state_2 <= DB_FSM_STATE_18;
db_fsm_state_0 <= DB_FSM_STATE_19;
yin_5 <= YIN_20;
yin_3 <= YIN_21;
yin_2 <= YIN_22;
yin_4 <= YIN_23;
xin_3 <= XIN_24;
xin_2 <= XIN_25;
xin_4 <= XIN_26;
yout_5 <= YOUT_27;
yout_3 <= YOUT_28;
yout_2 <= YOUT_29;
yout_4 <= YOUT_30;
xout_3 <= XOUT_31;
xout_2 <= XOUT_32;
xout_4 <= XOUT_33;
\cmd_1_0_2__g5_0\ <= \CMD_1_0_2__G5_34\;
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
signal \DB1.DBB_BUS.Y\ : std_logic_vector(5 downto 0);
signal \DB1.CMD_O.CMD\ : std_logic_vector(2 downto 0);
signal \RCB1.NSTATE\ : std_logic_vector(0 to 0);
signal \RCB1.RCB_FSM.WORD_REG_DELAYED\ : std_logic_vector(3 to 3);
signal \RCB1.E2.SPLITXY.X_I_M2\ : std_logic_vector(5 to 5);
signal \DB1.DB_FSM_STATE\ : std_logic_vector(2 downto 0);
signal \DB1.DB_FSM_STATE_I\ : std_logic_vector(8 to 8);
signal \RCB1.E2.P2.DATA_DELAYED\ : std_logic_vector(15 downto 0);
signal \RCB1.E2.P2.ADDR_DELAYED\ : std_logic_vector(7 downto 0);
signal HDB_C : std_logic_vector(15 downto 0);
signal VDOUT_C : std_logic_vector(15 downto 0);
signal \DB1.YIN\ : std_logic_vector(5 downto 2);
signal \DB1.DAB.SWAP2.YOUT\ : std_logic_vector(5 downto 2);
signal \DB1.XIN\ : std_logic_vector(4 downto 2);
signal \DB1.DAB.SWAP2.XOUT\ : std_logic_vector(4 downto 2);
signal VDINZ : std_logic_vector(15 downto 0);
signal VADDRZ : std_logic_vector(7 downto 0);
signal \RCB1.RCB_FSM.RCB_FINISH_I\ : std_logic ;
signal VCC : std_logic ;
signal GND : std_logic ;
signal \RCB1.E2.STATE_S0_I_0\ : std_logic ;
signal \DB1.DAB.DRAW1.FINISH_X\ : std_logic ;
signal CLK_C : std_logic ;
signal RESET_C : std_logic ;
signal DAV_C : std_logic ;
signal \DB1.DBB_BUS.STARTCMD_I_A5\ : std_logic ;
signal \DB1.MUX_OUT_I_A2\ : std_logic ;
signal \DB1.DB_FSM_NSTATE_0_SQMUXA_0_A5_X\ : std_logic ;
signal \RCB1.E1.IS_SAME\ : std_logic ;
signal \RCB1.E2.VRAM_WRITE_I_0_O2_0_6\ : std_logic ;
signal \DB1.CMD_O.CMD_1_0_2__G5_0\ : std_logic ;
signal \RCB1.RCB_FSM.UN20_VRAM_DELAY_NE_4\ : std_logic ;
signal \RCB1.E2.VRAM_WRITE_I_0_O2_0_4_0\ : std_logic ;
signal \RCB1.CLRXY_REG.Y_0_SQMUXA_0\ : std_logic ;
signal \RCB1.VRAM.VRAM_WRITE_I7LTO31\ : std_logic ;
signal \RCB1.E2.VRAM_WRITE_I_0_A2_0\ : std_logic ;
signal \RCB1.RCB_FSM.UN17_VRAM_DELAY_NE\ : std_logic ;
signal \RCB1.E2.C1.UN14_STATE_I\ : std_logic ;
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
signal N_97 : std_logic ;
signal N_98 : std_logic ;
signal N_99 : std_logic ;
signal N_100 : std_logic ;
signal N_101 : std_logic ;
signal N_102 : std_logic ;
signal N_103 : std_logic ;
signal N_104 : std_logic ;
signal N_105 : std_logic ;
signal N_106 : std_logic ;
signal N_107 : std_logic ;
signal N_108 : std_logic ;
signal N_109 : std_logic ;
signal N_110 : std_logic ;
signal N_111 : std_logic ;
signal N_112 : std_logic ;
signal N_113 : std_logic ;
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
signal N_114 : std_logic ;
signal N_115 : std_logic ;
signal N_116 : std_logic ;
signal N_117 : std_logic ;
signal N_118 : std_logic ;
signal N_119 : std_logic ;
signal N_120 : std_logic ;
signal N_121 : std_logic ;
signal N_122 : std_logic ;
signal N_123 : std_logic ;
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
yin_5 :  out std_logic;
yin_3 :  out std_logic;
yin_2 :  out std_logic;
yin_4 :  out std_logic;
xin_3 :  out std_logic;
xin_2 :  out std_logic;
xin_4 :  out std_logic;
Y_5 :  out std_logic;
Y_3 :  out std_logic;
Y_0 :  out std_logic;
Y_1 :  out std_logic;
Y_2 :  out std_logic;
Y_4 :  out std_logic;
yout_5 :  out std_logic;
yout_3 :  out std_logic;
yout_2 :  out std_logic;
yout_4 :  out std_logic;
X_5 :  out std_logic;
X_3 :  out std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  out std_logic;
X_4 :  out std_logic;
xout_3 :  out std_logic;
xout_2 :  out std_logic;
xout_4 :  out std_logic;
nstate_0 :  in std_logic;
word_reg_delayed_0 :  in std_logic;
X_i_m2_0 :  in std_logic;
clk_c :  in std_logic;
reset_c :  in std_logic;
mux_out_i_a2 :  out std_logic;
startcmd_i_a5 :  out std_logic;
dav_c :  in std_logic;
vram_write_i_0_a2_0 :  in std_logic;
\cmd_1_0_2__g5_0\ :  out std_logic;
un17_vram_delay_NE :  in std_logic;
Y_0_sqmuxa_0 :  in std_logic;
un20_vram_delay_NE_4 :  in std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  out std_logic;
un14_state_i :  in std_logic;
vram_write_i7lto31 :  in std_logic;
is_same :  in std_logic;
vram_write_i_0_o2_0_4_0 :  in std_logic;
vram_write_i_0_o2_0_6 :  in std_logic;
finish_x :  out std_logic;
rcb_finish_i :  in std_logic  );
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
word_reg_delayed_3 :  out std_logic;
X_i_m2_3 :  out std_logic;
nstate_0 :  out std_logic;
db_fsm_state_0 :  in std_logic;
db_fsm_state_1 :  in std_logic;
db_fsm_state_2 :  in std_logic;
cmd_2 :  in std_logic;
cmd_1 :  in std_logic;
cmd_0 :  in std_logic;
addr_delayed_7 :  out std_logic;
addr_delayed_6 :  out std_logic;
addr_delayed_5 :  out std_logic;
addr_delayed_4 :  out std_logic;
addr_delayed_3 :  out std_logic;
addr_delayed_2 :  out std_logic;
addr_delayed_1 :  out std_logic;
addr_delayed_0 :  out std_logic;
data_delayed_15 :  out std_logic;
data_delayed_14 :  out std_logic;
data_delayed_13 :  out std_logic;
data_delayed_12 :  out std_logic;
data_delayed_11 :  out std_logic;
data_delayed_10 :  out std_logic;
data_delayed_9 :  out std_logic;
data_delayed_8 :  out std_logic;
data_delayed_7 :  out std_logic;
data_delayed_6 :  out std_logic;
data_delayed_5 :  out std_logic;
data_delayed_4 :  out std_logic;
data_delayed_3 :  out std_logic;
data_delayed_2 :  out std_logic;
data_delayed_1 :  out std_logic;
data_delayed_0 :  out std_logic;
yout_0 :  in std_logic;
yout_1 :  in std_logic;
yout_3 :  in std_logic;
yout_2 :  in std_logic;
xout_1 :  in std_logic;
xout_2 :  in std_logic;
xout_0 :  in std_logic;
yin_0 :  in std_logic;
yin_1 :  in std_logic;
yin_3 :  in std_logic;
yin_2 :  in std_logic;
xin_1 :  in std_logic;
xin_2 :  in std_logic;
xin_0 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
clk_c :  in std_logic;
un14_state_i :  out std_logic;
reset_c :  in std_logic;
rcb_finish_i :  out std_logic;
Y_0_sqmuxa_0 :  out std_logic;
vram_write_i_0_a2_0 :  out std_logic;
startcmd_i_a5 :  in std_logic;
un17_vram_delay_NE :  out std_logic;
un20_vram_delay_NE_4 :  out std_logic;
mux_out_i_a2 :  in std_logic;
vram_write_i7lto31 :  out std_logic;
is_same :  out std_logic;
state_s0_i_0 :  out std_logic;
db_fsm_nstate_0_sqmuxa_0_a5_x :  in std_logic;
vram_write_i_0_o2_0_4_0 :  out std_logic;
vram_write_i_0_o2_0_6 :  out std_logic;
\cmd_1_0_2__g5_0\ :  in std_logic  );
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
datain => \DB1.DAB.DRAW1.FINISH_X\,
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
datain => \RCB1.E2.STATE_S0_I_0\,
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(7),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(6),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(5),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(4),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(3),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(2),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(1),
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
datain => \RCB1.E2.P2.ADDR_DELAYED\(0),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(15),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(14),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(13),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(12),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(11),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(10),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(9),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(8),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(7),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(6),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(5),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(4),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(3),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(2),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(1),
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
datain => \RCB1.E2.P2.DATA_DELAYED\(0),
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
yin_5 => \DB1.YIN\(5),
yin_3 => \DB1.YIN\(3),
yin_2 => \DB1.YIN\(2),
yin_4 => \DB1.YIN\(4),
xin_3 => \DB1.XIN\(3),
xin_2 => \DB1.XIN\(2),
xin_4 => \DB1.XIN\(4),
Y_5 => \DB1.DBB_BUS.Y\(5),
Y_3 => \DB1.DBB_BUS.Y\(3),
Y_0 => \DB1.DBB_BUS.Y\(0),
Y_1 => \DB1.DBB_BUS.Y\(1),
Y_2 => \DB1.DBB_BUS.Y\(2),
Y_4 => \DB1.DBB_BUS.Y\(4),
yout_5 => \DB1.DAB.SWAP2.YOUT\(5),
yout_3 => \DB1.DAB.SWAP2.YOUT\(3),
yout_2 => \DB1.DAB.SWAP2.YOUT\(2),
yout_4 => \DB1.DAB.SWAP2.YOUT\(4),
X_5 => \DB1.DBB_BUS.X\(5),
X_3 => \DB1.DBB_BUS.X\(3),
X_0 => \DB1.DBB_BUS.X\(0),
X_1 => \DB1.DBB_BUS.X\(1),
X_2 => \DB1.DBB_BUS.X\(2),
X_4 => \DB1.DBB_BUS.X\(4),
xout_3 => \DB1.DAB.SWAP2.XOUT\(3),
xout_2 => \DB1.DAB.SWAP2.XOUT\(2),
xout_4 => \DB1.DAB.SWAP2.XOUT\(4),
nstate_0 => \RCB1.NSTATE\(0),
word_reg_delayed_0 => \RCB1.RCB_FSM.WORD_REG_DELAYED\(3),
X_i_m2_0 => \RCB1.E2.SPLITXY.X_I_M2\(5),
clk_c => CLK_C,
reset_c => RESET_C,
mux_out_i_a2 => \DB1.MUX_OUT_I_A2\,
startcmd_i_a5 => \DB1.DBB_BUS.STARTCMD_I_A5\,
dav_c => DAV_C,
vram_write_i_0_a2_0 => \RCB1.E2.VRAM_WRITE_I_0_A2_0\,
\cmd_1_0_2__g5_0\ => \DB1.CMD_O.CMD_1_0_2__G5_0\,
un17_vram_delay_NE => \RCB1.RCB_FSM.UN17_VRAM_DELAY_NE\,
Y_0_sqmuxa_0 => \RCB1.CLRXY_REG.Y_0_SQMUXA_0\,
un20_vram_delay_NE_4 => \RCB1.RCB_FSM.UN20_VRAM_DELAY_NE_4\,
db_fsm_nstate_0_sqmuxa_0_a5_x => \DB1.DB_FSM_NSTATE_0_SQMUXA_0_A5_X\,
un14_state_i => \RCB1.E2.C1.UN14_STATE_I\,
vram_write_i7lto31 => \RCB1.VRAM.VRAM_WRITE_I7LTO31\,
is_same => \RCB1.E1.IS_SAME\,
vram_write_i_0_o2_0_4_0 => \RCB1.E2.VRAM_WRITE_I_0_O2_0_4_0\,
vram_write_i_0_o2_0_6 => \RCB1.E2.VRAM_WRITE_I_0_O2_0_6\,
finish_x => \DB1.DAB.DRAW1.FINISH_X\,
rcb_finish_i => \RCB1.RCB_FSM.RCB_FINISH_I\);
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
word_reg_delayed_3 => \RCB1.RCB_FSM.WORD_REG_DELAYED\(3),
X_i_m2_3 => \RCB1.E2.SPLITXY.X_I_M2\(5),
nstate_0 => \RCB1.NSTATE\(0),
db_fsm_state_0 => \DB1.DB_FSM_STATE\(0),
db_fsm_state_1 => \DB1.DB_FSM_STATE\(1),
db_fsm_state_2 => \DB1.DB_FSM_STATE\(2),
cmd_2 => \DB1.CMD_O.CMD\(2),
cmd_1 => \DB1.CMD_O.CMD\(1),
cmd_0 => \DB1.CMD_O.CMD\(0),
addr_delayed_7 => \RCB1.E2.P2.ADDR_DELAYED\(7),
addr_delayed_6 => \RCB1.E2.P2.ADDR_DELAYED\(6),
addr_delayed_5 => \RCB1.E2.P2.ADDR_DELAYED\(5),
addr_delayed_4 => \RCB1.E2.P2.ADDR_DELAYED\(4),
addr_delayed_3 => \RCB1.E2.P2.ADDR_DELAYED\(3),
addr_delayed_2 => \RCB1.E2.P2.ADDR_DELAYED\(2),
addr_delayed_1 => \RCB1.E2.P2.ADDR_DELAYED\(1),
addr_delayed_0 => \RCB1.E2.P2.ADDR_DELAYED\(0),
data_delayed_15 => \RCB1.E2.P2.DATA_DELAYED\(15),
data_delayed_14 => \RCB1.E2.P2.DATA_DELAYED\(14),
data_delayed_13 => \RCB1.E2.P2.DATA_DELAYED\(13),
data_delayed_12 => \RCB1.E2.P2.DATA_DELAYED\(12),
data_delayed_11 => \RCB1.E2.P2.DATA_DELAYED\(11),
data_delayed_10 => \RCB1.E2.P2.DATA_DELAYED\(10),
data_delayed_9 => \RCB1.E2.P2.DATA_DELAYED\(9),
data_delayed_8 => \RCB1.E2.P2.DATA_DELAYED\(8),
data_delayed_7 => \RCB1.E2.P2.DATA_DELAYED\(7),
data_delayed_6 => \RCB1.E2.P2.DATA_DELAYED\(6),
data_delayed_5 => \RCB1.E2.P2.DATA_DELAYED\(5),
data_delayed_4 => \RCB1.E2.P2.DATA_DELAYED\(4),
data_delayed_3 => \RCB1.E2.P2.DATA_DELAYED\(3),
data_delayed_2 => \RCB1.E2.P2.DATA_DELAYED\(2),
data_delayed_1 => \RCB1.E2.P2.DATA_DELAYED\(1),
data_delayed_0 => \RCB1.E2.P2.DATA_DELAYED\(0),
yout_0 => \DB1.DAB.SWAP2.YOUT\(2),
yout_1 => \DB1.DAB.SWAP2.YOUT\(3),
yout_3 => \DB1.DAB.SWAP2.YOUT\(5),
yout_2 => \DB1.DAB.SWAP2.YOUT\(4),
xout_1 => \DB1.DAB.SWAP2.XOUT\(3),
xout_2 => \DB1.DAB.SWAP2.XOUT\(4),
xout_0 => \DB1.DAB.SWAP2.XOUT\(2),
yin_0 => \DB1.YIN\(2),
yin_1 => \DB1.YIN\(3),
yin_3 => \DB1.YIN\(5),
yin_2 => \DB1.YIN\(4),
xin_1 => \DB1.XIN\(3),
xin_2 => \DB1.XIN\(4),
xin_0 => \DB1.XIN\(2),
vdout_c_12 => VDOUT_C(12),
vdout_c_13 => VDOUT_C(13),
vdout_c_14 => VDOUT_C(14),
vdout_c_15 => VDOUT_C(15),
vdout_c_4 => VDOUT_C(4),
vdout_c_5 => VDOUT_C(5),
vdout_c_6 => VDOUT_C(6),
vdout_c_7 => VDOUT_C(7),
vdout_c_8 => VDOUT_C(8),
vdout_c_9 => VDOUT_C(9),
vdout_c_10 => VDOUT_C(10),
vdout_c_11 => VDOUT_C(11),
vdout_c_0 => VDOUT_C(0),
vdout_c_1 => VDOUT_C(1),
vdout_c_2 => VDOUT_C(2),
vdout_c_3 => VDOUT_C(3),
clk_c => CLK_C,
un14_state_i => \RCB1.E2.C1.UN14_STATE_I\,
reset_c => RESET_C,
rcb_finish_i => \RCB1.RCB_FSM.RCB_FINISH_I\,
Y_0_sqmuxa_0 => \RCB1.CLRXY_REG.Y_0_SQMUXA_0\,
vram_write_i_0_a2_0 => \RCB1.E2.VRAM_WRITE_I_0_A2_0\,
startcmd_i_a5 => \DB1.DBB_BUS.STARTCMD_I_A5\,
un17_vram_delay_NE => \RCB1.RCB_FSM.UN17_VRAM_DELAY_NE\,
un20_vram_delay_NE_4 => \RCB1.RCB_FSM.UN20_VRAM_DELAY_NE_4\,
mux_out_i_a2 => \DB1.MUX_OUT_I_A2\,
vram_write_i7lto31 => \RCB1.VRAM.VRAM_WRITE_I7LTO31\,
is_same => \RCB1.E1.IS_SAME\,
state_s0_i_0 => \RCB1.E2.STATE_S0_I_0\,
db_fsm_nstate_0_sqmuxa_0_a5_x => \DB1.DB_FSM_NSTATE_0_SQMUXA_0_A5_X\,
vram_write_i_0_o2_0_4_0 => \RCB1.E2.VRAM_WRITE_I_0_O2_0_4_0\,
vram_write_i_0_o2_0_6 => \RCB1.E2.VRAM_WRITE_I_0_O2_0_6\,
\cmd_1_0_2__g5_0\ => \DB1.CMD_O.CMD_1_0_2__G5_0\);
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
N_97 <= HDB_BUSYZ;
N_98 <= VDINZ(0);
N_99 <= VDINZ(1);
N_100 <= VDINZ(2);
N_101 <= VDINZ(3);
N_102 <= VDINZ(4);
N_103 <= VDINZ(5);
N_104 <= VDINZ(6);
N_105 <= VDINZ(7);
N_106 <= VDINZ(8);
N_107 <= VDINZ(9);
N_108 <= VDINZ(10);
N_109 <= VDINZ(11);
N_110 <= VDINZ(12);
N_111 <= VDINZ(13);
N_112 <= VDINZ(14);
N_113 <= VDINZ(15);
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
N_114 <= VADDRZ(0);
N_115 <= VADDRZ(1);
N_116 <= VADDRZ(2);
N_117 <= VADDRZ(3);
N_118 <= VADDRZ(4);
N_119 <= VADDRZ(5);
N_120 <= VADDRZ(6);
N_121 <= VADDRZ(7);
N_122 <= VWRITEZ;
N_123 <= FINISHZ;
hdb_busy <= N_97;
vdin(0) <= N_98;
vdin(1) <= N_99;
vdin(2) <= N_100;
vdin(3) <= N_101;
vdin(4) <= N_102;
vdin(5) <= N_103;
vdin(6) <= N_104;
vdin(7) <= N_105;
vdin(8) <= N_106;
vdin(9) <= N_107;
vdin(10) <= N_108;
vdin(11) <= N_109;
vdin(12) <= N_110;
vdin(13) <= N_111;
vdin(14) <= N_112;
vdin(15) <= N_113;
vaddr(0) <= N_114;
vaddr(1) <= N_115;
vaddr(2) <= N_116;
vaddr(3) <= N_117;
vaddr(4) <= N_118;
vaddr(5) <= N_119;
vaddr(6) <= N_120;
vaddr(7) <= N_121;
vwrite <= N_122;
finish <= N_123;
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

