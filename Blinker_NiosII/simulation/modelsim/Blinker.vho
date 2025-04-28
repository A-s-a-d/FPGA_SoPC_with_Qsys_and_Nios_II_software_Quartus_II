-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "02/12/2025 18:08:55"

-- 
-- Device: Altera 5CSEBA6U23I7 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TPfinal2 IS
    PORT (
	reset : IN std_logic;
	clock_50Mhz : IN std_logic;
	clock_27Mhz : IN std_logic;
	sel : IN std_logic_vector(1 DOWNTO 0);
	SEG_Centaine : BUFFER std_logic_vector(3 DOWNTO 0);
	SEG_Dizaine : BUFFER std_logic_vector(3 DOWNTO 0);
	SEG_Millier : BUFFER std_logic_vector(3 DOWNTO 0);
	SEG_Unite : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END TPfinal2;

-- Design Ports Information
-- SEG_Centaine[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Centaine[1]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Centaine[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Centaine[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Dizaine[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Dizaine[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Dizaine[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Dizaine[3]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Millier[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Millier[1]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Millier[2]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Millier[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Unite[0]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Unite[1]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Unite[2]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG_Unite[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_27Mhz	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50Mhz	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TPfinal2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock_50Mhz : std_logic;
SIGNAL ww_clock_27Mhz : std_logic;
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SEG_Centaine : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEG_Dizaine : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEG_Millier : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEG_Unite : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \clock_50Mhz~input_o\ : std_logic;
SIGNAL \clock_50Mhz~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst18|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~106\ : std_logic;
SIGNAL \b2v_inst18|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~110\ : std_logic;
SIGNAL \b2v_inst18|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~114\ : std_logic;
SIGNAL \b2v_inst18|Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~118\ : std_logic;
SIGNAL \b2v_inst18|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~122\ : std_logic;
SIGNAL \b2v_inst18|Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~126\ : std_logic;
SIGNAL \b2v_inst18|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~54\ : std_logic;
SIGNAL \b2v_inst18|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~58\ : std_logic;
SIGNAL \b2v_inst18|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~62\ : std_logic;
SIGNAL \b2v_inst18|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~34\ : std_logic;
SIGNAL \b2v_inst18|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~38\ : std_logic;
SIGNAL \b2v_inst18|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~86\ : std_logic;
SIGNAL \b2v_inst18|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~90\ : std_logic;
SIGNAL \b2v_inst18|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~94\ : std_logic;
SIGNAL \b2v_inst18|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~98\ : std_logic;
SIGNAL \b2v_inst18|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~42\ : std_logic;
SIGNAL \b2v_inst18|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~102\ : std_logic;
SIGNAL \b2v_inst18|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~46\ : std_logic;
SIGNAL \b2v_inst18|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~50\ : std_logic;
SIGNAL \b2v_inst18|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~14\ : std_logic;
SIGNAL \b2v_inst18|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~18\ : std_logic;
SIGNAL \b2v_inst18|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~66\ : std_logic;
SIGNAL \b2v_inst18|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~70\ : std_logic;
SIGNAL \b2v_inst18|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~74\ : std_logic;
SIGNAL \b2v_inst18|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~78\ : std_logic;
SIGNAL \b2v_inst18|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~22\ : std_logic;
SIGNAL \b2v_inst18|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~82\ : std_logic;
SIGNAL \b2v_inst18|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~26\ : std_logic;
SIGNAL \b2v_inst18|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~30\ : std_logic;
SIGNAL \b2v_inst18|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst18|Add0~2\ : std_logic;
SIGNAL \b2v_inst18|Add0~6\ : std_logic;
SIGNAL \b2v_inst18|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst18|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst18|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst18|temp~0_combout\ : std_logic;
SIGNAL \b2v_inst18|temp~q\ : std_logic;
SIGNAL \b2v_inst19|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~106\ : std_logic;
SIGNAL \b2v_inst19|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~110\ : std_logic;
SIGNAL \b2v_inst19|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~114\ : std_logic;
SIGNAL \b2v_inst19|Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~118\ : std_logic;
SIGNAL \b2v_inst19|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~122\ : std_logic;
SIGNAL \b2v_inst19|Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~126\ : std_logic;
SIGNAL \b2v_inst19|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~54\ : std_logic;
SIGNAL \b2v_inst19|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~58\ : std_logic;
SIGNAL \b2v_inst19|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~62\ : std_logic;
SIGNAL \b2v_inst19|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~34\ : std_logic;
SIGNAL \b2v_inst19|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~38\ : std_logic;
SIGNAL \b2v_inst19|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~86\ : std_logic;
SIGNAL \b2v_inst19|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~90\ : std_logic;
SIGNAL \b2v_inst19|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~94\ : std_logic;
SIGNAL \b2v_inst19|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~98\ : std_logic;
SIGNAL \b2v_inst19|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~42\ : std_logic;
SIGNAL \b2v_inst19|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~102\ : std_logic;
SIGNAL \b2v_inst19|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~46\ : std_logic;
SIGNAL \b2v_inst19|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~50\ : std_logic;
SIGNAL \b2v_inst19|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~14\ : std_logic;
SIGNAL \b2v_inst19|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~18\ : std_logic;
SIGNAL \b2v_inst19|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~66\ : std_logic;
SIGNAL \b2v_inst19|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~70\ : std_logic;
SIGNAL \b2v_inst19|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~74\ : std_logic;
SIGNAL \b2v_inst19|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~78\ : std_logic;
SIGNAL \b2v_inst19|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~22\ : std_logic;
SIGNAL \b2v_inst19|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~82\ : std_logic;
SIGNAL \b2v_inst19|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~26\ : std_logic;
SIGNAL \b2v_inst19|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~30\ : std_logic;
SIGNAL \b2v_inst19|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst19|Add0~2\ : std_logic;
SIGNAL \b2v_inst19|Add0~6\ : std_logic;
SIGNAL \b2v_inst19|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst19|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst19|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst19|temp~0_combout\ : std_logic;
SIGNAL \b2v_inst19|temp~q\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \b2v_inst17|Add0~106\ : std_logic;
SIGNAL \b2v_inst17|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~110\ : std_logic;
SIGNAL \b2v_inst17|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~114\ : std_logic;
SIGNAL \b2v_inst17|Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~118\ : std_logic;
SIGNAL \b2v_inst17|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~122\ : std_logic;
SIGNAL \b2v_inst17|Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~126\ : std_logic;
SIGNAL \b2v_inst17|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~54\ : std_logic;
SIGNAL \b2v_inst17|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~58\ : std_logic;
SIGNAL \b2v_inst17|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~62\ : std_logic;
SIGNAL \b2v_inst17|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~34\ : std_logic;
SIGNAL \b2v_inst17|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~38\ : std_logic;
SIGNAL \b2v_inst17|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~86\ : std_logic;
SIGNAL \b2v_inst17|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~90\ : std_logic;
SIGNAL \b2v_inst17|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~94\ : std_logic;
SIGNAL \b2v_inst17|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~98\ : std_logic;
SIGNAL \b2v_inst17|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~42\ : std_logic;
SIGNAL \b2v_inst17|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~102\ : std_logic;
SIGNAL \b2v_inst17|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~46\ : std_logic;
SIGNAL \b2v_inst17|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~50\ : std_logic;
SIGNAL \b2v_inst17|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~14\ : std_logic;
SIGNAL \b2v_inst17|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~18\ : std_logic;
SIGNAL \b2v_inst17|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~66\ : std_logic;
SIGNAL \b2v_inst17|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~70\ : std_logic;
SIGNAL \b2v_inst17|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~74\ : std_logic;
SIGNAL \b2v_inst17|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~78\ : std_logic;
SIGNAL \b2v_inst17|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~22\ : std_logic;
SIGNAL \b2v_inst17|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~82\ : std_logic;
SIGNAL \b2v_inst17|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~26\ : std_logic;
SIGNAL \b2v_inst17|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~30\ : std_logic;
SIGNAL \b2v_inst17|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~2\ : std_logic;
SIGNAL \b2v_inst17|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst17|Add0~6\ : std_logic;
SIGNAL \b2v_inst17|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst17|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst17|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst17|temp~0_combout\ : std_logic;
SIGNAL \b2v_inst17|temp~q\ : std_logic;
SIGNAL \b2v_inst22|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~106\ : std_logic;
SIGNAL \b2v_inst22|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~110\ : std_logic;
SIGNAL \b2v_inst22|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~114\ : std_logic;
SIGNAL \b2v_inst22|Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~118\ : std_logic;
SIGNAL \b2v_inst22|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~122\ : std_logic;
SIGNAL \b2v_inst22|Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~126\ : std_logic;
SIGNAL \b2v_inst22|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~54\ : std_logic;
SIGNAL \b2v_inst22|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~58\ : std_logic;
SIGNAL \b2v_inst22|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~62\ : std_logic;
SIGNAL \b2v_inst22|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~34\ : std_logic;
SIGNAL \b2v_inst22|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~38\ : std_logic;
SIGNAL \b2v_inst22|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~86\ : std_logic;
SIGNAL \b2v_inst22|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~90\ : std_logic;
SIGNAL \b2v_inst22|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~94\ : std_logic;
SIGNAL \b2v_inst22|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~98\ : std_logic;
SIGNAL \b2v_inst22|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~42\ : std_logic;
SIGNAL \b2v_inst22|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~102\ : std_logic;
SIGNAL \b2v_inst22|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~46\ : std_logic;
SIGNAL \b2v_inst22|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~50\ : std_logic;
SIGNAL \b2v_inst22|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~14\ : std_logic;
SIGNAL \b2v_inst22|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~18\ : std_logic;
SIGNAL \b2v_inst22|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~66\ : std_logic;
SIGNAL \b2v_inst22|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~70\ : std_logic;
SIGNAL \b2v_inst22|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~74\ : std_logic;
SIGNAL \b2v_inst22|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~78\ : std_logic;
SIGNAL \b2v_inst22|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~22\ : std_logic;
SIGNAL \b2v_inst22|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~82\ : std_logic;
SIGNAL \b2v_inst22|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~26\ : std_logic;
SIGNAL \b2v_inst22|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~30\ : std_logic;
SIGNAL \b2v_inst22|Add0~2\ : std_logic;
SIGNAL \b2v_inst22|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst22|Add0~6\ : std_logic;
SIGNAL \b2v_inst22|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst22|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst22|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst22|temp~0_combout\ : std_logic;
SIGNAL \b2v_inst22|temp~q\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\ : std_logic;
SIGNAL \clock_27Mhz~input_o\ : std_logic;
SIGNAL \clock_27Mhz~inputCLKENA0_outclk\ : std_logic;
SIGNAL \b2v_inst20|Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~106\ : std_logic;
SIGNAL \b2v_inst20|Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~110\ : std_logic;
SIGNAL \b2v_inst20|Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~114\ : std_logic;
SIGNAL \b2v_inst20|Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~118\ : std_logic;
SIGNAL \b2v_inst20|Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~122\ : std_logic;
SIGNAL \b2v_inst20|Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~126\ : std_logic;
SIGNAL \b2v_inst20|Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~54\ : std_logic;
SIGNAL \b2v_inst20|Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~58\ : std_logic;
SIGNAL \b2v_inst20|Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~62\ : std_logic;
SIGNAL \b2v_inst20|Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~34\ : std_logic;
SIGNAL \b2v_inst20|Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~38\ : std_logic;
SIGNAL \b2v_inst20|Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~86\ : std_logic;
SIGNAL \b2v_inst20|Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~90\ : std_logic;
SIGNAL \b2v_inst20|Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~94\ : std_logic;
SIGNAL \b2v_inst20|Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~98\ : std_logic;
SIGNAL \b2v_inst20|Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~42\ : std_logic;
SIGNAL \b2v_inst20|Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~102\ : std_logic;
SIGNAL \b2v_inst20|Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~46\ : std_logic;
SIGNAL \b2v_inst20|Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~50\ : std_logic;
SIGNAL \b2v_inst20|Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~14\ : std_logic;
SIGNAL \b2v_inst20|Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~18\ : std_logic;
SIGNAL \b2v_inst20|Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~66\ : std_logic;
SIGNAL \b2v_inst20|Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~70\ : std_logic;
SIGNAL \b2v_inst20|Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~74\ : std_logic;
SIGNAL \b2v_inst20|Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~78\ : std_logic;
SIGNAL \b2v_inst20|Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~22\ : std_logic;
SIGNAL \b2v_inst20|Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~82\ : std_logic;
SIGNAL \b2v_inst20|Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~26\ : std_logic;
SIGNAL \b2v_inst20|Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~30\ : std_logic;
SIGNAL \b2v_inst20|Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst20|Add0~2\ : std_logic;
SIGNAL \b2v_inst20|Add0~6\ : std_logic;
SIGNAL \b2v_inst20|Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~6_combout\ : std_logic;
SIGNAL \b2v_inst20|Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst20|Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst20|temp~0_combout\ : std_logic;
SIGNAL \b2v_inst20|temp~q\ : std_logic;
SIGNAL \b2v_inst21|temp~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \b2v_inst21|temp~q\ : std_logic;
SIGNAL \b2v_inst21|count~0_combout\ : std_logic;
SIGNAL \b2v_inst21|count~q\ : std_logic;
SIGNAL \b2v_inst21|latch_compteur~0_combout\ : std_logic;
SIGNAL \b2v_inst21|latch_compteur~q\ : std_logic;
SIGNAL \b2v_inst21|process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst21|enable_temp~0_combout\ : std_logic;
SIGNAL \b2v_inst21|enable_temp~q\ : std_logic;
SIGNAL \b2v_inst21|clk_compteur~combout\ : std_logic;
SIGNAL \b2v_inst1|count_c[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst21|reset_compteur~0_combout\ : std_logic;
SIGNAL \b2v_inst21|reset_compteur~q\ : std_logic;
SIGNAL \b2v_inst21|enable_compteur~q\ : std_logic;
SIGNAL \b2v_inst1|count_u[0]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|count_u[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_u[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_u~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_u~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_u[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|count_u[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_u~2_combout\ : std_logic;
SIGNAL \b2v_inst1|count_u[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|Equal3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_d[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_d[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|count_d~3_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_c[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_c[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_c[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|count_c[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_c[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_c~3_combout\ : std_logic;
SIGNAL \b2v_inst1|process_0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_c~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_c[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst26|sortie[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst26|sortie[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst25|sortie[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst25|sortie[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst25|sortie[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst25|sortie[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst27|sortie[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|count_m[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[0]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Add1~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m~4_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m~1_combout\ : std_logic;
SIGNAL \b2v_inst1|count_m[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst27|sortie[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst27|sortie[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst24|sortie[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst24|sortie[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst24|sortie[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst24|sortie[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst27|sortie\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst18|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst20|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst19|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst17|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|count_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst22|n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst26|sortie\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst25|sortie\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst24|sortie\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|count_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|count_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|count_m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst19|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst20|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_m[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_m[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_d[0]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_c[3]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_c[2]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_c[1]~DUPLICATE_q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_c[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sel[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sel[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~9_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~8_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~7_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~combout\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~2_combout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst18|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~1_combout\ : std_logic;
SIGNAL \b2v_inst17|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst22|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst21|ALT_INV_enable_temp~q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u~0_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_Add1~1_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_m[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_process_0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_d[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \b2v_inst21|ALT_INV_count~q\ : std_logic;
SIGNAL \b2v_inst21|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst20|ALT_INV_temp~q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \b2v_inst21|ALT_INV_enable_compteur~q\ : std_logic;
SIGNAL \b2v_inst21|ALT_INV_reset_compteur~q\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_count_u\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|ALT_INV_count_m\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|ALT_INV_count_d\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|ALT_INV_count_c\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst21|ALT_INV_latch_compteur~q\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst18|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst17|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst22|ALT_INV_n\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst19|ALT_INV_Add0~125_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~121_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~117_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \b2v_inst19|ALT_INV_Add0~97_sumout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock_50Mhz <= clock_50Mhz;
ww_clock_27Mhz <= clock_27Mhz;
ww_sel <= sel;
SEG_Centaine <= ww_SEG_Centaine;
SEG_Dizaine <= ww_SEG_Dizaine;
SEG_Millier <= ww_SEG_Millier;
SEG_Unite <= ww_SEG_Unite;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\b2v_inst19|ALT_INV_Add0~93_sumout\ <= NOT \b2v_inst19|Add0~93_sumout\;
\b2v_inst19|ALT_INV_Add0~89_sumout\ <= NOT \b2v_inst19|Add0~89_sumout\;
\b2v_inst19|ALT_INV_Add0~85_sumout\ <= NOT \b2v_inst19|Add0~85_sumout\;
\b2v_inst19|ALT_INV_Add0~81_sumout\ <= NOT \b2v_inst19|Add0~81_sumout\;
\b2v_inst19|ALT_INV_Add0~77_sumout\ <= NOT \b2v_inst19|Add0~77_sumout\;
\b2v_inst19|ALT_INV_Add0~73_sumout\ <= NOT \b2v_inst19|Add0~73_sumout\;
\b2v_inst19|ALT_INV_Add0~69_sumout\ <= NOT \b2v_inst19|Add0~69_sumout\;
\b2v_inst19|ALT_INV_Add0~65_sumout\ <= NOT \b2v_inst19|Add0~65_sumout\;
\b2v_inst19|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst19|Add0~61_sumout\;
\b2v_inst19|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst19|Add0~57_sumout\;
\b2v_inst19|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst19|Add0~53_sumout\;
\b2v_inst19|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst19|Add0~49_sumout\;
\b2v_inst19|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst19|Add0~45_sumout\;
\b2v_inst19|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst19|Add0~41_sumout\;
\b2v_inst19|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst19|Add0~37_sumout\;
\b2v_inst19|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst19|Add0~33_sumout\;
\b2v_inst19|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst19|Add0~29_sumout\;
\b2v_inst19|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst19|Add0~25_sumout\;
\b2v_inst19|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst19|Add0~21_sumout\;
\b2v_inst19|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst19|Add0~17_sumout\;
\b2v_inst19|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst19|Add0~13_sumout\;
\b2v_inst19|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst19|Add0~9_sumout\;
\b2v_inst19|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst19|Add0~5_sumout\;
\b2v_inst19|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst19|Add0~1_sumout\;
\b2v_inst18|ALT_INV_Add0~125_sumout\ <= NOT \b2v_inst18|Add0~125_sumout\;
\b2v_inst18|ALT_INV_Add0~121_sumout\ <= NOT \b2v_inst18|Add0~121_sumout\;
\b2v_inst18|ALT_INV_Add0~117_sumout\ <= NOT \b2v_inst18|Add0~117_sumout\;
\b2v_inst18|ALT_INV_Add0~113_sumout\ <= NOT \b2v_inst18|Add0~113_sumout\;
\b2v_inst18|ALT_INV_Add0~109_sumout\ <= NOT \b2v_inst18|Add0~109_sumout\;
\b2v_inst18|ALT_INV_Add0~105_sumout\ <= NOT \b2v_inst18|Add0~105_sumout\;
\b2v_inst18|ALT_INV_Add0~101_sumout\ <= NOT \b2v_inst18|Add0~101_sumout\;
\b2v_inst18|ALT_INV_Add0~97_sumout\ <= NOT \b2v_inst18|Add0~97_sumout\;
\b2v_inst18|ALT_INV_Add0~93_sumout\ <= NOT \b2v_inst18|Add0~93_sumout\;
\b2v_inst18|ALT_INV_Add0~89_sumout\ <= NOT \b2v_inst18|Add0~89_sumout\;
\b2v_inst18|ALT_INV_Add0~85_sumout\ <= NOT \b2v_inst18|Add0~85_sumout\;
\b2v_inst18|ALT_INV_Add0~81_sumout\ <= NOT \b2v_inst18|Add0~81_sumout\;
\b2v_inst18|ALT_INV_Add0~77_sumout\ <= NOT \b2v_inst18|Add0~77_sumout\;
\b2v_inst18|ALT_INV_Add0~73_sumout\ <= NOT \b2v_inst18|Add0~73_sumout\;
\b2v_inst18|ALT_INV_Add0~69_sumout\ <= NOT \b2v_inst18|Add0~69_sumout\;
\b2v_inst18|ALT_INV_Add0~65_sumout\ <= NOT \b2v_inst18|Add0~65_sumout\;
\b2v_inst18|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst18|Add0~61_sumout\;
\b2v_inst18|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst18|Add0~57_sumout\;
\b2v_inst18|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst18|Add0~53_sumout\;
\b2v_inst18|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst18|Add0~49_sumout\;
\b2v_inst18|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst18|Add0~45_sumout\;
\b2v_inst18|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst18|Add0~41_sumout\;
\b2v_inst18|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst18|Add0~37_sumout\;
\b2v_inst18|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst18|Add0~33_sumout\;
\b2v_inst18|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst18|Add0~29_sumout\;
\b2v_inst18|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst18|Add0~25_sumout\;
\b2v_inst18|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst18|Add0~21_sumout\;
\b2v_inst18|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst18|Add0~17_sumout\;
\b2v_inst18|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst18|Add0~13_sumout\;
\b2v_inst18|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst18|Add0~9_sumout\;
\b2v_inst18|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst18|Add0~5_sumout\;
\b2v_inst18|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst18|Add0~1_sumout\;
\b2v_inst17|ALT_INV_Add0~125_sumout\ <= NOT \b2v_inst17|Add0~125_sumout\;
\b2v_inst17|ALT_INV_Add0~121_sumout\ <= NOT \b2v_inst17|Add0~121_sumout\;
\b2v_inst17|ALT_INV_Add0~117_sumout\ <= NOT \b2v_inst17|Add0~117_sumout\;
\b2v_inst17|ALT_INV_Add0~113_sumout\ <= NOT \b2v_inst17|Add0~113_sumout\;
\b2v_inst17|ALT_INV_Add0~109_sumout\ <= NOT \b2v_inst17|Add0~109_sumout\;
\b2v_inst17|ALT_INV_Add0~105_sumout\ <= NOT \b2v_inst17|Add0~105_sumout\;
\b2v_inst17|ALT_INV_Add0~101_sumout\ <= NOT \b2v_inst17|Add0~101_sumout\;
\b2v_inst17|ALT_INV_Add0~97_sumout\ <= NOT \b2v_inst17|Add0~97_sumout\;
\b2v_inst17|ALT_INV_Add0~93_sumout\ <= NOT \b2v_inst17|Add0~93_sumout\;
\b2v_inst17|ALT_INV_Add0~89_sumout\ <= NOT \b2v_inst17|Add0~89_sumout\;
\b2v_inst17|ALT_INV_Add0~85_sumout\ <= NOT \b2v_inst17|Add0~85_sumout\;
\b2v_inst17|ALT_INV_Add0~81_sumout\ <= NOT \b2v_inst17|Add0~81_sumout\;
\b2v_inst17|ALT_INV_Add0~77_sumout\ <= NOT \b2v_inst17|Add0~77_sumout\;
\b2v_inst17|ALT_INV_Add0~73_sumout\ <= NOT \b2v_inst17|Add0~73_sumout\;
\b2v_inst17|ALT_INV_Add0~69_sumout\ <= NOT \b2v_inst17|Add0~69_sumout\;
\b2v_inst17|ALT_INV_Add0~65_sumout\ <= NOT \b2v_inst17|Add0~65_sumout\;
\b2v_inst17|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst17|Add0~61_sumout\;
\b2v_inst17|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst17|Add0~57_sumout\;
\b2v_inst17|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst17|Add0~53_sumout\;
\b2v_inst17|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst17|Add0~49_sumout\;
\b2v_inst17|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst17|Add0~45_sumout\;
\b2v_inst17|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst17|Add0~41_sumout\;
\b2v_inst17|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst17|Add0~37_sumout\;
\b2v_inst17|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst17|Add0~33_sumout\;
\b2v_inst17|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst17|Add0~29_sumout\;
\b2v_inst17|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst17|Add0~25_sumout\;
\b2v_inst17|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst17|Add0~21_sumout\;
\b2v_inst17|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst17|Add0~17_sumout\;
\b2v_inst17|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst17|Add0~13_sumout\;
\b2v_inst17|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst17|Add0~9_sumout\;
\b2v_inst17|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst17|Add0~5_sumout\;
\b2v_inst17|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst17|Add0~1_sumout\;
\b2v_inst22|ALT_INV_Add0~125_sumout\ <= NOT \b2v_inst22|Add0~125_sumout\;
\b2v_inst22|ALT_INV_Add0~121_sumout\ <= NOT \b2v_inst22|Add0~121_sumout\;
\b2v_inst22|ALT_INV_Add0~117_sumout\ <= NOT \b2v_inst22|Add0~117_sumout\;
\b2v_inst22|ALT_INV_Add0~113_sumout\ <= NOT \b2v_inst22|Add0~113_sumout\;
\b2v_inst22|ALT_INV_Add0~109_sumout\ <= NOT \b2v_inst22|Add0~109_sumout\;
\b2v_inst22|ALT_INV_Add0~105_sumout\ <= NOT \b2v_inst22|Add0~105_sumout\;
\b2v_inst22|ALT_INV_Add0~101_sumout\ <= NOT \b2v_inst22|Add0~101_sumout\;
\b2v_inst22|ALT_INV_Add0~97_sumout\ <= NOT \b2v_inst22|Add0~97_sumout\;
\b2v_inst22|ALT_INV_Add0~93_sumout\ <= NOT \b2v_inst22|Add0~93_sumout\;
\b2v_inst22|ALT_INV_Add0~89_sumout\ <= NOT \b2v_inst22|Add0~89_sumout\;
\b2v_inst22|ALT_INV_Add0~85_sumout\ <= NOT \b2v_inst22|Add0~85_sumout\;
\b2v_inst22|ALT_INV_Add0~81_sumout\ <= NOT \b2v_inst22|Add0~81_sumout\;
\b2v_inst22|ALT_INV_Add0~77_sumout\ <= NOT \b2v_inst22|Add0~77_sumout\;
\b2v_inst22|ALT_INV_Add0~73_sumout\ <= NOT \b2v_inst22|Add0~73_sumout\;
\b2v_inst22|ALT_INV_Add0~69_sumout\ <= NOT \b2v_inst22|Add0~69_sumout\;
\b2v_inst22|ALT_INV_Add0~65_sumout\ <= NOT \b2v_inst22|Add0~65_sumout\;
\b2v_inst22|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst22|Add0~61_sumout\;
\b2v_inst22|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst22|Add0~57_sumout\;
\b2v_inst22|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst22|Add0~53_sumout\;
\b2v_inst22|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst22|Add0~49_sumout\;
\b2v_inst22|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst22|Add0~45_sumout\;
\b2v_inst22|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst22|Add0~41_sumout\;
\b2v_inst22|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst22|Add0~37_sumout\;
\b2v_inst22|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst22|Add0~33_sumout\;
\b2v_inst22|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst22|Add0~29_sumout\;
\b2v_inst22|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst22|Add0~25_sumout\;
\b2v_inst22|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst22|Add0~21_sumout\;
\b2v_inst22|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst22|Add0~17_sumout\;
\b2v_inst22|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst22|Add0~13_sumout\;
\b2v_inst22|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst22|Add0~9_sumout\;
\b2v_inst22|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst22|Add0~5_sumout\;
\b2v_inst22|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst22|Add0~1_sumout\;
\b2v_inst20|ALT_INV_n\(5) <= NOT \b2v_inst20|n\(5);
\b2v_inst20|ALT_INV_n\(4) <= NOT \b2v_inst20|n\(4);
\b2v_inst20|ALT_INV_n\(3) <= NOT \b2v_inst20|n\(3);
\b2v_inst20|ALT_INV_n\(2) <= NOT \b2v_inst20|n\(2);
\b2v_inst20|ALT_INV_n\(1) <= NOT \b2v_inst20|n\(1);
\b2v_inst20|ALT_INV_n\(0) <= NOT \b2v_inst20|n\(0);
\b2v_inst20|ALT_INV_n\(16) <= NOT \b2v_inst20|n\(16);
\b2v_inst20|ALT_INV_n\(14) <= NOT \b2v_inst20|n\(14);
\b2v_inst20|ALT_INV_n\(13) <= NOT \b2v_inst20|n\(13);
\b2v_inst20|ALT_INV_n\(12) <= NOT \b2v_inst20|n\(12);
\b2v_inst20|ALT_INV_n\(11) <= NOT \b2v_inst20|n\(11);
\b2v_inst20|ALT_INV_n\(26) <= NOT \b2v_inst20|n\(26);
\b2v_inst20|ALT_INV_n\(24) <= NOT \b2v_inst20|n\(24);
\b2v_inst20|ALT_INV_n\(23) <= NOT \b2v_inst20|n\(23);
\b2v_inst20|ALT_INV_n\(22) <= NOT \b2v_inst20|n\(22);
\b2v_inst20|ALT_INV_n\(21) <= NOT \b2v_inst20|n\(21);
\b2v_inst20|ALT_INV_n\(8) <= NOT \b2v_inst20|n\(8);
\b2v_inst20|ALT_INV_n\(7) <= NOT \b2v_inst20|n\(7);
\b2v_inst20|ALT_INV_n\(6) <= NOT \b2v_inst20|n\(6);
\b2v_inst20|ALT_INV_n\(18) <= NOT \b2v_inst20|n\(18);
\b2v_inst20|ALT_INV_n\(17) <= NOT \b2v_inst20|n\(17);
\b2v_inst20|ALT_INV_n\(15) <= NOT \b2v_inst20|n\(15);
\b2v_inst20|ALT_INV_n\(10) <= NOT \b2v_inst20|n\(10);
\b2v_inst20|ALT_INV_n\(9) <= NOT \b2v_inst20|n\(9);
\b2v_inst20|ALT_INV_n\(28) <= NOT \b2v_inst20|n\(28);
\b2v_inst20|ALT_INV_n\(27) <= NOT \b2v_inst20|n\(27);
\b2v_inst20|ALT_INV_n\(25) <= NOT \b2v_inst20|n\(25);
\b2v_inst20|ALT_INV_n\(20) <= NOT \b2v_inst20|n\(20);
\b2v_inst20|ALT_INV_n\(19) <= NOT \b2v_inst20|n\(19);
\b2v_inst20|ALT_INV_n\(31) <= NOT \b2v_inst20|n\(31);
\b2v_inst20|ALT_INV_n\(30) <= NOT \b2v_inst20|n\(30);
\b2v_inst20|ALT_INV_n\(29) <= NOT \b2v_inst20|n\(29);
\b2v_inst20|ALT_INV_Add0~125_sumout\ <= NOT \b2v_inst20|Add0~125_sumout\;
\b2v_inst20|ALT_INV_Add0~121_sumout\ <= NOT \b2v_inst20|Add0~121_sumout\;
\b2v_inst20|ALT_INV_Add0~117_sumout\ <= NOT \b2v_inst20|Add0~117_sumout\;
\b2v_inst20|ALT_INV_Add0~113_sumout\ <= NOT \b2v_inst20|Add0~113_sumout\;
\b2v_inst20|ALT_INV_Add0~109_sumout\ <= NOT \b2v_inst20|Add0~109_sumout\;
\b2v_inst20|ALT_INV_Add0~105_sumout\ <= NOT \b2v_inst20|Add0~105_sumout\;
\b2v_inst20|ALT_INV_Add0~101_sumout\ <= NOT \b2v_inst20|Add0~101_sumout\;
\b2v_inst20|ALT_INV_Add0~97_sumout\ <= NOT \b2v_inst20|Add0~97_sumout\;
\b2v_inst20|ALT_INV_Add0~93_sumout\ <= NOT \b2v_inst20|Add0~93_sumout\;
\b2v_inst20|ALT_INV_Add0~89_sumout\ <= NOT \b2v_inst20|Add0~89_sumout\;
\b2v_inst20|ALT_INV_Add0~85_sumout\ <= NOT \b2v_inst20|Add0~85_sumout\;
\b2v_inst20|ALT_INV_Add0~81_sumout\ <= NOT \b2v_inst20|Add0~81_sumout\;
\b2v_inst20|ALT_INV_Add0~77_sumout\ <= NOT \b2v_inst20|Add0~77_sumout\;
\b2v_inst20|ALT_INV_Add0~73_sumout\ <= NOT \b2v_inst20|Add0~73_sumout\;
\b2v_inst20|ALT_INV_Add0~69_sumout\ <= NOT \b2v_inst20|Add0~69_sumout\;
\b2v_inst20|ALT_INV_Add0~65_sumout\ <= NOT \b2v_inst20|Add0~65_sumout\;
\b2v_inst20|ALT_INV_Add0~61_sumout\ <= NOT \b2v_inst20|Add0~61_sumout\;
\b2v_inst20|ALT_INV_Add0~57_sumout\ <= NOT \b2v_inst20|Add0~57_sumout\;
\b2v_inst20|ALT_INV_Add0~53_sumout\ <= NOT \b2v_inst20|Add0~53_sumout\;
\b2v_inst20|ALT_INV_Add0~49_sumout\ <= NOT \b2v_inst20|Add0~49_sumout\;
\b2v_inst20|ALT_INV_Add0~45_sumout\ <= NOT \b2v_inst20|Add0~45_sumout\;
\b2v_inst20|ALT_INV_Add0~41_sumout\ <= NOT \b2v_inst20|Add0~41_sumout\;
\b2v_inst20|ALT_INV_Add0~37_sumout\ <= NOT \b2v_inst20|Add0~37_sumout\;
\b2v_inst20|ALT_INV_Add0~33_sumout\ <= NOT \b2v_inst20|Add0~33_sumout\;
\b2v_inst20|ALT_INV_Add0~29_sumout\ <= NOT \b2v_inst20|Add0~29_sumout\;
\b2v_inst20|ALT_INV_Add0~25_sumout\ <= NOT \b2v_inst20|Add0~25_sumout\;
\b2v_inst20|ALT_INV_Add0~21_sumout\ <= NOT \b2v_inst20|Add0~21_sumout\;
\b2v_inst20|ALT_INV_Add0~17_sumout\ <= NOT \b2v_inst20|Add0~17_sumout\;
\b2v_inst20|ALT_INV_Add0~13_sumout\ <= NOT \b2v_inst20|Add0~13_sumout\;
\b2v_inst20|ALT_INV_Add0~9_sumout\ <= NOT \b2v_inst20|Add0~9_sumout\;
\b2v_inst20|ALT_INV_Add0~5_sumout\ <= NOT \b2v_inst20|Add0~5_sumout\;
\b2v_inst20|ALT_INV_Add0~1_sumout\ <= NOT \b2v_inst20|Add0~1_sumout\;
\b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\ <= NOT \b2v_inst1|count_u[3]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\ <= NOT \b2v_inst1|count_u[2]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\ <= NOT \b2v_inst1|count_u[1]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\ <= NOT \b2v_inst1|count_u[0]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_m[3]~DUPLICATE_q\ <= NOT \b2v_inst1|count_m[3]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_m[2]~DUPLICATE_q\ <= NOT \b2v_inst1|count_m[2]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\ <= NOT \b2v_inst1|count_m[1]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\ <= NOT \b2v_inst1|count_d[1]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_d[0]~DUPLICATE_q\ <= NOT \b2v_inst1|count_d[0]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_c[3]~DUPLICATE_q\ <= NOT \b2v_inst1|count_c[3]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_c[2]~DUPLICATE_q\ <= NOT \b2v_inst1|count_c[2]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_c[1]~DUPLICATE_q\ <= NOT \b2v_inst1|count_c[1]~DUPLICATE_q\;
\b2v_inst1|ALT_INV_count_c[0]~DUPLICATE_q\ <= NOT \b2v_inst1|count_c[0]~DUPLICATE_q\;
\ALT_INV_sel[1]~input_o\ <= NOT \sel[1]~input_o\;
\ALT_INV_sel[0]~input_o\ <= NOT \sel[0]~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\b2v_inst19|ALT_INV_Equal0~9_combout\ <= NOT \b2v_inst19|Equal0~9_combout\;
\b2v_inst18|ALT_INV_Equal0~9_combout\ <= NOT \b2v_inst18|Equal0~9_combout\;
\b2v_inst17|ALT_INV_Equal0~9_combout\ <= NOT \b2v_inst17|Equal0~9_combout\;
\b2v_inst22|ALT_INV_Equal0~9_combout\ <= NOT \b2v_inst22|Equal0~9_combout\;
\b2v_inst20|ALT_INV_Equal0~9_combout\ <= NOT \b2v_inst20|Equal0~9_combout\;
\b2v_inst19|ALT_INV_Equal0~8_combout\ <= NOT \b2v_inst19|Equal0~8_combout\;
\b2v_inst19|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst19|Equal0~7_combout\;
\b2v_inst18|ALT_INV_Equal0~8_combout\ <= NOT \b2v_inst18|Equal0~8_combout\;
\b2v_inst18|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst18|Equal0~7_combout\;
\b2v_inst17|ALT_INV_Equal0~8_combout\ <= NOT \b2v_inst17|Equal0~8_combout\;
\b2v_inst17|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst17|Equal0~7_combout\;
\b2v_inst22|ALT_INV_Equal0~8_combout\ <= NOT \b2v_inst22|Equal0~8_combout\;
\b2v_inst22|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst22|Equal0~7_combout\;
\b2v_inst20|ALT_INV_Equal0~8_combout\ <= NOT \b2v_inst20|Equal0~8_combout\;
\b2v_inst20|ALT_INV_Equal0~7_combout\ <= NOT \b2v_inst20|Equal0~7_combout\;
\b2v_inst19|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst19|Equal0~5_combout\;
\b2v_inst18|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst18|Equal0~5_combout\;
\b2v_inst17|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst17|Equal0~5_combout\;
\b2v_inst22|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst22|Equal0~5_combout\;
\b2v_inst20|ALT_INV_Equal0~5_combout\ <= NOT \b2v_inst20|Equal0~5_combout\;
\b2v_inst19|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst19|Equal0~4_combout\;
\b2v_inst19|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst19|Equal0~3_combout\;
\b2v_inst19|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst19|Equal0~2_combout\;
\b2v_inst19|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst19|Equal0~1_combout\;
\b2v_inst19|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst19|Equal0~0_combout\;
\b2v_inst18|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst18|Equal0~4_combout\;
\b2v_inst18|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst18|Equal0~3_combout\;
\b2v_inst18|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst18|Equal0~2_combout\;
\b2v_inst18|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst18|Equal0~1_combout\;
\b2v_inst18|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst18|Equal0~0_combout\;
\b2v_inst17|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst17|Equal0~4_combout\;
\b2v_inst17|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst17|Equal0~3_combout\;
\b2v_inst17|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst17|Equal0~2_combout\;
\b2v_inst17|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst17|Equal0~1_combout\;
\b2v_inst17|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst17|Equal0~0_combout\;
\b2v_inst22|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst22|Equal0~4_combout\;
\b2v_inst22|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst22|Equal0~3_combout\;
\b2v_inst22|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst22|Equal0~2_combout\;
\b2v_inst22|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst22|Equal0~1_combout\;
\b2v_inst22|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst22|Equal0~0_combout\;
\b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~combout\ <= NOT \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\;
\b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~2_combout\ <= NOT \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\;
\b2v_inst19|ALT_INV_temp~q\ <= NOT \b2v_inst19|temp~q\;
\b2v_inst18|ALT_INV_temp~q\ <= NOT \b2v_inst18|temp~q\;
\b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~1_combout\ <= NOT \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\;
\b2v_inst17|ALT_INV_temp~q\ <= NOT \b2v_inst17|temp~q\;
\b2v_inst22|ALT_INV_temp~q\ <= NOT \b2v_inst22|temp~q\;
\b2v_inst20|ALT_INV_Equal0~4_combout\ <= NOT \b2v_inst20|Equal0~4_combout\;
\b2v_inst20|ALT_INV_Equal0~3_combout\ <= NOT \b2v_inst20|Equal0~3_combout\;
\b2v_inst20|ALT_INV_Equal0~2_combout\ <= NOT \b2v_inst20|Equal0~2_combout\;
\b2v_inst20|ALT_INV_Equal0~1_combout\ <= NOT \b2v_inst20|Equal0~1_combout\;
\b2v_inst20|ALT_INV_Equal0~0_combout\ <= NOT \b2v_inst20|Equal0~0_combout\;
\b2v_inst21|ALT_INV_enable_temp~q\ <= NOT \b2v_inst21|enable_temp~q\;
\b2v_inst1|ALT_INV_count_u~0_combout\ <= NOT \b2v_inst1|count_u~0_combout\;
\b2v_inst1|ALT_INV_Add1~1_combout\ <= NOT \b2v_inst1|Add1~1_combout\;
\b2v_inst1|ALT_INV_count_m[2]~3_combout\ <= NOT \b2v_inst1|count_m[2]~3_combout\;
\b2v_inst1|ALT_INV_Add1~0_combout\ <= NOT \b2v_inst1|Add1~0_combout\;
\b2v_inst1|ALT_INV_process_0~2_combout\ <= NOT \b2v_inst1|process_0~2_combout\;
\b2v_inst1|ALT_INV_count_d[2]~2_combout\ <= NOT \b2v_inst1|count_d[2]~2_combout\;
\b2v_inst1|ALT_INV_process_0~1_combout\ <= NOT \b2v_inst1|process_0~1_combout\;
\b2v_inst21|ALT_INV_count~q\ <= NOT \b2v_inst21|count~q\;
\b2v_inst21|ALT_INV_temp~q\ <= NOT \b2v_inst21|temp~q\;
\b2v_inst20|ALT_INV_temp~q\ <= NOT \b2v_inst20|temp~q\;
\b2v_inst1|ALT_INV_process_0~0_combout\ <= NOT \b2v_inst1|process_0~0_combout\;
\b2v_inst1|ALT_INV_Equal3~0_combout\ <= NOT \b2v_inst1|Equal3~0_combout\;
\b2v_inst21|ALT_INV_enable_compteur~q\ <= NOT \b2v_inst21|enable_compteur~q\;
\b2v_inst21|ALT_INV_reset_compteur~q\ <= NOT \b2v_inst21|reset_compteur~q\;
\b2v_inst1|ALT_INV_count_u\(3) <= NOT \b2v_inst1|count_u\(3);
\b2v_inst1|ALT_INV_count_u\(2) <= NOT \b2v_inst1|count_u\(2);
\b2v_inst1|ALT_INV_count_u\(1) <= NOT \b2v_inst1|count_u\(1);
\b2v_inst1|ALT_INV_count_u\(0) <= NOT \b2v_inst1|count_u\(0);
\b2v_inst1|ALT_INV_count_m\(3) <= NOT \b2v_inst1|count_m\(3);
\b2v_inst1|ALT_INV_count_m\(2) <= NOT \b2v_inst1|count_m\(2);
\b2v_inst1|ALT_INV_count_m\(1) <= NOT \b2v_inst1|count_m\(1);
\b2v_inst1|ALT_INV_count_m\(0) <= NOT \b2v_inst1|count_m\(0);
\b2v_inst1|ALT_INV_count_d\(3) <= NOT \b2v_inst1|count_d\(3);
\b2v_inst1|ALT_INV_count_d\(2) <= NOT \b2v_inst1|count_d\(2);
\b2v_inst1|ALT_INV_count_d\(1) <= NOT \b2v_inst1|count_d\(1);
\b2v_inst1|ALT_INV_count_d\(0) <= NOT \b2v_inst1|count_d\(0);
\b2v_inst1|ALT_INV_count_c\(3) <= NOT \b2v_inst1|count_c\(3);
\b2v_inst1|ALT_INV_count_c\(2) <= NOT \b2v_inst1|count_c\(2);
\b2v_inst1|ALT_INV_count_c\(1) <= NOT \b2v_inst1|count_c\(1);
\b2v_inst21|ALT_INV_latch_compteur~q\ <= NOT \b2v_inst21|latch_compteur~q\;
\b2v_inst1|ALT_INV_count_c\(0) <= NOT \b2v_inst1|count_c\(0);
\b2v_inst19|ALT_INV_n\(5) <= NOT \b2v_inst19|n\(5);
\b2v_inst19|ALT_INV_n\(4) <= NOT \b2v_inst19|n\(4);
\b2v_inst19|ALT_INV_n\(3) <= NOT \b2v_inst19|n\(3);
\b2v_inst19|ALT_INV_n\(2) <= NOT \b2v_inst19|n\(2);
\b2v_inst19|ALT_INV_n\(1) <= NOT \b2v_inst19|n\(1);
\b2v_inst19|ALT_INV_n\(0) <= NOT \b2v_inst19|n\(0);
\b2v_inst19|ALT_INV_n\(16) <= NOT \b2v_inst19|n\(16);
\b2v_inst19|ALT_INV_n\(14) <= NOT \b2v_inst19|n\(14);
\b2v_inst19|ALT_INV_n\(13) <= NOT \b2v_inst19|n\(13);
\b2v_inst19|ALT_INV_n\(12) <= NOT \b2v_inst19|n\(12);
\b2v_inst19|ALT_INV_n\(11) <= NOT \b2v_inst19|n\(11);
\b2v_inst19|ALT_INV_n\(26) <= NOT \b2v_inst19|n\(26);
\b2v_inst19|ALT_INV_n\(24) <= NOT \b2v_inst19|n\(24);
\b2v_inst19|ALT_INV_n\(23) <= NOT \b2v_inst19|n\(23);
\b2v_inst19|ALT_INV_n\(22) <= NOT \b2v_inst19|n\(22);
\b2v_inst19|ALT_INV_n\(21) <= NOT \b2v_inst19|n\(21);
\b2v_inst19|ALT_INV_n\(8) <= NOT \b2v_inst19|n\(8);
\b2v_inst19|ALT_INV_n\(7) <= NOT \b2v_inst19|n\(7);
\b2v_inst19|ALT_INV_n\(6) <= NOT \b2v_inst19|n\(6);
\b2v_inst19|ALT_INV_n\(18) <= NOT \b2v_inst19|n\(18);
\b2v_inst19|ALT_INV_n\(17) <= NOT \b2v_inst19|n\(17);
\b2v_inst19|ALT_INV_n\(15) <= NOT \b2v_inst19|n\(15);
\b2v_inst19|ALT_INV_n\(10) <= NOT \b2v_inst19|n\(10);
\b2v_inst19|ALT_INV_n\(9) <= NOT \b2v_inst19|n\(9);
\b2v_inst19|ALT_INV_n\(28) <= NOT \b2v_inst19|n\(28);
\b2v_inst19|ALT_INV_n\(27) <= NOT \b2v_inst19|n\(27);
\b2v_inst19|ALT_INV_n\(25) <= NOT \b2v_inst19|n\(25);
\b2v_inst19|ALT_INV_n\(20) <= NOT \b2v_inst19|n\(20);
\b2v_inst19|ALT_INV_n\(19) <= NOT \b2v_inst19|n\(19);
\b2v_inst19|ALT_INV_n\(31) <= NOT \b2v_inst19|n\(31);
\b2v_inst19|ALT_INV_n\(30) <= NOT \b2v_inst19|n\(30);
\b2v_inst19|ALT_INV_n\(29) <= NOT \b2v_inst19|n\(29);
\b2v_inst18|ALT_INV_n\(5) <= NOT \b2v_inst18|n\(5);
\b2v_inst18|ALT_INV_n\(4) <= NOT \b2v_inst18|n\(4);
\b2v_inst18|ALT_INV_n\(3) <= NOT \b2v_inst18|n\(3);
\b2v_inst18|ALT_INV_n\(2) <= NOT \b2v_inst18|n\(2);
\b2v_inst18|ALT_INV_n\(1) <= NOT \b2v_inst18|n\(1);
\b2v_inst18|ALT_INV_n\(0) <= NOT \b2v_inst18|n\(0);
\b2v_inst18|ALT_INV_n\(16) <= NOT \b2v_inst18|n\(16);
\b2v_inst18|ALT_INV_n\(14) <= NOT \b2v_inst18|n\(14);
\b2v_inst18|ALT_INV_n\(13) <= NOT \b2v_inst18|n\(13);
\b2v_inst18|ALT_INV_n\(12) <= NOT \b2v_inst18|n\(12);
\b2v_inst18|ALT_INV_n\(11) <= NOT \b2v_inst18|n\(11);
\b2v_inst18|ALT_INV_n\(26) <= NOT \b2v_inst18|n\(26);
\b2v_inst18|ALT_INV_n\(24) <= NOT \b2v_inst18|n\(24);
\b2v_inst18|ALT_INV_n\(23) <= NOT \b2v_inst18|n\(23);
\b2v_inst18|ALT_INV_n\(22) <= NOT \b2v_inst18|n\(22);
\b2v_inst18|ALT_INV_n\(21) <= NOT \b2v_inst18|n\(21);
\b2v_inst18|ALT_INV_n\(8) <= NOT \b2v_inst18|n\(8);
\b2v_inst18|ALT_INV_n\(7) <= NOT \b2v_inst18|n\(7);
\b2v_inst18|ALT_INV_n\(6) <= NOT \b2v_inst18|n\(6);
\b2v_inst18|ALT_INV_n\(18) <= NOT \b2v_inst18|n\(18);
\b2v_inst18|ALT_INV_n\(17) <= NOT \b2v_inst18|n\(17);
\b2v_inst18|ALT_INV_n\(15) <= NOT \b2v_inst18|n\(15);
\b2v_inst18|ALT_INV_n\(10) <= NOT \b2v_inst18|n\(10);
\b2v_inst18|ALT_INV_n\(9) <= NOT \b2v_inst18|n\(9);
\b2v_inst18|ALT_INV_n\(28) <= NOT \b2v_inst18|n\(28);
\b2v_inst18|ALT_INV_n\(27) <= NOT \b2v_inst18|n\(27);
\b2v_inst18|ALT_INV_n\(25) <= NOT \b2v_inst18|n\(25);
\b2v_inst18|ALT_INV_n\(20) <= NOT \b2v_inst18|n\(20);
\b2v_inst18|ALT_INV_n\(19) <= NOT \b2v_inst18|n\(19);
\b2v_inst18|ALT_INV_n\(31) <= NOT \b2v_inst18|n\(31);
\b2v_inst18|ALT_INV_n\(30) <= NOT \b2v_inst18|n\(30);
\b2v_inst18|ALT_INV_n\(29) <= NOT \b2v_inst18|n\(29);
\b2v_inst17|ALT_INV_n\(5) <= NOT \b2v_inst17|n\(5);
\b2v_inst17|ALT_INV_n\(4) <= NOT \b2v_inst17|n\(4);
\b2v_inst17|ALT_INV_n\(3) <= NOT \b2v_inst17|n\(3);
\b2v_inst17|ALT_INV_n\(2) <= NOT \b2v_inst17|n\(2);
\b2v_inst17|ALT_INV_n\(1) <= NOT \b2v_inst17|n\(1);
\b2v_inst17|ALT_INV_n\(0) <= NOT \b2v_inst17|n\(0);
\b2v_inst17|ALT_INV_n\(16) <= NOT \b2v_inst17|n\(16);
\b2v_inst17|ALT_INV_n\(14) <= NOT \b2v_inst17|n\(14);
\b2v_inst17|ALT_INV_n\(13) <= NOT \b2v_inst17|n\(13);
\b2v_inst17|ALT_INV_n\(12) <= NOT \b2v_inst17|n\(12);
\b2v_inst17|ALT_INV_n\(11) <= NOT \b2v_inst17|n\(11);
\b2v_inst17|ALT_INV_n\(26) <= NOT \b2v_inst17|n\(26);
\b2v_inst17|ALT_INV_n\(24) <= NOT \b2v_inst17|n\(24);
\b2v_inst17|ALT_INV_n\(23) <= NOT \b2v_inst17|n\(23);
\b2v_inst17|ALT_INV_n\(22) <= NOT \b2v_inst17|n\(22);
\b2v_inst17|ALT_INV_n\(21) <= NOT \b2v_inst17|n\(21);
\b2v_inst17|ALT_INV_n\(8) <= NOT \b2v_inst17|n\(8);
\b2v_inst17|ALT_INV_n\(7) <= NOT \b2v_inst17|n\(7);
\b2v_inst17|ALT_INV_n\(6) <= NOT \b2v_inst17|n\(6);
\b2v_inst17|ALT_INV_n\(18) <= NOT \b2v_inst17|n\(18);
\b2v_inst17|ALT_INV_n\(17) <= NOT \b2v_inst17|n\(17);
\b2v_inst17|ALT_INV_n\(15) <= NOT \b2v_inst17|n\(15);
\b2v_inst17|ALT_INV_n\(10) <= NOT \b2v_inst17|n\(10);
\b2v_inst17|ALT_INV_n\(9) <= NOT \b2v_inst17|n\(9);
\b2v_inst17|ALT_INV_n\(28) <= NOT \b2v_inst17|n\(28);
\b2v_inst17|ALT_INV_n\(27) <= NOT \b2v_inst17|n\(27);
\b2v_inst17|ALT_INV_n\(25) <= NOT \b2v_inst17|n\(25);
\b2v_inst17|ALT_INV_n\(20) <= NOT \b2v_inst17|n\(20);
\b2v_inst17|ALT_INV_n\(19) <= NOT \b2v_inst17|n\(19);
\b2v_inst17|ALT_INV_n\(31) <= NOT \b2v_inst17|n\(31);
\b2v_inst17|ALT_INV_n\(30) <= NOT \b2v_inst17|n\(30);
\b2v_inst17|ALT_INV_n\(29) <= NOT \b2v_inst17|n\(29);
\b2v_inst22|ALT_INV_n\(5) <= NOT \b2v_inst22|n\(5);
\b2v_inst22|ALT_INV_n\(4) <= NOT \b2v_inst22|n\(4);
\b2v_inst22|ALT_INV_n\(3) <= NOT \b2v_inst22|n\(3);
\b2v_inst22|ALT_INV_n\(2) <= NOT \b2v_inst22|n\(2);
\b2v_inst22|ALT_INV_n\(1) <= NOT \b2v_inst22|n\(1);
\b2v_inst22|ALT_INV_n\(0) <= NOT \b2v_inst22|n\(0);
\b2v_inst22|ALT_INV_n\(16) <= NOT \b2v_inst22|n\(16);
\b2v_inst22|ALT_INV_n\(14) <= NOT \b2v_inst22|n\(14);
\b2v_inst22|ALT_INV_n\(13) <= NOT \b2v_inst22|n\(13);
\b2v_inst22|ALT_INV_n\(12) <= NOT \b2v_inst22|n\(12);
\b2v_inst22|ALT_INV_n\(11) <= NOT \b2v_inst22|n\(11);
\b2v_inst22|ALT_INV_n\(26) <= NOT \b2v_inst22|n\(26);
\b2v_inst22|ALT_INV_n\(24) <= NOT \b2v_inst22|n\(24);
\b2v_inst22|ALT_INV_n\(23) <= NOT \b2v_inst22|n\(23);
\b2v_inst22|ALT_INV_n\(22) <= NOT \b2v_inst22|n\(22);
\b2v_inst22|ALT_INV_n\(21) <= NOT \b2v_inst22|n\(21);
\b2v_inst22|ALT_INV_n\(8) <= NOT \b2v_inst22|n\(8);
\b2v_inst22|ALT_INV_n\(7) <= NOT \b2v_inst22|n\(7);
\b2v_inst22|ALT_INV_n\(6) <= NOT \b2v_inst22|n\(6);
\b2v_inst22|ALT_INV_n\(18) <= NOT \b2v_inst22|n\(18);
\b2v_inst22|ALT_INV_n\(17) <= NOT \b2v_inst22|n\(17);
\b2v_inst22|ALT_INV_n\(15) <= NOT \b2v_inst22|n\(15);
\b2v_inst22|ALT_INV_n\(10) <= NOT \b2v_inst22|n\(10);
\b2v_inst22|ALT_INV_n\(9) <= NOT \b2v_inst22|n\(9);
\b2v_inst22|ALT_INV_n\(28) <= NOT \b2v_inst22|n\(28);
\b2v_inst22|ALT_INV_n\(27) <= NOT \b2v_inst22|n\(27);
\b2v_inst22|ALT_INV_n\(25) <= NOT \b2v_inst22|n\(25);
\b2v_inst22|ALT_INV_n\(20) <= NOT \b2v_inst22|n\(20);
\b2v_inst22|ALT_INV_n\(19) <= NOT \b2v_inst22|n\(19);
\b2v_inst22|ALT_INV_n\(31) <= NOT \b2v_inst22|n\(31);
\b2v_inst22|ALT_INV_n\(30) <= NOT \b2v_inst22|n\(30);
\b2v_inst22|ALT_INV_n\(29) <= NOT \b2v_inst22|n\(29);
\b2v_inst19|ALT_INV_Add0~125_sumout\ <= NOT \b2v_inst19|Add0~125_sumout\;
\b2v_inst19|ALT_INV_Add0~121_sumout\ <= NOT \b2v_inst19|Add0~121_sumout\;
\b2v_inst19|ALT_INV_Add0~117_sumout\ <= NOT \b2v_inst19|Add0~117_sumout\;
\b2v_inst19|ALT_INV_Add0~113_sumout\ <= NOT \b2v_inst19|Add0~113_sumout\;
\b2v_inst19|ALT_INV_Add0~109_sumout\ <= NOT \b2v_inst19|Add0~109_sumout\;
\b2v_inst19|ALT_INV_Add0~105_sumout\ <= NOT \b2v_inst19|Add0~105_sumout\;
\b2v_inst19|ALT_INV_Add0~101_sumout\ <= NOT \b2v_inst19|Add0~101_sumout\;
\b2v_inst19|ALT_INV_Add0~97_sumout\ <= NOT \b2v_inst19|Add0~97_sumout\;

-- Location: IOOBUF_X89_Y8_N56
\SEG_Centaine[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst26|sortie\(0),
	devoe => ww_devoe,
	o => ww_SEG_Centaine(0));

-- Location: IOOBUF_X89_Y6_N56
\SEG_Centaine[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst26|sortie\(1),
	devoe => ww_devoe,
	o => ww_SEG_Centaine(1));

-- Location: IOOBUF_X89_Y8_N39
\SEG_Centaine[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst26|sortie\(2),
	devoe => ww_devoe,
	o => ww_SEG_Centaine(2));

-- Location: IOOBUF_X89_Y6_N5
\SEG_Centaine[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst26|sortie\(3),
	devoe => ww_devoe,
	o => ww_SEG_Centaine(3));

-- Location: IOOBUF_X89_Y9_N22
\SEG_Dizaine[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|sortie\(0),
	devoe => ww_devoe,
	o => ww_SEG_Dizaine(0));

-- Location: IOOBUF_X89_Y9_N5
\SEG_Dizaine[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|sortie\(1),
	devoe => ww_devoe,
	o => ww_SEG_Dizaine(1));

-- Location: IOOBUF_X89_Y8_N5
\SEG_Dizaine[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|sortie\(2),
	devoe => ww_devoe,
	o => ww_SEG_Dizaine(2));

-- Location: IOOBUF_X89_Y9_N56
\SEG_Dizaine[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst25|sortie\(3),
	devoe => ww_devoe,
	o => ww_SEG_Dizaine(3));

-- Location: IOOBUF_X89_Y9_N39
\SEG_Millier[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst27|sortie\(0),
	devoe => ww_devoe,
	o => ww_SEG_Millier(0));

-- Location: IOOBUF_X89_Y8_N22
\SEG_Millier[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst27|sortie\(1),
	devoe => ww_devoe,
	o => ww_SEG_Millier(1));

-- Location: IOOBUF_X89_Y6_N39
\SEG_Millier[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst27|sortie\(2),
	devoe => ww_devoe,
	o => ww_SEG_Millier(2));

-- Location: IOOBUF_X89_Y6_N22
\SEG_Millier[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst27|sortie\(3),
	devoe => ww_devoe,
	o => ww_SEG_Millier(3));

-- Location: IOOBUF_X89_Y23_N22
\SEG_Unite[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|sortie\(0),
	devoe => ww_devoe,
	o => ww_SEG_Unite(0));

-- Location: IOOBUF_X89_Y23_N39
\SEG_Unite[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|sortie\(1),
	devoe => ww_devoe,
	o => ww_SEG_Unite(1));

-- Location: IOOBUF_X89_Y23_N56
\SEG_Unite[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|sortie\(2),
	devoe => ww_devoe,
	o => ww_SEG_Unite(2));

-- Location: IOOBUF_X89_Y23_N5
\SEG_Unite[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst24|sortie\(3),
	devoe => ww_devoe,
	o => ww_SEG_Unite(3));

-- Location: IOIBUF_X89_Y25_N21
\sel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\clock_50Mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50Mhz,
	o => \clock_50Mhz~input_o\);

-- Location: CLKCTRL_G6
\clock_50Mhz~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50Mhz~input_o\,
	outclk => \clock_50Mhz~inputCLKENA0_outclk\);

-- Location: FF_X85_Y24_N16
\b2v_inst18|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~1_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(29));

-- Location: LABCELL_X85_Y25_N0
\b2v_inst18|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~105_sumout\ = SUM(( \b2v_inst18|n\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst18|Add0~106\ = CARRY(( \b2v_inst18|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(0),
	cin => GND,
	sumout => \b2v_inst18|Add0~105_sumout\,
	cout => \b2v_inst18|Add0~106\);

-- Location: FF_X85_Y25_N2
\b2v_inst18|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~105_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(0));

-- Location: LABCELL_X85_Y25_N3
\b2v_inst18|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~109_sumout\ = SUM(( \b2v_inst18|n\(1) ) + ( GND ) + ( \b2v_inst18|Add0~106\ ))
-- \b2v_inst18|Add0~110\ = CARRY(( \b2v_inst18|n\(1) ) + ( GND ) + ( \b2v_inst18|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(1),
	cin => \b2v_inst18|Add0~106\,
	sumout => \b2v_inst18|Add0~109_sumout\,
	cout => \b2v_inst18|Add0~110\);

-- Location: FF_X85_Y25_N5
\b2v_inst18|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~109_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(1));

-- Location: LABCELL_X85_Y25_N6
\b2v_inst18|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~113_sumout\ = SUM(( \b2v_inst18|n\(2) ) + ( GND ) + ( \b2v_inst18|Add0~110\ ))
-- \b2v_inst18|Add0~114\ = CARRY(( \b2v_inst18|n\(2) ) + ( GND ) + ( \b2v_inst18|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(2),
	cin => \b2v_inst18|Add0~110\,
	sumout => \b2v_inst18|Add0~113_sumout\,
	cout => \b2v_inst18|Add0~114\);

-- Location: FF_X85_Y25_N8
\b2v_inst18|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~113_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(2));

-- Location: LABCELL_X85_Y25_N9
\b2v_inst18|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~117_sumout\ = SUM(( \b2v_inst18|n\(3) ) + ( GND ) + ( \b2v_inst18|Add0~114\ ))
-- \b2v_inst18|Add0~118\ = CARRY(( \b2v_inst18|n\(3) ) + ( GND ) + ( \b2v_inst18|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(3),
	cin => \b2v_inst18|Add0~114\,
	sumout => \b2v_inst18|Add0~117_sumout\,
	cout => \b2v_inst18|Add0~118\);

-- Location: FF_X85_Y25_N11
\b2v_inst18|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~117_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(3));

-- Location: LABCELL_X85_Y25_N12
\b2v_inst18|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~121_sumout\ = SUM(( \b2v_inst18|n\(4) ) + ( GND ) + ( \b2v_inst18|Add0~118\ ))
-- \b2v_inst18|Add0~122\ = CARRY(( \b2v_inst18|n\(4) ) + ( GND ) + ( \b2v_inst18|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(4),
	cin => \b2v_inst18|Add0~118\,
	sumout => \b2v_inst18|Add0~121_sumout\,
	cout => \b2v_inst18|Add0~122\);

-- Location: FF_X85_Y25_N14
\b2v_inst18|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~121_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(4));

-- Location: LABCELL_X85_Y25_N15
\b2v_inst18|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~125_sumout\ = SUM(( \b2v_inst18|n\(5) ) + ( GND ) + ( \b2v_inst18|Add0~122\ ))
-- \b2v_inst18|Add0~126\ = CARRY(( \b2v_inst18|n\(5) ) + ( GND ) + ( \b2v_inst18|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(5),
	cin => \b2v_inst18|Add0~122\,
	sumout => \b2v_inst18|Add0~125_sumout\,
	cout => \b2v_inst18|Add0~126\);

-- Location: FF_X85_Y25_N17
\b2v_inst18|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~125_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(5));

-- Location: LABCELL_X85_Y25_N18
\b2v_inst18|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~53_sumout\ = SUM(( \b2v_inst18|n\(6) ) + ( GND ) + ( \b2v_inst18|Add0~126\ ))
-- \b2v_inst18|Add0~54\ = CARRY(( \b2v_inst18|n\(6) ) + ( GND ) + ( \b2v_inst18|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(6),
	cin => \b2v_inst18|Add0~126\,
	sumout => \b2v_inst18|Add0~53_sumout\,
	cout => \b2v_inst18|Add0~54\);

-- Location: FF_X85_Y25_N20
\b2v_inst18|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~53_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(6));

-- Location: LABCELL_X85_Y25_N21
\b2v_inst18|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~57_sumout\ = SUM(( \b2v_inst18|n\(7) ) + ( GND ) + ( \b2v_inst18|Add0~54\ ))
-- \b2v_inst18|Add0~58\ = CARRY(( \b2v_inst18|n\(7) ) + ( GND ) + ( \b2v_inst18|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(7),
	cin => \b2v_inst18|Add0~54\,
	sumout => \b2v_inst18|Add0~57_sumout\,
	cout => \b2v_inst18|Add0~58\);

-- Location: FF_X85_Y25_N23
\b2v_inst18|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~57_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(7));

-- Location: LABCELL_X85_Y25_N24
\b2v_inst18|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~61_sumout\ = SUM(( \b2v_inst18|n\(8) ) + ( GND ) + ( \b2v_inst18|Add0~58\ ))
-- \b2v_inst18|Add0~62\ = CARRY(( \b2v_inst18|n\(8) ) + ( GND ) + ( \b2v_inst18|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(8),
	cin => \b2v_inst18|Add0~58\,
	sumout => \b2v_inst18|Add0~61_sumout\,
	cout => \b2v_inst18|Add0~62\);

-- Location: FF_X85_Y25_N26
\b2v_inst18|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~61_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(8));

-- Location: LABCELL_X85_Y25_N27
\b2v_inst18|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~33_sumout\ = SUM(( \b2v_inst18|n\(9) ) + ( GND ) + ( \b2v_inst18|Add0~62\ ))
-- \b2v_inst18|Add0~34\ = CARRY(( \b2v_inst18|n\(9) ) + ( GND ) + ( \b2v_inst18|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(9),
	cin => \b2v_inst18|Add0~62\,
	sumout => \b2v_inst18|Add0~33_sumout\,
	cout => \b2v_inst18|Add0~34\);

-- Location: FF_X85_Y25_N29
\b2v_inst18|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~33_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(9));

-- Location: LABCELL_X85_Y25_N30
\b2v_inst18|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~37_sumout\ = SUM(( \b2v_inst18|n\(10) ) + ( GND ) + ( \b2v_inst18|Add0~34\ ))
-- \b2v_inst18|Add0~38\ = CARRY(( \b2v_inst18|n\(10) ) + ( GND ) + ( \b2v_inst18|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(10),
	cin => \b2v_inst18|Add0~34\,
	sumout => \b2v_inst18|Add0~37_sumout\,
	cout => \b2v_inst18|Add0~38\);

-- Location: FF_X85_Y25_N32
\b2v_inst18|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~37_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(10));

-- Location: LABCELL_X85_Y25_N33
\b2v_inst18|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~85_sumout\ = SUM(( \b2v_inst18|n\(11) ) + ( GND ) + ( \b2v_inst18|Add0~38\ ))
-- \b2v_inst18|Add0~86\ = CARRY(( \b2v_inst18|n\(11) ) + ( GND ) + ( \b2v_inst18|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(11),
	cin => \b2v_inst18|Add0~38\,
	sumout => \b2v_inst18|Add0~85_sumout\,
	cout => \b2v_inst18|Add0~86\);

-- Location: FF_X85_Y25_N35
\b2v_inst18|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~85_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(11));

-- Location: LABCELL_X85_Y25_N36
\b2v_inst18|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~89_sumout\ = SUM(( \b2v_inst18|n\(12) ) + ( GND ) + ( \b2v_inst18|Add0~86\ ))
-- \b2v_inst18|Add0~90\ = CARRY(( \b2v_inst18|n\(12) ) + ( GND ) + ( \b2v_inst18|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(12),
	cin => \b2v_inst18|Add0~86\,
	sumout => \b2v_inst18|Add0~89_sumout\,
	cout => \b2v_inst18|Add0~90\);

-- Location: FF_X85_Y25_N38
\b2v_inst18|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~89_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(12));

-- Location: LABCELL_X85_Y25_N39
\b2v_inst18|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~93_sumout\ = SUM(( \b2v_inst18|n\(13) ) + ( GND ) + ( \b2v_inst18|Add0~90\ ))
-- \b2v_inst18|Add0~94\ = CARRY(( \b2v_inst18|n\(13) ) + ( GND ) + ( \b2v_inst18|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(13),
	cin => \b2v_inst18|Add0~90\,
	sumout => \b2v_inst18|Add0~93_sumout\,
	cout => \b2v_inst18|Add0~94\);

-- Location: FF_X85_Y25_N41
\b2v_inst18|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~93_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(13));

-- Location: LABCELL_X85_Y25_N42
\b2v_inst18|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~97_sumout\ = SUM(( \b2v_inst18|n\(14) ) + ( GND ) + ( \b2v_inst18|Add0~94\ ))
-- \b2v_inst18|Add0~98\ = CARRY(( \b2v_inst18|n\(14) ) + ( GND ) + ( \b2v_inst18|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(14),
	cin => \b2v_inst18|Add0~94\,
	sumout => \b2v_inst18|Add0~97_sumout\,
	cout => \b2v_inst18|Add0~98\);

-- Location: FF_X85_Y25_N44
\b2v_inst18|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~97_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(14));

-- Location: LABCELL_X85_Y25_N45
\b2v_inst18|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~41_sumout\ = SUM(( \b2v_inst18|n\(15) ) + ( GND ) + ( \b2v_inst18|Add0~98\ ))
-- \b2v_inst18|Add0~42\ = CARRY(( \b2v_inst18|n\(15) ) + ( GND ) + ( \b2v_inst18|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(15),
	cin => \b2v_inst18|Add0~98\,
	sumout => \b2v_inst18|Add0~41_sumout\,
	cout => \b2v_inst18|Add0~42\);

-- Location: FF_X85_Y25_N47
\b2v_inst18|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~41_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(15));

-- Location: LABCELL_X85_Y25_N48
\b2v_inst18|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~101_sumout\ = SUM(( \b2v_inst18|n\(16) ) + ( GND ) + ( \b2v_inst18|Add0~42\ ))
-- \b2v_inst18|Add0~102\ = CARRY(( \b2v_inst18|n\(16) ) + ( GND ) + ( \b2v_inst18|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(16),
	cin => \b2v_inst18|Add0~42\,
	sumout => \b2v_inst18|Add0~101_sumout\,
	cout => \b2v_inst18|Add0~102\);

-- Location: FF_X85_Y25_N50
\b2v_inst18|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~101_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(16));

-- Location: LABCELL_X85_Y25_N51
\b2v_inst18|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~45_sumout\ = SUM(( \b2v_inst18|n\(17) ) + ( GND ) + ( \b2v_inst18|Add0~102\ ))
-- \b2v_inst18|Add0~46\ = CARRY(( \b2v_inst18|n\(17) ) + ( GND ) + ( \b2v_inst18|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(17),
	cin => \b2v_inst18|Add0~102\,
	sumout => \b2v_inst18|Add0~45_sumout\,
	cout => \b2v_inst18|Add0~46\);

-- Location: FF_X85_Y25_N53
\b2v_inst18|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~45_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(17));

-- Location: LABCELL_X85_Y25_N54
\b2v_inst18|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~49_sumout\ = SUM(( \b2v_inst18|n\(18) ) + ( GND ) + ( \b2v_inst18|Add0~46\ ))
-- \b2v_inst18|Add0~50\ = CARRY(( \b2v_inst18|n\(18) ) + ( GND ) + ( \b2v_inst18|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(18),
	cin => \b2v_inst18|Add0~46\,
	sumout => \b2v_inst18|Add0~49_sumout\,
	cout => \b2v_inst18|Add0~50\);

-- Location: FF_X85_Y25_N56
\b2v_inst18|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~49_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(18));

-- Location: LABCELL_X85_Y25_N57
\b2v_inst18|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~13_sumout\ = SUM(( \b2v_inst18|n\(19) ) + ( GND ) + ( \b2v_inst18|Add0~50\ ))
-- \b2v_inst18|Add0~14\ = CARRY(( \b2v_inst18|n\(19) ) + ( GND ) + ( \b2v_inst18|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(19),
	cin => \b2v_inst18|Add0~50\,
	sumout => \b2v_inst18|Add0~13_sumout\,
	cout => \b2v_inst18|Add0~14\);

-- Location: FF_X85_Y25_N59
\b2v_inst18|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~13_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(19));

-- Location: LABCELL_X85_Y24_N0
\b2v_inst18|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~17_sumout\ = SUM(( \b2v_inst18|n\(20) ) + ( GND ) + ( \b2v_inst18|Add0~14\ ))
-- \b2v_inst18|Add0~18\ = CARRY(( \b2v_inst18|n\(20) ) + ( GND ) + ( \b2v_inst18|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(20),
	cin => \b2v_inst18|Add0~14\,
	sumout => \b2v_inst18|Add0~17_sumout\,
	cout => \b2v_inst18|Add0~18\);

-- Location: FF_X85_Y24_N56
\b2v_inst18|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~17_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(20));

-- Location: LABCELL_X85_Y24_N3
\b2v_inst18|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~65_sumout\ = SUM(( \b2v_inst18|n\(21) ) + ( GND ) + ( \b2v_inst18|Add0~18\ ))
-- \b2v_inst18|Add0~66\ = CARRY(( \b2v_inst18|n\(21) ) + ( GND ) + ( \b2v_inst18|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst18|ALT_INV_n\(21),
	cin => \b2v_inst18|Add0~18\,
	sumout => \b2v_inst18|Add0~65_sumout\,
	cout => \b2v_inst18|Add0~66\);

-- Location: FF_X85_Y24_N44
\b2v_inst18|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~65_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(21));

-- Location: LABCELL_X85_Y24_N6
\b2v_inst18|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~69_sumout\ = SUM(( \b2v_inst18|n\(22) ) + ( GND ) + ( \b2v_inst18|Add0~66\ ))
-- \b2v_inst18|Add0~70\ = CARRY(( \b2v_inst18|n\(22) ) + ( GND ) + ( \b2v_inst18|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(22),
	cin => \b2v_inst18|Add0~66\,
	sumout => \b2v_inst18|Add0~69_sumout\,
	cout => \b2v_inst18|Add0~70\);

-- Location: FF_X85_Y24_N38
\b2v_inst18|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~69_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(22));

-- Location: LABCELL_X85_Y24_N9
\b2v_inst18|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~73_sumout\ = SUM(( \b2v_inst18|n\(23) ) + ( GND ) + ( \b2v_inst18|Add0~70\ ))
-- \b2v_inst18|Add0~74\ = CARRY(( \b2v_inst18|n\(23) ) + ( GND ) + ( \b2v_inst18|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(23),
	cin => \b2v_inst18|Add0~70\,
	sumout => \b2v_inst18|Add0~73_sumout\,
	cout => \b2v_inst18|Add0~74\);

-- Location: FF_X85_Y24_N52
\b2v_inst18|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~73_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(23));

-- Location: LABCELL_X85_Y24_N12
\b2v_inst18|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~77_sumout\ = SUM(( \b2v_inst18|n\(24) ) + ( GND ) + ( \b2v_inst18|Add0~74\ ))
-- \b2v_inst18|Add0~78\ = CARRY(( \b2v_inst18|n\(24) ) + ( GND ) + ( \b2v_inst18|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(24),
	cin => \b2v_inst18|Add0~74\,
	sumout => \b2v_inst18|Add0~77_sumout\,
	cout => \b2v_inst18|Add0~78\);

-- Location: FF_X85_Y24_N59
\b2v_inst18|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~77_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(24));

-- Location: LABCELL_X85_Y24_N15
\b2v_inst18|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~21_sumout\ = SUM(( \b2v_inst18|n\(25) ) + ( GND ) + ( \b2v_inst18|Add0~78\ ))
-- \b2v_inst18|Add0~22\ = CARRY(( \b2v_inst18|n\(25) ) + ( GND ) + ( \b2v_inst18|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst18|ALT_INV_n\(25),
	cin => \b2v_inst18|Add0~78\,
	sumout => \b2v_inst18|Add0~21_sumout\,
	cout => \b2v_inst18|Add0~22\);

-- Location: FF_X85_Y24_N46
\b2v_inst18|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~21_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(25));

-- Location: LABCELL_X85_Y24_N18
\b2v_inst18|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~81_sumout\ = SUM(( \b2v_inst18|n\(26) ) + ( GND ) + ( \b2v_inst18|Add0~22\ ))
-- \b2v_inst18|Add0~82\ = CARRY(( \b2v_inst18|n\(26) ) + ( GND ) + ( \b2v_inst18|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst18|ALT_INV_n\(26),
	cin => \b2v_inst18|Add0~22\,
	sumout => \b2v_inst18|Add0~81_sumout\,
	cout => \b2v_inst18|Add0~82\);

-- Location: FF_X85_Y24_N41
\b2v_inst18|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~81_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(26));

-- Location: LABCELL_X85_Y24_N21
\b2v_inst18|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~25_sumout\ = SUM(( \b2v_inst18|n\(27) ) + ( GND ) + ( \b2v_inst18|Add0~82\ ))
-- \b2v_inst18|Add0~26\ = CARRY(( \b2v_inst18|n\(27) ) + ( GND ) + ( \b2v_inst18|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst18|ALT_INV_n\(27),
	cin => \b2v_inst18|Add0~82\,
	sumout => \b2v_inst18|Add0~25_sumout\,
	cout => \b2v_inst18|Add0~26\);

-- Location: FF_X85_Y24_N49
\b2v_inst18|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~25_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(27));

-- Location: LABCELL_X85_Y24_N24
\b2v_inst18|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~29_sumout\ = SUM(( \b2v_inst18|n\(28) ) + ( GND ) + ( \b2v_inst18|Add0~26\ ))
-- \b2v_inst18|Add0~30\ = CARRY(( \b2v_inst18|n\(28) ) + ( GND ) + ( \b2v_inst18|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst18|ALT_INV_n\(28),
	cin => \b2v_inst18|Add0~26\,
	sumout => \b2v_inst18|Add0~29_sumout\,
	cout => \b2v_inst18|Add0~30\);

-- Location: FF_X85_Y24_N22
\b2v_inst18|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~29_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(28));

-- Location: LABCELL_X85_Y24_N27
\b2v_inst18|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~1_sumout\ = SUM(( \b2v_inst18|n\(29) ) + ( GND ) + ( \b2v_inst18|Add0~30\ ))
-- \b2v_inst18|Add0~2\ = CARRY(( \b2v_inst18|n\(29) ) + ( GND ) + ( \b2v_inst18|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst18|ALT_INV_n\(29),
	cin => \b2v_inst18|Add0~30\,
	sumout => \b2v_inst18|Add0~1_sumout\,
	cout => \b2v_inst18|Add0~2\);

-- Location: FF_X85_Y24_N35
\b2v_inst18|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|Add0~9_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(31));

-- Location: LABCELL_X85_Y24_N30
\b2v_inst18|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~5_sumout\ = SUM(( \b2v_inst18|n\(30) ) + ( GND ) + ( \b2v_inst18|Add0~2\ ))
-- \b2v_inst18|Add0~6\ = CARRY(( \b2v_inst18|n\(30) ) + ( GND ) + ( \b2v_inst18|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst18|ALT_INV_n\(30),
	cin => \b2v_inst18|Add0~2\,
	sumout => \b2v_inst18|Add0~5_sumout\,
	cout => \b2v_inst18|Add0~6\);

-- Location: LABCELL_X85_Y24_N33
\b2v_inst18|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Add0~9_sumout\ = SUM(( \b2v_inst18|n\(31) ) + ( GND ) + ( \b2v_inst18|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst18|ALT_INV_n\(31),
	cin => \b2v_inst18|Add0~6\,
	sumout => \b2v_inst18|Add0~9_sumout\);

-- Location: MLABCELL_X84_Y25_N30
\b2v_inst18|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~7_combout\ = ( !\b2v_inst18|Add0~57_sumout\ & ( !\b2v_inst18|Add0~45_sumout\ & ( (!\b2v_inst18|Add0~33_sumout\ & (\b2v_inst18|Add0~53_sumout\ & (!\b2v_inst18|Add0~37_sumout\ & !\b2v_inst18|Add0~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~33_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~53_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~37_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~57_sumout\,
	dataf => \b2v_inst18|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst18|Equal0~7_combout\);

-- Location: MLABCELL_X84_Y25_N48
\b2v_inst18|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~8_combout\ = ( !\b2v_inst18|Add0~49_sumout\ & ( !\b2v_inst18|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst18|ALT_INV_Add0~49_sumout\,
	dataf => \b2v_inst18|ALT_INV_Add0~41_sumout\,
	combout => \b2v_inst18|Equal0~8_combout\);

-- Location: LABCELL_X85_Y24_N45
\b2v_inst18|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~5_combout\ = ( !\b2v_inst18|Add0~25_sumout\ & ( \b2v_inst18|Equal0~8_combout\ & ( (!\b2v_inst18|Add0~17_sumout\ & (!\b2v_inst18|Add0~21_sumout\ & (\b2v_inst18|Equal0~7_combout\ & !\b2v_inst18|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~21_sumout\,
	datac => \b2v_inst18|ALT_INV_Equal0~7_combout\,
	datad => \b2v_inst18|ALT_INV_Add0~13_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst18|ALT_INV_Equal0~8_combout\,
	combout => \b2v_inst18|Equal0~5_combout\);

-- Location: MLABCELL_X84_Y25_N0
\b2v_inst18|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~3_combout\ = ( \b2v_inst18|Add0~125_sumout\ & ( !\b2v_inst18|Add0~117_sumout\ & ( (\b2v_inst18|Add0~113_sumout\ & (!\b2v_inst18|Add0~105_sumout\ & (!\b2v_inst18|Add0~109_sumout\ & !\b2v_inst18|Add0~121_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~113_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~105_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~109_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~121_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~125_sumout\,
	dataf => \b2v_inst18|ALT_INV_Add0~117_sumout\,
	combout => \b2v_inst18|Equal0~3_combout\);

-- Location: LABCELL_X85_Y24_N48
\b2v_inst18|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~9_combout\ = ( !\b2v_inst18|Add0~101_sumout\ & ( !\b2v_inst18|Add0~81_sumout\ & ( (!\b2v_inst18|Add0~85_sumout\ & (!\b2v_inst18|Add0~89_sumout\ & (!\b2v_inst18|Add0~97_sumout\ & !\b2v_inst18|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~85_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~89_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~97_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~93_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~101_sumout\,
	dataf => \b2v_inst18|ALT_INV_Add0~81_sumout\,
	combout => \b2v_inst18|Equal0~9_combout\);

-- Location: LABCELL_X85_Y24_N57
\b2v_inst18|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~4_combout\ = ( !\b2v_inst18|Add0~77_sumout\ & ( \b2v_inst18|Equal0~9_combout\ & ( (!\b2v_inst18|Add0~65_sumout\ & (!\b2v_inst18|Add0~69_sumout\ & (!\b2v_inst18|Add0~73_sumout\ & \b2v_inst18|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~65_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~69_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~73_sumout\,
	datad => \b2v_inst18|ALT_INV_Equal0~3_combout\,
	datae => \b2v_inst18|ALT_INV_Add0~77_sumout\,
	dataf => \b2v_inst18|ALT_INV_Equal0~9_combout\,
	combout => \b2v_inst18|Equal0~4_combout\);

-- Location: LABCELL_X85_Y24_N39
\b2v_inst18|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~6_combout\ = ( \b2v_inst18|Equal0~5_combout\ & ( \b2v_inst18|Equal0~4_combout\ & ( (!\b2v_inst18|Add0~1_sumout\ & (!\b2v_inst18|Add0~5_sumout\ & (!\b2v_inst18|Add0~29_sumout\ & !\b2v_inst18|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~9_sumout\,
	datae => \b2v_inst18|ALT_INV_Equal0~5_combout\,
	dataf => \b2v_inst18|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst18|Equal0~6_combout\);

-- Location: FF_X85_Y24_N28
\b2v_inst18|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst18|Add0~5_sumout\,
	sclr => \b2v_inst18|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|n\(30));

-- Location: MLABCELL_X84_Y25_N54
\b2v_inst18|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~0_combout\ = ( !\b2v_inst18|Add0~57_sumout\ & ( \b2v_inst18|Add0~53_sumout\ & ( !\b2v_inst18|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst18|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~57_sumout\,
	dataf => \b2v_inst18|ALT_INV_Add0~53_sumout\,
	combout => \b2v_inst18|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y25_N6
\b2v_inst18|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~1_combout\ = ( \b2v_inst18|Equal0~0_combout\ & ( !\b2v_inst18|Add0~45_sumout\ & ( (!\b2v_inst18|Add0~33_sumout\ & (!\b2v_inst18|Add0~41_sumout\ & (!\b2v_inst18|Add0~37_sumout\ & !\b2v_inst18|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~33_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~41_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~37_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~49_sumout\,
	datae => \b2v_inst18|ALT_INV_Equal0~0_combout\,
	dataf => \b2v_inst18|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst18|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y24_N15
\b2v_inst18|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|Equal0~2_combout\ = ( !\b2v_inst18|Add0~21_sumout\ & ( \b2v_inst18|Equal0~1_combout\ & ( (!\b2v_inst18|Add0~13_sumout\ & (!\b2v_inst18|Add0~17_sumout\ & (!\b2v_inst18|Add0~29_sumout\ & !\b2v_inst18|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~13_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~17_sumout\,
	datac => \b2v_inst18|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst18|ALT_INV_Add0~25_sumout\,
	datae => \b2v_inst18|ALT_INV_Add0~21_sumout\,
	dataf => \b2v_inst18|ALT_INV_Equal0~1_combout\,
	combout => \b2v_inst18|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y24_N9
\b2v_inst18|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst18|temp~0_combout\ = ( \b2v_inst18|temp~q\ & ( \b2v_inst18|Equal0~4_combout\ & ( (((!\b2v_inst18|Equal0~2_combout\) # (\b2v_inst18|Add0~1_sumout\)) # (\b2v_inst18|Add0~9_sumout\)) # (\b2v_inst18|Add0~5_sumout\) ) ) ) # ( !\b2v_inst18|temp~q\ & ( 
-- \b2v_inst18|Equal0~4_combout\ & ( (!\b2v_inst18|Add0~5_sumout\ & (!\b2v_inst18|Add0~9_sumout\ & (\b2v_inst18|Equal0~2_combout\ & !\b2v_inst18|Add0~1_sumout\))) ) ) ) # ( \b2v_inst18|temp~q\ & ( !\b2v_inst18|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst18|ALT_INV_Add0~5_sumout\,
	datab => \b2v_inst18|ALT_INV_Add0~9_sumout\,
	datac => \b2v_inst18|ALT_INV_Equal0~2_combout\,
	datad => \b2v_inst18|ALT_INV_Add0~1_sumout\,
	datae => \b2v_inst18|ALT_INV_temp~q\,
	dataf => \b2v_inst18|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst18|temp~0_combout\);

-- Location: FF_X84_Y24_N10
\b2v_inst18|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst18|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst18|temp~q\);

-- Location: FF_X85_Y28_N35
\b2v_inst19|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~9_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(31));

-- Location: LABCELL_X85_Y29_N0
\b2v_inst19|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~105_sumout\ = SUM(( \b2v_inst19|n\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst19|Add0~106\ = CARRY(( \b2v_inst19|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(0),
	cin => GND,
	sumout => \b2v_inst19|Add0~105_sumout\,
	cout => \b2v_inst19|Add0~106\);

-- Location: FF_X85_Y29_N2
\b2v_inst19|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~105_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(0));

-- Location: LABCELL_X85_Y29_N3
\b2v_inst19|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~109_sumout\ = SUM(( \b2v_inst19|n\(1) ) + ( GND ) + ( \b2v_inst19|Add0~106\ ))
-- \b2v_inst19|Add0~110\ = CARRY(( \b2v_inst19|n\(1) ) + ( GND ) + ( \b2v_inst19|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(1),
	cin => \b2v_inst19|Add0~106\,
	sumout => \b2v_inst19|Add0~109_sumout\,
	cout => \b2v_inst19|Add0~110\);

-- Location: FF_X85_Y29_N5
\b2v_inst19|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~109_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(1));

-- Location: LABCELL_X85_Y29_N6
\b2v_inst19|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~113_sumout\ = SUM(( \b2v_inst19|n\(2) ) + ( GND ) + ( \b2v_inst19|Add0~110\ ))
-- \b2v_inst19|Add0~114\ = CARRY(( \b2v_inst19|n\(2) ) + ( GND ) + ( \b2v_inst19|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(2),
	cin => \b2v_inst19|Add0~110\,
	sumout => \b2v_inst19|Add0~113_sumout\,
	cout => \b2v_inst19|Add0~114\);

-- Location: FF_X85_Y29_N8
\b2v_inst19|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~113_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(2));

-- Location: LABCELL_X85_Y29_N9
\b2v_inst19|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~117_sumout\ = SUM(( \b2v_inst19|n\(3) ) + ( GND ) + ( \b2v_inst19|Add0~114\ ))
-- \b2v_inst19|Add0~118\ = CARRY(( \b2v_inst19|n\(3) ) + ( GND ) + ( \b2v_inst19|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(3),
	cin => \b2v_inst19|Add0~114\,
	sumout => \b2v_inst19|Add0~117_sumout\,
	cout => \b2v_inst19|Add0~118\);

-- Location: FF_X85_Y29_N11
\b2v_inst19|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~117_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(3));

-- Location: LABCELL_X85_Y29_N12
\b2v_inst19|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~121_sumout\ = SUM(( \b2v_inst19|n\(4) ) + ( GND ) + ( \b2v_inst19|Add0~118\ ))
-- \b2v_inst19|Add0~122\ = CARRY(( \b2v_inst19|n\(4) ) + ( GND ) + ( \b2v_inst19|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(4),
	cin => \b2v_inst19|Add0~118\,
	sumout => \b2v_inst19|Add0~121_sumout\,
	cout => \b2v_inst19|Add0~122\);

-- Location: FF_X85_Y29_N14
\b2v_inst19|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~121_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(4));

-- Location: LABCELL_X85_Y29_N15
\b2v_inst19|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~125_sumout\ = SUM(( \b2v_inst19|n\(5) ) + ( GND ) + ( \b2v_inst19|Add0~122\ ))
-- \b2v_inst19|Add0~126\ = CARRY(( \b2v_inst19|n\(5) ) + ( GND ) + ( \b2v_inst19|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(5),
	cin => \b2v_inst19|Add0~122\,
	sumout => \b2v_inst19|Add0~125_sumout\,
	cout => \b2v_inst19|Add0~126\);

-- Location: FF_X85_Y29_N17
\b2v_inst19|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~125_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(5));

-- Location: LABCELL_X85_Y29_N18
\b2v_inst19|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~53_sumout\ = SUM(( \b2v_inst19|n\(6) ) + ( GND ) + ( \b2v_inst19|Add0~126\ ))
-- \b2v_inst19|Add0~54\ = CARRY(( \b2v_inst19|n\(6) ) + ( GND ) + ( \b2v_inst19|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(6),
	cin => \b2v_inst19|Add0~126\,
	sumout => \b2v_inst19|Add0~53_sumout\,
	cout => \b2v_inst19|Add0~54\);

-- Location: FF_X85_Y29_N20
\b2v_inst19|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~53_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(6));

-- Location: LABCELL_X85_Y29_N21
\b2v_inst19|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~57_sumout\ = SUM(( \b2v_inst19|n\(7) ) + ( GND ) + ( \b2v_inst19|Add0~54\ ))
-- \b2v_inst19|Add0~58\ = CARRY(( \b2v_inst19|n\(7) ) + ( GND ) + ( \b2v_inst19|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(7),
	cin => \b2v_inst19|Add0~54\,
	sumout => \b2v_inst19|Add0~57_sumout\,
	cout => \b2v_inst19|Add0~58\);

-- Location: FF_X85_Y29_N23
\b2v_inst19|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~57_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(7));

-- Location: LABCELL_X85_Y29_N24
\b2v_inst19|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~61_sumout\ = SUM(( \b2v_inst19|n\(8) ) + ( GND ) + ( \b2v_inst19|Add0~58\ ))
-- \b2v_inst19|Add0~62\ = CARRY(( \b2v_inst19|n\(8) ) + ( GND ) + ( \b2v_inst19|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(8),
	cin => \b2v_inst19|Add0~58\,
	sumout => \b2v_inst19|Add0~61_sumout\,
	cout => \b2v_inst19|Add0~62\);

-- Location: FF_X85_Y29_N26
\b2v_inst19|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~61_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(8));

-- Location: LABCELL_X85_Y29_N27
\b2v_inst19|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~33_sumout\ = SUM(( \b2v_inst19|n\(9) ) + ( GND ) + ( \b2v_inst19|Add0~62\ ))
-- \b2v_inst19|Add0~34\ = CARRY(( \b2v_inst19|n\(9) ) + ( GND ) + ( \b2v_inst19|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(9),
	cin => \b2v_inst19|Add0~62\,
	sumout => \b2v_inst19|Add0~33_sumout\,
	cout => \b2v_inst19|Add0~34\);

-- Location: FF_X85_Y29_N29
\b2v_inst19|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~33_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(9));

-- Location: LABCELL_X85_Y29_N30
\b2v_inst19|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~37_sumout\ = SUM(( \b2v_inst19|n\(10) ) + ( GND ) + ( \b2v_inst19|Add0~34\ ))
-- \b2v_inst19|Add0~38\ = CARRY(( \b2v_inst19|n\(10) ) + ( GND ) + ( \b2v_inst19|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(10),
	cin => \b2v_inst19|Add0~34\,
	sumout => \b2v_inst19|Add0~37_sumout\,
	cout => \b2v_inst19|Add0~38\);

-- Location: FF_X85_Y29_N32
\b2v_inst19|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~37_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(10));

-- Location: LABCELL_X85_Y29_N33
\b2v_inst19|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~85_sumout\ = SUM(( \b2v_inst19|n\(11) ) + ( GND ) + ( \b2v_inst19|Add0~38\ ))
-- \b2v_inst19|Add0~86\ = CARRY(( \b2v_inst19|n\(11) ) + ( GND ) + ( \b2v_inst19|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(11),
	cin => \b2v_inst19|Add0~38\,
	sumout => \b2v_inst19|Add0~85_sumout\,
	cout => \b2v_inst19|Add0~86\);

-- Location: FF_X85_Y29_N35
\b2v_inst19|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~85_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(11));

-- Location: LABCELL_X85_Y29_N36
\b2v_inst19|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~89_sumout\ = SUM(( \b2v_inst19|n\(12) ) + ( GND ) + ( \b2v_inst19|Add0~86\ ))
-- \b2v_inst19|Add0~90\ = CARRY(( \b2v_inst19|n\(12) ) + ( GND ) + ( \b2v_inst19|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(12),
	cin => \b2v_inst19|Add0~86\,
	sumout => \b2v_inst19|Add0~89_sumout\,
	cout => \b2v_inst19|Add0~90\);

-- Location: FF_X85_Y29_N38
\b2v_inst19|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~89_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(12));

-- Location: LABCELL_X85_Y29_N39
\b2v_inst19|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~93_sumout\ = SUM(( \b2v_inst19|n\(13) ) + ( GND ) + ( \b2v_inst19|Add0~90\ ))
-- \b2v_inst19|Add0~94\ = CARRY(( \b2v_inst19|n\(13) ) + ( GND ) + ( \b2v_inst19|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(13),
	cin => \b2v_inst19|Add0~90\,
	sumout => \b2v_inst19|Add0~93_sumout\,
	cout => \b2v_inst19|Add0~94\);

-- Location: FF_X85_Y29_N41
\b2v_inst19|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~93_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(13));

-- Location: LABCELL_X85_Y29_N42
\b2v_inst19|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~97_sumout\ = SUM(( \b2v_inst19|n\(14) ) + ( GND ) + ( \b2v_inst19|Add0~94\ ))
-- \b2v_inst19|Add0~98\ = CARRY(( \b2v_inst19|n\(14) ) + ( GND ) + ( \b2v_inst19|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(14),
	cin => \b2v_inst19|Add0~94\,
	sumout => \b2v_inst19|Add0~97_sumout\,
	cout => \b2v_inst19|Add0~98\);

-- Location: FF_X85_Y29_N44
\b2v_inst19|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~97_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(14));

-- Location: LABCELL_X85_Y29_N45
\b2v_inst19|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~41_sumout\ = SUM(( \b2v_inst19|n\(15) ) + ( GND ) + ( \b2v_inst19|Add0~98\ ))
-- \b2v_inst19|Add0~42\ = CARRY(( \b2v_inst19|n\(15) ) + ( GND ) + ( \b2v_inst19|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(15),
	cin => \b2v_inst19|Add0~98\,
	sumout => \b2v_inst19|Add0~41_sumout\,
	cout => \b2v_inst19|Add0~42\);

-- Location: FF_X85_Y29_N47
\b2v_inst19|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~41_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(15));

-- Location: LABCELL_X85_Y29_N48
\b2v_inst19|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~101_sumout\ = SUM(( \b2v_inst19|n\(16) ) + ( GND ) + ( \b2v_inst19|Add0~42\ ))
-- \b2v_inst19|Add0~102\ = CARRY(( \b2v_inst19|n\(16) ) + ( GND ) + ( \b2v_inst19|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(16),
	cin => \b2v_inst19|Add0~42\,
	sumout => \b2v_inst19|Add0~101_sumout\,
	cout => \b2v_inst19|Add0~102\);

-- Location: FF_X85_Y29_N50
\b2v_inst19|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~101_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(16));

-- Location: LABCELL_X85_Y29_N51
\b2v_inst19|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~45_sumout\ = SUM(( \b2v_inst19|n\(17) ) + ( GND ) + ( \b2v_inst19|Add0~102\ ))
-- \b2v_inst19|Add0~46\ = CARRY(( \b2v_inst19|n\(17) ) + ( GND ) + ( \b2v_inst19|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(17),
	cin => \b2v_inst19|Add0~102\,
	sumout => \b2v_inst19|Add0~45_sumout\,
	cout => \b2v_inst19|Add0~46\);

-- Location: FF_X85_Y29_N53
\b2v_inst19|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~45_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(17));

-- Location: LABCELL_X85_Y29_N54
\b2v_inst19|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~49_sumout\ = SUM(( \b2v_inst19|n\(18) ) + ( GND ) + ( \b2v_inst19|Add0~46\ ))
-- \b2v_inst19|Add0~50\ = CARRY(( \b2v_inst19|n\(18) ) + ( GND ) + ( \b2v_inst19|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(18),
	cin => \b2v_inst19|Add0~46\,
	sumout => \b2v_inst19|Add0~49_sumout\,
	cout => \b2v_inst19|Add0~50\);

-- Location: FF_X85_Y29_N56
\b2v_inst19|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~49_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(18));

-- Location: LABCELL_X85_Y29_N57
\b2v_inst19|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~13_sumout\ = SUM(( \b2v_inst19|n\(19) ) + ( GND ) + ( \b2v_inst19|Add0~50\ ))
-- \b2v_inst19|Add0~14\ = CARRY(( \b2v_inst19|n\(19) ) + ( GND ) + ( \b2v_inst19|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(19),
	cin => \b2v_inst19|Add0~50\,
	sumout => \b2v_inst19|Add0~13_sumout\,
	cout => \b2v_inst19|Add0~14\);

-- Location: FF_X85_Y29_N59
\b2v_inst19|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|Add0~13_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(19));

-- Location: LABCELL_X85_Y28_N0
\b2v_inst19|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~17_sumout\ = SUM(( \b2v_inst19|n\(20) ) + ( GND ) + ( \b2v_inst19|Add0~14\ ))
-- \b2v_inst19|Add0~18\ = CARRY(( \b2v_inst19|n\(20) ) + ( GND ) + ( \b2v_inst19|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|ALT_INV_n\(20),
	cin => \b2v_inst19|Add0~14\,
	sumout => \b2v_inst19|Add0~17_sumout\,
	cout => \b2v_inst19|Add0~18\);

-- Location: FF_X85_Y28_N49
\b2v_inst19|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~17_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(20));

-- Location: LABCELL_X85_Y28_N3
\b2v_inst19|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~65_sumout\ = SUM(( \b2v_inst19|n\(21) ) + ( GND ) + ( \b2v_inst19|Add0~18\ ))
-- \b2v_inst19|Add0~66\ = CARRY(( \b2v_inst19|n\(21) ) + ( GND ) + ( \b2v_inst19|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_n\(21),
	cin => \b2v_inst19|Add0~18\,
	sumout => \b2v_inst19|Add0~65_sumout\,
	cout => \b2v_inst19|Add0~66\);

-- Location: FF_X85_Y28_N44
\b2v_inst19|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~65_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(21));

-- Location: LABCELL_X85_Y28_N6
\b2v_inst19|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~69_sumout\ = SUM(( \b2v_inst19|n\(22) ) + ( GND ) + ( \b2v_inst19|Add0~66\ ))
-- \b2v_inst19|Add0~70\ = CARRY(( \b2v_inst19|n\(22) ) + ( GND ) + ( \b2v_inst19|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(22),
	cin => \b2v_inst19|Add0~66\,
	sumout => \b2v_inst19|Add0~69_sumout\,
	cout => \b2v_inst19|Add0~70\);

-- Location: FF_X85_Y28_N56
\b2v_inst19|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~69_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(22));

-- Location: LABCELL_X85_Y28_N9
\b2v_inst19|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~73_sumout\ = SUM(( \b2v_inst19|n\(23) ) + ( GND ) + ( \b2v_inst19|Add0~70\ ))
-- \b2v_inst19|Add0~74\ = CARRY(( \b2v_inst19|n\(23) ) + ( GND ) + ( \b2v_inst19|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(23),
	cin => \b2v_inst19|Add0~70\,
	sumout => \b2v_inst19|Add0~73_sumout\,
	cout => \b2v_inst19|Add0~74\);

-- Location: FF_X85_Y28_N40
\b2v_inst19|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~73_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(23));

-- Location: LABCELL_X85_Y28_N12
\b2v_inst19|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~77_sumout\ = SUM(( \b2v_inst19|n\(24) ) + ( GND ) + ( \b2v_inst19|Add0~74\ ))
-- \b2v_inst19|Add0~78\ = CARRY(( \b2v_inst19|n\(24) ) + ( GND ) + ( \b2v_inst19|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(24),
	cin => \b2v_inst19|Add0~74\,
	sumout => \b2v_inst19|Add0~77_sumout\,
	cout => \b2v_inst19|Add0~78\);

-- Location: FF_X85_Y28_N52
\b2v_inst19|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~77_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(24));

-- Location: LABCELL_X85_Y28_N15
\b2v_inst19|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~21_sumout\ = SUM(( \b2v_inst19|n\(25) ) + ( GND ) + ( \b2v_inst19|Add0~78\ ))
-- \b2v_inst19|Add0~22\ = CARRY(( \b2v_inst19|n\(25) ) + ( GND ) + ( \b2v_inst19|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_n\(25),
	cin => \b2v_inst19|Add0~78\,
	sumout => \b2v_inst19|Add0~21_sumout\,
	cout => \b2v_inst19|Add0~22\);

-- Location: FF_X85_Y28_N47
\b2v_inst19|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~21_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(25));

-- Location: LABCELL_X85_Y28_N18
\b2v_inst19|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~81_sumout\ = SUM(( \b2v_inst19|n\(26) ) + ( GND ) + ( \b2v_inst19|Add0~22\ ))
-- \b2v_inst19|Add0~82\ = CARRY(( \b2v_inst19|n\(26) ) + ( GND ) + ( \b2v_inst19|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|ALT_INV_n\(26),
	cin => \b2v_inst19|Add0~22\,
	sumout => \b2v_inst19|Add0~81_sumout\,
	cout => \b2v_inst19|Add0~82\);

-- Location: FF_X85_Y28_N58
\b2v_inst19|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~81_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(26));

-- Location: LABCELL_X85_Y28_N21
\b2v_inst19|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~25_sumout\ = SUM(( \b2v_inst19|n\(27) ) + ( GND ) + ( \b2v_inst19|Add0~82\ ))
-- \b2v_inst19|Add0~26\ = CARRY(( \b2v_inst19|n\(27) ) + ( GND ) + ( \b2v_inst19|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_n\(27),
	cin => \b2v_inst19|Add0~82\,
	sumout => \b2v_inst19|Add0~25_sumout\,
	cout => \b2v_inst19|Add0~26\);

-- Location: FF_X85_Y28_N37
\b2v_inst19|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~25_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(27));

-- Location: LABCELL_X85_Y28_N24
\b2v_inst19|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~29_sumout\ = SUM(( \b2v_inst19|n\(28) ) + ( GND ) + ( \b2v_inst19|Add0~26\ ))
-- \b2v_inst19|Add0~30\ = CARRY(( \b2v_inst19|n\(28) ) + ( GND ) + ( \b2v_inst19|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(28),
	cin => \b2v_inst19|Add0~26\,
	sumout => \b2v_inst19|Add0~29_sumout\,
	cout => \b2v_inst19|Add0~30\);

-- Location: FF_X85_Y28_N22
\b2v_inst19|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~29_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(28));

-- Location: LABCELL_X85_Y28_N27
\b2v_inst19|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~1_sumout\ = SUM(( \b2v_inst19|n\(29) ) + ( GND ) + ( \b2v_inst19|Add0~30\ ))
-- \b2v_inst19|Add0~2\ = CARRY(( \b2v_inst19|n\(29) ) + ( GND ) + ( \b2v_inst19|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|ALT_INV_n\(29),
	cin => \b2v_inst19|Add0~30\,
	sumout => \b2v_inst19|Add0~1_sumout\,
	cout => \b2v_inst19|Add0~2\);

-- Location: FF_X85_Y28_N17
\b2v_inst19|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~1_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(29));

-- Location: LABCELL_X85_Y28_N30
\b2v_inst19|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~5_sumout\ = SUM(( \b2v_inst19|n\(30) ) + ( GND ) + ( \b2v_inst19|Add0~2\ ))
-- \b2v_inst19|Add0~6\ = CARRY(( \b2v_inst19|n\(30) ) + ( GND ) + ( \b2v_inst19|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst19|ALT_INV_n\(30),
	cin => \b2v_inst19|Add0~2\,
	sumout => \b2v_inst19|Add0~5_sumout\,
	cout => \b2v_inst19|Add0~6\);

-- Location: LABCELL_X85_Y28_N33
\b2v_inst19|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Add0~9_sumout\ = SUM(( \b2v_inst19|n\(31) ) + ( GND ) + ( \b2v_inst19|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst19|ALT_INV_n\(31),
	cin => \b2v_inst19|Add0~6\,
	sumout => \b2v_inst19|Add0~9_sumout\);

-- Location: MLABCELL_X84_Y28_N6
\b2v_inst19|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~7_combout\ = ( !\b2v_inst19|Add0~37_sumout\ & ( !\b2v_inst19|Add0~45_sumout\ & ( (\b2v_inst19|Add0~61_sumout\ & (\b2v_inst19|Add0~53_sumout\ & (\b2v_inst19|Add0~33_sumout\ & \b2v_inst19|Add0~57_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~61_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~53_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~33_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~57_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~37_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst19|Equal0~7_combout\);

-- Location: MLABCELL_X84_Y28_N3
\b2v_inst19|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~8_combout\ = ( !\b2v_inst19|Add0~41_sumout\ & ( !\b2v_inst19|Add0~49_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst19|ALT_INV_Add0~41_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~49_sumout\,
	combout => \b2v_inst19|Equal0~8_combout\);

-- Location: LABCELL_X85_Y28_N45
\b2v_inst19|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~5_combout\ = ( \b2v_inst19|Equal0~7_combout\ & ( \b2v_inst19|Equal0~8_combout\ & ( (!\b2v_inst19|Add0~17_sumout\ & (!\b2v_inst19|Add0~21_sumout\ & (!\b2v_inst19|Add0~13_sumout\ & !\b2v_inst19|Add0~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~21_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~13_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~25_sumout\,
	datae => \b2v_inst19|ALT_INV_Equal0~7_combout\,
	dataf => \b2v_inst19|ALT_INV_Equal0~8_combout\,
	combout => \b2v_inst19|Equal0~5_combout\);

-- Location: MLABCELL_X84_Y29_N48
\b2v_inst19|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~3_combout\ = ( \b2v_inst19|Add0~117_sumout\ & ( \b2v_inst19|Add0~125_sumout\ & ( (!\b2v_inst19|Add0~113_sumout\ & (!\b2v_inst19|Add0~105_sumout\ & (!\b2v_inst19|Add0~109_sumout\ & !\b2v_inst19|Add0~121_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~113_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~105_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~109_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~121_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~117_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~125_sumout\,
	combout => \b2v_inst19|Equal0~3_combout\);

-- Location: LABCELL_X85_Y28_N36
\b2v_inst19|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~9_combout\ = ( !\b2v_inst19|Add0~101_sumout\ & ( !\b2v_inst19|Add0~81_sumout\ & ( (!\b2v_inst19|Add0~93_sumout\ & (!\b2v_inst19|Add0~85_sumout\ & (!\b2v_inst19|Add0~97_sumout\ & !\b2v_inst19|Add0~89_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~93_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~85_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~97_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~89_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~101_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~81_sumout\,
	combout => \b2v_inst19|Equal0~9_combout\);

-- Location: LABCELL_X85_Y28_N51
\b2v_inst19|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~4_combout\ = ( \b2v_inst19|Equal0~9_combout\ & ( !\b2v_inst19|Add0~69_sumout\ & ( (!\b2v_inst19|Add0~65_sumout\ & (!\b2v_inst19|Add0~77_sumout\ & (!\b2v_inst19|Add0~73_sumout\ & \b2v_inst19|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~65_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~77_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~73_sumout\,
	datad => \b2v_inst19|ALT_INV_Equal0~3_combout\,
	datae => \b2v_inst19|ALT_INV_Equal0~9_combout\,
	dataf => \b2v_inst19|ALT_INV_Add0~69_sumout\,
	combout => \b2v_inst19|Equal0~4_combout\);

-- Location: LABCELL_X85_Y28_N57
\b2v_inst19|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~6_combout\ = ( \b2v_inst19|Equal0~5_combout\ & ( \b2v_inst19|Equal0~4_combout\ & ( (!\b2v_inst19|Add0~9_sumout\ & (!\b2v_inst19|Add0~5_sumout\ & (!\b2v_inst19|Add0~1_sumout\ & !\b2v_inst19|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~9_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~1_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~29_sumout\,
	datae => \b2v_inst19|ALT_INV_Equal0~5_combout\,
	dataf => \b2v_inst19|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst19|Equal0~6_combout\);

-- Location: FF_X85_Y28_N29
\b2v_inst19|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst19|Add0~5_sumout\,
	sclr => \b2v_inst19|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|n\(30));

-- Location: MLABCELL_X84_Y28_N18
\b2v_inst19|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~0_combout\ = ( \b2v_inst19|Add0~53_sumout\ & ( \b2v_inst19|Add0~61_sumout\ & ( \b2v_inst19|Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst19|ALT_INV_Add0~57_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~53_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~61_sumout\,
	combout => \b2v_inst19|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y28_N24
\b2v_inst19|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~1_combout\ = ( !\b2v_inst19|Add0~41_sumout\ & ( !\b2v_inst19|Add0~45_sumout\ & ( (\b2v_inst19|Equal0~0_combout\ & (!\b2v_inst19|Add0~37_sumout\ & (\b2v_inst19|Add0~33_sumout\ & !\b2v_inst19|Add0~49_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Equal0~0_combout\,
	datab => \b2v_inst19|ALT_INV_Add0~37_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~33_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~49_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~41_sumout\,
	dataf => \b2v_inst19|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst19|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y28_N30
\b2v_inst19|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|Equal0~2_combout\ = ( !\b2v_inst19|Add0~25_sumout\ & ( \b2v_inst19|Equal0~1_combout\ & ( (!\b2v_inst19|Add0~17_sumout\ & (!\b2v_inst19|Add0~13_sumout\ & (!\b2v_inst19|Add0~21_sumout\ & !\b2v_inst19|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~13_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~21_sumout\,
	datad => \b2v_inst19|ALT_INV_Add0~29_sumout\,
	datae => \b2v_inst19|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst19|ALT_INV_Equal0~1_combout\,
	combout => \b2v_inst19|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y28_N48
\b2v_inst19|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst19|temp~0_combout\ = ( \b2v_inst19|temp~q\ & ( \b2v_inst19|Equal0~4_combout\ & ( (((!\b2v_inst19|Equal0~2_combout\) # (\b2v_inst19|Add0~1_sumout\)) # (\b2v_inst19|Add0~9_sumout\)) # (\b2v_inst19|Add0~5_sumout\) ) ) ) # ( !\b2v_inst19|temp~q\ & ( 
-- \b2v_inst19|Equal0~4_combout\ & ( (!\b2v_inst19|Add0~5_sumout\ & (!\b2v_inst19|Add0~9_sumout\ & (!\b2v_inst19|Add0~1_sumout\ & \b2v_inst19|Equal0~2_combout\))) ) ) ) # ( \b2v_inst19|temp~q\ & ( !\b2v_inst19|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000100000001111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst19|ALT_INV_Add0~5_sumout\,
	datab => \b2v_inst19|ALT_INV_Add0~9_sumout\,
	datac => \b2v_inst19|ALT_INV_Add0~1_sumout\,
	datad => \b2v_inst19|ALT_INV_Equal0~2_combout\,
	datae => \b2v_inst19|ALT_INV_temp~q\,
	dataf => \b2v_inst19|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst19|temp~0_combout\);

-- Location: FF_X84_Y28_N49
\b2v_inst19|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst19|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst19|temp~q\);

-- Location: MLABCELL_X87_Y24_N15
\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\ = ( \b2v_inst19|temp~q\ & ( (!\sel[0]~input_o\ & !\b2v_inst18|temp~q\) ) ) # ( !\b2v_inst19|temp~q\ & ( (!\b2v_inst18|temp~q\) # (\sel[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111110101111101011111010110100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sel[0]~input_o\,
	datac => \b2v_inst18|ALT_INV_temp~q\,
	dataf => \b2v_inst19|ALT_INV_temp~q\,
	combout => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\);

-- Location: IOIBUF_X89_Y25_N4
\sel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: FF_X87_Y25_N16
\b2v_inst17|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~1_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(29));

-- Location: MLABCELL_X87_Y26_N0
\b2v_inst17|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~105_sumout\ = SUM(( \b2v_inst17|n\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst17|Add0~106\ = CARRY(( \b2v_inst17|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(0),
	cin => GND,
	sumout => \b2v_inst17|Add0~105_sumout\,
	cout => \b2v_inst17|Add0~106\);

-- Location: MLABCELL_X87_Y26_N3
\b2v_inst17|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~109_sumout\ = SUM(( \b2v_inst17|n\(1) ) + ( GND ) + ( \b2v_inst17|Add0~106\ ))
-- \b2v_inst17|Add0~110\ = CARRY(( \b2v_inst17|n\(1) ) + ( GND ) + ( \b2v_inst17|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(1),
	cin => \b2v_inst17|Add0~106\,
	sumout => \b2v_inst17|Add0~109_sumout\,
	cout => \b2v_inst17|Add0~110\);

-- Location: FF_X87_Y26_N5
\b2v_inst17|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~109_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(1));

-- Location: MLABCELL_X87_Y26_N6
\b2v_inst17|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~113_sumout\ = SUM(( \b2v_inst17|n\(2) ) + ( GND ) + ( \b2v_inst17|Add0~110\ ))
-- \b2v_inst17|Add0~114\ = CARRY(( \b2v_inst17|n\(2) ) + ( GND ) + ( \b2v_inst17|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(2),
	cin => \b2v_inst17|Add0~110\,
	sumout => \b2v_inst17|Add0~113_sumout\,
	cout => \b2v_inst17|Add0~114\);

-- Location: FF_X87_Y26_N8
\b2v_inst17|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~113_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(2));

-- Location: MLABCELL_X87_Y26_N9
\b2v_inst17|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~117_sumout\ = SUM(( \b2v_inst17|n\(3) ) + ( GND ) + ( \b2v_inst17|Add0~114\ ))
-- \b2v_inst17|Add0~118\ = CARRY(( \b2v_inst17|n\(3) ) + ( GND ) + ( \b2v_inst17|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(3),
	cin => \b2v_inst17|Add0~114\,
	sumout => \b2v_inst17|Add0~117_sumout\,
	cout => \b2v_inst17|Add0~118\);

-- Location: FF_X87_Y26_N11
\b2v_inst17|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~117_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(3));

-- Location: MLABCELL_X87_Y26_N12
\b2v_inst17|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~121_sumout\ = SUM(( \b2v_inst17|n\(4) ) + ( GND ) + ( \b2v_inst17|Add0~118\ ))
-- \b2v_inst17|Add0~122\ = CARRY(( \b2v_inst17|n\(4) ) + ( GND ) + ( \b2v_inst17|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(4),
	cin => \b2v_inst17|Add0~118\,
	sumout => \b2v_inst17|Add0~121_sumout\,
	cout => \b2v_inst17|Add0~122\);

-- Location: FF_X87_Y26_N14
\b2v_inst17|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~121_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(4));

-- Location: MLABCELL_X87_Y26_N15
\b2v_inst17|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~125_sumout\ = SUM(( \b2v_inst17|n\(5) ) + ( GND ) + ( \b2v_inst17|Add0~122\ ))
-- \b2v_inst17|Add0~126\ = CARRY(( \b2v_inst17|n\(5) ) + ( GND ) + ( \b2v_inst17|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(5),
	cin => \b2v_inst17|Add0~122\,
	sumout => \b2v_inst17|Add0~125_sumout\,
	cout => \b2v_inst17|Add0~126\);

-- Location: FF_X87_Y26_N17
\b2v_inst17|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~125_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(5));

-- Location: MLABCELL_X87_Y26_N18
\b2v_inst17|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~53_sumout\ = SUM(( \b2v_inst17|n\(6) ) + ( GND ) + ( \b2v_inst17|Add0~126\ ))
-- \b2v_inst17|Add0~54\ = CARRY(( \b2v_inst17|n\(6) ) + ( GND ) + ( \b2v_inst17|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(6),
	cin => \b2v_inst17|Add0~126\,
	sumout => \b2v_inst17|Add0~53_sumout\,
	cout => \b2v_inst17|Add0~54\);

-- Location: FF_X87_Y26_N20
\b2v_inst17|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~53_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(6));

-- Location: MLABCELL_X87_Y26_N21
\b2v_inst17|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~57_sumout\ = SUM(( \b2v_inst17|n\(7) ) + ( GND ) + ( \b2v_inst17|Add0~54\ ))
-- \b2v_inst17|Add0~58\ = CARRY(( \b2v_inst17|n\(7) ) + ( GND ) + ( \b2v_inst17|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(7),
	cin => \b2v_inst17|Add0~54\,
	sumout => \b2v_inst17|Add0~57_sumout\,
	cout => \b2v_inst17|Add0~58\);

-- Location: FF_X87_Y26_N23
\b2v_inst17|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~57_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(7));

-- Location: MLABCELL_X87_Y26_N24
\b2v_inst17|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~61_sumout\ = SUM(( \b2v_inst17|n\(8) ) + ( GND ) + ( \b2v_inst17|Add0~58\ ))
-- \b2v_inst17|Add0~62\ = CARRY(( \b2v_inst17|n\(8) ) + ( GND ) + ( \b2v_inst17|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(8),
	cin => \b2v_inst17|Add0~58\,
	sumout => \b2v_inst17|Add0~61_sumout\,
	cout => \b2v_inst17|Add0~62\);

-- Location: FF_X87_Y26_N26
\b2v_inst17|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~61_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(8));

-- Location: MLABCELL_X87_Y26_N27
\b2v_inst17|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~33_sumout\ = SUM(( \b2v_inst17|n\(9) ) + ( GND ) + ( \b2v_inst17|Add0~62\ ))
-- \b2v_inst17|Add0~34\ = CARRY(( \b2v_inst17|n\(9) ) + ( GND ) + ( \b2v_inst17|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(9),
	cin => \b2v_inst17|Add0~62\,
	sumout => \b2v_inst17|Add0~33_sumout\,
	cout => \b2v_inst17|Add0~34\);

-- Location: FF_X87_Y26_N29
\b2v_inst17|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~33_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(9));

-- Location: MLABCELL_X87_Y26_N30
\b2v_inst17|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~37_sumout\ = SUM(( \b2v_inst17|n\(10) ) + ( GND ) + ( \b2v_inst17|Add0~34\ ))
-- \b2v_inst17|Add0~38\ = CARRY(( \b2v_inst17|n\(10) ) + ( GND ) + ( \b2v_inst17|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(10),
	cin => \b2v_inst17|Add0~34\,
	sumout => \b2v_inst17|Add0~37_sumout\,
	cout => \b2v_inst17|Add0~38\);

-- Location: FF_X87_Y26_N32
\b2v_inst17|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~37_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(10));

-- Location: MLABCELL_X87_Y26_N33
\b2v_inst17|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~85_sumout\ = SUM(( \b2v_inst17|n\(11) ) + ( GND ) + ( \b2v_inst17|Add0~38\ ))
-- \b2v_inst17|Add0~86\ = CARRY(( \b2v_inst17|n\(11) ) + ( GND ) + ( \b2v_inst17|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(11),
	cin => \b2v_inst17|Add0~38\,
	sumout => \b2v_inst17|Add0~85_sumout\,
	cout => \b2v_inst17|Add0~86\);

-- Location: FF_X87_Y26_N35
\b2v_inst17|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~85_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(11));

-- Location: MLABCELL_X87_Y26_N36
\b2v_inst17|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~89_sumout\ = SUM(( \b2v_inst17|n\(12) ) + ( GND ) + ( \b2v_inst17|Add0~86\ ))
-- \b2v_inst17|Add0~90\ = CARRY(( \b2v_inst17|n\(12) ) + ( GND ) + ( \b2v_inst17|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(12),
	cin => \b2v_inst17|Add0~86\,
	sumout => \b2v_inst17|Add0~89_sumout\,
	cout => \b2v_inst17|Add0~90\);

-- Location: FF_X87_Y26_N38
\b2v_inst17|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~89_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(12));

-- Location: MLABCELL_X87_Y26_N39
\b2v_inst17|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~93_sumout\ = SUM(( \b2v_inst17|n\(13) ) + ( GND ) + ( \b2v_inst17|Add0~90\ ))
-- \b2v_inst17|Add0~94\ = CARRY(( \b2v_inst17|n\(13) ) + ( GND ) + ( \b2v_inst17|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(13),
	cin => \b2v_inst17|Add0~90\,
	sumout => \b2v_inst17|Add0~93_sumout\,
	cout => \b2v_inst17|Add0~94\);

-- Location: FF_X87_Y26_N41
\b2v_inst17|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~93_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(13));

-- Location: MLABCELL_X87_Y26_N42
\b2v_inst17|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~97_sumout\ = SUM(( \b2v_inst17|n\(14) ) + ( GND ) + ( \b2v_inst17|Add0~94\ ))
-- \b2v_inst17|Add0~98\ = CARRY(( \b2v_inst17|n\(14) ) + ( GND ) + ( \b2v_inst17|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(14),
	cin => \b2v_inst17|Add0~94\,
	sumout => \b2v_inst17|Add0~97_sumout\,
	cout => \b2v_inst17|Add0~98\);

-- Location: FF_X87_Y26_N44
\b2v_inst17|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~97_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(14));

-- Location: MLABCELL_X87_Y26_N45
\b2v_inst17|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~41_sumout\ = SUM(( \b2v_inst17|n\(15) ) + ( GND ) + ( \b2v_inst17|Add0~98\ ))
-- \b2v_inst17|Add0~42\ = CARRY(( \b2v_inst17|n\(15) ) + ( GND ) + ( \b2v_inst17|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(15),
	cin => \b2v_inst17|Add0~98\,
	sumout => \b2v_inst17|Add0~41_sumout\,
	cout => \b2v_inst17|Add0~42\);

-- Location: FF_X87_Y26_N47
\b2v_inst17|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~41_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(15));

-- Location: MLABCELL_X87_Y26_N48
\b2v_inst17|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~101_sumout\ = SUM(( \b2v_inst17|n\(16) ) + ( GND ) + ( \b2v_inst17|Add0~42\ ))
-- \b2v_inst17|Add0~102\ = CARRY(( \b2v_inst17|n\(16) ) + ( GND ) + ( \b2v_inst17|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(16),
	cin => \b2v_inst17|Add0~42\,
	sumout => \b2v_inst17|Add0~101_sumout\,
	cout => \b2v_inst17|Add0~102\);

-- Location: FF_X87_Y26_N50
\b2v_inst17|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~101_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(16));

-- Location: MLABCELL_X87_Y26_N51
\b2v_inst17|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~45_sumout\ = SUM(( \b2v_inst17|n\(17) ) + ( GND ) + ( \b2v_inst17|Add0~102\ ))
-- \b2v_inst17|Add0~46\ = CARRY(( \b2v_inst17|n\(17) ) + ( GND ) + ( \b2v_inst17|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(17),
	cin => \b2v_inst17|Add0~102\,
	sumout => \b2v_inst17|Add0~45_sumout\,
	cout => \b2v_inst17|Add0~46\);

-- Location: FF_X87_Y26_N53
\b2v_inst17|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~45_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(17));

-- Location: MLABCELL_X87_Y26_N54
\b2v_inst17|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~49_sumout\ = SUM(( \b2v_inst17|n\(18) ) + ( GND ) + ( \b2v_inst17|Add0~46\ ))
-- \b2v_inst17|Add0~50\ = CARRY(( \b2v_inst17|n\(18) ) + ( GND ) + ( \b2v_inst17|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(18),
	cin => \b2v_inst17|Add0~46\,
	sumout => \b2v_inst17|Add0~49_sumout\,
	cout => \b2v_inst17|Add0~50\);

-- Location: FF_X87_Y26_N56
\b2v_inst17|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~49_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(18));

-- Location: MLABCELL_X87_Y26_N57
\b2v_inst17|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~13_sumout\ = SUM(( \b2v_inst17|n\(19) ) + ( GND ) + ( \b2v_inst17|Add0~50\ ))
-- \b2v_inst17|Add0~14\ = CARRY(( \b2v_inst17|n\(19) ) + ( GND ) + ( \b2v_inst17|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(19),
	cin => \b2v_inst17|Add0~50\,
	sumout => \b2v_inst17|Add0~13_sumout\,
	cout => \b2v_inst17|Add0~14\);

-- Location: FF_X87_Y26_N59
\b2v_inst17|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~13_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(19));

-- Location: MLABCELL_X87_Y25_N0
\b2v_inst17|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~17_sumout\ = SUM(( \b2v_inst17|n\(20) ) + ( GND ) + ( \b2v_inst17|Add0~14\ ))
-- \b2v_inst17|Add0~18\ = CARRY(( \b2v_inst17|n\(20) ) + ( GND ) + ( \b2v_inst17|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(20),
	cin => \b2v_inst17|Add0~14\,
	sumout => \b2v_inst17|Add0~17_sumout\,
	cout => \b2v_inst17|Add0~18\);

-- Location: FF_X87_Y25_N50
\b2v_inst17|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~17_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(20));

-- Location: MLABCELL_X87_Y25_N3
\b2v_inst17|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~65_sumout\ = SUM(( \b2v_inst17|n\(21) ) + ( GND ) + ( \b2v_inst17|Add0~18\ ))
-- \b2v_inst17|Add0~66\ = CARRY(( \b2v_inst17|n\(21) ) + ( GND ) + ( \b2v_inst17|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(21),
	cin => \b2v_inst17|Add0~18\,
	sumout => \b2v_inst17|Add0~65_sumout\,
	cout => \b2v_inst17|Add0~66\);

-- Location: FF_X87_Y25_N44
\b2v_inst17|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~65_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(21));

-- Location: MLABCELL_X87_Y25_N6
\b2v_inst17|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~69_sumout\ = SUM(( \b2v_inst17|n\(22) ) + ( GND ) + ( \b2v_inst17|Add0~66\ ))
-- \b2v_inst17|Add0~70\ = CARRY(( \b2v_inst17|n\(22) ) + ( GND ) + ( \b2v_inst17|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(22),
	cin => \b2v_inst17|Add0~66\,
	sumout => \b2v_inst17|Add0~69_sumout\,
	cout => \b2v_inst17|Add0~70\);

-- Location: FF_X87_Y25_N56
\b2v_inst17|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~69_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(22));

-- Location: MLABCELL_X87_Y25_N9
\b2v_inst17|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~73_sumout\ = SUM(( \b2v_inst17|n\(23) ) + ( GND ) + ( \b2v_inst17|Add0~70\ ))
-- \b2v_inst17|Add0~74\ = CARRY(( \b2v_inst17|n\(23) ) + ( GND ) + ( \b2v_inst17|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(23),
	cin => \b2v_inst17|Add0~70\,
	sumout => \b2v_inst17|Add0~73_sumout\,
	cout => \b2v_inst17|Add0~74\);

-- Location: FF_X87_Y25_N41
\b2v_inst17|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~73_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(23));

-- Location: MLABCELL_X87_Y25_N12
\b2v_inst17|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~77_sumout\ = SUM(( \b2v_inst17|n\(24) ) + ( GND ) + ( \b2v_inst17|Add0~74\ ))
-- \b2v_inst17|Add0~78\ = CARRY(( \b2v_inst17|n\(24) ) + ( GND ) + ( \b2v_inst17|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(24),
	cin => \b2v_inst17|Add0~74\,
	sumout => \b2v_inst17|Add0~77_sumout\,
	cout => \b2v_inst17|Add0~78\);

-- Location: FF_X87_Y25_N52
\b2v_inst17|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~77_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(24));

-- Location: MLABCELL_X87_Y25_N15
\b2v_inst17|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~21_sumout\ = SUM(( \b2v_inst17|n\(25) ) + ( GND ) + ( \b2v_inst17|Add0~78\ ))
-- \b2v_inst17|Add0~22\ = CARRY(( \b2v_inst17|n\(25) ) + ( GND ) + ( \b2v_inst17|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(25),
	cin => \b2v_inst17|Add0~78\,
	sumout => \b2v_inst17|Add0~21_sumout\,
	cout => \b2v_inst17|Add0~22\);

-- Location: FF_X87_Y25_N46
\b2v_inst17|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~21_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(25));

-- Location: MLABCELL_X87_Y25_N18
\b2v_inst17|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~81_sumout\ = SUM(( \b2v_inst17|n\(26) ) + ( GND ) + ( \b2v_inst17|Add0~22\ ))
-- \b2v_inst17|Add0~82\ = CARRY(( \b2v_inst17|n\(26) ) + ( GND ) + ( \b2v_inst17|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(26),
	cin => \b2v_inst17|Add0~22\,
	sumout => \b2v_inst17|Add0~81_sumout\,
	cout => \b2v_inst17|Add0~82\);

-- Location: FF_X87_Y25_N58
\b2v_inst17|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~81_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(26));

-- Location: MLABCELL_X87_Y25_N21
\b2v_inst17|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~25_sumout\ = SUM(( \b2v_inst17|n\(27) ) + ( GND ) + ( \b2v_inst17|Add0~82\ ))
-- \b2v_inst17|Add0~26\ = CARRY(( \b2v_inst17|n\(27) ) + ( GND ) + ( \b2v_inst17|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(27),
	cin => \b2v_inst17|Add0~82\,
	sumout => \b2v_inst17|Add0~25_sumout\,
	cout => \b2v_inst17|Add0~26\);

-- Location: FF_X87_Y25_N37
\b2v_inst17|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~25_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(27));

-- Location: MLABCELL_X87_Y25_N24
\b2v_inst17|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~29_sumout\ = SUM(( \b2v_inst17|n\(28) ) + ( GND ) + ( \b2v_inst17|Add0~26\ ))
-- \b2v_inst17|Add0~30\ = CARRY(( \b2v_inst17|n\(28) ) + ( GND ) + ( \b2v_inst17|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(28),
	cin => \b2v_inst17|Add0~26\,
	sumout => \b2v_inst17|Add0~29_sumout\,
	cout => \b2v_inst17|Add0~30\);

-- Location: FF_X87_Y25_N22
\b2v_inst17|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~29_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(28));

-- Location: MLABCELL_X87_Y25_N27
\b2v_inst17|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~1_sumout\ = SUM(( \b2v_inst17|n\(29) ) + ( GND ) + ( \b2v_inst17|Add0~30\ ))
-- \b2v_inst17|Add0~2\ = CARRY(( \b2v_inst17|n\(29) ) + ( GND ) + ( \b2v_inst17|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_n\(29),
	cin => \b2v_inst17|Add0~30\,
	sumout => \b2v_inst17|Add0~1_sumout\,
	cout => \b2v_inst17|Add0~2\);

-- Location: FF_X87_Y25_N28
\b2v_inst17|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst17|Add0~5_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(30));

-- Location: MLABCELL_X87_Y25_N30
\b2v_inst17|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~5_sumout\ = SUM(( \b2v_inst17|n\(30) ) + ( GND ) + ( \b2v_inst17|Add0~2\ ))
-- \b2v_inst17|Add0~6\ = CARRY(( \b2v_inst17|n\(30) ) + ( GND ) + ( \b2v_inst17|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst17|ALT_INV_n\(30),
	cin => \b2v_inst17|Add0~2\,
	sumout => \b2v_inst17|Add0~5_sumout\,
	cout => \b2v_inst17|Add0~6\);

-- Location: FF_X87_Y25_N35
\b2v_inst17|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~9_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(31));

-- Location: MLABCELL_X87_Y25_N33
\b2v_inst17|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Add0~9_sumout\ = SUM(( \b2v_inst17|n\(31) ) + ( GND ) + ( \b2v_inst17|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst17|ALT_INV_n\(31),
	cin => \b2v_inst17|Add0~6\,
	sumout => \b2v_inst17|Add0~9_sumout\);

-- Location: LABCELL_X88_Y26_N33
\b2v_inst17|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~8_combout\ = ( !\b2v_inst17|Add0~49_sumout\ & ( !\b2v_inst17|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst17|ALT_INV_Add0~49_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~41_sumout\,
	combout => \b2v_inst17|Equal0~8_combout\);

-- Location: LABCELL_X88_Y26_N18
\b2v_inst17|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~7_combout\ = ( !\b2v_inst17|Add0~33_sumout\ & ( !\b2v_inst17|Add0~45_sumout\ & ( (!\b2v_inst17|Add0~57_sumout\ & (!\b2v_inst17|Add0~53_sumout\ & (!\b2v_inst17|Add0~37_sumout\ & !\b2v_inst17|Add0~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~57_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~53_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~37_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~33_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst17|Equal0~7_combout\);

-- Location: MLABCELL_X87_Y25_N45
\b2v_inst17|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~5_combout\ = ( \b2v_inst17|Equal0~8_combout\ & ( \b2v_inst17|Equal0~7_combout\ & ( (!\b2v_inst17|Add0~25_sumout\ & (!\b2v_inst17|Add0~17_sumout\ & (!\b2v_inst17|Add0~21_sumout\ & !\b2v_inst17|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~25_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~17_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~21_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~13_sumout\,
	datae => \b2v_inst17|ALT_INV_Equal0~8_combout\,
	dataf => \b2v_inst17|ALT_INV_Equal0~7_combout\,
	combout => \b2v_inst17|Equal0~5_combout\);

-- Location: MLABCELL_X87_Y25_N57
\b2v_inst17|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~6_combout\ = ( \b2v_inst17|Equal0~5_combout\ & ( \b2v_inst17|Equal0~4_combout\ & ( (!\b2v_inst17|Add0~1_sumout\ & (!\b2v_inst17|Add0~5_sumout\ & (!\b2v_inst17|Add0~29_sumout\ & !\b2v_inst17|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~9_sumout\,
	datae => \b2v_inst17|ALT_INV_Equal0~5_combout\,
	dataf => \b2v_inst17|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst17|Equal0~6_combout\);

-- Location: FF_X87_Y26_N2
\b2v_inst17|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|Add0~105_sumout\,
	sclr => \b2v_inst17|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|n\(0));

-- Location: LABCELL_X88_Y26_N12
\b2v_inst17|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~3_combout\ = ( !\b2v_inst17|Add0~121_sumout\ & ( !\b2v_inst17|Add0~125_sumout\ & ( (!\b2v_inst17|Add0~105_sumout\ & (\b2v_inst17|Add0~117_sumout\ & (!\b2v_inst17|Add0~113_sumout\ & \b2v_inst17|Add0~109_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~105_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~117_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~113_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~109_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~121_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~125_sumout\,
	combout => \b2v_inst17|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y25_N36
\b2v_inst17|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~9_combout\ = ( !\b2v_inst17|Add0~97_sumout\ & ( !\b2v_inst17|Add0~81_sumout\ & ( (!\b2v_inst17|Add0~85_sumout\ & (!\b2v_inst17|Add0~89_sumout\ & (!\b2v_inst17|Add0~101_sumout\ & !\b2v_inst17|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~85_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~89_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~101_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~93_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~97_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~81_sumout\,
	combout => \b2v_inst17|Equal0~9_combout\);

-- Location: MLABCELL_X87_Y25_N51
\b2v_inst17|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~4_combout\ = ( \b2v_inst17|Equal0~9_combout\ & ( !\b2v_inst17|Add0~69_sumout\ & ( (\b2v_inst17|Equal0~3_combout\ & (!\b2v_inst17|Add0~77_sumout\ & (!\b2v_inst17|Add0~73_sumout\ & !\b2v_inst17|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Equal0~3_combout\,
	datab => \b2v_inst17|ALT_INV_Add0~77_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~73_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~65_sumout\,
	datae => \b2v_inst17|ALT_INV_Equal0~9_combout\,
	dataf => \b2v_inst17|ALT_INV_Add0~69_sumout\,
	combout => \b2v_inst17|Equal0~4_combout\);

-- Location: LABCELL_X85_Y26_N12
\b2v_inst17|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~0_combout\ = ( !\b2v_inst17|Add0~57_sumout\ & ( !\b2v_inst17|Add0~61_sumout\ & ( !\b2v_inst17|Add0~53_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst17|ALT_INV_Add0~53_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~57_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~61_sumout\,
	combout => \b2v_inst17|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y25_N24
\b2v_inst17|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~1_combout\ = ( !\b2v_inst17|Add0~45_sumout\ & ( \b2v_inst17|Equal0~0_combout\ & ( (!\b2v_inst17|Add0~49_sumout\ & (!\b2v_inst17|Add0~37_sumout\ & (!\b2v_inst17|Add0~33_sumout\ & !\b2v_inst17|Add0~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~49_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~37_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~33_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~41_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~45_sumout\,
	dataf => \b2v_inst17|ALT_INV_Equal0~0_combout\,
	combout => \b2v_inst17|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y25_N42
\b2v_inst17|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|Equal0~2_combout\ = ( !\b2v_inst17|Add0~21_sumout\ & ( !\b2v_inst17|Add0~25_sumout\ & ( (!\b2v_inst17|Add0~17_sumout\ & (!\b2v_inst17|Add0~29_sumout\ & (\b2v_inst17|Equal0~1_combout\ & !\b2v_inst17|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst17|ALT_INV_Add0~29_sumout\,
	datac => \b2v_inst17|ALT_INV_Equal0~1_combout\,
	datad => \b2v_inst17|ALT_INV_Add0~13_sumout\,
	datae => \b2v_inst17|ALT_INV_Add0~21_sumout\,
	dataf => \b2v_inst17|ALT_INV_Add0~25_sumout\,
	combout => \b2v_inst17|Equal0~2_combout\);

-- Location: MLABCELL_X84_Y25_N12
\b2v_inst17|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst17|temp~0_combout\ = ( \b2v_inst17|temp~q\ & ( \b2v_inst17|Equal0~2_combout\ & ( (!\b2v_inst17|Equal0~4_combout\) # (((\b2v_inst17|Add0~5_sumout\) # (\b2v_inst17|Add0~9_sumout\)) # (\b2v_inst17|Add0~1_sumout\)) ) ) ) # ( !\b2v_inst17|temp~q\ & ( 
-- \b2v_inst17|Equal0~2_combout\ & ( (\b2v_inst17|Equal0~4_combout\ & (!\b2v_inst17|Add0~1_sumout\ & (!\b2v_inst17|Add0~9_sumout\ & !\b2v_inst17|Add0~5_sumout\))) ) ) ) # ( \b2v_inst17|temp~q\ & ( !\b2v_inst17|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101000000000000001011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst17|ALT_INV_Equal0~4_combout\,
	datab => \b2v_inst17|ALT_INV_Add0~1_sumout\,
	datac => \b2v_inst17|ALT_INV_Add0~9_sumout\,
	datad => \b2v_inst17|ALT_INV_Add0~5_sumout\,
	datae => \b2v_inst17|ALT_INV_temp~q\,
	dataf => \b2v_inst17|ALT_INV_Equal0~2_combout\,
	combout => \b2v_inst17|temp~0_combout\);

-- Location: FF_X84_Y25_N13
\b2v_inst17|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst17|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst17|temp~q\);

-- Location: FF_X87_Y27_N29
\b2v_inst22|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~5_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(30));

-- Location: MLABCELL_X87_Y28_N0
\b2v_inst22|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~105_sumout\ = SUM(( \b2v_inst22|n\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst22|Add0~106\ = CARRY(( \b2v_inst22|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(0),
	cin => GND,
	sumout => \b2v_inst22|Add0~105_sumout\,
	cout => \b2v_inst22|Add0~106\);

-- Location: FF_X87_Y28_N2
\b2v_inst22|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~105_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(0));

-- Location: MLABCELL_X87_Y28_N3
\b2v_inst22|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~109_sumout\ = SUM(( \b2v_inst22|n\(1) ) + ( GND ) + ( \b2v_inst22|Add0~106\ ))
-- \b2v_inst22|Add0~110\ = CARRY(( \b2v_inst22|n\(1) ) + ( GND ) + ( \b2v_inst22|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(1),
	cin => \b2v_inst22|Add0~106\,
	sumout => \b2v_inst22|Add0~109_sumout\,
	cout => \b2v_inst22|Add0~110\);

-- Location: FF_X87_Y28_N5
\b2v_inst22|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~109_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(1));

-- Location: MLABCELL_X87_Y28_N6
\b2v_inst22|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~113_sumout\ = SUM(( \b2v_inst22|n\(2) ) + ( GND ) + ( \b2v_inst22|Add0~110\ ))
-- \b2v_inst22|Add0~114\ = CARRY(( \b2v_inst22|n\(2) ) + ( GND ) + ( \b2v_inst22|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(2),
	cin => \b2v_inst22|Add0~110\,
	sumout => \b2v_inst22|Add0~113_sumout\,
	cout => \b2v_inst22|Add0~114\);

-- Location: FF_X87_Y28_N8
\b2v_inst22|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~113_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(2));

-- Location: MLABCELL_X87_Y28_N9
\b2v_inst22|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~117_sumout\ = SUM(( \b2v_inst22|n\(3) ) + ( GND ) + ( \b2v_inst22|Add0~114\ ))
-- \b2v_inst22|Add0~118\ = CARRY(( \b2v_inst22|n\(3) ) + ( GND ) + ( \b2v_inst22|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(3),
	cin => \b2v_inst22|Add0~114\,
	sumout => \b2v_inst22|Add0~117_sumout\,
	cout => \b2v_inst22|Add0~118\);

-- Location: FF_X87_Y28_N11
\b2v_inst22|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~117_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(3));

-- Location: MLABCELL_X87_Y28_N12
\b2v_inst22|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~121_sumout\ = SUM(( \b2v_inst22|n\(4) ) + ( GND ) + ( \b2v_inst22|Add0~118\ ))
-- \b2v_inst22|Add0~122\ = CARRY(( \b2v_inst22|n\(4) ) + ( GND ) + ( \b2v_inst22|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(4),
	cin => \b2v_inst22|Add0~118\,
	sumout => \b2v_inst22|Add0~121_sumout\,
	cout => \b2v_inst22|Add0~122\);

-- Location: FF_X87_Y28_N14
\b2v_inst22|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~121_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(4));

-- Location: MLABCELL_X87_Y28_N15
\b2v_inst22|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~125_sumout\ = SUM(( \b2v_inst22|n\(5) ) + ( GND ) + ( \b2v_inst22|Add0~122\ ))
-- \b2v_inst22|Add0~126\ = CARRY(( \b2v_inst22|n\(5) ) + ( GND ) + ( \b2v_inst22|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(5),
	cin => \b2v_inst22|Add0~122\,
	sumout => \b2v_inst22|Add0~125_sumout\,
	cout => \b2v_inst22|Add0~126\);

-- Location: FF_X87_Y28_N17
\b2v_inst22|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~125_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(5));

-- Location: MLABCELL_X87_Y28_N18
\b2v_inst22|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~53_sumout\ = SUM(( \b2v_inst22|n\(6) ) + ( GND ) + ( \b2v_inst22|Add0~126\ ))
-- \b2v_inst22|Add0~54\ = CARRY(( \b2v_inst22|n\(6) ) + ( GND ) + ( \b2v_inst22|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(6),
	cin => \b2v_inst22|Add0~126\,
	sumout => \b2v_inst22|Add0~53_sumout\,
	cout => \b2v_inst22|Add0~54\);

-- Location: FF_X87_Y28_N20
\b2v_inst22|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~53_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(6));

-- Location: MLABCELL_X87_Y28_N21
\b2v_inst22|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~57_sumout\ = SUM(( \b2v_inst22|n\(7) ) + ( GND ) + ( \b2v_inst22|Add0~54\ ))
-- \b2v_inst22|Add0~58\ = CARRY(( \b2v_inst22|n\(7) ) + ( GND ) + ( \b2v_inst22|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(7),
	cin => \b2v_inst22|Add0~54\,
	sumout => \b2v_inst22|Add0~57_sumout\,
	cout => \b2v_inst22|Add0~58\);

-- Location: FF_X87_Y28_N23
\b2v_inst22|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~57_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(7));

-- Location: MLABCELL_X87_Y28_N24
\b2v_inst22|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~61_sumout\ = SUM(( \b2v_inst22|n\(8) ) + ( GND ) + ( \b2v_inst22|Add0~58\ ))
-- \b2v_inst22|Add0~62\ = CARRY(( \b2v_inst22|n\(8) ) + ( GND ) + ( \b2v_inst22|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(8),
	cin => \b2v_inst22|Add0~58\,
	sumout => \b2v_inst22|Add0~61_sumout\,
	cout => \b2v_inst22|Add0~62\);

-- Location: FF_X87_Y28_N26
\b2v_inst22|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~61_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(8));

-- Location: MLABCELL_X87_Y28_N27
\b2v_inst22|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~33_sumout\ = SUM(( \b2v_inst22|n\(9) ) + ( GND ) + ( \b2v_inst22|Add0~62\ ))
-- \b2v_inst22|Add0~34\ = CARRY(( \b2v_inst22|n\(9) ) + ( GND ) + ( \b2v_inst22|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(9),
	cin => \b2v_inst22|Add0~62\,
	sumout => \b2v_inst22|Add0~33_sumout\,
	cout => \b2v_inst22|Add0~34\);

-- Location: FF_X87_Y28_N29
\b2v_inst22|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~33_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(9));

-- Location: MLABCELL_X87_Y28_N30
\b2v_inst22|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~37_sumout\ = SUM(( \b2v_inst22|n\(10) ) + ( GND ) + ( \b2v_inst22|Add0~34\ ))
-- \b2v_inst22|Add0~38\ = CARRY(( \b2v_inst22|n\(10) ) + ( GND ) + ( \b2v_inst22|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(10),
	cin => \b2v_inst22|Add0~34\,
	sumout => \b2v_inst22|Add0~37_sumout\,
	cout => \b2v_inst22|Add0~38\);

-- Location: FF_X87_Y28_N32
\b2v_inst22|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~37_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(10));

-- Location: MLABCELL_X87_Y28_N33
\b2v_inst22|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~85_sumout\ = SUM(( \b2v_inst22|n\(11) ) + ( GND ) + ( \b2v_inst22|Add0~38\ ))
-- \b2v_inst22|Add0~86\ = CARRY(( \b2v_inst22|n\(11) ) + ( GND ) + ( \b2v_inst22|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(11),
	cin => \b2v_inst22|Add0~38\,
	sumout => \b2v_inst22|Add0~85_sumout\,
	cout => \b2v_inst22|Add0~86\);

-- Location: FF_X87_Y28_N35
\b2v_inst22|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~85_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(11));

-- Location: MLABCELL_X87_Y28_N36
\b2v_inst22|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~89_sumout\ = SUM(( \b2v_inst22|n\(12) ) + ( GND ) + ( \b2v_inst22|Add0~86\ ))
-- \b2v_inst22|Add0~90\ = CARRY(( \b2v_inst22|n\(12) ) + ( GND ) + ( \b2v_inst22|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(12),
	cin => \b2v_inst22|Add0~86\,
	sumout => \b2v_inst22|Add0~89_sumout\,
	cout => \b2v_inst22|Add0~90\);

-- Location: FF_X87_Y28_N38
\b2v_inst22|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~89_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(12));

-- Location: MLABCELL_X87_Y28_N39
\b2v_inst22|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~93_sumout\ = SUM(( \b2v_inst22|n\(13) ) + ( GND ) + ( \b2v_inst22|Add0~90\ ))
-- \b2v_inst22|Add0~94\ = CARRY(( \b2v_inst22|n\(13) ) + ( GND ) + ( \b2v_inst22|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(13),
	cin => \b2v_inst22|Add0~90\,
	sumout => \b2v_inst22|Add0~93_sumout\,
	cout => \b2v_inst22|Add0~94\);

-- Location: FF_X87_Y28_N41
\b2v_inst22|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~93_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(13));

-- Location: MLABCELL_X87_Y28_N42
\b2v_inst22|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~97_sumout\ = SUM(( \b2v_inst22|n\(14) ) + ( GND ) + ( \b2v_inst22|Add0~94\ ))
-- \b2v_inst22|Add0~98\ = CARRY(( \b2v_inst22|n\(14) ) + ( GND ) + ( \b2v_inst22|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(14),
	cin => \b2v_inst22|Add0~94\,
	sumout => \b2v_inst22|Add0~97_sumout\,
	cout => \b2v_inst22|Add0~98\);

-- Location: FF_X87_Y28_N44
\b2v_inst22|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~97_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(14));

-- Location: MLABCELL_X87_Y28_N45
\b2v_inst22|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~41_sumout\ = SUM(( \b2v_inst22|n\(15) ) + ( GND ) + ( \b2v_inst22|Add0~98\ ))
-- \b2v_inst22|Add0~42\ = CARRY(( \b2v_inst22|n\(15) ) + ( GND ) + ( \b2v_inst22|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(15),
	cin => \b2v_inst22|Add0~98\,
	sumout => \b2v_inst22|Add0~41_sumout\,
	cout => \b2v_inst22|Add0~42\);

-- Location: FF_X87_Y28_N47
\b2v_inst22|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~41_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(15));

-- Location: MLABCELL_X87_Y28_N48
\b2v_inst22|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~101_sumout\ = SUM(( \b2v_inst22|n\(16) ) + ( GND ) + ( \b2v_inst22|Add0~42\ ))
-- \b2v_inst22|Add0~102\ = CARRY(( \b2v_inst22|n\(16) ) + ( GND ) + ( \b2v_inst22|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(16),
	cin => \b2v_inst22|Add0~42\,
	sumout => \b2v_inst22|Add0~101_sumout\,
	cout => \b2v_inst22|Add0~102\);

-- Location: FF_X87_Y28_N50
\b2v_inst22|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~101_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(16));

-- Location: MLABCELL_X87_Y28_N51
\b2v_inst22|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~45_sumout\ = SUM(( \b2v_inst22|n\(17) ) + ( GND ) + ( \b2v_inst22|Add0~102\ ))
-- \b2v_inst22|Add0~46\ = CARRY(( \b2v_inst22|n\(17) ) + ( GND ) + ( \b2v_inst22|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(17),
	cin => \b2v_inst22|Add0~102\,
	sumout => \b2v_inst22|Add0~45_sumout\,
	cout => \b2v_inst22|Add0~46\);

-- Location: FF_X87_Y28_N53
\b2v_inst22|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~45_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(17));

-- Location: MLABCELL_X87_Y28_N54
\b2v_inst22|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~49_sumout\ = SUM(( \b2v_inst22|n\(18) ) + ( GND ) + ( \b2v_inst22|Add0~46\ ))
-- \b2v_inst22|Add0~50\ = CARRY(( \b2v_inst22|n\(18) ) + ( GND ) + ( \b2v_inst22|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(18),
	cin => \b2v_inst22|Add0~46\,
	sumout => \b2v_inst22|Add0~49_sumout\,
	cout => \b2v_inst22|Add0~50\);

-- Location: FF_X87_Y28_N56
\b2v_inst22|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~49_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(18));

-- Location: MLABCELL_X87_Y28_N57
\b2v_inst22|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~13_sumout\ = SUM(( \b2v_inst22|n\(19) ) + ( GND ) + ( \b2v_inst22|Add0~50\ ))
-- \b2v_inst22|Add0~14\ = CARRY(( \b2v_inst22|n\(19) ) + ( GND ) + ( \b2v_inst22|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(19),
	cin => \b2v_inst22|Add0~50\,
	sumout => \b2v_inst22|Add0~13_sumout\,
	cout => \b2v_inst22|Add0~14\);

-- Location: FF_X87_Y28_N59
\b2v_inst22|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~13_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(19));

-- Location: MLABCELL_X87_Y27_N0
\b2v_inst22|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~17_sumout\ = SUM(( \b2v_inst22|n\(20) ) + ( GND ) + ( \b2v_inst22|Add0~14\ ))
-- \b2v_inst22|Add0~18\ = CARRY(( \b2v_inst22|n\(20) ) + ( GND ) + ( \b2v_inst22|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(20),
	cin => \b2v_inst22|Add0~14\,
	sumout => \b2v_inst22|Add0~17_sumout\,
	cout => \b2v_inst22|Add0~18\);

-- Location: FF_X87_Y27_N38
\b2v_inst22|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~17_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(20));

-- Location: MLABCELL_X87_Y27_N3
\b2v_inst22|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~65_sumout\ = SUM(( \b2v_inst22|n\(21) ) + ( GND ) + ( \b2v_inst22|Add0~18\ ))
-- \b2v_inst22|Add0~66\ = CARRY(( \b2v_inst22|n\(21) ) + ( GND ) + ( \b2v_inst22|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst22|ALT_INV_n\(21),
	cin => \b2v_inst22|Add0~18\,
	sumout => \b2v_inst22|Add0~65_sumout\,
	cout => \b2v_inst22|Add0~66\);

-- Location: FF_X87_Y27_N44
\b2v_inst22|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~65_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(21));

-- Location: MLABCELL_X87_Y27_N6
\b2v_inst22|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~69_sumout\ = SUM(( \b2v_inst22|n\(22) ) + ( GND ) + ( \b2v_inst22|Add0~66\ ))
-- \b2v_inst22|Add0~70\ = CARRY(( \b2v_inst22|n\(22) ) + ( GND ) + ( \b2v_inst22|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst22|ALT_INV_n\(22),
	cin => \b2v_inst22|Add0~66\,
	sumout => \b2v_inst22|Add0~69_sumout\,
	cout => \b2v_inst22|Add0~70\);

-- Location: FF_X87_Y27_N55
\b2v_inst22|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~69_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(22));

-- Location: MLABCELL_X87_Y27_N9
\b2v_inst22|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~73_sumout\ = SUM(( \b2v_inst22|n\(23) ) + ( GND ) + ( \b2v_inst22|Add0~70\ ))
-- \b2v_inst22|Add0~74\ = CARRY(( \b2v_inst22|n\(23) ) + ( GND ) + ( \b2v_inst22|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_n\(23),
	cin => \b2v_inst22|Add0~70\,
	sumout => \b2v_inst22|Add0~73_sumout\,
	cout => \b2v_inst22|Add0~74\);

-- Location: FF_X87_Y27_N53
\b2v_inst22|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~73_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(23));

-- Location: MLABCELL_X87_Y27_N12
\b2v_inst22|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~77_sumout\ = SUM(( \b2v_inst22|n\(24) ) + ( GND ) + ( \b2v_inst22|Add0~74\ ))
-- \b2v_inst22|Add0~78\ = CARRY(( \b2v_inst22|n\(24) ) + ( GND ) + ( \b2v_inst22|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst22|ALT_INV_n\(24),
	cin => \b2v_inst22|Add0~74\,
	sumout => \b2v_inst22|Add0~77_sumout\,
	cout => \b2v_inst22|Add0~78\);

-- Location: FF_X87_Y27_N41
\b2v_inst22|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~77_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(24));

-- Location: MLABCELL_X87_Y27_N15
\b2v_inst22|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~21_sumout\ = SUM(( \b2v_inst22|n\(25) ) + ( GND ) + ( \b2v_inst22|Add0~78\ ))
-- \b2v_inst22|Add0~22\ = CARRY(( \b2v_inst22|n\(25) ) + ( GND ) + ( \b2v_inst22|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(25),
	cin => \b2v_inst22|Add0~78\,
	sumout => \b2v_inst22|Add0~21_sumout\,
	cout => \b2v_inst22|Add0~22\);

-- Location: FF_X87_Y27_N46
\b2v_inst22|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~21_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(25));

-- Location: MLABCELL_X87_Y27_N18
\b2v_inst22|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~81_sumout\ = SUM(( \b2v_inst22|n\(26) ) + ( GND ) + ( \b2v_inst22|Add0~22\ ))
-- \b2v_inst22|Add0~82\ = CARRY(( \b2v_inst22|n\(26) ) + ( GND ) + ( \b2v_inst22|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst22|ALT_INV_n\(26),
	cin => \b2v_inst22|Add0~22\,
	sumout => \b2v_inst22|Add0~81_sumout\,
	cout => \b2v_inst22|Add0~82\);

-- Location: FF_X87_Y27_N58
\b2v_inst22|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~81_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(26));

-- Location: MLABCELL_X87_Y27_N21
\b2v_inst22|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~25_sumout\ = SUM(( \b2v_inst22|n\(27) ) + ( GND ) + ( \b2v_inst22|Add0~82\ ))
-- \b2v_inst22|Add0~26\ = CARRY(( \b2v_inst22|n\(27) ) + ( GND ) + ( \b2v_inst22|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst22|ALT_INV_n\(27),
	cin => \b2v_inst22|Add0~82\,
	sumout => \b2v_inst22|Add0~25_sumout\,
	cout => \b2v_inst22|Add0~26\);

-- Location: FF_X87_Y27_N49
\b2v_inst22|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~25_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(27));

-- Location: MLABCELL_X87_Y27_N24
\b2v_inst22|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~29_sumout\ = SUM(( \b2v_inst22|n\(28) ) + ( GND ) + ( \b2v_inst22|Add0~26\ ))
-- \b2v_inst22|Add0~30\ = CARRY(( \b2v_inst22|n\(28) ) + ( GND ) + ( \b2v_inst22|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(28),
	cin => \b2v_inst22|Add0~26\,
	sumout => \b2v_inst22|Add0~29_sumout\,
	cout => \b2v_inst22|Add0~30\);

-- Location: FF_X87_Y27_N23
\b2v_inst22|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~29_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(28));

-- Location: MLABCELL_X87_Y27_N27
\b2v_inst22|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~1_sumout\ = SUM(( \b2v_inst22|n\(29) ) + ( GND ) + ( \b2v_inst22|Add0~30\ ))
-- \b2v_inst22|Add0~2\ = CARRY(( \b2v_inst22|n\(29) ) + ( GND ) + ( \b2v_inst22|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(29),
	cin => \b2v_inst22|Add0~30\,
	sumout => \b2v_inst22|Add0~1_sumout\,
	cout => \b2v_inst22|Add0~2\);

-- Location: MLABCELL_X87_Y27_N30
\b2v_inst22|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~5_sumout\ = SUM(( \b2v_inst22|n\(30) ) + ( GND ) + ( \b2v_inst22|Add0~2\ ))
-- \b2v_inst22|Add0~6\ = CARRY(( \b2v_inst22|n\(30) ) + ( GND ) + ( \b2v_inst22|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst22|ALT_INV_n\(30),
	cin => \b2v_inst22|Add0~2\,
	sumout => \b2v_inst22|Add0~5_sumout\,
	cout => \b2v_inst22|Add0~6\);

-- Location: FF_X87_Y27_N35
\b2v_inst22|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|Add0~9_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(31));

-- Location: MLABCELL_X87_Y27_N33
\b2v_inst22|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Add0~9_sumout\ = SUM(( \b2v_inst22|n\(31) ) + ( GND ) + ( \b2v_inst22|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst22|ALT_INV_n\(31),
	cin => \b2v_inst22|Add0~6\,
	sumout => \b2v_inst22|Add0~9_sumout\);

-- Location: LABCELL_X88_Y28_N12
\b2v_inst22|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~7_combout\ = ( !\b2v_inst22|Add0~33_sumout\ & ( !\b2v_inst22|Add0~45_sumout\ & ( (!\b2v_inst22|Add0~57_sumout\ & (!\b2v_inst22|Add0~53_sumout\ & (!\b2v_inst22|Add0~37_sumout\ & !\b2v_inst22|Add0~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~57_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~53_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~37_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~33_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst22|Equal0~7_combout\);

-- Location: LABCELL_X88_Y28_N9
\b2v_inst22|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~8_combout\ = ( !\b2v_inst22|Add0~49_sumout\ & ( !\b2v_inst22|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst22|ALT_INV_Add0~49_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~41_sumout\,
	combout => \b2v_inst22|Equal0~8_combout\);

-- Location: MLABCELL_X87_Y27_N45
\b2v_inst22|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~5_combout\ = ( !\b2v_inst22|Add0~25_sumout\ & ( !\b2v_inst22|Add0~13_sumout\ & ( (!\b2v_inst22|Add0~17_sumout\ & (!\b2v_inst22|Add0~21_sumout\ & (\b2v_inst22|Equal0~7_combout\ & \b2v_inst22|Equal0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~21_sumout\,
	datac => \b2v_inst22|ALT_INV_Equal0~7_combout\,
	datad => \b2v_inst22|ALT_INV_Equal0~8_combout\,
	datae => \b2v_inst22|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~13_sumout\,
	combout => \b2v_inst22|Equal0~5_combout\);

-- Location: LABCELL_X88_Y28_N3
\b2v_inst22|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~3_combout\ = ( !\b2v_inst22|Add0~121_sumout\ & ( !\b2v_inst22|Add0~125_sumout\ & ( (\b2v_inst22|Add0~105_sumout\ & (!\b2v_inst22|Add0~117_sumout\ & (!\b2v_inst22|Add0~109_sumout\ & !\b2v_inst22|Add0~113_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~105_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~117_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~109_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~113_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~121_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~125_sumout\,
	combout => \b2v_inst22|Equal0~3_combout\);

-- Location: MLABCELL_X87_Y27_N48
\b2v_inst22|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~9_combout\ = ( !\b2v_inst22|Add0~101_sumout\ & ( !\b2v_inst22|Add0~81_sumout\ & ( (!\b2v_inst22|Add0~89_sumout\ & (!\b2v_inst22|Add0~93_sumout\ & (!\b2v_inst22|Add0~85_sumout\ & !\b2v_inst22|Add0~97_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~89_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~93_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~85_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~97_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~101_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~81_sumout\,
	combout => \b2v_inst22|Equal0~9_combout\);

-- Location: MLABCELL_X87_Y27_N39
\b2v_inst22|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~4_combout\ = ( !\b2v_inst22|Add0~69_sumout\ & ( \b2v_inst22|Equal0~9_combout\ & ( (\b2v_inst22|Equal0~3_combout\ & (!\b2v_inst22|Add0~77_sumout\ & (!\b2v_inst22|Add0~73_sumout\ & !\b2v_inst22|Add0~65_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Equal0~3_combout\,
	datab => \b2v_inst22|ALT_INV_Add0~77_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~73_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~65_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~69_sumout\,
	dataf => \b2v_inst22|ALT_INV_Equal0~9_combout\,
	combout => \b2v_inst22|Equal0~4_combout\);

-- Location: MLABCELL_X87_Y27_N57
\b2v_inst22|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~6_combout\ = ( \b2v_inst22|Equal0~5_combout\ & ( \b2v_inst22|Equal0~4_combout\ & ( (!\b2v_inst22|Add0~1_sumout\ & (!\b2v_inst22|Add0~5_sumout\ & (!\b2v_inst22|Add0~29_sumout\ & !\b2v_inst22|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~9_sumout\,
	datae => \b2v_inst22|ALT_INV_Equal0~5_combout\,
	dataf => \b2v_inst22|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst22|Equal0~6_combout\);

-- Location: FF_X87_Y27_N17
\b2v_inst22|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst22|Add0~1_sumout\,
	sclr => \b2v_inst22|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|n\(29));

-- Location: LABCELL_X88_Y28_N48
\b2v_inst22|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~0_combout\ = ( !\b2v_inst22|Add0~57_sumout\ & ( !\b2v_inst22|Add0~53_sumout\ & ( !\b2v_inst22|Add0~61_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst22|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~57_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~53_sumout\,
	combout => \b2v_inst22|Equal0~0_combout\);

-- Location: LABCELL_X88_Y27_N6
\b2v_inst22|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~1_combout\ = ( !\b2v_inst22|Add0~33_sumout\ & ( !\b2v_inst22|Add0~49_sumout\ & ( (\b2v_inst22|Equal0~0_combout\ & (!\b2v_inst22|Add0~37_sumout\ & (!\b2v_inst22|Add0~45_sumout\ & !\b2v_inst22|Add0~41_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Equal0~0_combout\,
	datab => \b2v_inst22|ALT_INV_Add0~37_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~45_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~41_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~33_sumout\,
	dataf => \b2v_inst22|ALT_INV_Add0~49_sumout\,
	combout => \b2v_inst22|Equal0~1_combout\);

-- Location: LABCELL_X88_Y27_N42
\b2v_inst22|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|Equal0~2_combout\ = ( !\b2v_inst22|Add0~25_sumout\ & ( \b2v_inst22|Equal0~1_combout\ & ( (!\b2v_inst22|Add0~13_sumout\ & (!\b2v_inst22|Add0~17_sumout\ & (!\b2v_inst22|Add0~21_sumout\ & !\b2v_inst22|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~13_sumout\,
	datab => \b2v_inst22|ALT_INV_Add0~17_sumout\,
	datac => \b2v_inst22|ALT_INV_Add0~21_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~29_sumout\,
	datae => \b2v_inst22|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst22|ALT_INV_Equal0~1_combout\,
	combout => \b2v_inst22|Equal0~2_combout\);

-- Location: LABCELL_X88_Y27_N24
\b2v_inst22|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst22|temp~0_combout\ = ( \b2v_inst22|temp~q\ & ( \b2v_inst22|Equal0~4_combout\ & ( ((!\b2v_inst22|Equal0~2_combout\) # ((\b2v_inst22|Add0~9_sumout\) # (\b2v_inst22|Add0~5_sumout\))) # (\b2v_inst22|Add0~1_sumout\) ) ) ) # ( !\b2v_inst22|temp~q\ & ( 
-- \b2v_inst22|Equal0~4_combout\ & ( (!\b2v_inst22|Add0~1_sumout\ & (\b2v_inst22|Equal0~2_combout\ & (!\b2v_inst22|Add0~5_sumout\ & !\b2v_inst22|Add0~9_sumout\))) ) ) ) # ( \b2v_inst22|temp~q\ & ( !\b2v_inst22|Equal0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100100000000000001101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst22|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst22|ALT_INV_Equal0~2_combout\,
	datac => \b2v_inst22|ALT_INV_Add0~5_sumout\,
	datad => \b2v_inst22|ALT_INV_Add0~9_sumout\,
	datae => \b2v_inst22|ALT_INV_temp~q\,
	dataf => \b2v_inst22|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst22|temp~0_combout\);

-- Location: FF_X88_Y27_N26
\b2v_inst22|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst22|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst22|temp~q\);

-- Location: MLABCELL_X87_Y24_N21
\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ = ( \b2v_inst22|temp~q\ & ( (\sel[0]~input_o\ & !\b2v_inst17|temp~q\) ) ) # ( !\b2v_inst22|temp~q\ & ( (!\sel[0]~input_o\) # (!\b2v_inst17|temp~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111111000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sel[0]~input_o\,
	datad => \b2v_inst17|ALT_INV_temp~q\,
	dataf => \b2v_inst22|ALT_INV_temp~q\,
	combout => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\);

-- Location: MLABCELL_X87_Y24_N42
\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\ = LCELL(( \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ & ( (!\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\ & 
-- \sel[1]~input_o\) ) ) # ( !\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~1_combout\ & ( (!\b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~2_combout\) # (!\sel[1]~input_o\) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~2_combout\,
	datad => \ALT_INV_sel[1]~input_o\,
	dataf => \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~1_combout\,
	combout => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\);

-- Location: IOIBUF_X8_Y0_N1
\clock_27Mhz~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_27Mhz,
	o => \clock_27Mhz~input_o\);

-- Location: CLKCTRL_G4
\clock_27Mhz~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_27Mhz~input_o\,
	outclk => \clock_27Mhz~inputCLKENA0_outclk\);

-- Location: FF_X88_Y24_N16
\b2v_inst20|n[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~1_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(29));

-- Location: LABCELL_X88_Y25_N0
\b2v_inst20|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~105_sumout\ = SUM(( \b2v_inst20|n\(0) ) + ( VCC ) + ( !VCC ))
-- \b2v_inst20|Add0~106\ = CARRY(( \b2v_inst20|n\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(0),
	cin => GND,
	sumout => \b2v_inst20|Add0~105_sumout\,
	cout => \b2v_inst20|Add0~106\);

-- Location: FF_X88_Y25_N2
\b2v_inst20|n[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~105_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(0));

-- Location: LABCELL_X88_Y25_N3
\b2v_inst20|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~109_sumout\ = SUM(( \b2v_inst20|n\(1) ) + ( GND ) + ( \b2v_inst20|Add0~106\ ))
-- \b2v_inst20|Add0~110\ = CARRY(( \b2v_inst20|n\(1) ) + ( GND ) + ( \b2v_inst20|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(1),
	cin => \b2v_inst20|Add0~106\,
	sumout => \b2v_inst20|Add0~109_sumout\,
	cout => \b2v_inst20|Add0~110\);

-- Location: FF_X88_Y25_N5
\b2v_inst20|n[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~109_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(1));

-- Location: LABCELL_X88_Y25_N6
\b2v_inst20|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~113_sumout\ = SUM(( \b2v_inst20|n\(2) ) + ( GND ) + ( \b2v_inst20|Add0~110\ ))
-- \b2v_inst20|Add0~114\ = CARRY(( \b2v_inst20|n\(2) ) + ( GND ) + ( \b2v_inst20|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(2),
	cin => \b2v_inst20|Add0~110\,
	sumout => \b2v_inst20|Add0~113_sumout\,
	cout => \b2v_inst20|Add0~114\);

-- Location: FF_X88_Y25_N8
\b2v_inst20|n[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~113_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(2));

-- Location: LABCELL_X88_Y25_N9
\b2v_inst20|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~117_sumout\ = SUM(( \b2v_inst20|n\(3) ) + ( GND ) + ( \b2v_inst20|Add0~114\ ))
-- \b2v_inst20|Add0~118\ = CARRY(( \b2v_inst20|n\(3) ) + ( GND ) + ( \b2v_inst20|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(3),
	cin => \b2v_inst20|Add0~114\,
	sumout => \b2v_inst20|Add0~117_sumout\,
	cout => \b2v_inst20|Add0~118\);

-- Location: FF_X88_Y25_N11
\b2v_inst20|n[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~117_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(3));

-- Location: LABCELL_X88_Y25_N12
\b2v_inst20|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~121_sumout\ = SUM(( \b2v_inst20|n\(4) ) + ( GND ) + ( \b2v_inst20|Add0~118\ ))
-- \b2v_inst20|Add0~122\ = CARRY(( \b2v_inst20|n\(4) ) + ( GND ) + ( \b2v_inst20|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(4),
	cin => \b2v_inst20|Add0~118\,
	sumout => \b2v_inst20|Add0~121_sumout\,
	cout => \b2v_inst20|Add0~122\);

-- Location: FF_X88_Y25_N14
\b2v_inst20|n[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~121_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(4));

-- Location: LABCELL_X88_Y25_N15
\b2v_inst20|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~125_sumout\ = SUM(( \b2v_inst20|n\(5) ) + ( GND ) + ( \b2v_inst20|Add0~122\ ))
-- \b2v_inst20|Add0~126\ = CARRY(( \b2v_inst20|n\(5) ) + ( GND ) + ( \b2v_inst20|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(5),
	cin => \b2v_inst20|Add0~122\,
	sumout => \b2v_inst20|Add0~125_sumout\,
	cout => \b2v_inst20|Add0~126\);

-- Location: FF_X88_Y25_N17
\b2v_inst20|n[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~125_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(5));

-- Location: LABCELL_X88_Y25_N18
\b2v_inst20|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~53_sumout\ = SUM(( \b2v_inst20|n\(6) ) + ( GND ) + ( \b2v_inst20|Add0~126\ ))
-- \b2v_inst20|Add0~54\ = CARRY(( \b2v_inst20|n\(6) ) + ( GND ) + ( \b2v_inst20|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(6),
	cin => \b2v_inst20|Add0~126\,
	sumout => \b2v_inst20|Add0~53_sumout\,
	cout => \b2v_inst20|Add0~54\);

-- Location: FF_X88_Y25_N20
\b2v_inst20|n[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~53_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(6));

-- Location: LABCELL_X88_Y25_N21
\b2v_inst20|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~57_sumout\ = SUM(( \b2v_inst20|n\(7) ) + ( GND ) + ( \b2v_inst20|Add0~54\ ))
-- \b2v_inst20|Add0~58\ = CARRY(( \b2v_inst20|n\(7) ) + ( GND ) + ( \b2v_inst20|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(7),
	cin => \b2v_inst20|Add0~54\,
	sumout => \b2v_inst20|Add0~57_sumout\,
	cout => \b2v_inst20|Add0~58\);

-- Location: FF_X88_Y25_N23
\b2v_inst20|n[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~57_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(7));

-- Location: LABCELL_X88_Y25_N24
\b2v_inst20|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~61_sumout\ = SUM(( \b2v_inst20|n\(8) ) + ( GND ) + ( \b2v_inst20|Add0~58\ ))
-- \b2v_inst20|Add0~62\ = CARRY(( \b2v_inst20|n\(8) ) + ( GND ) + ( \b2v_inst20|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(8),
	cin => \b2v_inst20|Add0~58\,
	sumout => \b2v_inst20|Add0~61_sumout\,
	cout => \b2v_inst20|Add0~62\);

-- Location: FF_X88_Y25_N26
\b2v_inst20|n[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~61_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(8));

-- Location: LABCELL_X88_Y25_N27
\b2v_inst20|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~33_sumout\ = SUM(( \b2v_inst20|n\(9) ) + ( GND ) + ( \b2v_inst20|Add0~62\ ))
-- \b2v_inst20|Add0~34\ = CARRY(( \b2v_inst20|n\(9) ) + ( GND ) + ( \b2v_inst20|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(9),
	cin => \b2v_inst20|Add0~62\,
	sumout => \b2v_inst20|Add0~33_sumout\,
	cout => \b2v_inst20|Add0~34\);

-- Location: FF_X88_Y25_N29
\b2v_inst20|n[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~33_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(9));

-- Location: LABCELL_X88_Y25_N30
\b2v_inst20|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~37_sumout\ = SUM(( \b2v_inst20|n\(10) ) + ( GND ) + ( \b2v_inst20|Add0~34\ ))
-- \b2v_inst20|Add0~38\ = CARRY(( \b2v_inst20|n\(10) ) + ( GND ) + ( \b2v_inst20|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(10),
	cin => \b2v_inst20|Add0~34\,
	sumout => \b2v_inst20|Add0~37_sumout\,
	cout => \b2v_inst20|Add0~38\);

-- Location: FF_X88_Y25_N32
\b2v_inst20|n[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~37_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(10));

-- Location: LABCELL_X88_Y25_N33
\b2v_inst20|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~85_sumout\ = SUM(( \b2v_inst20|n\(11) ) + ( GND ) + ( \b2v_inst20|Add0~38\ ))
-- \b2v_inst20|Add0~86\ = CARRY(( \b2v_inst20|n\(11) ) + ( GND ) + ( \b2v_inst20|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(11),
	cin => \b2v_inst20|Add0~38\,
	sumout => \b2v_inst20|Add0~85_sumout\,
	cout => \b2v_inst20|Add0~86\);

-- Location: FF_X88_Y25_N35
\b2v_inst20|n[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~85_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(11));

-- Location: LABCELL_X88_Y25_N36
\b2v_inst20|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~89_sumout\ = SUM(( \b2v_inst20|n\(12) ) + ( GND ) + ( \b2v_inst20|Add0~86\ ))
-- \b2v_inst20|Add0~90\ = CARRY(( \b2v_inst20|n\(12) ) + ( GND ) + ( \b2v_inst20|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(12),
	cin => \b2v_inst20|Add0~86\,
	sumout => \b2v_inst20|Add0~89_sumout\,
	cout => \b2v_inst20|Add0~90\);

-- Location: FF_X88_Y25_N38
\b2v_inst20|n[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~89_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(12));

-- Location: LABCELL_X88_Y25_N39
\b2v_inst20|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~93_sumout\ = SUM(( \b2v_inst20|n\(13) ) + ( GND ) + ( \b2v_inst20|Add0~90\ ))
-- \b2v_inst20|Add0~94\ = CARRY(( \b2v_inst20|n\(13) ) + ( GND ) + ( \b2v_inst20|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(13),
	cin => \b2v_inst20|Add0~90\,
	sumout => \b2v_inst20|Add0~93_sumout\,
	cout => \b2v_inst20|Add0~94\);

-- Location: FF_X88_Y25_N41
\b2v_inst20|n[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~93_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(13));

-- Location: LABCELL_X88_Y25_N42
\b2v_inst20|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~97_sumout\ = SUM(( \b2v_inst20|n\(14) ) + ( GND ) + ( \b2v_inst20|Add0~94\ ))
-- \b2v_inst20|Add0~98\ = CARRY(( \b2v_inst20|n\(14) ) + ( GND ) + ( \b2v_inst20|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(14),
	cin => \b2v_inst20|Add0~94\,
	sumout => \b2v_inst20|Add0~97_sumout\,
	cout => \b2v_inst20|Add0~98\);

-- Location: FF_X88_Y25_N44
\b2v_inst20|n[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~97_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(14));

-- Location: LABCELL_X88_Y25_N45
\b2v_inst20|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~41_sumout\ = SUM(( \b2v_inst20|n\(15) ) + ( GND ) + ( \b2v_inst20|Add0~98\ ))
-- \b2v_inst20|Add0~42\ = CARRY(( \b2v_inst20|n\(15) ) + ( GND ) + ( \b2v_inst20|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(15),
	cin => \b2v_inst20|Add0~98\,
	sumout => \b2v_inst20|Add0~41_sumout\,
	cout => \b2v_inst20|Add0~42\);

-- Location: FF_X88_Y25_N47
\b2v_inst20|n[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~41_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(15));

-- Location: LABCELL_X88_Y25_N48
\b2v_inst20|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~101_sumout\ = SUM(( \b2v_inst20|n\(16) ) + ( GND ) + ( \b2v_inst20|Add0~42\ ))
-- \b2v_inst20|Add0~102\ = CARRY(( \b2v_inst20|n\(16) ) + ( GND ) + ( \b2v_inst20|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(16),
	cin => \b2v_inst20|Add0~42\,
	sumout => \b2v_inst20|Add0~101_sumout\,
	cout => \b2v_inst20|Add0~102\);

-- Location: FF_X88_Y25_N50
\b2v_inst20|n[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~101_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(16));

-- Location: LABCELL_X88_Y25_N51
\b2v_inst20|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~45_sumout\ = SUM(( \b2v_inst20|n\(17) ) + ( GND ) + ( \b2v_inst20|Add0~102\ ))
-- \b2v_inst20|Add0~46\ = CARRY(( \b2v_inst20|n\(17) ) + ( GND ) + ( \b2v_inst20|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(17),
	cin => \b2v_inst20|Add0~102\,
	sumout => \b2v_inst20|Add0~45_sumout\,
	cout => \b2v_inst20|Add0~46\);

-- Location: FF_X88_Y25_N53
\b2v_inst20|n[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~45_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(17));

-- Location: LABCELL_X88_Y25_N54
\b2v_inst20|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~49_sumout\ = SUM(( \b2v_inst20|n\(18) ) + ( GND ) + ( \b2v_inst20|Add0~46\ ))
-- \b2v_inst20|Add0~50\ = CARRY(( \b2v_inst20|n\(18) ) + ( GND ) + ( \b2v_inst20|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(18),
	cin => \b2v_inst20|Add0~46\,
	sumout => \b2v_inst20|Add0~49_sumout\,
	cout => \b2v_inst20|Add0~50\);

-- Location: FF_X88_Y25_N56
\b2v_inst20|n[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~49_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(18));

-- Location: LABCELL_X88_Y25_N57
\b2v_inst20|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~13_sumout\ = SUM(( \b2v_inst20|n\(19) ) + ( GND ) + ( \b2v_inst20|Add0~50\ ))
-- \b2v_inst20|Add0~14\ = CARRY(( \b2v_inst20|n\(19) ) + ( GND ) + ( \b2v_inst20|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(19),
	cin => \b2v_inst20|Add0~50\,
	sumout => \b2v_inst20|Add0~13_sumout\,
	cout => \b2v_inst20|Add0~14\);

-- Location: FF_X88_Y25_N59
\b2v_inst20|n[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~13_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(19));

-- Location: LABCELL_X88_Y24_N0
\b2v_inst20|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~17_sumout\ = SUM(( \b2v_inst20|n\(20) ) + ( GND ) + ( \b2v_inst20|Add0~14\ ))
-- \b2v_inst20|Add0~18\ = CARRY(( \b2v_inst20|n\(20) ) + ( GND ) + ( \b2v_inst20|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(20),
	cin => \b2v_inst20|Add0~14\,
	sumout => \b2v_inst20|Add0~17_sumout\,
	cout => \b2v_inst20|Add0~18\);

-- Location: FF_X88_Y24_N38
\b2v_inst20|n[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~17_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(20));

-- Location: LABCELL_X88_Y24_N3
\b2v_inst20|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~65_sumout\ = SUM(( \b2v_inst20|n\(21) ) + ( GND ) + ( \b2v_inst20|Add0~18\ ))
-- \b2v_inst20|Add0~66\ = CARRY(( \b2v_inst20|n\(21) ) + ( GND ) + ( \b2v_inst20|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_n\(21),
	cin => \b2v_inst20|Add0~18\,
	sumout => \b2v_inst20|Add0~65_sumout\,
	cout => \b2v_inst20|Add0~66\);

-- Location: FF_X88_Y24_N50
\b2v_inst20|n[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~65_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(21));

-- Location: LABCELL_X88_Y24_N6
\b2v_inst20|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~69_sumout\ = SUM(( \b2v_inst20|n\(22) ) + ( GND ) + ( \b2v_inst20|Add0~66\ ))
-- \b2v_inst20|Add0~70\ = CARRY(( \b2v_inst20|n\(22) ) + ( GND ) + ( \b2v_inst20|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(22),
	cin => \b2v_inst20|Add0~66\,
	sumout => \b2v_inst20|Add0~69_sumout\,
	cout => \b2v_inst20|Add0~70\);

-- Location: FF_X88_Y24_N56
\b2v_inst20|n[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~69_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(22));

-- Location: LABCELL_X88_Y24_N9
\b2v_inst20|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~73_sumout\ = SUM(( \b2v_inst20|n\(23) ) + ( GND ) + ( \b2v_inst20|Add0~70\ ))
-- \b2v_inst20|Add0~74\ = CARRY(( \b2v_inst20|n\(23) ) + ( GND ) + ( \b2v_inst20|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(23),
	cin => \b2v_inst20|Add0~70\,
	sumout => \b2v_inst20|Add0~73_sumout\,
	cout => \b2v_inst20|Add0~74\);

-- Location: FF_X88_Y24_N46
\b2v_inst20|n[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~73_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(23));

-- Location: LABCELL_X88_Y24_N12
\b2v_inst20|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~77_sumout\ = SUM(( \b2v_inst20|n\(24) ) + ( GND ) + ( \b2v_inst20|Add0~74\ ))
-- \b2v_inst20|Add0~78\ = CARRY(( \b2v_inst20|n\(24) ) + ( GND ) + ( \b2v_inst20|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(24),
	cin => \b2v_inst20|Add0~74\,
	sumout => \b2v_inst20|Add0~77_sumout\,
	cout => \b2v_inst20|Add0~78\);

-- Location: FF_X88_Y24_N40
\b2v_inst20|n[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~77_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(24));

-- Location: LABCELL_X88_Y24_N15
\b2v_inst20|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~21_sumout\ = SUM(( \b2v_inst20|n\(25) ) + ( GND ) + ( \b2v_inst20|Add0~78\ ))
-- \b2v_inst20|Add0~22\ = CARRY(( \b2v_inst20|n\(25) ) + ( GND ) + ( \b2v_inst20|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst20|ALT_INV_n\(25),
	cin => \b2v_inst20|Add0~78\,
	sumout => \b2v_inst20|Add0~21_sumout\,
	cout => \b2v_inst20|Add0~22\);

-- Location: FF_X88_Y24_N52
\b2v_inst20|n[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~21_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(25));

-- Location: LABCELL_X88_Y24_N18
\b2v_inst20|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~81_sumout\ = SUM(( \b2v_inst20|n\(26) ) + ( GND ) + ( \b2v_inst20|Add0~22\ ))
-- \b2v_inst20|Add0~82\ = CARRY(( \b2v_inst20|n\(26) ) + ( GND ) + ( \b2v_inst20|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst20|ALT_INV_n\(26),
	cin => \b2v_inst20|Add0~22\,
	sumout => \b2v_inst20|Add0~81_sumout\,
	cout => \b2v_inst20|Add0~82\);

-- Location: FF_X88_Y24_N58
\b2v_inst20|n[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~81_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(26));

-- Location: LABCELL_X88_Y24_N21
\b2v_inst20|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~25_sumout\ = SUM(( \b2v_inst20|n\(27) ) + ( GND ) + ( \b2v_inst20|Add0~82\ ))
-- \b2v_inst20|Add0~26\ = CARRY(( \b2v_inst20|n\(27) ) + ( GND ) + ( \b2v_inst20|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst20|ALT_INV_n\(27),
	cin => \b2v_inst20|Add0~82\,
	sumout => \b2v_inst20|Add0~25_sumout\,
	cout => \b2v_inst20|Add0~26\);

-- Location: FF_X88_Y24_N43
\b2v_inst20|n[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~25_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(27));

-- Location: LABCELL_X88_Y24_N24
\b2v_inst20|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~29_sumout\ = SUM(( \b2v_inst20|n\(28) ) + ( GND ) + ( \b2v_inst20|Add0~26\ ))
-- \b2v_inst20|Add0~30\ = CARRY(( \b2v_inst20|n\(28) ) + ( GND ) + ( \b2v_inst20|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst20|ALT_INV_n\(28),
	cin => \b2v_inst20|Add0~26\,
	sumout => \b2v_inst20|Add0~29_sumout\,
	cout => \b2v_inst20|Add0~30\);

-- Location: FF_X88_Y24_N23
\b2v_inst20|n[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~29_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(28));

-- Location: LABCELL_X88_Y24_N27
\b2v_inst20|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~1_sumout\ = SUM(( \b2v_inst20|n\(29) ) + ( GND ) + ( \b2v_inst20|Add0~30\ ))
-- \b2v_inst20|Add0~2\ = CARRY(( \b2v_inst20|n\(29) ) + ( GND ) + ( \b2v_inst20|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst20|ALT_INV_n\(29),
	cin => \b2v_inst20|Add0~30\,
	sumout => \b2v_inst20|Add0~1_sumout\,
	cout => \b2v_inst20|Add0~2\);

-- Location: FF_X88_Y24_N35
\b2v_inst20|n[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|Add0~9_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(31));

-- Location: LABCELL_X88_Y24_N30
\b2v_inst20|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~5_sumout\ = SUM(( \b2v_inst20|n\(30) ) + ( GND ) + ( \b2v_inst20|Add0~2\ ))
-- \b2v_inst20|Add0~6\ = CARRY(( \b2v_inst20|n\(30) ) + ( GND ) + ( \b2v_inst20|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst20|ALT_INV_n\(30),
	cin => \b2v_inst20|Add0~2\,
	sumout => \b2v_inst20|Add0~5_sumout\,
	cout => \b2v_inst20|Add0~6\);

-- Location: LABCELL_X88_Y24_N33
\b2v_inst20|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Add0~9_sumout\ = SUM(( \b2v_inst20|n\(31) ) + ( GND ) + ( \b2v_inst20|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_n\(31),
	cin => \b2v_inst20|Add0~6\,
	sumout => \b2v_inst20|Add0~9_sumout\);

-- Location: MLABCELL_X87_Y24_N3
\b2v_inst20|Equal0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~8_combout\ = ( !\b2v_inst20|Add0~49_sumout\ & ( !\b2v_inst20|Add0~41_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst20|ALT_INV_Add0~41_sumout\,
	dataf => \b2v_inst20|ALT_INV_Add0~49_sumout\,
	combout => \b2v_inst20|Equal0~8_combout\);

-- Location: MLABCELL_X87_Y24_N36
\b2v_inst20|Equal0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~7_combout\ = ( \b2v_inst20|Add0~37_sumout\ & ( !\b2v_inst20|Add0~45_sumout\ & ( (!\b2v_inst20|Add0~53_sumout\ & (!\b2v_inst20|Add0~57_sumout\ & (\b2v_inst20|Add0~33_sumout\ & \b2v_inst20|Add0~61_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~53_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~57_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~33_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~61_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~37_sumout\,
	dataf => \b2v_inst20|ALT_INV_Add0~45_sumout\,
	combout => \b2v_inst20|Equal0~7_combout\);

-- Location: LABCELL_X88_Y24_N57
\b2v_inst20|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~5_combout\ = ( !\b2v_inst20|Add0~25_sumout\ & ( \b2v_inst20|Equal0~7_combout\ & ( (!\b2v_inst20|Add0~17_sumout\ & (!\b2v_inst20|Add0~21_sumout\ & (\b2v_inst20|Equal0~8_combout\ & !\b2v_inst20|Add0~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~21_sumout\,
	datac => \b2v_inst20|ALT_INV_Equal0~8_combout\,
	datad => \b2v_inst20|ALT_INV_Add0~13_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst20|ALT_INV_Equal0~7_combout\,
	combout => \b2v_inst20|Equal0~5_combout\);

-- Location: LABCELL_X88_Y26_N0
\b2v_inst20|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~3_combout\ = ( !\b2v_inst20|Add0~109_sumout\ & ( !\b2v_inst20|Add0~125_sumout\ & ( (!\b2v_inst20|Add0~113_sumout\ & (!\b2v_inst20|Add0~105_sumout\ & (\b2v_inst20|Add0~121_sumout\ & !\b2v_inst20|Add0~117_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~113_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~105_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~121_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~117_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~109_sumout\,
	dataf => \b2v_inst20|ALT_INV_Add0~125_sumout\,
	combout => \b2v_inst20|Equal0~3_combout\);

-- Location: LABCELL_X88_Y24_N42
\b2v_inst20|Equal0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~9_combout\ = ( !\b2v_inst20|Add0~97_sumout\ & ( !\b2v_inst20|Add0~81_sumout\ & ( (!\b2v_inst20|Add0~85_sumout\ & (!\b2v_inst20|Add0~89_sumout\ & (!\b2v_inst20|Add0~101_sumout\ & \b2v_inst20|Add0~93_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~85_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~89_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~101_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~93_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~97_sumout\,
	dataf => \b2v_inst20|ALT_INV_Add0~81_sumout\,
	combout => \b2v_inst20|Equal0~9_combout\);

-- Location: LABCELL_X88_Y24_N51
\b2v_inst20|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~4_combout\ = ( !\b2v_inst20|Add0~69_sumout\ & ( \b2v_inst20|Equal0~9_combout\ & ( (!\b2v_inst20|Add0~65_sumout\ & (!\b2v_inst20|Add0~73_sumout\ & (!\b2v_inst20|Add0~77_sumout\ & \b2v_inst20|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~65_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~73_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~77_sumout\,
	datad => \b2v_inst20|ALT_INV_Equal0~3_combout\,
	datae => \b2v_inst20|ALT_INV_Add0~69_sumout\,
	dataf => \b2v_inst20|ALT_INV_Equal0~9_combout\,
	combout => \b2v_inst20|Equal0~4_combout\);

-- Location: LABCELL_X88_Y24_N39
\b2v_inst20|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~6_combout\ = ( \b2v_inst20|Equal0~5_combout\ & ( \b2v_inst20|Equal0~4_combout\ & ( (!\b2v_inst20|Add0~1_sumout\ & (!\b2v_inst20|Add0~5_sumout\ & (!\b2v_inst20|Add0~29_sumout\ & !\b2v_inst20|Add0~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~1_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~5_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~29_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~9_sumout\,
	datae => \b2v_inst20|ALT_INV_Equal0~5_combout\,
	dataf => \b2v_inst20|ALT_INV_Equal0~4_combout\,
	combout => \b2v_inst20|Equal0~6_combout\);

-- Location: FF_X88_Y24_N28
\b2v_inst20|n[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	asdata => \b2v_inst20|Add0~5_sumout\,
	sclr => \b2v_inst20|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|n\(30));

-- Location: MLABCELL_X87_Y24_N45
\b2v_inst20|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~0_combout\ = (!\b2v_inst20|Add0~53_sumout\ & (!\b2v_inst20|Add0~57_sumout\ & \b2v_inst20|Add0~61_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~53_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~57_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~61_sumout\,
	combout => \b2v_inst20|Equal0~0_combout\);

-- Location: MLABCELL_X87_Y24_N30
\b2v_inst20|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~1_combout\ = ( \b2v_inst20|Add0~37_sumout\ & ( !\b2v_inst20|Add0~49_sumout\ & ( (\b2v_inst20|Add0~33_sumout\ & (\b2v_inst20|Equal0~0_combout\ & (!\b2v_inst20|Add0~41_sumout\ & !\b2v_inst20|Add0~45_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~33_sumout\,
	datab => \b2v_inst20|ALT_INV_Equal0~0_combout\,
	datac => \b2v_inst20|ALT_INV_Add0~41_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~45_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~37_sumout\,
	dataf => \b2v_inst20|ALT_INV_Add0~49_sumout\,
	combout => \b2v_inst20|Equal0~1_combout\);

-- Location: MLABCELL_X87_Y24_N48
\b2v_inst20|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|Equal0~2_combout\ = ( !\b2v_inst20|Add0~25_sumout\ & ( \b2v_inst20|Equal0~1_combout\ & ( (!\b2v_inst20|Add0~17_sumout\ & (!\b2v_inst20|Add0~13_sumout\ & (!\b2v_inst20|Add0~21_sumout\ & !\b2v_inst20|Add0~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~17_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~13_sumout\,
	datac => \b2v_inst20|ALT_INV_Add0~21_sumout\,
	datad => \b2v_inst20|ALT_INV_Add0~29_sumout\,
	datae => \b2v_inst20|ALT_INV_Add0~25_sumout\,
	dataf => \b2v_inst20|ALT_INV_Equal0~1_combout\,
	combout => \b2v_inst20|Equal0~2_combout\);

-- Location: MLABCELL_X87_Y24_N24
\b2v_inst20|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst20|temp~0_combout\ = ( \b2v_inst20|temp~q\ & ( \b2v_inst20|Equal0~2_combout\ & ( (((!\b2v_inst20|Equal0~4_combout\) # (\b2v_inst20|Add0~1_sumout\)) # (\b2v_inst20|Add0~9_sumout\)) # (\b2v_inst20|Add0~5_sumout\) ) ) ) # ( !\b2v_inst20|temp~q\ & ( 
-- \b2v_inst20|Equal0~2_combout\ & ( (!\b2v_inst20|Add0~5_sumout\ & (!\b2v_inst20|Add0~9_sumout\ & (\b2v_inst20|Equal0~4_combout\ & !\b2v_inst20|Add0~1_sumout\))) ) ) ) # ( \b2v_inst20|temp~q\ & ( !\b2v_inst20|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001000000000001111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst20|ALT_INV_Add0~5_sumout\,
	datab => \b2v_inst20|ALT_INV_Add0~9_sumout\,
	datac => \b2v_inst20|ALT_INV_Equal0~4_combout\,
	datad => \b2v_inst20|ALT_INV_Add0~1_sumout\,
	datae => \b2v_inst20|ALT_INV_temp~q\,
	dataf => \b2v_inst20|ALT_INV_Equal0~2_combout\,
	combout => \b2v_inst20|temp~0_combout\);

-- Location: FF_X87_Y24_N26
\b2v_inst20|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_27Mhz~inputCLKENA0_outclk\,
	d => \b2v_inst20|temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst20|temp~q\);

-- Location: MLABCELL_X87_Y24_N12
\b2v_inst21|temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|temp~0_combout\ = ( \b2v_inst20|temp~q\ & ( (\b2v_inst21|temp~q\ & !\b2v_inst21|count~q\) ) ) # ( !\b2v_inst20|temp~q\ & ( (\b2v_inst21|count~q\) # (\b2v_inst21|temp~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|ALT_INV_temp~q\,
	datad => \b2v_inst21|ALT_INV_count~q\,
	dataf => \b2v_inst20|ALT_INV_temp~q\,
	combout => \b2v_inst21|temp~0_combout\);

-- Location: IOIBUF_X89_Y25_N55
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X87_Y24_N41
\b2v_inst21|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|temp~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|temp~q\);

-- Location: MLABCELL_X87_Y24_N6
\b2v_inst21|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|count~0_combout\ = ( \b2v_inst20|temp~q\ & ( (\b2v_inst21|temp~q\ & !\b2v_inst21|count~q\) ) ) # ( !\b2v_inst20|temp~q\ & ( (!\b2v_inst21|temp~q\ & !\b2v_inst21|count~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|ALT_INV_temp~q\,
	datad => \b2v_inst21|ALT_INV_count~q\,
	dataf => \b2v_inst20|ALT_INV_temp~q\,
	combout => \b2v_inst21|count~0_combout\);

-- Location: FF_X87_Y24_N14
\b2v_inst21|count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|count~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|count~q\);

-- Location: MLABCELL_X87_Y24_N18
\b2v_inst21|latch_compteur~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|latch_compteur~0_combout\ = ( \b2v_inst21|latch_compteur~q\ & ( ((!\b2v_inst21|temp~q\ & (!\b2v_inst21|count~q\ & !\b2v_inst20|temp~q\)) # (\b2v_inst21|temp~q\ & ((\b2v_inst20|temp~q\)))) # (\reset~input_o\) ) ) # ( 
-- !\b2v_inst21|latch_compteur~q\ & ( (!\b2v_inst21|count~q\ & (!\b2v_inst21|temp~q\ & (!\b2v_inst20|temp~q\ & !\reset~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000011111111111000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|ALT_INV_count~q\,
	datab => \b2v_inst21|ALT_INV_temp~q\,
	datac => \b2v_inst20|ALT_INV_temp~q\,
	datad => \ALT_INV_reset~input_o\,
	dataf => \b2v_inst21|ALT_INV_latch_compteur~q\,
	combout => \b2v_inst21|latch_compteur~0_combout\);

-- Location: FF_X87_Y24_N53
\b2v_inst21|latch_compteur\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|latch_compteur~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|latch_compteur~q\);

-- Location: MLABCELL_X87_Y24_N57
\b2v_inst21|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|process_0~0_combout\ = ( \b2v_inst20|temp~q\ & ( \b2v_inst21|temp~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|ALT_INV_temp~q\,
	dataf => \b2v_inst20|ALT_INV_temp~q\,
	combout => \b2v_inst21|process_0~0_combout\);

-- Location: MLABCELL_X87_Y24_N54
\b2v_inst21|enable_temp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|enable_temp~0_combout\ = ( \b2v_inst20|temp~q\ & ( (\b2v_inst21|temp~q\ & \b2v_inst21|count~q\) ) ) # ( !\b2v_inst20|temp~q\ & ( !\b2v_inst21|temp~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|ALT_INV_temp~q\,
	datad => \b2v_inst21|ALT_INV_count~q\,
	dataf => \b2v_inst20|ALT_INV_temp~q\,
	combout => \b2v_inst21|enable_temp~0_combout\);

-- Location: FF_X87_Y24_N35
\b2v_inst21|enable_temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|process_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \b2v_inst21|enable_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|enable_temp~q\);

-- Location: MLABCELL_X87_Y24_N9
\b2v_inst21|clk_compteur\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|clk_compteur~combout\ = LCELL(( \b2v_inst21|enable_temp~q\ & ( \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst15|LPM_MUX_component|auto_generated|ALT_INV_l2_w0_n0_mux_dataout~combout\,
	dataf => \b2v_inst21|ALT_INV_enable_temp~q\,
	combout => \b2v_inst21|clk_compteur~combout\);

-- Location: LABCELL_X88_Y22_N36
\b2v_inst1|count_c[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_c[0]~4_combout\ = !\b2v_inst1|count_c[0]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|ALT_INV_count_c[0]~DUPLICATE_q\,
	combout => \b2v_inst1|count_c[0]~4_combout\);

-- Location: MLABCELL_X87_Y24_N0
\b2v_inst21|reset_compteur~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst21|reset_compteur~0_combout\ = ( \b2v_inst21|count~q\ & ( ((\b2v_inst20|temp~q\) # (\b2v_inst21|temp~q\)) # (\b2v_inst21|reset_compteur~q\) ) ) # ( !\b2v_inst21|count~q\ & ( (!\b2v_inst21|temp~q\ & ((\b2v_inst20|temp~q\) # 
-- (\b2v_inst21|reset_compteur~q\))) # (\b2v_inst21|temp~q\ & ((!\b2v_inst20|temp~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110001111100011111000111110001111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|ALT_INV_reset_compteur~q\,
	datab => \b2v_inst21|ALT_INV_temp~q\,
	datac => \b2v_inst20|ALT_INV_temp~q\,
	dataf => \b2v_inst21|ALT_INV_count~q\,
	combout => \b2v_inst21|reset_compteur~0_combout\);

-- Location: FF_X87_Y23_N38
\b2v_inst21|reset_compteur\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|reset_compteur~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|reset_compteur~q\);

-- Location: FF_X87_Y24_N44
\b2v_inst21|enable_compteur\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst15|LPM_MUX_component|auto_generated|l2_w0_n0_mux_dataout~combout\,
	asdata => \b2v_inst21|process_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \b2v_inst21|enable_temp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst21|enable_compteur~q\);

-- Location: LABCELL_X88_Y23_N36
\b2v_inst1|count_u[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_u[0]~3_combout\ = ( !\b2v_inst1|count_u[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\,
	combout => \b2v_inst1|count_u[0]~3_combout\);

-- Location: FF_X88_Y23_N41
\b2v_inst1|count_u[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u[0]~3_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u[0]~DUPLICATE_q\);

-- Location: FF_X88_Y23_N26
\b2v_inst1|count_u[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u[2]~DUPLICATE_q\);

-- Location: FF_X88_Y23_N40
\b2v_inst1|count_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u[0]~3_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u\(0));

-- Location: FF_X88_Y23_N34
\b2v_inst1|count_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_u[1]~feeder_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u\(1));

-- Location: LABCELL_X88_Y23_N15
\b2v_inst1|count_u~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_u~1_combout\ = ( \b2v_inst1|count_u\(0) & ( \b2v_inst1|count_u\(1) & ( !\b2v_inst1|count_u[2]~DUPLICATE_q\ ) ) ) # ( !\b2v_inst1|count_u\(0) & ( \b2v_inst1|count_u\(1) & ( \b2v_inst1|count_u[2]~DUPLICATE_q\ ) ) ) # ( 
-- \b2v_inst1|count_u\(0) & ( !\b2v_inst1|count_u\(1) & ( \b2v_inst1|count_u[2]~DUPLICATE_q\ ) ) ) # ( !\b2v_inst1|count_u\(0) & ( !\b2v_inst1|count_u\(1) & ( \b2v_inst1|count_u[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\,
	datae => \b2v_inst1|ALT_INV_count_u\(0),
	dataf => \b2v_inst1|ALT_INV_count_u\(1),
	combout => \b2v_inst1|count_u~1_combout\);

-- Location: FF_X88_Y23_N25
\b2v_inst1|count_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u\(2));

-- Location: FF_X88_Y23_N19
\b2v_inst1|count_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u~2_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u\(3));

-- Location: LABCELL_X88_Y23_N3
\b2v_inst1|count_u~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_u~0_combout\ = ( \b2v_inst1|count_u\(3) & ( (!\b2v_inst1|count_u[0]~DUPLICATE_q\ & ((\b2v_inst1|count_u\(1)))) # (\b2v_inst1|count_u[0]~DUPLICATE_q\ & (\b2v_inst1|count_u\(2) & !\b2v_inst1|count_u\(1))) ) ) # ( !\b2v_inst1|count_u\(3) & ( 
-- !\b2v_inst1|count_u[0]~DUPLICATE_q\ $ (!\b2v_inst1|count_u\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_u\(2),
	datad => \b2v_inst1|ALT_INV_count_u\(1),
	dataf => \b2v_inst1|ALT_INV_count_u\(3),
	combout => \b2v_inst1|count_u~0_combout\);

-- Location: LABCELL_X88_Y23_N33
\b2v_inst1|count_u[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_u[1]~feeder_combout\ = \b2v_inst1|count_u~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_u~0_combout\,
	combout => \b2v_inst1|count_u[1]~feeder_combout\);

-- Location: FF_X88_Y23_N35
\b2v_inst1|count_u[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_u[1]~feeder_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y23_N21
\b2v_inst1|count_u~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_u~2_combout\ = ( \b2v_inst1|count_u\(0) & ( \b2v_inst1|count_u\(2) & ( !\b2v_inst1|count_u[3]~DUPLICATE_q\ $ (!\b2v_inst1|count_u[1]~DUPLICATE_q\) ) ) ) # ( !\b2v_inst1|count_u\(0) & ( \b2v_inst1|count_u\(2) & ( 
-- \b2v_inst1|count_u[3]~DUPLICATE_q\ ) ) ) # ( \b2v_inst1|count_u\(0) & ( !\b2v_inst1|count_u\(2) & ( (\b2v_inst1|count_u[3]~DUPLICATE_q\ & \b2v_inst1|count_u[1]~DUPLICATE_q\) ) ) ) # ( !\b2v_inst1|count_u\(0) & ( !\b2v_inst1|count_u\(2) & ( 
-- \b2v_inst1|count_u[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000101010101010101010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\,
	datad => \b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\,
	datae => \b2v_inst1|ALT_INV_count_u\(0),
	dataf => \b2v_inst1|ALT_INV_count_u\(2),
	combout => \b2v_inst1|count_u~2_combout\);

-- Location: FF_X88_Y23_N20
\b2v_inst1|count_u[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_u~2_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst21|enable_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_u[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y23_N0
\b2v_inst1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal3~0_combout\ = ( !\b2v_inst1|count_u[1]~DUPLICATE_q\ & ( (\b2v_inst1|count_u[3]~DUPLICATE_q\ & (\b2v_inst1|count_u[0]~DUPLICATE_q\ & !\b2v_inst1|count_u[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\,
	datab => \b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\,
	dataf => \b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\,
	combout => \b2v_inst1|Equal3~0_combout\);

-- Location: LABCELL_X88_Y23_N54
\b2v_inst1|count_d[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d[0]~0_combout\ = ( \b2v_inst1|count_u\(0) & ( \b2v_inst1|count_u[3]~DUPLICATE_q\ & ( (!\b2v_inst1|count_u[1]~DUPLICATE_q\ & (\b2v_inst21|enable_compteur~q\ & !\b2v_inst1|count_u[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\,
	datab => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datac => \b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\,
	datae => \b2v_inst1|ALT_INV_count_u\(0),
	dataf => \b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\,
	combout => \b2v_inst1|count_d[0]~0_combout\);

-- Location: FF_X88_Y23_N47
\b2v_inst1|count_d[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_d[0]~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y23_N27
\b2v_inst1|count_d[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d[0]~4_combout\ = ( !\b2v_inst1|count_d[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst1|ALT_INV_count_d[0]~DUPLICATE_q\,
	combout => \b2v_inst1|count_d[0]~4_combout\);

-- Location: FF_X88_Y23_N46
\b2v_inst1|count_d[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_d[0]~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d\(0));

-- Location: FF_X88_Y23_N52
\b2v_inst1|count_d[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_d~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d\(1));

-- Location: LABCELL_X88_Y23_N9
\b2v_inst1|count_d~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d~1_combout\ = ( !\b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|count_d\(0) $ (!\b2v_inst1|count_d\(1)) ) ) ) # ( \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|Equal3~0_combout\ & ( 
-- !\b2v_inst1|count_d\(0) $ (!\b2v_inst1|count_d\(1)) ) ) ) # ( !\b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|count_d\(0) $ (!\b2v_inst1|count_d\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|ALT_INV_count_d\(0),
	datad => \b2v_inst1|ALT_INV_count_d\(1),
	datae => \b2v_inst1|ALT_INV_process_0~0_combout\,
	dataf => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	combout => \b2v_inst1|count_d~1_combout\);

-- Location: FF_X88_Y23_N53
\b2v_inst1|count_d[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_d~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y22_N21
\b2v_inst1|count_d[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d[2]~2_combout\ = ( \b2v_inst1|count_d\(0) & ( \b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|count_d\(2) $ (((!\b2v_inst21|enable_compteur~q\) # (!\b2v_inst1|count_d[1]~DUPLICATE_q\))) ) ) ) # ( !\b2v_inst1|count_d\(0) & ( 
-- \b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|count_d\(2) ) ) ) # ( \b2v_inst1|count_d\(0) & ( !\b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|count_d\(2) ) ) ) # ( !\b2v_inst1|count_d\(0) & ( !\b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|count_d\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_d\(2),
	datab => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datac => \b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\,
	datae => \b2v_inst1|ALT_INV_count_d\(0),
	dataf => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	combout => \b2v_inst1|count_d[2]~2_combout\);

-- Location: MLABCELL_X87_Y22_N57
\b2v_inst1|count_d[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d[2]~feeder_combout\ = ( \b2v_inst1|count_d[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_d[2]~2_combout\,
	combout => \b2v_inst1|count_d[2]~feeder_combout\);

-- Location: FF_X87_Y22_N58
\b2v_inst1|count_d[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_d[2]~feeder_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d\(2));

-- Location: LABCELL_X88_Y23_N48
\b2v_inst1|count_d~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_d~3_combout\ = ( \b2v_inst1|count_d\(2) & ( \b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|count_d\(3) $ (((!\b2v_inst1|count_d[1]~DUPLICATE_q\) # (!\b2v_inst1|count_d[0]~DUPLICATE_q\))) ) ) ) # ( !\b2v_inst1|count_d\(2) & ( 
-- \b2v_inst1|Equal3~0_combout\ & ( (\b2v_inst1|count_d\(3) & ((!\b2v_inst1|count_d[0]~DUPLICATE_q\) # (\b2v_inst1|count_d[1]~DUPLICATE_q\))) ) ) ) # ( \b2v_inst1|count_d\(2) & ( !\b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|count_d\(3) $ 
-- (((!\b2v_inst1|count_d[1]~DUPLICATE_q\) # (!\b2v_inst1|count_d[0]~DUPLICATE_q\))) ) ) ) # ( !\b2v_inst1|count_d\(2) & ( !\b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|count_d\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000100011110111000000000110111010001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\,
	datab => \b2v_inst1|ALT_INV_count_d[0]~DUPLICATE_q\,
	datad => \b2v_inst1|ALT_INV_count_d\(3),
	datae => \b2v_inst1|ALT_INV_count_d\(2),
	dataf => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	combout => \b2v_inst1|count_d~3_combout\);

-- Location: FF_X88_Y23_N14
\b2v_inst1|count_d[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_d~3_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_d[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_d\(3));

-- Location: LABCELL_X88_Y22_N24
\b2v_inst1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~0_combout\ = ( !\b2v_inst1|count_d\(2) & ( \b2v_inst1|count_d\(3) & ( (!\b2v_inst1|count_d[1]~DUPLICATE_q\ & \b2v_inst1|count_d\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_d\(0),
	datae => \b2v_inst1|ALT_INV_count_d\(2),
	dataf => \b2v_inst1|ALT_INV_count_d\(3),
	combout => \b2v_inst1|process_0~0_combout\);

-- Location: LABCELL_X88_Y22_N57
\b2v_inst1|count_c[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_c[0]~0_combout\ = ( \b2v_inst1|process_0~0_combout\ & ( (\b2v_inst21|enable_compteur~q\ & \b2v_inst1|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datad => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_c[0]~0_combout\);

-- Location: FF_X88_Y22_N2
\b2v_inst1|count_c[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c[0]~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c[0]~DUPLICATE_q\);

-- Location: FF_X87_Y22_N20
\b2v_inst26|sortie[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	asdata => \b2v_inst1|count_c[0]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst26|sortie\(0));

-- Location: FF_X88_Y22_N22
\b2v_inst1|count_c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c\(1));

-- Location: FF_X88_Y22_N1
\b2v_inst1|count_c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c[0]~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c\(0));

-- Location: LABCELL_X88_Y22_N18
\b2v_inst1|count_c[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_c[2]~2_combout\ = ( \b2v_inst1|count_c\(0) & ( \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_c[2]~DUPLICATE_q\ $ (((!\b2v_inst21|enable_compteur~q\) # ((!\b2v_inst1|count_c[1]~DUPLICATE_q\) # (!\b2v_inst1|Equal3~0_combout\)))) ) ) 
-- ) # ( !\b2v_inst1|count_c\(0) & ( \b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_c[2]~DUPLICATE_q\ ) ) ) # ( \b2v_inst1|count_c\(0) & ( !\b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_c[2]~DUPLICATE_q\ ) ) ) # ( !\b2v_inst1|count_c\(0) & ( 
-- !\b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_c[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_c[2]~DUPLICATE_q\,
	datab => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datac => \b2v_inst1|ALT_INV_count_c[1]~DUPLICATE_q\,
	datad => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datae => \b2v_inst1|ALT_INV_count_c\(0),
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_c[2]~2_combout\);

-- Location: FF_X88_Y22_N35
\b2v_inst1|count_c[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c[2]~2_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c[2]~DUPLICATE_q\);

-- Location: FF_X88_Y22_N47
\b2v_inst1|count_c[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c~3_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c[3]~DUPLICATE_q\);

-- Location: FF_X88_Y22_N34
\b2v_inst1|count_c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c[2]~2_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c\(2));

-- Location: LABCELL_X88_Y22_N30
\b2v_inst1|count_c~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_c~3_combout\ = ( \b2v_inst1|count_c\(2) & ( \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_c[3]~DUPLICATE_q\ $ (((!\b2v_inst1|count_c[1]~DUPLICATE_q\) # (!\b2v_inst1|count_c\(0)))) ) ) ) # ( !\b2v_inst1|count_c\(2) & ( 
-- \b2v_inst1|process_0~0_combout\ & ( (\b2v_inst1|count_c[3]~DUPLICATE_q\ & (((!\b2v_inst1|count_c\(0)) # (!\b2v_inst1|Equal3~0_combout\)) # (\b2v_inst1|count_c[1]~DUPLICATE_q\))) ) ) ) # ( \b2v_inst1|count_c\(2) & ( !\b2v_inst1|process_0~0_combout\ & ( 
-- !\b2v_inst1|count_c[3]~DUPLICATE_q\ $ (((!\b2v_inst1|count_c[1]~DUPLICATE_q\) # (!\b2v_inst1|count_c\(0)))) ) ) ) # ( !\b2v_inst1|count_c\(2) & ( !\b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_c[3]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101100011011000110011001100010011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_c[1]~DUPLICATE_q\,
	datab => \b2v_inst1|ALT_INV_count_c[3]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_c\(0),
	datad => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datae => \b2v_inst1|ALT_INV_count_c\(2),
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_c~3_combout\);

-- Location: FF_X88_Y22_N46
\b2v_inst1|count_c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c~3_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c\(3));

-- Location: LABCELL_X88_Y22_N54
\b2v_inst1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~1_combout\ = ( \b2v_inst1|count_c\(3) & ( (!\b2v_inst1|count_c[1]~DUPLICATE_q\ & (!\b2v_inst1|count_c[2]~DUPLICATE_q\ & \b2v_inst1|count_c[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_c[1]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_c[2]~DUPLICATE_q\,
	datad => \b2v_inst1|ALT_INV_count_c[0]~DUPLICATE_q\,
	dataf => \b2v_inst1|ALT_INV_count_c\(3),
	combout => \b2v_inst1|process_0~1_combout\);

-- Location: LABCELL_X88_Y22_N15
\b2v_inst1|count_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_c~1_combout\ = ( \b2v_inst1|process_0~1_combout\ & ( \b2v_inst1|process_0~0_combout\ & ( (!\b2v_inst1|Equal3~0_combout\ & (!\b2v_inst1|count_c[0]~DUPLICATE_q\ $ (!\b2v_inst1|count_c\(1)))) ) ) ) # ( !\b2v_inst1|process_0~1_combout\ & ( 
-- \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_c[0]~DUPLICATE_q\ $ (!\b2v_inst1|count_c\(1)) ) ) ) # ( \b2v_inst1|process_0~1_combout\ & ( !\b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_c[0]~DUPLICATE_q\ $ (!\b2v_inst1|count_c\(1)) ) ) ) # 
-- ( !\b2v_inst1|process_0~1_combout\ & ( !\b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_c[0]~DUPLICATE_q\ $ (!\b2v_inst1|count_c\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_c[0]~DUPLICATE_q\,
	datab => \b2v_inst1|ALT_INV_count_c\(1),
	datac => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datae => \b2v_inst1|ALT_INV_process_0~1_combout\,
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_c~1_combout\);

-- Location: FF_X88_Y22_N23
\b2v_inst1|count_c[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_c~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_c[1]~DUPLICATE_q\);

-- Location: FF_X87_Y22_N43
\b2v_inst26|sortie[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	asdata => \b2v_inst1|count_c[1]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst26|sortie\(1));

-- Location: MLABCELL_X87_Y22_N48
\b2v_inst26|sortie[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst26|sortie[2]~feeder_combout\ = ( \b2v_inst1|count_c[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_c[2]~DUPLICATE_q\,
	combout => \b2v_inst26|sortie[2]~feeder_combout\);

-- Location: FF_X87_Y22_N49
\b2v_inst26|sortie[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst26|sortie[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst26|sortie\(2));

-- Location: MLABCELL_X87_Y22_N51
\b2v_inst26|sortie[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst26|sortie[3]~feeder_combout\ = ( \b2v_inst1|count_c[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_c[3]~DUPLICATE_q\,
	combout => \b2v_inst26|sortie[3]~feeder_combout\);

-- Location: FF_X87_Y22_N53
\b2v_inst26|sortie[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst26|sortie[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst26|sortie\(3));

-- Location: MLABCELL_X87_Y23_N24
\b2v_inst25|sortie[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst25|sortie[0]~feeder_combout\ = ( \b2v_inst1|count_d[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_d[0]~DUPLICATE_q\,
	combout => \b2v_inst25|sortie[0]~feeder_combout\);

-- Location: FF_X87_Y23_N25
\b2v_inst25|sortie[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst25|sortie[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|sortie\(0));

-- Location: MLABCELL_X87_Y23_N54
\b2v_inst25|sortie[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst25|sortie[1]~feeder_combout\ = ( \b2v_inst1|count_d[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_d[1]~DUPLICATE_q\,
	combout => \b2v_inst25|sortie[1]~feeder_combout\);

-- Location: FF_X87_Y23_N55
\b2v_inst25|sortie[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst25|sortie[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|sortie\(1));

-- Location: MLABCELL_X87_Y22_N0
\b2v_inst25|sortie[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst25|sortie[2]~feeder_combout\ = ( \b2v_inst1|count_d\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_d\(2),
	combout => \b2v_inst25|sortie[2]~feeder_combout\);

-- Location: FF_X87_Y22_N1
\b2v_inst25|sortie[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst25|sortie[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|sortie\(2));

-- Location: MLABCELL_X87_Y23_N21
\b2v_inst25|sortie[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst25|sortie[3]~feeder_combout\ = ( \b2v_inst1|count_d\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_d\(3),
	combout => \b2v_inst25|sortie[3]~feeder_combout\);

-- Location: FF_X87_Y23_N22
\b2v_inst25|sortie[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst25|sortie[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst25|sortie\(3));

-- Location: LABCELL_X88_Y22_N51
\b2v_inst1|count_m[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m[0]~0_combout\ = ( \b2v_inst1|process_0~1_combout\ & ( !\b2v_inst1|count_m\(0) $ (((!\b2v_inst1|process_0~0_combout\) # ((!\b2v_inst1|Equal3~0_combout\) # (!\b2v_inst21|enable_compteur~q\)))) ) ) # ( !\b2v_inst1|process_0~1_combout\ & ( 
-- \b2v_inst1|count_m\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_m\(0),
	datab => \b2v_inst1|ALT_INV_process_0~0_combout\,
	datac => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datad => \b2v_inst21|ALT_INV_enable_compteur~q\,
	dataf => \b2v_inst1|ALT_INV_process_0~1_combout\,
	combout => \b2v_inst1|count_m[0]~0_combout\);

-- Location: FF_X88_Y22_N53
\b2v_inst1|count_m[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_m[0]~0_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m\(0));

-- Location: MLABCELL_X87_Y22_N39
\b2v_inst27|sortie[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst27|sortie[0]~feeder_combout\ = ( \b2v_inst1|count_m\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_m\(0),
	combout => \b2v_inst27|sortie[0]~feeder_combout\);

-- Location: FF_X87_Y22_N41
\b2v_inst27|sortie[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst27|sortie[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst27|sortie\(0));

-- Location: MLABCELL_X87_Y22_N45
\b2v_inst1|Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~0_combout\ = ( \b2v_inst1|count_m\(0) & ( \b2v_inst1|count_m[1]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \b2v_inst1|ALT_INV_count_m\(0),
	dataf => \b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\,
	combout => \b2v_inst1|Add1~0_combout\);

-- Location: FF_X87_Y22_N29
\b2v_inst1|count_m[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_m[2]~feeder_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y22_N30
\b2v_inst1|count_m[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m[2]~3_combout\ = ( \b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_m[2]~DUPLICATE_q\ & ( (!\b2v_inst21|enable_compteur~q\) # ((!\b2v_inst1|process_0~1_combout\) # ((!\b2v_inst1|Equal3~0_combout\) # (!\b2v_inst1|Add1~0_combout\))) ) 
-- ) ) # ( !\b2v_inst1|process_0~0_combout\ & ( \b2v_inst1|count_m[2]~DUPLICATE_q\ ) ) # ( \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_m[2]~DUPLICATE_q\ & ( (\b2v_inst21|enable_compteur~q\ & (\b2v_inst1|process_0~1_combout\ & 
-- (\b2v_inst1|Equal3~0_combout\ & \b2v_inst1|Add1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datab => \b2v_inst1|ALT_INV_process_0~1_combout\,
	datac => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datad => \b2v_inst1|ALT_INV_Add1~0_combout\,
	datae => \b2v_inst1|ALT_INV_process_0~0_combout\,
	dataf => \b2v_inst1|ALT_INV_count_m[2]~DUPLICATE_q\,
	combout => \b2v_inst1|count_m[2]~3_combout\);

-- Location: MLABCELL_X87_Y22_N27
\b2v_inst1|count_m[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m[2]~feeder_combout\ = \b2v_inst1|count_m[2]~3_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|ALT_INV_count_m[2]~3_combout\,
	combout => \b2v_inst1|count_m[2]~feeder_combout\);

-- Location: FF_X87_Y22_N28
\b2v_inst1|count_m[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_m[2]~feeder_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m\(2));

-- Location: LABCELL_X88_Y22_N9
\b2v_inst1|count_m[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m[0]~2_combout\ = ( \b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|process_0~0_combout\ & ( (\b2v_inst21|enable_compteur~q\ & \b2v_inst1|process_0~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst21|ALT_INV_enable_compteur~q\,
	datad => \b2v_inst1|ALT_INV_process_0~1_combout\,
	datae => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_m[0]~2_combout\);

-- Location: FF_X88_Y22_N13
\b2v_inst1|count_m[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_m~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_m[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m\(1));

-- Location: FF_X88_Y22_N40
\b2v_inst1|count_m[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_m~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	ena => \b2v_inst1|count_m[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m\(3));

-- Location: LABCELL_X88_Y22_N48
\b2v_inst1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add1~1_combout\ = ( \b2v_inst1|count_m\(3) & ( (!\b2v_inst1|count_m\(0)) # ((!\b2v_inst1|count_m\(2)) # (!\b2v_inst1|count_m\(1))) ) ) # ( !\b2v_inst1|count_m\(3) & ( (\b2v_inst1|count_m\(0) & (\b2v_inst1|count_m\(2) & \b2v_inst1|count_m\(1))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_m\(0),
	datac => \b2v_inst1|ALT_INV_count_m\(2),
	datad => \b2v_inst1|ALT_INV_count_m\(1),
	dataf => \b2v_inst1|ALT_INV_count_m\(3),
	combout => \b2v_inst1|Add1~1_combout\);

-- Location: LABCELL_X88_Y22_N39
\b2v_inst1|count_m~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m~4_combout\ = ( \b2v_inst1|process_0~1_combout\ & ( (\b2v_inst1|Add1~1_combout\ & ((!\b2v_inst1|process_0~0_combout\) # ((!\b2v_inst1|process_0~2_combout\) # (!\b2v_inst1|Equal3~0_combout\)))) ) ) # ( !\b2v_inst1|process_0~1_combout\ & ( 
-- \b2v_inst1|Add1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_process_0~0_combout\,
	datab => \b2v_inst1|ALT_INV_process_0~2_combout\,
	datac => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	datad => \b2v_inst1|ALT_INV_Add1~1_combout\,
	dataf => \b2v_inst1|ALT_INV_process_0~1_combout\,
	combout => \b2v_inst1|count_m~4_combout\);

-- Location: FF_X88_Y22_N41
\b2v_inst1|count_m[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	d => \b2v_inst1|count_m~4_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	ena => \b2v_inst1|count_m[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y22_N42
\b2v_inst1|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|process_0~2_combout\ = ( !\b2v_inst1|count_m\(2) & ( (!\b2v_inst1|count_m[1]~DUPLICATE_q\ & (\b2v_inst1|count_m\(0) & \b2v_inst1|count_m[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_count_m\(0),
	datad => \b2v_inst1|ALT_INV_count_m[3]~DUPLICATE_q\,
	datae => \b2v_inst1|ALT_INV_count_m\(2),
	combout => \b2v_inst1|process_0~2_combout\);

-- Location: LABCELL_X88_Y22_N3
\b2v_inst1|count_m~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst1|count_m~1_combout\ = ( \b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|process_0~0_combout\ & ( (!\b2v_inst1|process_0~2_combout\ & (!\b2v_inst1|count_m\(0) $ ((!\b2v_inst1|count_m[1]~DUPLICATE_q\)))) # (\b2v_inst1|process_0~2_combout\ & 
-- (!\b2v_inst1|process_0~1_combout\ & (!\b2v_inst1|count_m\(0) $ (!\b2v_inst1|count_m[1]~DUPLICATE_q\)))) ) ) ) # ( !\b2v_inst1|Equal3~0_combout\ & ( \b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_m\(0) $ (!\b2v_inst1|count_m[1]~DUPLICATE_q\) ) ) ) # 
-- ( \b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_m\(0) $ (!\b2v_inst1|count_m[1]~DUPLICATE_q\) ) ) ) # ( !\b2v_inst1|Equal3~0_combout\ & ( !\b2v_inst1|process_0~0_combout\ & ( !\b2v_inst1|count_m\(0) $ 
-- (!\b2v_inst1|count_m[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|ALT_INV_count_m\(0),
	datab => \b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\,
	datac => \b2v_inst1|ALT_INV_process_0~2_combout\,
	datad => \b2v_inst1|ALT_INV_process_0~1_combout\,
	datae => \b2v_inst1|ALT_INV_Equal3~0_combout\,
	dataf => \b2v_inst1|ALT_INV_process_0~0_combout\,
	combout => \b2v_inst1|count_m~1_combout\);

-- Location: FF_X88_Y22_N14
\b2v_inst1|count_m[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|clk_compteur~combout\,
	asdata => \b2v_inst1|count_m~1_combout\,
	clrn => \b2v_inst21|reset_compteur~q\,
	sload => VCC,
	ena => \b2v_inst1|count_m[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|count_m[1]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y22_N12
\b2v_inst27|sortie[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst27|sortie[1]~feeder_combout\ = ( \b2v_inst1|count_m[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_m[1]~DUPLICATE_q\,
	combout => \b2v_inst27|sortie[1]~feeder_combout\);

-- Location: FF_X87_Y22_N13
\b2v_inst27|sortie[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst27|sortie[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst27|sortie\(1));

-- Location: FF_X87_Y22_N35
\b2v_inst27|sortie[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	asdata => \b2v_inst1|count_m[2]~DUPLICATE_q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst27|sortie\(2));

-- Location: MLABCELL_X87_Y22_N9
\b2v_inst27|sortie[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst27|sortie[3]~feeder_combout\ = ( \b2v_inst1|count_m[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_m[3]~DUPLICATE_q\,
	combout => \b2v_inst27|sortie[3]~feeder_combout\);

-- Location: FF_X87_Y22_N11
\b2v_inst27|sortie[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst27|sortie[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst27|sortie\(3));

-- Location: MLABCELL_X87_Y23_N15
\b2v_inst24|sortie[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst24|sortie[0]~feeder_combout\ = ( \b2v_inst1|count_u[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_u[0]~DUPLICATE_q\,
	combout => \b2v_inst24|sortie[0]~feeder_combout\);

-- Location: FF_X87_Y23_N16
\b2v_inst24|sortie[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst24|sortie[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|sortie\(0));

-- Location: MLABCELL_X87_Y23_N33
\b2v_inst24|sortie[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst24|sortie[1]~feeder_combout\ = ( \b2v_inst1|count_u[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_u[1]~DUPLICATE_q\,
	combout => \b2v_inst24|sortie[1]~feeder_combout\);

-- Location: FF_X87_Y23_N34
\b2v_inst24|sortie[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst24|sortie[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|sortie\(1));

-- Location: MLABCELL_X87_Y23_N48
\b2v_inst24|sortie[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst24|sortie[2]~feeder_combout\ = ( \b2v_inst1|count_u[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_u[2]~DUPLICATE_q\,
	combout => \b2v_inst24|sortie[2]~feeder_combout\);

-- Location: FF_X87_Y23_N49
\b2v_inst24|sortie[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst24|sortie[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|sortie\(2));

-- Location: MLABCELL_X87_Y23_N42
\b2v_inst24|sortie[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \b2v_inst24|sortie[3]~feeder_combout\ = ( \b2v_inst1|count_u[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \b2v_inst1|ALT_INV_count_u[3]~DUPLICATE_q\,
	combout => \b2v_inst24|sortie[3]~feeder_combout\);

-- Location: FF_X87_Y23_N43
\b2v_inst24|sortie[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst21|latch_compteur~q\,
	d => \b2v_inst24|sortie[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst24|sortie\(3));

-- Location: LABCELL_X24_Y70_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


