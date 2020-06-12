-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/24/2020 14:08:03"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sinepin IS
    PORT (
	clk : IN std_logic;
	btn : IN std_logic;
	led : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	speaker : OUT std_logic;
	radio : OUT std_logic;
	u8bit_sineromvalue : OUT std_logic_vector(7 DOWNTO 0)
	);
END sinepin;

-- Design Ports Information
-- led	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led2	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- led3	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- speaker	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- radio	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[0]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[1]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[2]	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[3]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[4]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[5]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[6]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- u8bit_sineromvalue[7]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- btn	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sinepin IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_btn : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_speaker : std_logic;
SIGNAL ww_radio : std_logic;
SIGNAL ww_u8bit_sineromvalue : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~2\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~3\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~4\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~5\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~6\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~7\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~8\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~9\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~10\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \env|currentGain[4]~28_combout\ : std_logic;
SIGNAL \env|currentGain[5]~30_combout\ : std_logic;
SIGNAL \env|currentGain[7]~34_combout\ : std_logic;
SIGNAL \env|currentGain[10]~40_combout\ : std_logic;
SIGNAL \env|currentGain[21]~62_combout\ : std_logic;
SIGNAL \env|currentGain[23]~66_combout\ : std_logic;
SIGNAL \blinker|divcounter[17]~21_combout\ : std_logic;
SIGNAL \blinker|divcounter[18]~23_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[6]~20_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[10]~29\ : std_logic;
SIGNAL \pwmradio|pwm_counter[11]~30_combout\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \freqGen3|fpaddress[0]~26_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[2]~30_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[7]~40_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[11]~48_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[18]~62_combout\ : std_logic;
SIGNAL \env|currentGain[30]~82_combout\ : std_logic;
SIGNAL \musicaddress[2]~34_combout\ : std_logic;
SIGNAL \musicaddress[4]~38_combout\ : std_logic;
SIGNAL \musicaddress[5]~40_combout\ : std_logic;
SIGNAL \musicaddress[7]~44_combout\ : std_logic;
SIGNAL \musicaddress[9]~48_combout\ : std_logic;
SIGNAL \musicaddress[11]~52_combout\ : std_logic;
SIGNAL \musicaddress[18]~66_combout\ : std_logic;
SIGNAL \musicaddress[20]~70_combout\ : std_logic;
SIGNAL \blinker|Equal0~6_combout\ : std_logic;
SIGNAL \blinker|Equal0~7_combout\ : std_logic;
SIGNAL \freqGen3|romdata[13]~1_combout\ : std_logic;
SIGNAL \freqGen3|romdata[7]~7_combout\ : std_logic;
SIGNAL \env|Selector3~2_combout\ : std_logic;
SIGNAL \env|state.STATE_ATTACK~regout\ : std_logic;
SIGNAL \env|Selector2~2_combout\ : std_logic;
SIGNAL \env|Selector2~6_combout\ : std_logic;
SIGNAL \env|Selector1~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \musicdiv[0]~23_combout\ : std_logic;
SIGNAL \musicdiv[1]~1_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[2]~11_cout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[2]~13\ : std_logic;
SIGNAL \pwmradio|pwm_counter[3]~14_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[3]~15\ : std_logic;
SIGNAL \pwmradio|pwm_counter[4]~17\ : std_logic;
SIGNAL \pwmradio|pwm_counter[5]~18_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[5]~19\ : std_logic;
SIGNAL \pwmradio|pwm_counter[6]~21\ : std_logic;
SIGNAL \pwmradio|pwm_counter[7]~22_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[7]~23\ : std_logic;
SIGNAL \pwmradio|pwm_counter[8]~25\ : std_logic;
SIGNAL \pwmradio|pwm_counter[9]~26_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[9]~27\ : std_logic;
SIGNAL \pwmradio|pwm_counter[10]~28_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[8]~24_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[2]~12_combout\ : std_logic;
SIGNAL \musicdiv[1]~2\ : std_logic;
SIGNAL \musicdiv[1]~4_cout\ : std_logic;
SIGNAL \musicdiv[1]~6_cout\ : std_logic;
SIGNAL \musicdiv[1]~8_cout\ : std_logic;
SIGNAL \musicdiv[1]~10_cout\ : std_logic;
SIGNAL \musicdiv[1]~12_cout\ : std_logic;
SIGNAL \musicdiv[1]~14_cout\ : std_logic;
SIGNAL \musicdiv[1]~16_cout\ : std_logic;
SIGNAL \musicdiv[1]~18_cout\ : std_logic;
SIGNAL \musicdiv[1]~20_cout\ : std_logic;
SIGNAL \musicdiv[1]~22_cout\ : std_logic;
SIGNAL \blinker|divcounter[12]~11_combout\ : std_logic;
SIGNAL \blinker|divcounter[12]~12\ : std_logic;
SIGNAL \blinker|divcounter[13]~13_combout\ : std_logic;
SIGNAL \blinker|divcounter[13]~14\ : std_logic;
SIGNAL \blinker|divcounter[14]~15_combout\ : std_logic;
SIGNAL \blinker|divcounter[14]~16\ : std_logic;
SIGNAL \blinker|divcounter[15]~18\ : std_logic;
SIGNAL \blinker|divcounter[16]~19_combout\ : std_logic;
SIGNAL \blinker|divcounter[16]~20\ : std_logic;
SIGNAL \blinker|divcounter[17]~22\ : std_logic;
SIGNAL \blinker|divcounter[18]~24\ : std_logic;
SIGNAL \blinker|divcounter[19]~25_combout\ : std_logic;
SIGNAL \blinker|divcounter[19]~26\ : std_logic;
SIGNAL \blinker|divcounter[20]~27_combout\ : std_logic;
SIGNAL \blinker|divcounter[20]~28\ : std_logic;
SIGNAL \blinker|divcounter[21]~29_combout\ : std_logic;
SIGNAL \blinker|Equal0~3_combout\ : std_logic;
SIGNAL \blinker|divcounter[21]~30\ : std_logic;
SIGNAL \blinker|divcounter[22]~31_combout\ : std_logic;
SIGNAL \blinker|Equal0~4_combout\ : std_logic;
SIGNAL \blinker|Equal0~5_combout\ : std_logic;
SIGNAL \blinker|divcounter[15]~17_combout\ : std_logic;
SIGNAL \blinker|Equal0~1_combout\ : std_logic;
SIGNAL \blinker|Equal0~2_combout\ : std_logic;
SIGNAL \blinker|rled~0_combout\ : std_logic;
SIGNAL \blinker|rled~regout\ : std_logic;
SIGNAL \btn~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \musicaddress[0]~30_combout\ : std_logic;
SIGNAL \musicaddress[21]~73\ : std_logic;
SIGNAL \musicaddress[22]~74_combout\ : std_logic;
SIGNAL \blinker|Equal0~0_combout\ : std_logic;
SIGNAL \musicaddress[22]~75\ : std_logic;
SIGNAL \musicaddress[23]~76_combout\ : std_logic;
SIGNAL \musicaddress[23]~77\ : std_logic;
SIGNAL \musicaddress[24]~78_combout\ : std_logic;
SIGNAL \musicaddress[24]~79\ : std_logic;
SIGNAL \musicaddress[25]~80_combout\ : std_logic;
SIGNAL \musicaddress[25]~81\ : std_logic;
SIGNAL \musicaddress[26]~82_combout\ : std_logic;
SIGNAL \musicaddress[26]~83\ : std_logic;
SIGNAL \musicaddress[27]~84_combout\ : std_logic;
SIGNAL \musicaddress[27]~85\ : std_logic;
SIGNAL \musicaddress[28]~86_combout\ : std_logic;
SIGNAL \musicaddress[28]~87\ : std_logic;
SIGNAL \musicaddress[29]~88_combout\ : std_logic;
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \musicaddress[0]~31\ : std_logic;
SIGNAL \musicaddress[1]~32_combout\ : std_logic;
SIGNAL \musicaddress[1]~33\ : std_logic;
SIGNAL \musicaddress[2]~35\ : std_logic;
SIGNAL \musicaddress[3]~36_combout\ : std_logic;
SIGNAL \musicaddress[3]~37\ : std_logic;
SIGNAL \musicaddress[4]~39\ : std_logic;
SIGNAL \musicaddress[5]~41\ : std_logic;
SIGNAL \musicaddress[6]~42_combout\ : std_logic;
SIGNAL \musicaddress[6]~43\ : std_logic;
SIGNAL \musicaddress[7]~45\ : std_logic;
SIGNAL \musicaddress[8]~46_combout\ : std_logic;
SIGNAL \musicaddress[8]~47\ : std_logic;
SIGNAL \musicaddress[9]~49\ : std_logic;
SIGNAL \musicaddress[10]~50_combout\ : std_logic;
SIGNAL \musicaddress[10]~51\ : std_logic;
SIGNAL \musicaddress[11]~53\ : std_logic;
SIGNAL \musicaddress[12]~54_combout\ : std_logic;
SIGNAL \musicaddress[12]~55\ : std_logic;
SIGNAL \musicaddress[13]~56_combout\ : std_logic;
SIGNAL \musicaddress[13]~57\ : std_logic;
SIGNAL \musicaddress[14]~58_combout\ : std_logic;
SIGNAL \musicaddress[14]~59\ : std_logic;
SIGNAL \musicaddress[15]~60_combout\ : std_logic;
SIGNAL \musicaddress[15]~61\ : std_logic;
SIGNAL \musicaddress[16]~62_combout\ : std_logic;
SIGNAL \musicaddress[16]~63\ : std_logic;
SIGNAL \musicaddress[17]~64_combout\ : std_logic;
SIGNAL \musicaddress[17]~65\ : std_logic;
SIGNAL \musicaddress[18]~67\ : std_logic;
SIGNAL \musicaddress[19]~68_combout\ : std_logic;
SIGNAL \musicaddress[19]~69\ : std_logic;
SIGNAL \musicaddress[20]~71\ : std_logic;
SIGNAL \musicaddress[21]~72_combout\ : std_logic;
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \freqGen3|fpaddress[0]~27\ : std_logic;
SIGNAL \freqGen3|fpaddress[1]~28_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[1]~29\ : std_logic;
SIGNAL \freqGen3|fpaddress[2]~31\ : std_logic;
SIGNAL \freqGen3|fpaddress[3]~32_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[3]~33\ : std_logic;
SIGNAL \freqGen3|fpaddress[4]~35\ : std_logic;
SIGNAL \freqGen3|fpaddress[5]~37\ : std_logic;
SIGNAL \freqGen3|fpaddress[6]~38_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[6]~39\ : std_logic;
SIGNAL \freqGen3|fpaddress[7]~41\ : std_logic;
SIGNAL \freqGen3|fpaddress[8]~42_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[8]~43\ : std_logic;
SIGNAL \freqGen3|fpaddress[9]~45\ : std_logic;
SIGNAL \freqGen3|fpaddress[10]~46_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[10]~47\ : std_logic;
SIGNAL \freqGen3|fpaddress[11]~49\ : std_logic;
SIGNAL \freqGen3|fpaddress[12]~50_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[12]~51\ : std_logic;
SIGNAL \freqGen3|fpaddress[13]~52_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[13]~53\ : std_logic;
SIGNAL \freqGen3|fpaddress[14]~54_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[14]~55\ : std_logic;
SIGNAL \freqGen3|fpaddress[15]~56_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[15]~57\ : std_logic;
SIGNAL \freqGen3|fpaddress[16]~59\ : std_logic;
SIGNAL \freqGen3|fpaddress[17]~60_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[17]~61\ : std_logic;
SIGNAL \freqGen3|fpaddress[18]~63\ : std_logic;
SIGNAL \freqGen3|fpaddress[19]~65\ : std_logic;
SIGNAL \freqGen3|fpaddress[20]~66_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[20]~67\ : std_logic;
SIGNAL \freqGen3|fpaddress[21]~69\ : std_logic;
SIGNAL \freqGen3|fpaddress[22]~70_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[22]~71\ : std_logic;
SIGNAL \freqGen3|fpaddress[23]~73\ : std_logic;
SIGNAL \freqGen3|fpaddress[24]~74_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[24]~75\ : std_logic;
SIGNAL \freqGen3|fpaddress[25]~76_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[16]~58_combout\ : std_logic;
SIGNAL \modfreqGen|comb~0_combout\ : std_logic;
SIGNAL \modfreqGen|comb~1_combout\ : std_logic;
SIGNAL \modfreqGen|comb~2_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[19]~64_combout\ : std_logic;
SIGNAL \modfreqGen|comb~3_combout\ : std_logic;
SIGNAL \modfreqGen|comb~4_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[21]~68_combout\ : std_logic;
SIGNAL \modfreqGen|comb~5_combout\ : std_logic;
SIGNAL \modfreqGen|comb~6_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[23]~72_combout\ : std_logic;
SIGNAL \modfreqGen|comb~7_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \modfreqGen|romdata[0]~0_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \modfreqGen|romdata[1]~1_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \modfreqGen|romdata[2]~2_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \modfreqGen|romdata[3]~3_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \modfreqGen|romdata[4]~4_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \modfreqGen|romdata[5]~5_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \modfreqGen|romdata[6]~6_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \modfreqGen|romdata[7]~7_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \modfreqGen|romdata[8]~8_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \modfreqGen|romdata[9]~9_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \modfreqGen|romdata[10]~10_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \modfreqGen|romdata[11]~11_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \modfreqGen|romdata[12]~12_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \modfreqGen|romdata[13]~13_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector0~0_combout\ : std_logic;
SIGNAL \modfreqGen|rom|Selector0~1_combout\ : std_logic;
SIGNAL \modfreqGen|romdata[14]~14_combout\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~2\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~3\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~4\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~5\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~6\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~7\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~8\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~9\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_mult1~10\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \freqGen3|fpaddress[9]~44_combout\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \freqGen3|fpaddress[5]~36_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress[4]~34_combout\ : std_logic;
SIGNAL \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \freqGen3|Add2~1_cout\ : std_logic;
SIGNAL \freqGen3|Add2~3_cout\ : std_logic;
SIGNAL \freqGen3|Add2~5_cout\ : std_logic;
SIGNAL \freqGen3|Add2~7_cout\ : std_logic;
SIGNAL \freqGen3|Add2~9_cout\ : std_logic;
SIGNAL \freqGen3|Add2~11_cout\ : std_logic;
SIGNAL \freqGen3|Add2~13_cout\ : std_logic;
SIGNAL \freqGen3|Add2~15_cout\ : std_logic;
SIGNAL \freqGen3|Add2~17_cout\ : std_logic;
SIGNAL \freqGen3|Add2~19_cout\ : std_logic;
SIGNAL \freqGen3|Add2~21_cout\ : std_logic;
SIGNAL \freqGen3|Add2~23_cout\ : std_logic;
SIGNAL \freqGen3|Add2~25_cout\ : std_logic;
SIGNAL \freqGen3|Add2~27_cout\ : std_logic;
SIGNAL \freqGen3|Add2~29_cout\ : std_logic;
SIGNAL \freqGen3|Add2~31\ : std_logic;
SIGNAL \freqGen3|Add2~33\ : std_logic;
SIGNAL \freqGen3|Add2~35\ : std_logic;
SIGNAL \freqGen3|Add2~37\ : std_logic;
SIGNAL \freqGen3|Add2~39\ : std_logic;
SIGNAL \freqGen3|Add2~41\ : std_logic;
SIGNAL \freqGen3|Add2~43\ : std_logic;
SIGNAL \freqGen3|Add2~44_combout\ : std_logic;
SIGNAL \freqGen3|Add2~45\ : std_logic;
SIGNAL \freqGen3|Add2~46_combout\ : std_logic;
SIGNAL \freqGen3|comb~0_combout\ : std_logic;
SIGNAL \freqGen3|Add2~42_combout\ : std_logic;
SIGNAL \freqGen3|Add2~36_combout\ : std_logic;
SIGNAL \freqGen3|Add2~32_combout\ : std_logic;
SIGNAL \freqGen3|Add2~34_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector0~0_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector0~1_combout\ : std_logic;
SIGNAL \freqGen3|Add2~40_combout\ : std_logic;
SIGNAL \freqGen3|comb~2_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector0~2_combout\ : std_logic;
SIGNAL \freqGen3|Add2~47\ : std_logic;
SIGNAL \freqGen3|Add2~48_combout\ : std_logic;
SIGNAL \freqGen3|romdata[14]~0_combout\ : std_logic;
SIGNAL \freqGen3|Add2~30_combout\ : std_logic;
SIGNAL \freqGen3|comb~3_combout\ : std_logic;
SIGNAL \freqGen3|comb~4_combout\ : std_logic;
SIGNAL \freqGen3|comb~5_combout\ : std_logic;
SIGNAL \freqGen3|comb~6_combout\ : std_logic;
SIGNAL \freqGen3|Add2~38_combout\ : std_logic;
SIGNAL \freqGen3|comb~7_combout\ : std_logic;
SIGNAL \freqGen3|comb~1_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \freqGen3|romdata[12]~2_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \freqGen3|romdata[11]~3_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \freqGen3|romdata[10]~4_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \freqGen3|romdata[9]~5_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \freqGen3|romdata[8]~6_combout\ : std_logic;
SIGNAL \pwmradio|pwm_counter[4]~16_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \freqGen3|romdata[6]~8_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \freqGen3|romdata[5]~9_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \freqGen3|romdata[4]~10_combout\ : std_logic;
SIGNAL \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \freqGen3|romdata[3]~11_combout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~1_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~3_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~5_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~7_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~9_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~11_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~13_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~15_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~17_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~19_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~21_cout\ : std_logic;
SIGNAL \pwmspeaker|LessThan0~22_combout\ : std_logic;
SIGNAL \pwmspeaker|pwmpin~regout\ : std_logic;
SIGNAL \pwmradio|pwmpin~regout\ : std_logic;
SIGNAL \env|currentGain[24]~69\ : std_logic;
SIGNAL \env|currentGain[25]~71_combout\ : std_logic;
SIGNAL \env|currentGain[23]~70_combout\ : std_logic;
SIGNAL \env|currentGain[25]~72\ : std_logic;
SIGNAL \env|currentGain[26]~74\ : std_logic;
SIGNAL \env|currentGain[27]~75_combout\ : std_logic;
SIGNAL \env|currentGain[27]~76\ : std_logic;
SIGNAL \env|currentGain[28]~78\ : std_logic;
SIGNAL \env|currentGain[29]~80_combout\ : std_logic;
SIGNAL \env|currentGain[29]~81\ : std_logic;
SIGNAL \env|currentGain[30]~83\ : std_logic;
SIGNAL \env|currentGain[31]~84_combout\ : std_logic;
SIGNAL \env|currentGain[28]~77_combout\ : std_logic;
SIGNAL \env|Equal2~0_combout\ : std_logic;
SIGNAL \env|Selector4~2_combout\ : std_logic;
SIGNAL \env|state.STATE_RELEASE~regout\ : std_logic;
SIGNAL \env|Selector2~1_combout\ : std_logic;
SIGNAL \env|Selector0~0_combout\ : std_logic;
SIGNAL \env|state.STATE_IDLE~regout\ : std_logic;
SIGNAL \env|Selector3~1_combout\ : std_logic;
SIGNAL \env|Selector2~3_combout\ : std_logic;
SIGNAL \env|Selector2~4_combout\ : std_logic;
SIGNAL \env|Selector2~5_combout\ : std_logic;
SIGNAL \env|state.STATE_DECAY~regout\ : std_logic;
SIGNAL \env|Selector3~3_combout\ : std_logic;
SIGNAL \env|state.STATE_SUSTAIN~regout\ : std_logic;
SIGNAL \env|currentGain[3]~79_combout\ : std_logic;
SIGNAL \env|currentGain[4]~29\ : std_logic;
SIGNAL \env|currentGain[5]~31\ : std_logic;
SIGNAL \env|currentGain[6]~32_combout\ : std_logic;
SIGNAL \env|currentGain[6]~33\ : std_logic;
SIGNAL \env|currentGain[7]~35\ : std_logic;
SIGNAL \env|currentGain[8]~36_combout\ : std_logic;
SIGNAL \env|currentGain[8]~37\ : std_logic;
SIGNAL \env|currentGain[9]~38_combout\ : std_logic;
SIGNAL \env|currentGain[9]~39\ : std_logic;
SIGNAL \env|currentGain[10]~41\ : std_logic;
SIGNAL \env|currentGain[11]~42_combout\ : std_logic;
SIGNAL \env|currentGain[11]~43\ : std_logic;
SIGNAL \env|currentGain[12]~44_combout\ : std_logic;
SIGNAL \env|currentGain[12]~45\ : std_logic;
SIGNAL \env|currentGain[13]~46_combout\ : std_logic;
SIGNAL \env|currentGain[13]~47\ : std_logic;
SIGNAL \env|currentGain[14]~48_combout\ : std_logic;
SIGNAL \env|currentGain[14]~49\ : std_logic;
SIGNAL \env|currentGain[15]~50_combout\ : std_logic;
SIGNAL \env|currentGain[15]~51\ : std_logic;
SIGNAL \env|currentGain[16]~52_combout\ : std_logic;
SIGNAL \env|currentGain[16]~53\ : std_logic;
SIGNAL \env|currentGain[17]~54_combout\ : std_logic;
SIGNAL \env|currentGain[17]~55\ : std_logic;
SIGNAL \env|currentGain[18]~56_combout\ : std_logic;
SIGNAL \env|currentGain[18]~57\ : std_logic;
SIGNAL \env|currentGain[19]~58_combout\ : std_logic;
SIGNAL \env|currentGain[19]~59\ : std_logic;
SIGNAL \env|currentGain[20]~60_combout\ : std_logic;
SIGNAL \env|currentGain[20]~61\ : std_logic;
SIGNAL \env|currentGain[21]~63\ : std_logic;
SIGNAL \env|currentGain[22]~64_combout\ : std_logic;
SIGNAL \env|currentGain[22]~65\ : std_logic;
SIGNAL \env|currentGain[23]~67\ : std_logic;
SIGNAL \env|currentGain[24]~68_combout\ : std_logic;
SIGNAL \env|currentGain[26]~73_combout\ : std_logic;
SIGNAL \freqGen3|fpaddress\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \freqGen3|rom|svalue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pwmradio|pwm_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL musicdiv : std_logic_vector(1 DOWNTO 0);
SIGNAL musicaddress : std_logic_vector(31 DOWNTO 0);
SIGNAL \blinker|divcounter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \modfreqGen|rom|svalue\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \env|currentGain\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \env|ALT_INV_state.STATE_RELEASE~regout\ : std_logic;
SIGNAL \blinker|ALT_INV_rled~regout\ : std_logic;
SIGNAL \freqGen3|ALT_INV_fpaddress\ : std_logic_vector(25 DOWNTO 25);

BEGIN

ww_clk <= clk;
ww_btn <= btn;
led <= ww_led;
led2 <= ww_led2;
led3 <= ww_led3;
speaker <= ww_speaker;
radio <= ww_radio;
u8bit_sineromvalue <= ww_u8bit_sineromvalue;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\freqGen3|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT21\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT18\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT17\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT14\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT10\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT6\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \freqGen3|Mult0|auto_generated|mac_mult1~dataout\ & \freqGen3|Mult0|auto_generated|mac_mult1~10\ & \freqGen3|Mult0|auto_generated|mac_mult1~9\ & \freqGen3|Mult0|auto_generated|mac_mult1~8\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~7\ & \freqGen3|Mult0|auto_generated|mac_mult1~6\ & \freqGen3|Mult0|auto_generated|mac_mult1~5\ & \freqGen3|Mult0|auto_generated|mac_mult1~4\ & \freqGen3|Mult0|auto_generated|mac_mult1~3\ & 
\freqGen3|Mult0|auto_generated|mac_mult1~2\ & \freqGen3|Mult0|auto_generated|mac_mult1~1\ & \freqGen3|Mult0|auto_generated|mac_mult1~0\);

\freqGen3|Mult0|auto_generated|mac_out2~0\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\freqGen3|Mult0|auto_generated|mac_out2~1\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\freqGen3|Mult0|auto_generated|mac_out2~2\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\freqGen3|Mult0|auto_generated|mac_out2~3\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\freqGen3|Mult0|auto_generated|mac_out2~4\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\freqGen3|Mult0|auto_generated|mac_out2~5\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\freqGen3|Mult0|auto_generated|mac_out2~6\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\freqGen3|Mult0|auto_generated|mac_out2~7\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\freqGen3|Mult0|auto_generated|mac_out2~8\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\freqGen3|Mult0|auto_generated|mac_out2~9\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\freqGen3|Mult0|auto_generated|mac_out2~10\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\freqGen3|Mult0|auto_generated|mac_out2~dataout\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\freqGen3|comb~0_combout\ & \freqGen3|comb~1_combout\ & \freqGen3|comb~2_combout\ & \freqGen3|comb~7_combout\ & \freqGen3|comb~6_combout\ & \freqGen3|comb~5_combout\ & 
\freqGen3|comb~4_combout\ & \freqGen3|comb~3_combout\);

\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a1\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a2\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a4\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a5\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a7\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a8\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a9\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a10\ <= \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);

\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ & \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ & 
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ & \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ & \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a2\ & \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a3\ & 
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a4\);

\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ <= \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\freqGen3|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (NOT \freqGen3|fpaddress\(25) & \modfreqGen|romdata[14]~14_combout\ & \modfreqGen|romdata[13]~13_combout\ & \modfreqGen|romdata[12]~12_combout\ & \modfreqGen|romdata[11]~11_combout\ & 
\modfreqGen|romdata[10]~10_combout\ & \modfreqGen|romdata[9]~9_combout\ & \modfreqGen|romdata[8]~8_combout\ & \modfreqGen|romdata[7]~7_combout\ & \modfreqGen|romdata[6]~6_combout\ & \modfreqGen|romdata[5]~5_combout\ & \modfreqGen|romdata[4]~4_combout\ & 
\modfreqGen|romdata[3]~3_combout\ & \modfreqGen|romdata[2]~2_combout\ & \modfreqGen|romdata[1]~1_combout\ & \modfreqGen|romdata[0]~0_combout\ & gnd & gnd);

\freqGen3|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (vcc & gnd & vcc & gnd & gnd & gnd & vcc & vcc & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd);

\freqGen3|Mult0|auto_generated|mac_mult1~0\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\freqGen3|Mult0|auto_generated|mac_mult1~1\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\freqGen3|Mult0|auto_generated|mac_mult1~2\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\freqGen3|Mult0|auto_generated|mac_mult1~3\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\freqGen3|Mult0|auto_generated|mac_mult1~4\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\freqGen3|Mult0|auto_generated|mac_mult1~5\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\freqGen3|Mult0|auto_generated|mac_mult1~6\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\freqGen3|Mult0|auto_generated|mac_mult1~7\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\freqGen3|Mult0|auto_generated|mac_mult1~8\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\freqGen3|Mult0|auto_generated|mac_mult1~9\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\freqGen3|Mult0|auto_generated|mac_mult1~10\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\freqGen3|Mult0|auto_generated|mac_mult1~dataout\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\freqGen3|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (musicaddress(29) & musicaddress(28) & musicaddress(27) & musicaddress(26) & musicaddress(25) & musicaddress(24) & musicaddress(23) & musicaddress(22) & musicaddress(21));

\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ <= \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a2\ <= \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a3\ <= \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a4\ <= \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);

\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\modfreqGen|comb~7_combout\ & \modfreqGen|comb~6_combout\ & \modfreqGen|comb~5_combout\ & \modfreqGen|comb~4_combout\ & \modfreqGen|comb~3_combout\ & 
\modfreqGen|comb~2_combout\ & \modfreqGen|comb~1_combout\ & \modfreqGen|comb~0_combout\);

\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a1\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a2\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a4\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a5\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a7\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a8\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a9\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a10\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a11\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a12\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a13\ <= \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\env|ALT_INV_state.STATE_RELEASE~regout\ <= NOT \env|state.STATE_RELEASE~regout\;
\blinker|ALT_INV_rled~regout\ <= NOT \blinker|rled~regout\;
\freqGen3|ALT_INV_fpaddress\(25) <= NOT \freqGen3|fpaddress\(25);

-- Location: LCFF_X13_Y6_N11
\blinker|divcounter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[17]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(17));

-- Location: LCFF_X13_Y6_N13
\blinker|divcounter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[18]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(18));

-- Location: LCFF_X13_Y4_N21
\pwmradio|pwm_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(6));

-- Location: LCFF_X13_Y4_N31
\pwmradio|pwm_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[11]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(11));

-- Location: DSPOUT_X16_Y5_N2
\freqGen3|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \freqGen3|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCFF_X12_Y5_N11
\freqGen3|fpaddress[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(18));

-- Location: LCFF_X12_Y6_N29
\freqGen3|fpaddress[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(11));

-- Location: LCFF_X12_Y6_N21
\freqGen3|fpaddress[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(7));

-- Location: LCFF_X12_Y6_N11
\freqGen3|fpaddress[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(2));

-- Location: M4K_X11_Y4
\freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFFFFFFBFF7FF7FCFFEFF9FE3FDBF97F4FE1FDDF9BF97FCFC9FC3F7BEB7FAFE5FF3FA7F8FE1FFDEBBDB7C6F35FCBE179CF69F13F47D0FFEE3DD3BEB726F75DABF9712E05E73C6794F09C6384710FFEDBDDBB277B6E2D89B7D65AD5582B697A2",
	mem_init0 => X"E05B73D660CEA9A93FC798C519C308640C7EEBDFBA9758ECED35BF362690DEEB2D76AD95FCB1971294560BDE45CCD9533BA4D4DC9B137C5D8BD1722F86D0DC1B027FB5F2DE53C3BB9734EA1D9D91B0567CC699630866F58EA2D3EA3553298567206564A71322485FF35E75C2381B0E670CCE9F534A3648496107C6387313A0947885E04C3C84E0240E007FA3FB3FDBC17A8F2EEF5C4BC67D8E41EDDF5B0372AD25EF326764DB1FC31061F66EA1D55B9377AE3532A594E2905373566F4D293125C4E89113439077F63E53C9BA6740E16C15BB37C660D6EAAD1EAC54A2A394D2025C89C157C3B98715644C1E9F518A5A4289BE11C098F50D22F8130D2098260000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sinepin.sinepin2.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "frequencyGeneratorQuart:freqGen3|sineQuartROM:rom|altsyncram:Selector1_rtl_0|altsyncram_tgv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 11,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 11,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 11,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X22_Y2_N11
\env|currentGain[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[23]~66_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(23));

-- Location: LCFF_X22_Y2_N7
\env|currentGain[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[21]~62_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(21));

-- Location: LCFF_X22_Y3_N17
\env|currentGain[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[10]~40_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(10));

-- Location: LCFF_X22_Y3_N11
\env|currentGain[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[7]~34_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(7));

-- Location: LCFF_X22_Y3_N7
\env|currentGain[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[5]~30_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(5));

-- Location: LCFF_X22_Y3_N5
\env|currentGain[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[4]~28_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(4));

-- Location: LCCOMB_X22_Y3_N4
\env|currentGain[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[4]~28_combout\ = (\env|currentGain\(4) & (\env|currentGain\(3) $ (VCC))) # (!\env|currentGain\(4) & (\env|currentGain\(3) & VCC))
-- \env|currentGain[4]~29\ = CARRY((\env|currentGain\(4) & \env|currentGain\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(4),
	datab => \env|currentGain\(3),
	datad => VCC,
	combout => \env|currentGain[4]~28_combout\,
	cout => \env|currentGain[4]~29\);

-- Location: LCCOMB_X22_Y3_N6
\env|currentGain[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[5]~30_combout\ = (\env|currentGain\(5) & (!\env|currentGain[4]~29\)) # (!\env|currentGain\(5) & ((\env|currentGain[4]~29\) # (GND)))
-- \env|currentGain[5]~31\ = CARRY((!\env|currentGain[4]~29\) # (!\env|currentGain\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(5),
	datad => VCC,
	cin => \env|currentGain[4]~29\,
	combout => \env|currentGain[5]~30_combout\,
	cout => \env|currentGain[5]~31\);

-- Location: LCCOMB_X22_Y3_N10
\env|currentGain[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[7]~34_combout\ = (\env|currentGain\(7) & (!\env|currentGain[6]~33\)) # (!\env|currentGain\(7) & ((\env|currentGain[6]~33\) # (GND)))
-- \env|currentGain[7]~35\ = CARRY((!\env|currentGain[6]~33\) # (!\env|currentGain\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(7),
	datad => VCC,
	cin => \env|currentGain[6]~33\,
	combout => \env|currentGain[7]~34_combout\,
	cout => \env|currentGain[7]~35\);

-- Location: LCCOMB_X22_Y3_N16
\env|currentGain[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[10]~40_combout\ = (\env|currentGain\(10) & (\env|currentGain[9]~39\ $ (GND))) # (!\env|currentGain\(10) & (!\env|currentGain[9]~39\ & VCC))
-- \env|currentGain[10]~41\ = CARRY((\env|currentGain\(10) & !\env|currentGain[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(10),
	datad => VCC,
	cin => \env|currentGain[9]~39\,
	combout => \env|currentGain[10]~40_combout\,
	cout => \env|currentGain[10]~41\);

-- Location: LCCOMB_X22_Y2_N6
\env|currentGain[21]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[21]~62_combout\ = (\env|currentGain\(21) & (!\env|currentGain[20]~61\)) # (!\env|currentGain\(21) & ((\env|currentGain[20]~61\) # (GND)))
-- \env|currentGain[21]~63\ = CARRY((!\env|currentGain[20]~61\) # (!\env|currentGain\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(21),
	datad => VCC,
	cin => \env|currentGain[20]~61\,
	combout => \env|currentGain[21]~62_combout\,
	cout => \env|currentGain[21]~63\);

-- Location: LCCOMB_X22_Y2_N10
\env|currentGain[23]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[23]~66_combout\ = (\env|currentGain\(23) & (!\env|currentGain[22]~65\)) # (!\env|currentGain\(23) & ((\env|currentGain[22]~65\) # (GND)))
-- \env|currentGain[23]~67\ = CARRY((!\env|currentGain[22]~65\) # (!\env|currentGain\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(23),
	datad => VCC,
	cin => \env|currentGain[22]~65\,
	combout => \env|currentGain[23]~66_combout\,
	cout => \env|currentGain[23]~67\);

-- Location: LCCOMB_X13_Y6_N10
\blinker|divcounter[17]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[17]~21_combout\ = (\blinker|divcounter\(17) & (\blinker|divcounter[16]~20\ $ (GND))) # (!\blinker|divcounter\(17) & (!\blinker|divcounter[16]~20\ & VCC))
-- \blinker|divcounter[17]~22\ = CARRY((\blinker|divcounter\(17) & !\blinker|divcounter[16]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(17),
	datad => VCC,
	cin => \blinker|divcounter[16]~20\,
	combout => \blinker|divcounter[17]~21_combout\,
	cout => \blinker|divcounter[17]~22\);

-- Location: LCCOMB_X13_Y6_N12
\blinker|divcounter[18]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[18]~23_combout\ = (\blinker|divcounter\(18) & (!\blinker|divcounter[17]~22\)) # (!\blinker|divcounter\(18) & ((\blinker|divcounter[17]~22\) # (GND)))
-- \blinker|divcounter[18]~24\ = CARRY((!\blinker|divcounter[17]~22\) # (!\blinker|divcounter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(18),
	datad => VCC,
	cin => \blinker|divcounter[17]~22\,
	combout => \blinker|divcounter[18]~23_combout\,
	cout => \blinker|divcounter[18]~24\);

-- Location: LCCOMB_X13_Y4_N20
\pwmradio|pwm_counter[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[6]~20_combout\ = (\pwmradio|pwm_counter\(6) & (!\pwmradio|pwm_counter[5]~19\)) # (!\pwmradio|pwm_counter\(6) & ((\pwmradio|pwm_counter[5]~19\) # (GND)))
-- \pwmradio|pwm_counter[6]~21\ = CARRY((!\pwmradio|pwm_counter[5]~19\) # (!\pwmradio|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(6),
	datad => VCC,
	cin => \pwmradio|pwm_counter[5]~19\,
	combout => \pwmradio|pwm_counter[6]~20_combout\,
	cout => \pwmradio|pwm_counter[6]~21\);

-- Location: LCCOMB_X13_Y4_N28
\pwmradio|pwm_counter[10]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[10]~28_combout\ = (\pwmradio|pwm_counter\(10) & (!\pwmradio|pwm_counter[9]~27\)) # (!\pwmradio|pwm_counter\(10) & ((\pwmradio|pwm_counter[9]~27\) # (GND)))
-- \pwmradio|pwm_counter[10]~29\ = CARRY((!\pwmradio|pwm_counter[9]~27\) # (!\pwmradio|pwm_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(10),
	datad => VCC,
	cin => \pwmradio|pwm_counter[9]~27\,
	combout => \pwmradio|pwm_counter[10]~28_combout\,
	cout => \pwmradio|pwm_counter[10]~29\);

-- Location: LCCOMB_X13_Y4_N30
\pwmradio|pwm_counter[11]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[11]~30_combout\ = \pwmradio|pwm_counter[10]~29\ $ (!\pwmradio|pwm_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pwmradio|pwm_counter\(11),
	cin => \pwmradio|pwm_counter[10]~29\,
	combout => \pwmradio|pwm_counter[11]~30_combout\);

-- Location: M4K_X11_Y6
\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"41C43E133A97374D343331452E812BE5296E271B24E922D720E21F0A1D4C1BA71A1918A2174015F214B7138D1274116B10710F850EA60DD30D0D0C510BA00AF90A5C09C7093A08B6083907C2075306EA0686062905D0057D052E04E3049D045B041C03E103A903750343031402E802BE02970272024F022D020E01F101D501BA01A2018A0174015F014B013901270117010700F800EA00DD00D100C500BA00B000A6009C0094008B0084007C0075006F00680063005D00580053004E004A00460042003E003B003700340031002F002C00290027002500230021001F001D001C001A001900170016001500140012001100100010000F000E000D000C000C000B",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/sinepin.rom0_midiSelection_be2e2d94.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "midiSelection:generateStepSizeForNote3|altsyncram:Ram0_rtl_0|altsyncram_eh71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 16,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 16,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 16,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X12_Y6_N7
\freqGen3|fpaddress[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(0));

-- Location: LCCOMB_X12_Y6_N6
\freqGen3|fpaddress[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[0]~26_combout\ = (\freqGen3|fpaddress\(0) & (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (VCC))) # (!\freqGen3|fpaddress\(0) & 
-- (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\ & VCC))
-- \freqGen3|fpaddress[0]~27\ = CARRY((\freqGen3|fpaddress\(0) & \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(0),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => VCC,
	combout => \freqGen3|fpaddress[0]~26_combout\,
	cout => \freqGen3|fpaddress[0]~27\);

-- Location: LCCOMB_X12_Y6_N10
\freqGen3|fpaddress[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[2]~30_combout\ = ((\freqGen3|fpaddress\(2) $ (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\ $ (!\freqGen3|fpaddress[1]~29\)))) # (GND)
-- \freqGen3|fpaddress[2]~31\ = CARRY((\freqGen3|fpaddress\(2) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\) # (!\freqGen3|fpaddress[1]~29\))) # (!\freqGen3|fpaddress\(2) & 
-- (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\ & !\freqGen3|fpaddress[1]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(2),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \freqGen3|fpaddress[1]~29\,
	combout => \freqGen3|fpaddress[2]~30_combout\,
	cout => \freqGen3|fpaddress[2]~31\);

-- Location: LCCOMB_X12_Y6_N20
\freqGen3|fpaddress[7]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[7]~40_combout\ = (\freqGen3|fpaddress\(7) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ & (\freqGen3|fpaddress[6]~39\ & VCC)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ & 
-- (!\freqGen3|fpaddress[6]~39\)))) # (!\freqGen3|fpaddress\(7) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ & (!\freqGen3|fpaddress[6]~39\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ & 
-- ((\freqGen3|fpaddress[6]~39\) # (GND)))))
-- \freqGen3|fpaddress[7]~41\ = CARRY((\freqGen3|fpaddress\(7) & (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\ & !\freqGen3|fpaddress[6]~39\)) # (!\freqGen3|fpaddress\(7) & ((!\freqGen3|fpaddress[6]~39\) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(7),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a7\,
	datad => VCC,
	cin => \freqGen3|fpaddress[6]~39\,
	combout => \freqGen3|fpaddress[7]~40_combout\,
	cout => \freqGen3|fpaddress[7]~41\);

-- Location: LCCOMB_X12_Y6_N28
\freqGen3|fpaddress[11]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[11]~48_combout\ = (\freqGen3|fpaddress\(11) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ & (\freqGen3|fpaddress[10]~47\ & VCC)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ & 
-- (!\freqGen3|fpaddress[10]~47\)))) # (!\freqGen3|fpaddress\(11) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ & (!\freqGen3|fpaddress[10]~47\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ & 
-- ((\freqGen3|fpaddress[10]~47\) # (GND)))))
-- \freqGen3|fpaddress[11]~49\ = CARRY((\freqGen3|fpaddress\(11) & (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\ & !\freqGen3|fpaddress[10]~47\)) # (!\freqGen3|fpaddress\(11) & ((!\freqGen3|fpaddress[10]~47\) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(11),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a11\,
	datad => VCC,
	cin => \freqGen3|fpaddress[10]~47\,
	combout => \freqGen3|fpaddress[11]~48_combout\,
	cout => \freqGen3|fpaddress[11]~49\);

-- Location: LCCOMB_X12_Y5_N10
\freqGen3|fpaddress[18]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[18]~62_combout\ = (\freqGen3|fpaddress\(18) & (\freqGen3|fpaddress[17]~61\ $ (GND))) # (!\freqGen3|fpaddress\(18) & (!\freqGen3|fpaddress[17]~61\ & VCC))
-- \freqGen3|fpaddress[18]~63\ = CARRY((\freqGen3|fpaddress\(18) & !\freqGen3|fpaddress[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(18),
	datad => VCC,
	cin => \freqGen3|fpaddress[17]~61\,
	combout => \freqGen3|fpaddress[18]~62_combout\,
	cout => \freqGen3|fpaddress[18]~63\);

-- Location: LCFF_X22_Y2_N25
\env|currentGain[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[30]~82_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(30));

-- Location: LCCOMB_X22_Y2_N24
\env|currentGain[30]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[30]~82_combout\ = (\env|currentGain\(30) & (\env|currentGain[29]~81\ $ (GND))) # (!\env|currentGain\(30) & (!\env|currentGain[29]~81\ & VCC))
-- \env|currentGain[30]~83\ = CARRY((\env|currentGain\(30) & !\env|currentGain[29]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(30),
	datad => VCC,
	cin => \env|currentGain[29]~81\,
	combout => \env|currentGain[30]~82_combout\,
	cout => \env|currentGain[30]~83\);

-- Location: LCFF_X12_Y8_N11
\musicaddress[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[20]~70_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(20));

-- Location: LCFF_X12_Y8_N7
\musicaddress[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[18]~66_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(18));

-- Location: LCFF_X12_Y9_N25
\musicaddress[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[11]~52_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(11));

-- Location: LCFF_X12_Y9_N21
\musicaddress[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[9]~48_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(9));

-- Location: LCFF_X12_Y9_N17
\musicaddress[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[7]~44_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(7));

-- Location: LCFF_X12_Y9_N13
\musicaddress[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[5]~40_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(5));

-- Location: LCFF_X12_Y9_N11
\musicaddress[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[4]~38_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(4));

-- Location: LCFF_X12_Y9_N7
\musicaddress[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[2]~34_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(2));

-- Location: LCCOMB_X12_Y9_N6
\musicaddress[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[2]~34_combout\ = (musicaddress(2) & (\musicaddress[1]~33\ $ (GND))) # (!musicaddress(2) & (!\musicaddress[1]~33\ & VCC))
-- \musicaddress[2]~35\ = CARRY((musicaddress(2) & !\musicaddress[1]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(2),
	datad => VCC,
	cin => \musicaddress[1]~33\,
	combout => \musicaddress[2]~34_combout\,
	cout => \musicaddress[2]~35\);

-- Location: LCCOMB_X12_Y9_N10
\musicaddress[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[4]~38_combout\ = (musicaddress(4) & (\musicaddress[3]~37\ $ (GND))) # (!musicaddress(4) & (!\musicaddress[3]~37\ & VCC))
-- \musicaddress[4]~39\ = CARRY((musicaddress(4) & !\musicaddress[3]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(4),
	datad => VCC,
	cin => \musicaddress[3]~37\,
	combout => \musicaddress[4]~38_combout\,
	cout => \musicaddress[4]~39\);

-- Location: LCCOMB_X12_Y9_N12
\musicaddress[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[5]~40_combout\ = (musicaddress(5) & (!\musicaddress[4]~39\)) # (!musicaddress(5) & ((\musicaddress[4]~39\) # (GND)))
-- \musicaddress[5]~41\ = CARRY((!\musicaddress[4]~39\) # (!musicaddress(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(5),
	datad => VCC,
	cin => \musicaddress[4]~39\,
	combout => \musicaddress[5]~40_combout\,
	cout => \musicaddress[5]~41\);

-- Location: LCCOMB_X12_Y9_N16
\musicaddress[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[7]~44_combout\ = (musicaddress(7) & (!\musicaddress[6]~43\)) # (!musicaddress(7) & ((\musicaddress[6]~43\) # (GND)))
-- \musicaddress[7]~45\ = CARRY((!\musicaddress[6]~43\) # (!musicaddress(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(7),
	datad => VCC,
	cin => \musicaddress[6]~43\,
	combout => \musicaddress[7]~44_combout\,
	cout => \musicaddress[7]~45\);

-- Location: LCCOMB_X12_Y9_N20
\musicaddress[9]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[9]~48_combout\ = (musicaddress(9) & (!\musicaddress[8]~47\)) # (!musicaddress(9) & ((\musicaddress[8]~47\) # (GND)))
-- \musicaddress[9]~49\ = CARRY((!\musicaddress[8]~47\) # (!musicaddress(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(9),
	datad => VCC,
	cin => \musicaddress[8]~47\,
	combout => \musicaddress[9]~48_combout\,
	cout => \musicaddress[9]~49\);

-- Location: LCCOMB_X12_Y9_N24
\musicaddress[11]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[11]~52_combout\ = (musicaddress(11) & (!\musicaddress[10]~51\)) # (!musicaddress(11) & ((\musicaddress[10]~51\) # (GND)))
-- \musicaddress[11]~53\ = CARRY((!\musicaddress[10]~51\) # (!musicaddress(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(11),
	datad => VCC,
	cin => \musicaddress[10]~51\,
	combout => \musicaddress[11]~52_combout\,
	cout => \musicaddress[11]~53\);

-- Location: LCCOMB_X12_Y8_N6
\musicaddress[18]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[18]~66_combout\ = (musicaddress(18) & (\musicaddress[17]~65\ $ (GND))) # (!musicaddress(18) & (!\musicaddress[17]~65\ & VCC))
-- \musicaddress[18]~67\ = CARRY((musicaddress(18) & !\musicaddress[17]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(18),
	datad => VCC,
	cin => \musicaddress[17]~65\,
	combout => \musicaddress[18]~66_combout\,
	cout => \musicaddress[18]~67\);

-- Location: LCCOMB_X12_Y8_N10
\musicaddress[20]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[20]~70_combout\ = (musicaddress(20) & (\musicaddress[19]~69\ $ (GND))) # (!musicaddress(20) & (!\musicaddress[19]~69\ & VCC))
-- \musicaddress[20]~71\ = CARRY((musicaddress(20) & !\musicaddress[19]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(20),
	datad => VCC,
	cin => \musicaddress[19]~69\,
	combout => \musicaddress[20]~70_combout\,
	cout => \musicaddress[20]~71\);

-- Location: LCCOMB_X13_Y7_N8
\blinker|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~6_combout\ = (!\pwmradio|pwm_counter\(7) & (!\pwmradio|pwm_counter\(5) & (!\pwmradio|pwm_counter\(6) & !\pwmradio|pwm_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(7),
	datab => \pwmradio|pwm_counter\(5),
	datac => \pwmradio|pwm_counter\(6),
	datad => \pwmradio|pwm_counter\(8),
	combout => \blinker|Equal0~6_combout\);

-- Location: LCCOMB_X13_Y7_N6
\blinker|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~7_combout\ = (!\pwmradio|pwm_counter\(11) & (!\pwmradio|pwm_counter\(10) & (\blinker|Equal0~6_combout\ & !\pwmradio|pwm_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(11),
	datab => \pwmradio|pwm_counter\(10),
	datac => \blinker|Equal0~6_combout\,
	datad => \pwmradio|pwm_counter\(9),
	combout => \blinker|Equal0~7_combout\);

-- Location: LCCOMB_X15_Y4_N26
\freqGen3|romdata[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[13]~1_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[13]~1_combout\);

-- Location: LCCOMB_X14_Y4_N24
\freqGen3|romdata[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[7]~7_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a6\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[7]~7_combout\);

-- Location: LCCOMB_X21_Y2_N24
\env|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector3~2_combout\ = (\env|state.STATE_SUSTAIN~regout\ & ((\btn~combout\ $ (!\env|state.STATE_IDLE~regout\)) # (!\env|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \env|state.STATE_IDLE~regout\,
	datac => \env|Selector3~1_combout\,
	datad => \env|state.STATE_SUSTAIN~regout\,
	combout => \env|Selector3~2_combout\);

-- Location: LCFF_X21_Y2_N15
\env|state.STATE_ATTACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|state.STATE_ATTACK~regout\);

-- Location: LCCOMB_X21_Y2_N20
\env|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~2_combout\ = (\env|currentGain\(29) & (\env|currentGain\(30) & (\env|state.STATE_ATTACK~regout\ & \env|currentGain\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(29),
	datab => \env|currentGain\(30),
	datac => \env|state.STATE_ATTACK~regout\,
	datad => \env|currentGain\(28),
	combout => \env|Selector2~2_combout\);

-- Location: LCCOMB_X21_Y2_N6
\env|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~6_combout\ = (\btn~combout\ & !\env|state.STATE_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn~combout\,
	datad => \env|state.STATE_IDLE~regout\,
	combout => \env|Selector2~6_combout\);

-- Location: LCCOMB_X21_Y2_N14
\env|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector1~0_combout\ = (\env|Selector2~6_combout\) # ((!\env|Selector2~1_combout\ & (\env|state.STATE_ATTACK~regout\ & !\env|Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|Selector2~6_combout\,
	datab => \env|Selector2~1_combout\,
	datac => \env|state.STATE_ATTACK~regout\,
	datad => \env|Selector2~3_combout\,
	combout => \env|Selector1~0_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y4_N8
\musicdiv[0]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[0]~23_combout\ = !musicdiv(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => musicdiv(0),
	combout => \musicdiv[0]~23_combout\);

-- Location: LCFF_X13_Y4_N9
\musicdiv[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicdiv[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicdiv(0));

-- Location: LCCOMB_X13_Y7_N10
\musicdiv[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~1_combout\ = (musicdiv(1) & (musicdiv(0) $ (VCC))) # (!musicdiv(1) & (musicdiv(0) & VCC))
-- \musicdiv[1]~2\ = CARRY((musicdiv(1) & musicdiv(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => musicdiv(1),
	datab => musicdiv(0),
	datad => VCC,
	combout => \musicdiv[1]~1_combout\,
	cout => \musicdiv[1]~2\);

-- Location: LCFF_X13_Y7_N11
\musicdiv[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicdiv[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicdiv(1));

-- Location: LCCOMB_X13_Y4_N10
\pwmradio|pwm_counter[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[2]~11_cout\ = CARRY((musicdiv(0) & musicdiv(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => musicdiv(0),
	datab => musicdiv(1),
	datad => VCC,
	cout => \pwmradio|pwm_counter[2]~11_cout\);

-- Location: LCCOMB_X13_Y4_N12
\pwmradio|pwm_counter[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[2]~12_combout\ = (\pwmradio|pwm_counter\(2) & (!\pwmradio|pwm_counter[2]~11_cout\)) # (!\pwmradio|pwm_counter\(2) & ((\pwmradio|pwm_counter[2]~11_cout\) # (GND)))
-- \pwmradio|pwm_counter[2]~13\ = CARRY((!\pwmradio|pwm_counter[2]~11_cout\) # (!\pwmradio|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(2),
	datad => VCC,
	cin => \pwmradio|pwm_counter[2]~11_cout\,
	combout => \pwmradio|pwm_counter[2]~12_combout\,
	cout => \pwmradio|pwm_counter[2]~13\);

-- Location: LCCOMB_X13_Y4_N14
\pwmradio|pwm_counter[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[3]~14_combout\ = (\pwmradio|pwm_counter\(3) & (\pwmradio|pwm_counter[2]~13\ $ (GND))) # (!\pwmradio|pwm_counter\(3) & (!\pwmradio|pwm_counter[2]~13\ & VCC))
-- \pwmradio|pwm_counter[3]~15\ = CARRY((\pwmradio|pwm_counter\(3) & !\pwmradio|pwm_counter[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(3),
	datad => VCC,
	cin => \pwmradio|pwm_counter[2]~13\,
	combout => \pwmradio|pwm_counter[3]~14_combout\,
	cout => \pwmradio|pwm_counter[3]~15\);

-- Location: LCFF_X13_Y4_N15
\pwmradio|pwm_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(3));

-- Location: LCCOMB_X13_Y4_N16
\pwmradio|pwm_counter[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[4]~16_combout\ = (\pwmradio|pwm_counter\(4) & (!\pwmradio|pwm_counter[3]~15\)) # (!\pwmradio|pwm_counter\(4) & ((\pwmradio|pwm_counter[3]~15\) # (GND)))
-- \pwmradio|pwm_counter[4]~17\ = CARRY((!\pwmradio|pwm_counter[3]~15\) # (!\pwmradio|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(4),
	datad => VCC,
	cin => \pwmradio|pwm_counter[3]~15\,
	combout => \pwmradio|pwm_counter[4]~16_combout\,
	cout => \pwmradio|pwm_counter[4]~17\);

-- Location: LCCOMB_X13_Y4_N18
\pwmradio|pwm_counter[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[5]~18_combout\ = (\pwmradio|pwm_counter\(5) & (\pwmradio|pwm_counter[4]~17\ $ (GND))) # (!\pwmradio|pwm_counter\(5) & (!\pwmradio|pwm_counter[4]~17\ & VCC))
-- \pwmradio|pwm_counter[5]~19\ = CARRY((\pwmradio|pwm_counter\(5) & !\pwmradio|pwm_counter[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(5),
	datad => VCC,
	cin => \pwmradio|pwm_counter[4]~17\,
	combout => \pwmradio|pwm_counter[5]~18_combout\,
	cout => \pwmradio|pwm_counter[5]~19\);

-- Location: LCFF_X13_Y4_N19
\pwmradio|pwm_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(5));

-- Location: LCCOMB_X13_Y4_N22
\pwmradio|pwm_counter[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[7]~22_combout\ = (\pwmradio|pwm_counter\(7) & (\pwmradio|pwm_counter[6]~21\ $ (GND))) # (!\pwmradio|pwm_counter\(7) & (!\pwmradio|pwm_counter[6]~21\ & VCC))
-- \pwmradio|pwm_counter[7]~23\ = CARRY((\pwmradio|pwm_counter\(7) & !\pwmradio|pwm_counter[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(7),
	datad => VCC,
	cin => \pwmradio|pwm_counter[6]~21\,
	combout => \pwmradio|pwm_counter[7]~22_combout\,
	cout => \pwmradio|pwm_counter[7]~23\);

-- Location: LCFF_X13_Y4_N23
\pwmradio|pwm_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(7));

-- Location: LCCOMB_X13_Y4_N24
\pwmradio|pwm_counter[8]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[8]~24_combout\ = (\pwmradio|pwm_counter\(8) & (!\pwmradio|pwm_counter[7]~23\)) # (!\pwmradio|pwm_counter\(8) & ((\pwmradio|pwm_counter[7]~23\) # (GND)))
-- \pwmradio|pwm_counter[8]~25\ = CARRY((!\pwmradio|pwm_counter[7]~23\) # (!\pwmradio|pwm_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(8),
	datad => VCC,
	cin => \pwmradio|pwm_counter[7]~23\,
	combout => \pwmradio|pwm_counter[8]~24_combout\,
	cout => \pwmradio|pwm_counter[8]~25\);

-- Location: LCCOMB_X13_Y4_N26
\pwmradio|pwm_counter[9]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmradio|pwm_counter[9]~26_combout\ = (\pwmradio|pwm_counter\(9) & (\pwmradio|pwm_counter[8]~25\ $ (GND))) # (!\pwmradio|pwm_counter\(9) & (!\pwmradio|pwm_counter[8]~25\ & VCC))
-- \pwmradio|pwm_counter[9]~27\ = CARRY((\pwmradio|pwm_counter\(9) & !\pwmradio|pwm_counter[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(9),
	datad => VCC,
	cin => \pwmradio|pwm_counter[8]~25\,
	combout => \pwmradio|pwm_counter[9]~26_combout\,
	cout => \pwmradio|pwm_counter[9]~27\);

-- Location: LCFF_X13_Y4_N27
\pwmradio|pwm_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(9));

-- Location: LCFF_X13_Y4_N29
\pwmradio|pwm_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(10));

-- Location: LCFF_X13_Y4_N25
\pwmradio|pwm_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(8));

-- Location: LCFF_X13_Y4_N13
\pwmradio|pwm_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(2));

-- Location: LCCOMB_X13_Y7_N12
\musicdiv[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~4_cout\ = CARRY((!\musicdiv[1]~2\) # (!\pwmradio|pwm_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(2),
	datad => VCC,
	cin => \musicdiv[1]~2\,
	cout => \musicdiv[1]~4_cout\);

-- Location: LCCOMB_X13_Y7_N14
\musicdiv[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~6_cout\ = CARRY((\pwmradio|pwm_counter\(3) & !\musicdiv[1]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(3),
	datad => VCC,
	cin => \musicdiv[1]~4_cout\,
	cout => \musicdiv[1]~6_cout\);

-- Location: LCCOMB_X13_Y7_N16
\musicdiv[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~8_cout\ = CARRY((!\musicdiv[1]~6_cout\) # (!\pwmradio|pwm_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(4),
	datad => VCC,
	cin => \musicdiv[1]~6_cout\,
	cout => \musicdiv[1]~8_cout\);

-- Location: LCCOMB_X13_Y7_N18
\musicdiv[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~10_cout\ = CARRY((\pwmradio|pwm_counter\(5) & !\musicdiv[1]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(5),
	datad => VCC,
	cin => \musicdiv[1]~8_cout\,
	cout => \musicdiv[1]~10_cout\);

-- Location: LCCOMB_X13_Y7_N20
\musicdiv[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~12_cout\ = CARRY((!\musicdiv[1]~10_cout\) # (!\pwmradio|pwm_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(6),
	datad => VCC,
	cin => \musicdiv[1]~10_cout\,
	cout => \musicdiv[1]~12_cout\);

-- Location: LCCOMB_X13_Y7_N22
\musicdiv[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~14_cout\ = CARRY((\pwmradio|pwm_counter\(7) & !\musicdiv[1]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(7),
	datad => VCC,
	cin => \musicdiv[1]~12_cout\,
	cout => \musicdiv[1]~14_cout\);

-- Location: LCCOMB_X13_Y7_N24
\musicdiv[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~16_cout\ = CARRY((!\musicdiv[1]~14_cout\) # (!\pwmradio|pwm_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(8),
	datad => VCC,
	cin => \musicdiv[1]~14_cout\,
	cout => \musicdiv[1]~16_cout\);

-- Location: LCCOMB_X13_Y7_N26
\musicdiv[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~18_cout\ = CARRY((\pwmradio|pwm_counter\(9) & !\musicdiv[1]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(9),
	datad => VCC,
	cin => \musicdiv[1]~16_cout\,
	cout => \musicdiv[1]~18_cout\);

-- Location: LCCOMB_X13_Y7_N28
\musicdiv[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~20_cout\ = CARRY((!\musicdiv[1]~18_cout\) # (!\pwmradio|pwm_counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pwmradio|pwm_counter\(10),
	datad => VCC,
	cin => \musicdiv[1]~18_cout\,
	cout => \musicdiv[1]~20_cout\);

-- Location: LCCOMB_X13_Y7_N30
\musicdiv[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicdiv[1]~22_cout\ = CARRY((\pwmradio|pwm_counter\(11) & !\musicdiv[1]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(11),
	datad => VCC,
	cin => \musicdiv[1]~20_cout\,
	cout => \musicdiv[1]~22_cout\);

-- Location: LCCOMB_X13_Y6_N0
\blinker|divcounter[12]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[12]~11_combout\ = (\blinker|divcounter\(12) & (!\musicdiv[1]~22_cout\)) # (!\blinker|divcounter\(12) & ((\musicdiv[1]~22_cout\) # (GND)))
-- \blinker|divcounter[12]~12\ = CARRY((!\musicdiv[1]~22_cout\) # (!\blinker|divcounter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(12),
	datad => VCC,
	cin => \musicdiv[1]~22_cout\,
	combout => \blinker|divcounter[12]~11_combout\,
	cout => \blinker|divcounter[12]~12\);

-- Location: LCFF_X13_Y6_N1
\blinker|divcounter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(12));

-- Location: LCCOMB_X13_Y6_N2
\blinker|divcounter[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[13]~13_combout\ = (\blinker|divcounter\(13) & (\blinker|divcounter[12]~12\ $ (GND))) # (!\blinker|divcounter\(13) & (!\blinker|divcounter[12]~12\ & VCC))
-- \blinker|divcounter[13]~14\ = CARRY((\blinker|divcounter\(13) & !\blinker|divcounter[12]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(13),
	datad => VCC,
	cin => \blinker|divcounter[12]~12\,
	combout => \blinker|divcounter[13]~13_combout\,
	cout => \blinker|divcounter[13]~14\);

-- Location: LCFF_X13_Y6_N3
\blinker|divcounter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(13));

-- Location: LCCOMB_X13_Y6_N4
\blinker|divcounter[14]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[14]~15_combout\ = (\blinker|divcounter\(14) & (!\blinker|divcounter[13]~14\)) # (!\blinker|divcounter\(14) & ((\blinker|divcounter[13]~14\) # (GND)))
-- \blinker|divcounter[14]~16\ = CARRY((!\blinker|divcounter[13]~14\) # (!\blinker|divcounter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(14),
	datad => VCC,
	cin => \blinker|divcounter[13]~14\,
	combout => \blinker|divcounter[14]~15_combout\,
	cout => \blinker|divcounter[14]~16\);

-- Location: LCFF_X13_Y6_N5
\blinker|divcounter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[14]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(14));

-- Location: LCCOMB_X13_Y6_N6
\blinker|divcounter[15]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[15]~17_combout\ = (\blinker|divcounter\(15) & (\blinker|divcounter[14]~16\ $ (GND))) # (!\blinker|divcounter\(15) & (!\blinker|divcounter[14]~16\ & VCC))
-- \blinker|divcounter[15]~18\ = CARRY((\blinker|divcounter\(15) & !\blinker|divcounter[14]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(15),
	datad => VCC,
	cin => \blinker|divcounter[14]~16\,
	combout => \blinker|divcounter[15]~17_combout\,
	cout => \blinker|divcounter[15]~18\);

-- Location: LCCOMB_X13_Y6_N8
\blinker|divcounter[16]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[16]~19_combout\ = (\blinker|divcounter\(16) & (!\blinker|divcounter[15]~18\)) # (!\blinker|divcounter\(16) & ((\blinker|divcounter[15]~18\) # (GND)))
-- \blinker|divcounter[16]~20\ = CARRY((!\blinker|divcounter[15]~18\) # (!\blinker|divcounter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(16),
	datad => VCC,
	cin => \blinker|divcounter[15]~18\,
	combout => \blinker|divcounter[16]~19_combout\,
	cout => \blinker|divcounter[16]~20\);

-- Location: LCFF_X13_Y6_N9
\blinker|divcounter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(16));

-- Location: LCCOMB_X13_Y6_N14
\blinker|divcounter[19]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[19]~25_combout\ = (\blinker|divcounter\(19) & (\blinker|divcounter[18]~24\ $ (GND))) # (!\blinker|divcounter\(19) & (!\blinker|divcounter[18]~24\ & VCC))
-- \blinker|divcounter[19]~26\ = CARRY((\blinker|divcounter\(19) & !\blinker|divcounter[18]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(19),
	datad => VCC,
	cin => \blinker|divcounter[18]~24\,
	combout => \blinker|divcounter[19]~25_combout\,
	cout => \blinker|divcounter[19]~26\);

-- Location: LCFF_X13_Y6_N15
\blinker|divcounter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[19]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(19));

-- Location: LCCOMB_X13_Y6_N16
\blinker|divcounter[20]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[20]~27_combout\ = (\blinker|divcounter\(20) & (!\blinker|divcounter[19]~26\)) # (!\blinker|divcounter\(20) & ((\blinker|divcounter[19]~26\) # (GND)))
-- \blinker|divcounter[20]~28\ = CARRY((!\blinker|divcounter[19]~26\) # (!\blinker|divcounter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(20),
	datad => VCC,
	cin => \blinker|divcounter[19]~26\,
	combout => \blinker|divcounter[20]~27_combout\,
	cout => \blinker|divcounter[20]~28\);

-- Location: LCFF_X13_Y6_N17
\blinker|divcounter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[20]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(20));

-- Location: LCCOMB_X13_Y6_N18
\blinker|divcounter[21]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[21]~29_combout\ = (\blinker|divcounter\(21) & (\blinker|divcounter[20]~28\ $ (GND))) # (!\blinker|divcounter\(21) & (!\blinker|divcounter[20]~28\ & VCC))
-- \blinker|divcounter[21]~30\ = CARRY((\blinker|divcounter\(21) & !\blinker|divcounter[20]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \blinker|divcounter\(21),
	datad => VCC,
	cin => \blinker|divcounter[20]~28\,
	combout => \blinker|divcounter[21]~29_combout\,
	cout => \blinker|divcounter[21]~30\);

-- Location: LCFF_X13_Y6_N19
\blinker|divcounter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[21]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(21));

-- Location: LCCOMB_X13_Y6_N28
\blinker|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~3_combout\ = (!\blinker|divcounter\(20) & !\blinker|divcounter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinker|divcounter\(20),
	datad => \blinker|divcounter\(21),
	combout => \blinker|Equal0~3_combout\);

-- Location: LCCOMB_X13_Y6_N20
\blinker|divcounter[22]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|divcounter[22]~31_combout\ = \blinker|divcounter\(22) $ (\blinker|divcounter[21]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(22),
	cin => \blinker|divcounter[21]~30\,
	combout => \blinker|divcounter[22]~31_combout\);

-- Location: LCFF_X13_Y6_N21
\blinker|divcounter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[22]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(22));

-- Location: LCCOMB_X13_Y7_N2
\blinker|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~4_combout\ = (!\pwmradio|pwm_counter\(4) & (!\pwmradio|pwm_counter\(2) & (!\pwmradio|pwm_counter\(3) & !\blinker|divcounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(4),
	datab => \pwmradio|pwm_counter\(2),
	datac => \pwmradio|pwm_counter\(3),
	datad => \blinker|divcounter\(22),
	combout => \blinker|Equal0~4_combout\);

-- Location: LCCOMB_X13_Y6_N30
\blinker|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~5_combout\ = (!\blinker|divcounter\(18) & (\blinker|Equal0~3_combout\ & (!\blinker|divcounter\(19) & \blinker|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(18),
	datab => \blinker|Equal0~3_combout\,
	datac => \blinker|divcounter\(19),
	datad => \blinker|Equal0~4_combout\,
	combout => \blinker|Equal0~5_combout\);

-- Location: LCFF_X13_Y6_N7
\blinker|divcounter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|divcounter[15]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|divcounter\(15));

-- Location: LCCOMB_X13_Y6_N24
\blinker|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~1_combout\ = (!\blinker|divcounter\(17) & (!\blinker|divcounter\(16) & (!\blinker|divcounter\(14) & !\blinker|divcounter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|divcounter\(17),
	datab => \blinker|divcounter\(16),
	datac => \blinker|divcounter\(14),
	datad => \blinker|divcounter\(15),
	combout => \blinker|Equal0~1_combout\);

-- Location: LCCOMB_X13_Y6_N22
\blinker|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~2_combout\ = (\blinker|Equal0~0_combout\ & (!\blinker|divcounter\(13) & (\blinker|Equal0~1_combout\ & !\blinker|divcounter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|Equal0~0_combout\,
	datab => \blinker|divcounter\(13),
	datac => \blinker|Equal0~1_combout\,
	datad => \blinker|divcounter\(12),
	combout => \blinker|Equal0~2_combout\);

-- Location: LCCOMB_X13_Y6_N26
\blinker|rled~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|rled~0_combout\ = \blinker|rled~regout\ $ (((\blinker|Equal0~7_combout\ & (\blinker|Equal0~5_combout\ & \blinker|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \blinker|Equal0~7_combout\,
	datab => \blinker|Equal0~5_combout\,
	datac => \blinker|rled~regout\,
	datad => \blinker|Equal0~2_combout\,
	combout => \blinker|rled~0_combout\);

-- Location: LCFF_X13_Y6_N27
\blinker|rled\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \blinker|rled~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \blinker|rled~regout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\btn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_btn,
	combout => \btn~combout\);

-- Location: LCCOMB_X17_Y5_N4
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X12_Y9_N2
\musicaddress[0]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[0]~30_combout\ = musicaddress(0) $ (VCC)
-- \musicaddress[0]~31\ = CARRY(musicaddress(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(0),
	datad => VCC,
	combout => \musicaddress[0]~30_combout\,
	cout => \musicaddress[0]~31\);

-- Location: LCCOMB_X12_Y8_N12
\musicaddress[21]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[21]~72_combout\ = (musicaddress(21) & (!\musicaddress[20]~71\)) # (!musicaddress(21) & ((\musicaddress[20]~71\) # (GND)))
-- \musicaddress[21]~73\ = CARRY((!\musicaddress[20]~71\) # (!musicaddress(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(21),
	datad => VCC,
	cin => \musicaddress[20]~71\,
	combout => \musicaddress[21]~72_combout\,
	cout => \musicaddress[21]~73\);

-- Location: LCCOMB_X12_Y8_N14
\musicaddress[22]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[22]~74_combout\ = (musicaddress(22) & (\musicaddress[21]~73\ $ (GND))) # (!musicaddress(22) & (!\musicaddress[21]~73\ & VCC))
-- \musicaddress[22]~75\ = CARRY((musicaddress(22) & !\musicaddress[21]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(22),
	datad => VCC,
	cin => \musicaddress[21]~73\,
	combout => \musicaddress[22]~74_combout\,
	cout => \musicaddress[22]~75\);

-- Location: LCCOMB_X13_Y7_N0
\blinker|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \blinker|Equal0~0_combout\ = (!musicdiv(0) & !musicdiv(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => musicdiv(0),
	datad => musicdiv(1),
	combout => \blinker|Equal0~0_combout\);

-- Location: LCFF_X12_Y8_N15
\musicaddress[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[22]~74_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(22));

-- Location: LCCOMB_X12_Y8_N16
\musicaddress[23]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[23]~76_combout\ = (musicaddress(23) & (!\musicaddress[22]~75\)) # (!musicaddress(23) & ((\musicaddress[22]~75\) # (GND)))
-- \musicaddress[23]~77\ = CARRY((!\musicaddress[22]~75\) # (!musicaddress(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(23),
	datad => VCC,
	cin => \musicaddress[22]~75\,
	combout => \musicaddress[23]~76_combout\,
	cout => \musicaddress[23]~77\);

-- Location: LCFF_X12_Y8_N17
\musicaddress[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[23]~76_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(23));

-- Location: LCCOMB_X12_Y8_N18
\musicaddress[24]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[24]~78_combout\ = (musicaddress(24) & (\musicaddress[23]~77\ $ (GND))) # (!musicaddress(24) & (!\musicaddress[23]~77\ & VCC))
-- \musicaddress[24]~79\ = CARRY((musicaddress(24) & !\musicaddress[23]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(24),
	datad => VCC,
	cin => \musicaddress[23]~77\,
	combout => \musicaddress[24]~78_combout\,
	cout => \musicaddress[24]~79\);

-- Location: LCFF_X12_Y8_N19
\musicaddress[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[24]~78_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(24));

-- Location: LCCOMB_X12_Y8_N20
\musicaddress[25]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[25]~80_combout\ = (musicaddress(25) & (!\musicaddress[24]~79\)) # (!musicaddress(25) & ((\musicaddress[24]~79\) # (GND)))
-- \musicaddress[25]~81\ = CARRY((!\musicaddress[24]~79\) # (!musicaddress(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(25),
	datad => VCC,
	cin => \musicaddress[24]~79\,
	combout => \musicaddress[25]~80_combout\,
	cout => \musicaddress[25]~81\);

-- Location: LCFF_X12_Y8_N21
\musicaddress[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[25]~80_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(25));

-- Location: LCCOMB_X12_Y8_N22
\musicaddress[26]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[26]~82_combout\ = (musicaddress(26) & (\musicaddress[25]~81\ $ (GND))) # (!musicaddress(26) & (!\musicaddress[25]~81\ & VCC))
-- \musicaddress[26]~83\ = CARRY((musicaddress(26) & !\musicaddress[25]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(26),
	datad => VCC,
	cin => \musicaddress[25]~81\,
	combout => \musicaddress[26]~82_combout\,
	cout => \musicaddress[26]~83\);

-- Location: LCFF_X12_Y8_N23
\musicaddress[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[26]~82_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(26));

-- Location: LCCOMB_X12_Y8_N24
\musicaddress[27]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[27]~84_combout\ = (musicaddress(27) & (!\musicaddress[26]~83\)) # (!musicaddress(27) & ((\musicaddress[26]~83\) # (GND)))
-- \musicaddress[27]~85\ = CARRY((!\musicaddress[26]~83\) # (!musicaddress(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicaddress(27),
	datad => VCC,
	cin => \musicaddress[26]~83\,
	combout => \musicaddress[27]~84_combout\,
	cout => \musicaddress[27]~85\);

-- Location: LCFF_X12_Y8_N25
\musicaddress[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[27]~84_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(27));

-- Location: LCCOMB_X12_Y8_N26
\musicaddress[28]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[28]~86_combout\ = (musicaddress(28) & (\musicaddress[27]~85\ $ (GND))) # (!musicaddress(28) & (!\musicaddress[27]~85\ & VCC))
-- \musicaddress[28]~87\ = CARRY((musicaddress(28) & !\musicaddress[27]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(28),
	datad => VCC,
	cin => \musicaddress[27]~85\,
	combout => \musicaddress[28]~86_combout\,
	cout => \musicaddress[28]~87\);

-- Location: LCFF_X12_Y8_N27
\musicaddress[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[28]~86_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(28));

-- Location: LCCOMB_X12_Y8_N28
\musicaddress[29]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[29]~88_combout\ = \musicaddress[28]~87\ $ (musicaddress(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => musicaddress(29),
	cin => \musicaddress[28]~87\,
	combout => \musicaddress[29]~88_combout\);

-- Location: LCFF_X12_Y8_N29
\musicaddress[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[29]~88_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(29));

-- Location: M4K_X11_Y8
\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000042108421084216B5AD6B5BDE8C442D5ADA8C6318C6314A6D6F5BD6B5AD6B5BDE4A54AB7BD61084216AD6F7A314A5298C6318C631F7AD6528425294A5294AD6AD6F7B5AB5AD652AD6F2529F7BDE4A5294A529296D6F5BD6B5AD6B5BDE8C442D5ADA8C6318C6314A6D6F5BD6B5AD6B5BDE4A54AB7BD65294A5294AF7AD6F5BD6B5AD6B5BDE8C442D5ADA8C6318C6314A6D6F5BD6B5AD6B5BDE4A54AB7BD6",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sinepin.sinepin0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "musicROM:get_fullnote1|altsyncram:WideOr0_rtl_0|altsyncram_afv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 5,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 5,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 5,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y7_N12
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\ & (!\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a2\ & (!\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- !\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a1\,
	datab => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a2\,
	datac => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a3\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X12_Y7_N10
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a4\ & \Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \get_fullnote1|WideOr0_rtl_0|auto_generated|ram_block1a4\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCFF_X12_Y9_N3
\musicaddress[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[0]~30_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(0));

-- Location: LCCOMB_X12_Y9_N4
\musicaddress[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[1]~32_combout\ = (musicaddress(1) & (!\musicaddress[0]~31\)) # (!musicaddress(1) & ((\musicaddress[0]~31\) # (GND)))
-- \musicaddress[1]~33\ = CARRY((!\musicaddress[0]~31\) # (!musicaddress(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(1),
	datad => VCC,
	cin => \musicaddress[0]~31\,
	combout => \musicaddress[1]~32_combout\,
	cout => \musicaddress[1]~33\);

-- Location: LCFF_X12_Y9_N5
\musicaddress[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[1]~32_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(1));

-- Location: LCCOMB_X12_Y9_N8
\musicaddress[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[3]~36_combout\ = (musicaddress(3) & (!\musicaddress[2]~35\)) # (!musicaddress(3) & ((\musicaddress[2]~35\) # (GND)))
-- \musicaddress[3]~37\ = CARRY((!\musicaddress[2]~35\) # (!musicaddress(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(3),
	datad => VCC,
	cin => \musicaddress[2]~35\,
	combout => \musicaddress[3]~36_combout\,
	cout => \musicaddress[3]~37\);

-- Location: LCFF_X12_Y9_N9
\musicaddress[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[3]~36_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(3));

-- Location: LCCOMB_X12_Y9_N14
\musicaddress[6]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[6]~42_combout\ = (musicaddress(6) & (\musicaddress[5]~41\ $ (GND))) # (!musicaddress(6) & (!\musicaddress[5]~41\ & VCC))
-- \musicaddress[6]~43\ = CARRY((musicaddress(6) & !\musicaddress[5]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(6),
	datad => VCC,
	cin => \musicaddress[5]~41\,
	combout => \musicaddress[6]~42_combout\,
	cout => \musicaddress[6]~43\);

-- Location: LCFF_X12_Y9_N15
\musicaddress[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[6]~42_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(6));

-- Location: LCCOMB_X12_Y9_N18
\musicaddress[8]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[8]~46_combout\ = (musicaddress(8) & (\musicaddress[7]~45\ $ (GND))) # (!musicaddress(8) & (!\musicaddress[7]~45\ & VCC))
-- \musicaddress[8]~47\ = CARRY((musicaddress(8) & !\musicaddress[7]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(8),
	datad => VCC,
	cin => \musicaddress[7]~45\,
	combout => \musicaddress[8]~46_combout\,
	cout => \musicaddress[8]~47\);

-- Location: LCFF_X12_Y9_N19
\musicaddress[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[8]~46_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(8));

-- Location: LCCOMB_X12_Y9_N22
\musicaddress[10]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[10]~50_combout\ = (musicaddress(10) & (\musicaddress[9]~49\ $ (GND))) # (!musicaddress(10) & (!\musicaddress[9]~49\ & VCC))
-- \musicaddress[10]~51\ = CARRY((musicaddress(10) & !\musicaddress[9]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(10),
	datad => VCC,
	cin => \musicaddress[9]~49\,
	combout => \musicaddress[10]~50_combout\,
	cout => \musicaddress[10]~51\);

-- Location: LCFF_X12_Y9_N23
\musicaddress[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[10]~50_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(10));

-- Location: LCCOMB_X12_Y9_N26
\musicaddress[12]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[12]~54_combout\ = (musicaddress(12) & (\musicaddress[11]~53\ $ (GND))) # (!musicaddress(12) & (!\musicaddress[11]~53\ & VCC))
-- \musicaddress[12]~55\ = CARRY((musicaddress(12) & !\musicaddress[11]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(12),
	datad => VCC,
	cin => \musicaddress[11]~53\,
	combout => \musicaddress[12]~54_combout\,
	cout => \musicaddress[12]~55\);

-- Location: LCFF_X12_Y9_N27
\musicaddress[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[12]~54_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(12));

-- Location: LCCOMB_X12_Y9_N28
\musicaddress[13]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[13]~56_combout\ = (musicaddress(13) & (!\musicaddress[12]~55\)) # (!musicaddress(13) & ((\musicaddress[12]~55\) # (GND)))
-- \musicaddress[13]~57\ = CARRY((!\musicaddress[12]~55\) # (!musicaddress(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(13),
	datad => VCC,
	cin => \musicaddress[12]~55\,
	combout => \musicaddress[13]~56_combout\,
	cout => \musicaddress[13]~57\);

-- Location: LCFF_X12_Y9_N29
\musicaddress[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[13]~56_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(13));

-- Location: LCCOMB_X12_Y9_N30
\musicaddress[14]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[14]~58_combout\ = (musicaddress(14) & (\musicaddress[13]~57\ $ (GND))) # (!musicaddress(14) & (!\musicaddress[13]~57\ & VCC))
-- \musicaddress[14]~59\ = CARRY((musicaddress(14) & !\musicaddress[13]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(14),
	datad => VCC,
	cin => \musicaddress[13]~57\,
	combout => \musicaddress[14]~58_combout\,
	cout => \musicaddress[14]~59\);

-- Location: LCFF_X12_Y9_N31
\musicaddress[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[14]~58_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(14));

-- Location: LCCOMB_X12_Y8_N0
\musicaddress[15]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[15]~60_combout\ = (musicaddress(15) & (!\musicaddress[14]~59\)) # (!musicaddress(15) & ((\musicaddress[14]~59\) # (GND)))
-- \musicaddress[15]~61\ = CARRY((!\musicaddress[14]~59\) # (!musicaddress(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(15),
	datad => VCC,
	cin => \musicaddress[14]~59\,
	combout => \musicaddress[15]~60_combout\,
	cout => \musicaddress[15]~61\);

-- Location: LCFF_X12_Y8_N1
\musicaddress[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[15]~60_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(15));

-- Location: LCCOMB_X12_Y8_N2
\musicaddress[16]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[16]~62_combout\ = (musicaddress(16) & (\musicaddress[15]~61\ $ (GND))) # (!musicaddress(16) & (!\musicaddress[15]~61\ & VCC))
-- \musicaddress[16]~63\ = CARRY((musicaddress(16) & !\musicaddress[15]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(16),
	datad => VCC,
	cin => \musicaddress[15]~61\,
	combout => \musicaddress[16]~62_combout\,
	cout => \musicaddress[16]~63\);

-- Location: LCFF_X12_Y8_N3
\musicaddress[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[16]~62_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(16));

-- Location: LCCOMB_X12_Y8_N4
\musicaddress[17]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[17]~64_combout\ = (musicaddress(17) & (!\musicaddress[16]~63\)) # (!musicaddress(17) & ((\musicaddress[16]~63\) # (GND)))
-- \musicaddress[17]~65\ = CARRY((!\musicaddress[16]~63\) # (!musicaddress(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(17),
	datad => VCC,
	cin => \musicaddress[16]~63\,
	combout => \musicaddress[17]~64_combout\,
	cout => \musicaddress[17]~65\);

-- Location: LCFF_X12_Y8_N5
\musicaddress[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[17]~64_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(17));

-- Location: LCCOMB_X12_Y8_N8
\musicaddress[19]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \musicaddress[19]~68_combout\ = (musicaddress(19) & (!\musicaddress[18]~67\)) # (!musicaddress(19) & ((\musicaddress[18]~67\) # (GND)))
-- \musicaddress[19]~69\ = CARRY((!\musicaddress[18]~67\) # (!musicaddress(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => musicaddress(19),
	datad => VCC,
	cin => \musicaddress[18]~67\,
	combout => \musicaddress[19]~68_combout\,
	cout => \musicaddress[19]~69\);

-- Location: LCFF_X12_Y8_N9
\musicaddress[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[19]~68_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(19));

-- Location: LCFF_X12_Y8_N13
\musicaddress[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \musicaddress[21]~72_combout\,
	sclr => \Equal1~1_combout\,
	ena => \blinker|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => musicaddress(21));

-- Location: LCCOMB_X12_Y6_N8
\freqGen3|fpaddress[1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[1]~28_combout\ = (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ & ((\freqGen3|fpaddress\(1) & (\freqGen3|fpaddress[0]~27\ & VCC)) # (!\freqGen3|fpaddress\(1) & (!\freqGen3|fpaddress[0]~27\)))) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ & ((\freqGen3|fpaddress\(1) & (!\freqGen3|fpaddress[0]~27\)) # (!\freqGen3|fpaddress\(1) & ((\freqGen3|fpaddress[0]~27\) # (GND)))))
-- \freqGen3|fpaddress[1]~29\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ & (!\freqGen3|fpaddress\(1) & !\freqGen3|fpaddress[0]~27\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\ & 
-- ((!\freqGen3|fpaddress[0]~27\) # (!\freqGen3|fpaddress\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a1\,
	datab => \freqGen3|fpaddress\(1),
	datad => VCC,
	cin => \freqGen3|fpaddress[0]~27\,
	combout => \freqGen3|fpaddress[1]~28_combout\,
	cout => \freqGen3|fpaddress[1]~29\);

-- Location: LCFF_X12_Y6_N9
\freqGen3|fpaddress[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(1));

-- Location: LCCOMB_X12_Y6_N12
\freqGen3|fpaddress[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[3]~32_combout\ = (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ & ((\freqGen3|fpaddress\(3) & (\freqGen3|fpaddress[2]~31\ & VCC)) # (!\freqGen3|fpaddress\(3) & (!\freqGen3|fpaddress[2]~31\)))) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ & ((\freqGen3|fpaddress\(3) & (!\freqGen3|fpaddress[2]~31\)) # (!\freqGen3|fpaddress\(3) & ((\freqGen3|fpaddress[2]~31\) # (GND)))))
-- \freqGen3|fpaddress[3]~33\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ & (!\freqGen3|fpaddress\(3) & !\freqGen3|fpaddress[2]~31\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\ & 
-- ((!\freqGen3|fpaddress[2]~31\) # (!\freqGen3|fpaddress\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a3\,
	datab => \freqGen3|fpaddress\(3),
	datad => VCC,
	cin => \freqGen3|fpaddress[2]~31\,
	combout => \freqGen3|fpaddress[3]~32_combout\,
	cout => \freqGen3|fpaddress[3]~33\);

-- Location: LCFF_X12_Y6_N13
\freqGen3|fpaddress[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(3));

-- Location: LCCOMB_X12_Y6_N14
\freqGen3|fpaddress[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[4]~34_combout\ = ((\freqGen3|fpaddress\(4) $ (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\ $ (!\freqGen3|fpaddress[3]~33\)))) # (GND)
-- \freqGen3|fpaddress[4]~35\ = CARRY((\freqGen3|fpaddress\(4) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\) # (!\freqGen3|fpaddress[3]~33\))) # (!\freqGen3|fpaddress\(4) & 
-- (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\ & !\freqGen3|fpaddress[3]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(4),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a4\,
	datad => VCC,
	cin => \freqGen3|fpaddress[3]~33\,
	combout => \freqGen3|fpaddress[4]~34_combout\,
	cout => \freqGen3|fpaddress[4]~35\);

-- Location: LCCOMB_X12_Y6_N16
\freqGen3|fpaddress[5]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[5]~36_combout\ = (\freqGen3|fpaddress\(5) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ & (\freqGen3|fpaddress[4]~35\ & VCC)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ & 
-- (!\freqGen3|fpaddress[4]~35\)))) # (!\freqGen3|fpaddress\(5) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ & (!\freqGen3|fpaddress[4]~35\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ & 
-- ((\freqGen3|fpaddress[4]~35\) # (GND)))))
-- \freqGen3|fpaddress[5]~37\ = CARRY((\freqGen3|fpaddress\(5) & (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\ & !\freqGen3|fpaddress[4]~35\)) # (!\freqGen3|fpaddress\(5) & ((!\freqGen3|fpaddress[4]~35\) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(5),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a5\,
	datad => VCC,
	cin => \freqGen3|fpaddress[4]~35\,
	combout => \freqGen3|fpaddress[5]~36_combout\,
	cout => \freqGen3|fpaddress[5]~37\);

-- Location: LCCOMB_X12_Y6_N18
\freqGen3|fpaddress[6]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[6]~38_combout\ = ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\ $ (\freqGen3|fpaddress\(6) $ (!\freqGen3|fpaddress[5]~37\)))) # (GND)
-- \freqGen3|fpaddress[6]~39\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\ & ((\freqGen3|fpaddress\(6)) # (!\freqGen3|fpaddress[5]~37\))) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\ & 
-- (\freqGen3|fpaddress\(6) & !\freqGen3|fpaddress[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a6\,
	datab => \freqGen3|fpaddress\(6),
	datad => VCC,
	cin => \freqGen3|fpaddress[5]~37\,
	combout => \freqGen3|fpaddress[6]~38_combout\,
	cout => \freqGen3|fpaddress[6]~39\);

-- Location: LCFF_X12_Y6_N19
\freqGen3|fpaddress[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(6));

-- Location: LCCOMB_X12_Y6_N22
\freqGen3|fpaddress[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[8]~42_combout\ = ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\ $ (\freqGen3|fpaddress\(8) $ (!\freqGen3|fpaddress[7]~41\)))) # (GND)
-- \freqGen3|fpaddress[8]~43\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\ & ((\freqGen3|fpaddress\(8)) # (!\freqGen3|fpaddress[7]~41\))) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\ & 
-- (\freqGen3|fpaddress\(8) & !\freqGen3|fpaddress[7]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a8\,
	datab => \freqGen3|fpaddress\(8),
	datad => VCC,
	cin => \freqGen3|fpaddress[7]~41\,
	combout => \freqGen3|fpaddress[8]~42_combout\,
	cout => \freqGen3|fpaddress[8]~43\);

-- Location: LCFF_X12_Y6_N23
\freqGen3|fpaddress[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(8));

-- Location: LCCOMB_X12_Y6_N24
\freqGen3|fpaddress[9]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[9]~44_combout\ = (\freqGen3|fpaddress\(9) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ & (\freqGen3|fpaddress[8]~43\ & VCC)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ & 
-- (!\freqGen3|fpaddress[8]~43\)))) # (!\freqGen3|fpaddress\(9) & ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ & (!\freqGen3|fpaddress[8]~43\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ & 
-- ((\freqGen3|fpaddress[8]~43\) # (GND)))))
-- \freqGen3|fpaddress[9]~45\ = CARRY((\freqGen3|fpaddress\(9) & (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\ & !\freqGen3|fpaddress[8]~43\)) # (!\freqGen3|fpaddress\(9) & ((!\freqGen3|fpaddress[8]~43\) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(9),
	datab => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a9\,
	datad => VCC,
	cin => \freqGen3|fpaddress[8]~43\,
	combout => \freqGen3|fpaddress[9]~44_combout\,
	cout => \freqGen3|fpaddress[9]~45\);

-- Location: LCCOMB_X12_Y6_N26
\freqGen3|fpaddress[10]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[10]~46_combout\ = ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\ $ (\freqGen3|fpaddress\(10) $ (!\freqGen3|fpaddress[9]~45\)))) # (GND)
-- \freqGen3|fpaddress[10]~47\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\ & ((\freqGen3|fpaddress\(10)) # (!\freqGen3|fpaddress[9]~45\))) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\ & 
-- (\freqGen3|fpaddress\(10) & !\freqGen3|fpaddress[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a10\,
	datab => \freqGen3|fpaddress\(10),
	datad => VCC,
	cin => \freqGen3|fpaddress[9]~45\,
	combout => \freqGen3|fpaddress[10]~46_combout\,
	cout => \freqGen3|fpaddress[10]~47\);

-- Location: LCFF_X12_Y6_N27
\freqGen3|fpaddress[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(10));

-- Location: LCCOMB_X12_Y6_N30
\freqGen3|fpaddress[12]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[12]~50_combout\ = ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\ $ (\freqGen3|fpaddress\(12) $ (!\freqGen3|fpaddress[11]~49\)))) # (GND)
-- \freqGen3|fpaddress[12]~51\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\ & ((\freqGen3|fpaddress\(12)) # (!\freqGen3|fpaddress[11]~49\))) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\ & 
-- (\freqGen3|fpaddress\(12) & !\freqGen3|fpaddress[11]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a12\,
	datab => \freqGen3|fpaddress\(12),
	datad => VCC,
	cin => \freqGen3|fpaddress[11]~49\,
	combout => \freqGen3|fpaddress[12]~50_combout\,
	cout => \freqGen3|fpaddress[12]~51\);

-- Location: LCFF_X12_Y6_N31
\freqGen3|fpaddress[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(12));

-- Location: LCCOMB_X12_Y5_N0
\freqGen3|fpaddress[13]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[13]~52_combout\ = (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ & ((\freqGen3|fpaddress\(13) & (\freqGen3|fpaddress[12]~51\ & VCC)) # (!\freqGen3|fpaddress\(13) & (!\freqGen3|fpaddress[12]~51\)))) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ & ((\freqGen3|fpaddress\(13) & (!\freqGen3|fpaddress[12]~51\)) # (!\freqGen3|fpaddress\(13) & ((\freqGen3|fpaddress[12]~51\) # (GND)))))
-- \freqGen3|fpaddress[13]~53\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ & (!\freqGen3|fpaddress\(13) & !\freqGen3|fpaddress[12]~51\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\ & 
-- ((!\freqGen3|fpaddress[12]~51\) # (!\freqGen3|fpaddress\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a13\,
	datab => \freqGen3|fpaddress\(13),
	datad => VCC,
	cin => \freqGen3|fpaddress[12]~51\,
	combout => \freqGen3|fpaddress[13]~52_combout\,
	cout => \freqGen3|fpaddress[13]~53\);

-- Location: LCFF_X12_Y5_N1
\freqGen3|fpaddress[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(13));

-- Location: LCCOMB_X12_Y5_N2
\freqGen3|fpaddress[14]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[14]~54_combout\ = ((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\ $ (\freqGen3|fpaddress\(14) $ (!\freqGen3|fpaddress[13]~53\)))) # (GND)
-- \freqGen3|fpaddress[14]~55\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\ & ((\freqGen3|fpaddress\(14)) # (!\freqGen3|fpaddress[13]~53\))) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\ & 
-- (\freqGen3|fpaddress\(14) & !\freqGen3|fpaddress[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a14\,
	datab => \freqGen3|fpaddress\(14),
	datad => VCC,
	cin => \freqGen3|fpaddress[13]~53\,
	combout => \freqGen3|fpaddress[14]~54_combout\,
	cout => \freqGen3|fpaddress[14]~55\);

-- Location: LCFF_X12_Y5_N3
\freqGen3|fpaddress[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(14));

-- Location: LCCOMB_X12_Y5_N4
\freqGen3|fpaddress[15]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[15]~56_combout\ = (\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ & ((\freqGen3|fpaddress\(15) & (\freqGen3|fpaddress[14]~55\ & VCC)) # (!\freqGen3|fpaddress\(15) & (!\freqGen3|fpaddress[14]~55\)))) # 
-- (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ & ((\freqGen3|fpaddress\(15) & (!\freqGen3|fpaddress[14]~55\)) # (!\freqGen3|fpaddress\(15) & ((\freqGen3|fpaddress[14]~55\) # (GND)))))
-- \freqGen3|fpaddress[15]~57\ = CARRY((\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ & (!\freqGen3|fpaddress\(15) & !\freqGen3|fpaddress[14]~55\)) # (!\generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\ & 
-- ((!\freqGen3|fpaddress[14]~55\) # (!\freqGen3|fpaddress\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \generateStepSizeForNote3|Ram0_rtl_0|auto_generated|ram_block1a15\,
	datab => \freqGen3|fpaddress\(15),
	datad => VCC,
	cin => \freqGen3|fpaddress[14]~55\,
	combout => \freqGen3|fpaddress[15]~56_combout\,
	cout => \freqGen3|fpaddress[15]~57\);

-- Location: LCFF_X12_Y5_N5
\freqGen3|fpaddress[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(15));

-- Location: LCCOMB_X12_Y5_N6
\freqGen3|fpaddress[16]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[16]~58_combout\ = (\freqGen3|fpaddress\(16) & (\freqGen3|fpaddress[15]~57\ $ (GND))) # (!\freqGen3|fpaddress\(16) & (!\freqGen3|fpaddress[15]~57\ & VCC))
-- \freqGen3|fpaddress[16]~59\ = CARRY((\freqGen3|fpaddress\(16) & !\freqGen3|fpaddress[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(16),
	datad => VCC,
	cin => \freqGen3|fpaddress[15]~57\,
	combout => \freqGen3|fpaddress[16]~58_combout\,
	cout => \freqGen3|fpaddress[16]~59\);

-- Location: LCCOMB_X12_Y5_N8
\freqGen3|fpaddress[17]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[17]~60_combout\ = (\freqGen3|fpaddress\(17) & (!\freqGen3|fpaddress[16]~59\)) # (!\freqGen3|fpaddress\(17) & ((\freqGen3|fpaddress[16]~59\) # (GND)))
-- \freqGen3|fpaddress[17]~61\ = CARRY((!\freqGen3|fpaddress[16]~59\) # (!\freqGen3|fpaddress\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(17),
	datad => VCC,
	cin => \freqGen3|fpaddress[16]~59\,
	combout => \freqGen3|fpaddress[17]~60_combout\,
	cout => \freqGen3|fpaddress[17]~61\);

-- Location: LCFF_X12_Y5_N9
\freqGen3|fpaddress[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(17));

-- Location: LCCOMB_X12_Y5_N12
\freqGen3|fpaddress[19]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[19]~64_combout\ = (\freqGen3|fpaddress\(19) & (!\freqGen3|fpaddress[18]~63\)) # (!\freqGen3|fpaddress\(19) & ((\freqGen3|fpaddress[18]~63\) # (GND)))
-- \freqGen3|fpaddress[19]~65\ = CARRY((!\freqGen3|fpaddress[18]~63\) # (!\freqGen3|fpaddress\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(19),
	datad => VCC,
	cin => \freqGen3|fpaddress[18]~63\,
	combout => \freqGen3|fpaddress[19]~64_combout\,
	cout => \freqGen3|fpaddress[19]~65\);

-- Location: LCCOMB_X12_Y5_N14
\freqGen3|fpaddress[20]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[20]~66_combout\ = (\freqGen3|fpaddress\(20) & (\freqGen3|fpaddress[19]~65\ $ (GND))) # (!\freqGen3|fpaddress\(20) & (!\freqGen3|fpaddress[19]~65\ & VCC))
-- \freqGen3|fpaddress[20]~67\ = CARRY((\freqGen3|fpaddress\(20) & !\freqGen3|fpaddress[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(20),
	datad => VCC,
	cin => \freqGen3|fpaddress[19]~65\,
	combout => \freqGen3|fpaddress[20]~66_combout\,
	cout => \freqGen3|fpaddress[20]~67\);

-- Location: LCFF_X12_Y5_N15
\freqGen3|fpaddress[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(20));

-- Location: LCCOMB_X12_Y5_N16
\freqGen3|fpaddress[21]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[21]~68_combout\ = (\freqGen3|fpaddress\(21) & (!\freqGen3|fpaddress[20]~67\)) # (!\freqGen3|fpaddress\(21) & ((\freqGen3|fpaddress[20]~67\) # (GND)))
-- \freqGen3|fpaddress[21]~69\ = CARRY((!\freqGen3|fpaddress[20]~67\) # (!\freqGen3|fpaddress\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(21),
	datad => VCC,
	cin => \freqGen3|fpaddress[20]~67\,
	combout => \freqGen3|fpaddress[21]~68_combout\,
	cout => \freqGen3|fpaddress[21]~69\);

-- Location: LCCOMB_X12_Y5_N18
\freqGen3|fpaddress[22]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[22]~70_combout\ = (\freqGen3|fpaddress\(22) & (\freqGen3|fpaddress[21]~69\ $ (GND))) # (!\freqGen3|fpaddress\(22) & (!\freqGen3|fpaddress[21]~69\ & VCC))
-- \freqGen3|fpaddress[22]~71\ = CARRY((\freqGen3|fpaddress\(22) & !\freqGen3|fpaddress[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(22),
	datad => VCC,
	cin => \freqGen3|fpaddress[21]~69\,
	combout => \freqGen3|fpaddress[22]~70_combout\,
	cout => \freqGen3|fpaddress[22]~71\);

-- Location: LCFF_X12_Y5_N19
\freqGen3|fpaddress[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(22));

-- Location: LCCOMB_X12_Y5_N20
\freqGen3|fpaddress[23]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[23]~72_combout\ = (\freqGen3|fpaddress\(23) & (!\freqGen3|fpaddress[22]~71\)) # (!\freqGen3|fpaddress\(23) & ((\freqGen3|fpaddress[22]~71\) # (GND)))
-- \freqGen3|fpaddress[23]~73\ = CARRY((!\freqGen3|fpaddress[22]~71\) # (!\freqGen3|fpaddress\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(23),
	datad => VCC,
	cin => \freqGen3|fpaddress[22]~71\,
	combout => \freqGen3|fpaddress[23]~72_combout\,
	cout => \freqGen3|fpaddress[23]~73\);

-- Location: LCCOMB_X12_Y5_N22
\freqGen3|fpaddress[24]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[24]~74_combout\ = (\freqGen3|fpaddress\(24) & (\freqGen3|fpaddress[23]~73\ $ (GND))) # (!\freqGen3|fpaddress\(24) & (!\freqGen3|fpaddress[23]~73\ & VCC))
-- \freqGen3|fpaddress[24]~75\ = CARRY((\freqGen3|fpaddress\(24) & !\freqGen3|fpaddress[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(24),
	datad => VCC,
	cin => \freqGen3|fpaddress[23]~73\,
	combout => \freqGen3|fpaddress[24]~74_combout\,
	cout => \freqGen3|fpaddress[24]~75\);

-- Location: LCFF_X12_Y5_N23
\freqGen3|fpaddress[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(24));

-- Location: LCCOMB_X12_Y5_N24
\freqGen3|fpaddress[25]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|fpaddress[25]~76_combout\ = \freqGen3|fpaddress\(25) $ (\freqGen3|fpaddress[24]~75\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(25),
	cin => \freqGen3|fpaddress[24]~75\,
	combout => \freqGen3|fpaddress[25]~76_combout\);

-- Location: LCFF_X12_Y5_N25
\freqGen3|fpaddress[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(25));

-- Location: LCFF_X12_Y5_N7
\freqGen3|fpaddress[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(16));

-- Location: LCCOMB_X13_Y5_N8
\modfreqGen|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~0_combout\ = \freqGen3|fpaddress\(16) $ (\freqGen3|fpaddress\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(16),
	datad => \freqGen3|fpaddress\(24),
	combout => \modfreqGen|comb~0_combout\);

-- Location: LCCOMB_X13_Y5_N18
\modfreqGen|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~1_combout\ = \freqGen3|fpaddress\(17) $ (\freqGen3|fpaddress\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(17),
	datad => \freqGen3|fpaddress\(24),
	combout => \modfreqGen|comb~1_combout\);

-- Location: LCCOMB_X13_Y5_N28
\modfreqGen|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~2_combout\ = \freqGen3|fpaddress\(18) $ (\freqGen3|fpaddress\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(18),
	datad => \freqGen3|fpaddress\(24),
	combout => \modfreqGen|comb~2_combout\);

-- Location: LCFF_X12_Y5_N13
\freqGen3|fpaddress[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(19));

-- Location: LCCOMB_X13_Y5_N10
\modfreqGen|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~3_combout\ = \freqGen3|fpaddress\(24) $ (\freqGen3|fpaddress\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(24),
	datad => \freqGen3|fpaddress\(19),
	combout => \modfreqGen|comb~3_combout\);

-- Location: LCCOMB_X13_Y5_N20
\modfreqGen|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~4_combout\ = \freqGen3|fpaddress\(24) $ (\freqGen3|fpaddress\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(24),
	datad => \freqGen3|fpaddress\(20),
	combout => \modfreqGen|comb~4_combout\);

-- Location: LCFF_X12_Y5_N17
\freqGen3|fpaddress[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(21));

-- Location: LCCOMB_X13_Y5_N22
\modfreqGen|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~5_combout\ = \freqGen3|fpaddress\(24) $ (\freqGen3|fpaddress\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(24),
	datad => \freqGen3|fpaddress\(21),
	combout => \modfreqGen|comb~5_combout\);

-- Location: LCCOMB_X13_Y5_N0
\modfreqGen|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~6_combout\ = \freqGen3|fpaddress\(24) $ (\freqGen3|fpaddress\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|fpaddress\(24),
	datad => \freqGen3|fpaddress\(22),
	combout => \modfreqGen|comb~6_combout\);

-- Location: LCFF_X12_Y5_N21
\freqGen3|fpaddress[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(23));

-- Location: LCCOMB_X13_Y5_N2
\modfreqGen|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|comb~7_combout\ = \freqGen3|fpaddress\(23) $ (\freqGen3|fpaddress\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(23),
	datad => \freqGen3|fpaddress\(24),
	combout => \modfreqGen|comb~7_combout\);

-- Location: M4K_X11_Y5
\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"FFFEFFF5FFDBFF0FFE5FF87FC6FF73FD0FFADFF97FE9FF87FAEFD1BFB2FC73F84FE43F0F7EADF5D7EE5FFE7FE9FFC7EE1F5FBDAEF0DBD46F46BE72FF0BF1CFED3E44F5A3E50F1FDE8F749DEEB764DFDD76D5EF97425E817139D467529E427E31C847021D7FB2DECDBBC4EE6DB716E09B2FAE96BAAAC82B4D2FE8BD02EB73FACF833F54EA935F8DE63828D1C3C10F10383F7EBDDF75A5D0C754ED46B67CDF13490D1DD54B53B56D95BF94C6598959454C16F7962E7CD9EA66EE9C6A45C93627DF",
	mem_init0 => X"18EC53D18E463E1F684DC116071FE7AFBADE0A7B8EE7CB8B4E943AE7608D9056CF989A62B190860DEAE3A516ABEA06A94CACC2B67240CA592738B322E90B7FC7AF3F5C847206C8733F0C79D37D41A50B64F092584C3E0E38AE62CE824A17880BC29305E41CE08483380A3FFA3F167C76FE0BDA8FA5DD3D7025CC671B1C907F6ED75B206ECAB692DEF364CDD93AD8F7C3820F87D337621DAAB464D3BD7E358657165A715905E6E455917A4529E625971A7471118687E413BFA63E6A7B26EF33B40EE2D9056BD987C6CC1ADBA15691EAD8AAA8A71C84D2804A7224E0B57CC77361CCAB344CC3D37D4CC515A445126F808E3898FEA1B48B7C0930DA412609300000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sinepin.sinepin1.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "frequencyGeneratorQuart:modfreqGen|sineQuartROM:rom|altsyncram:Selector1_rtl_0|altsyncram_vgv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 14,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 14,
	port_a_write_enable_clear => "none",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 14,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \clk~clkctrl_outclk\,
	portaaddr => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y5_N30
\modfreqGen|romdata[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[0]~0_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a13\,
	combout => \modfreqGen|romdata[0]~0_combout\);

-- Location: LCCOMB_X12_Y5_N28
\modfreqGen|romdata[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[1]~1_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a12\,
	combout => \modfreqGen|romdata[1]~1_combout\);

-- Location: LCCOMB_X15_Y5_N12
\modfreqGen|romdata[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[2]~2_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a11\,
	combout => \modfreqGen|romdata[2]~2_combout\);

-- Location: LCCOMB_X12_Y5_N26
\modfreqGen|romdata[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[3]~3_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(25),
	datac => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a10\,
	combout => \modfreqGen|romdata[3]~3_combout\);

-- Location: LCCOMB_X15_Y5_N14
\modfreqGen|romdata[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[4]~4_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a9\,
	combout => \modfreqGen|romdata[4]~4_combout\);

-- Location: LCCOMB_X15_Y5_N0
\modfreqGen|romdata[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[5]~5_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a8\,
	combout => \modfreqGen|romdata[5]~5_combout\);

-- Location: LCCOMB_X15_Y5_N18
\modfreqGen|romdata[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[6]~6_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a7\,
	combout => \modfreqGen|romdata[6]~6_combout\);

-- Location: LCCOMB_X15_Y5_N4
\modfreqGen|romdata[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[7]~7_combout\ = \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a6\ $ (\freqGen3|fpaddress\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a6\,
	datad => \freqGen3|fpaddress\(25),
	combout => \modfreqGen|romdata[7]~7_combout\);

-- Location: LCCOMB_X15_Y5_N10
\modfreqGen|romdata[8]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[8]~8_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a5\,
	combout => \modfreqGen|romdata[8]~8_combout\);

-- Location: LCCOMB_X15_Y5_N16
\modfreqGen|romdata[9]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[9]~9_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a4\,
	combout => \modfreqGen|romdata[9]~9_combout\);

-- Location: LCCOMB_X15_Y5_N30
\modfreqGen|romdata[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[10]~10_combout\ = \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ $ (\freqGen3|fpaddress\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a3\,
	datad => \freqGen3|fpaddress\(25),
	combout => \modfreqGen|romdata[10]~10_combout\);

-- Location: LCCOMB_X15_Y5_N20
\modfreqGen|romdata[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[11]~11_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a2\,
	combout => \modfreqGen|romdata[11]~11_combout\);

-- Location: LCCOMB_X15_Y5_N6
\modfreqGen|romdata[12]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[12]~12_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a1\,
	combout => \modfreqGen|romdata[12]~12_combout\);

-- Location: LCCOMB_X15_Y5_N24
\modfreqGen|romdata[13]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[13]~13_combout\ = \freqGen3|fpaddress\(25) $ (\modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|fpaddress\(25),
	datad => \modfreqGen|rom|Selector1_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \modfreqGen|romdata[13]~13_combout\);

-- Location: LCCOMB_X13_Y5_N24
\modfreqGen|rom|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|rom|Selector0~0_combout\ = (\modfreqGen|comb~4_combout\ & ((\modfreqGen|comb~3_combout\) # ((\modfreqGen|comb~2_combout\ & \modfreqGen|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modfreqGen|comb~3_combout\,
	datab => \modfreqGen|comb~2_combout\,
	datac => \modfreqGen|comb~4_combout\,
	datad => \modfreqGen|comb~1_combout\,
	combout => \modfreqGen|rom|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y5_N4
\modfreqGen|rom|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|rom|Selector0~1_combout\ = (\modfreqGen|comb~7_combout\) # ((\modfreqGen|comb~6_combout\ & ((\modfreqGen|comb~5_combout\) # (\modfreqGen|rom|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modfreqGen|comb~6_combout\,
	datab => \modfreqGen|comb~5_combout\,
	datac => \modfreqGen|rom|Selector0~0_combout\,
	datad => \modfreqGen|comb~7_combout\,
	combout => \modfreqGen|rom|Selector0~1_combout\);

-- Location: LCFF_X13_Y5_N5
\modfreqGen|rom|svalue[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \modfreqGen|rom|Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \modfreqGen|rom|svalue\(14));

-- Location: LCCOMB_X13_Y5_N26
\modfreqGen|romdata[14]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \modfreqGen|romdata[14]~14_combout\ = \modfreqGen|rom|svalue\(14) $ (\freqGen3|fpaddress\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \modfreqGen|rom|svalue\(14),
	datad => \freqGen3|fpaddress\(25),
	combout => \modfreqGen|romdata[14]~14_combout\);

-- Location: DSPMULT_X16_Y5_N0
\freqGen3|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	dataa => \freqGen3|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \freqGen3|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \freqGen3|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCFF_X12_Y6_N25
\freqGen3|fpaddress[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(9));

-- Location: LCFF_X12_Y6_N17
\freqGen3|fpaddress[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(5));

-- Location: LCFF_X12_Y6_N15
\freqGen3|fpaddress[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|fpaddress[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|fpaddress\(4));

-- Location: LCCOMB_X17_Y5_N8
\freqGen3|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~1_cout\ = CARRY((\freqGen3|fpaddress\(1) & \modfreqGen|romdata[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(1),
	datab => \modfreqGen|romdata[0]~0_combout\,
	datad => VCC,
	cout => \freqGen3|Add2~1_cout\);

-- Location: LCCOMB_X17_Y5_N10
\freqGen3|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~3_cout\ = CARRY((\freqGen3|fpaddress\(2) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT2\ & !\freqGen3|Add2~1_cout\)) # (!\freqGen3|fpaddress\(2) & ((!\freqGen3|Add2~1_cout\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(2),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => VCC,
	cin => \freqGen3|Add2~1_cout\,
	cout => \freqGen3|Add2~3_cout\);

-- Location: LCCOMB_X17_Y5_N12
\freqGen3|Add2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~5_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\freqGen3|fpaddress\(3)) # (!\freqGen3|Add2~3_cout\))) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT3\ & (\freqGen3|fpaddress\(3) & !\freqGen3|Add2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \freqGen3|fpaddress\(3),
	datad => VCC,
	cin => \freqGen3|Add2~3_cout\,
	cout => \freqGen3|Add2~5_cout\);

-- Location: LCCOMB_X17_Y5_N14
\freqGen3|Add2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~7_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT4\ & (!\freqGen3|fpaddress\(4) & !\freqGen3|Add2~5_cout\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT4\ & ((!\freqGen3|Add2~5_cout\) # (!\freqGen3|fpaddress\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datab => \freqGen3|fpaddress\(4),
	datad => VCC,
	cin => \freqGen3|Add2~5_cout\,
	cout => \freqGen3|Add2~7_cout\);

-- Location: LCCOMB_X17_Y5_N16
\freqGen3|Add2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~9_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\freqGen3|fpaddress\(5)) # (!\freqGen3|Add2~7_cout\))) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\freqGen3|fpaddress\(5) & !\freqGen3|Add2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datab => \freqGen3|fpaddress\(5),
	datad => VCC,
	cin => \freqGen3|Add2~7_cout\,
	cout => \freqGen3|Add2~9_cout\);

-- Location: LCCOMB_X17_Y5_N18
\freqGen3|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~11_cout\ = CARRY((\freqGen3|fpaddress\(6) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT6\ & !\freqGen3|Add2~9_cout\)) # (!\freqGen3|fpaddress\(6) & ((!\freqGen3|Add2~9_cout\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(6),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \freqGen3|Add2~9_cout\,
	cout => \freqGen3|Add2~11_cout\);

-- Location: LCCOMB_X17_Y5_N20
\freqGen3|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~13_cout\ = CARRY((\freqGen3|fpaddress\(7) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT7\) # (!\freqGen3|Add2~11_cout\))) # (!\freqGen3|fpaddress\(7) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\freqGen3|Add2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(7),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \freqGen3|Add2~11_cout\,
	cout => \freqGen3|Add2~13_cout\);

-- Location: LCCOMB_X17_Y5_N22
\freqGen3|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~15_cout\ = CARRY((\freqGen3|fpaddress\(8) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT8\ & !\freqGen3|Add2~13_cout\)) # (!\freqGen3|fpaddress\(8) & ((!\freqGen3|Add2~13_cout\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(8),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \freqGen3|Add2~13_cout\,
	cout => \freqGen3|Add2~15_cout\);

-- Location: LCCOMB_X17_Y5_N24
\freqGen3|Add2~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~17_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT9\ & ((\freqGen3|fpaddress\(9)) # (!\freqGen3|Add2~15_cout\))) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\freqGen3|fpaddress\(9) & !\freqGen3|Add2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \freqGen3|fpaddress\(9),
	datad => VCC,
	cin => \freqGen3|Add2~15_cout\,
	cout => \freqGen3|Add2~17_cout\);

-- Location: LCCOMB_X17_Y5_N26
\freqGen3|Add2~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~19_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT10\ & (!\freqGen3|fpaddress\(10) & !\freqGen3|Add2~17_cout\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((!\freqGen3|Add2~17_cout\) # 
-- (!\freqGen3|fpaddress\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \freqGen3|fpaddress\(10),
	datad => VCC,
	cin => \freqGen3|Add2~17_cout\,
	cout => \freqGen3|Add2~19_cout\);

-- Location: LCCOMB_X17_Y5_N28
\freqGen3|Add2~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~21_cout\ = CARRY((\freqGen3|fpaddress\(11) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT11\) # (!\freqGen3|Add2~19_cout\))) # (!\freqGen3|fpaddress\(11) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- !\freqGen3|Add2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(11),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datad => VCC,
	cin => \freqGen3|Add2~19_cout\,
	cout => \freqGen3|Add2~21_cout\);

-- Location: LCCOMB_X17_Y5_N30
\freqGen3|Add2~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~23_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT12\ & (!\freqGen3|fpaddress\(12) & !\freqGen3|Add2~21_cout\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((!\freqGen3|Add2~21_cout\) # 
-- (!\freqGen3|fpaddress\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \freqGen3|fpaddress\(12),
	datad => VCC,
	cin => \freqGen3|Add2~21_cout\,
	cout => \freqGen3|Add2~23_cout\);

-- Location: LCCOMB_X17_Y4_N0
\freqGen3|Add2~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~25_cout\ = CARRY((\freqGen3|fpaddress\(13) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\freqGen3|Add2~23_cout\))) # (!\freqGen3|fpaddress\(13) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- !\freqGen3|Add2~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(13),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \freqGen3|Add2~23_cout\,
	cout => \freqGen3|Add2~25_cout\);

-- Location: LCCOMB_X17_Y4_N2
\freqGen3|Add2~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~27_cout\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT14\ & (!\freqGen3|fpaddress\(14) & !\freqGen3|Add2~25_cout\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((!\freqGen3|Add2~25_cout\) # 
-- (!\freqGen3|fpaddress\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \freqGen3|fpaddress\(14),
	datad => VCC,
	cin => \freqGen3|Add2~25_cout\,
	cout => \freqGen3|Add2~27_cout\);

-- Location: LCCOMB_X17_Y4_N4
\freqGen3|Add2~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~29_cout\ = CARRY((\freqGen3|fpaddress\(15) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT15\) # (!\freqGen3|Add2~27_cout\))) # (!\freqGen3|fpaddress\(15) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT15\ & 
-- !\freqGen3|Add2~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(15),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datad => VCC,
	cin => \freqGen3|Add2~27_cout\,
	cout => \freqGen3|Add2~29_cout\);

-- Location: LCCOMB_X17_Y4_N6
\freqGen3|Add2~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~30_combout\ = (\freqGen3|fpaddress\(16) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ & (\freqGen3|Add2~29_cout\ & VCC)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\freqGen3|Add2~29_cout\)))) # 
-- (!\freqGen3|fpaddress\(16) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ & (!\freqGen3|Add2~29_cout\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ & ((\freqGen3|Add2~29_cout\) # (GND)))))
-- \freqGen3|Add2~31\ = CARRY((\freqGen3|fpaddress\(16) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\ & !\freqGen3|Add2~29_cout\)) # (!\freqGen3|fpaddress\(16) & ((!\freqGen3|Add2~29_cout\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(16),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT16\,
	datad => VCC,
	cin => \freqGen3|Add2~29_cout\,
	combout => \freqGen3|Add2~30_combout\,
	cout => \freqGen3|Add2~31\);

-- Location: LCCOMB_X17_Y4_N8
\freqGen3|Add2~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~32_combout\ = ((\freqGen3|fpaddress\(17) $ (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\ $ (!\freqGen3|Add2~31\)))) # (GND)
-- \freqGen3|Add2~33\ = CARRY((\freqGen3|fpaddress\(17) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\) # (!\freqGen3|Add2~31\))) # (!\freqGen3|fpaddress\(17) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\ & !\freqGen3|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(17),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT17\,
	datad => VCC,
	cin => \freqGen3|Add2~31\,
	combout => \freqGen3|Add2~32_combout\,
	cout => \freqGen3|Add2~33\);

-- Location: LCCOMB_X17_Y4_N10
\freqGen3|Add2~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~34_combout\ = (\freqGen3|fpaddress\(18) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ & (\freqGen3|Add2~33\ & VCC)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\freqGen3|Add2~33\)))) # (!\freqGen3|fpaddress\(18) & 
-- ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ & (!\freqGen3|Add2~33\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ & ((\freqGen3|Add2~33\) # (GND)))))
-- \freqGen3|Add2~35\ = CARRY((\freqGen3|fpaddress\(18) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\ & !\freqGen3|Add2~33\)) # (!\freqGen3|fpaddress\(18) & ((!\freqGen3|Add2~33\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(18),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	cin => \freqGen3|Add2~33\,
	combout => \freqGen3|Add2~34_combout\,
	cout => \freqGen3|Add2~35\);

-- Location: LCCOMB_X17_Y4_N12
\freqGen3|Add2~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~36_combout\ = ((\freqGen3|fpaddress\(19) $ (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\ $ (!\freqGen3|Add2~35\)))) # (GND)
-- \freqGen3|Add2~37\ = CARRY((\freqGen3|fpaddress\(19) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\) # (!\freqGen3|Add2~35\))) # (!\freqGen3|fpaddress\(19) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\freqGen3|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(19),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \freqGen3|Add2~35\,
	combout => \freqGen3|Add2~36_combout\,
	cout => \freqGen3|Add2~37\);

-- Location: LCCOMB_X17_Y4_N14
\freqGen3|Add2~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~38_combout\ = (\freqGen3|fpaddress\(20) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ & (\freqGen3|Add2~37\ & VCC)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\freqGen3|Add2~37\)))) # (!\freqGen3|fpaddress\(20) & 
-- ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ & (!\freqGen3|Add2~37\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ & ((\freqGen3|Add2~37\) # (GND)))))
-- \freqGen3|Add2~39\ = CARRY((\freqGen3|fpaddress\(20) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\freqGen3|Add2~37\)) # (!\freqGen3|fpaddress\(20) & ((!\freqGen3|Add2~37\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(20),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \freqGen3|Add2~37\,
	combout => \freqGen3|Add2~38_combout\,
	cout => \freqGen3|Add2~39\);

-- Location: LCCOMB_X17_Y4_N16
\freqGen3|Add2~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~40_combout\ = ((\freqGen3|fpaddress\(21) $ (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\ $ (!\freqGen3|Add2~39\)))) # (GND)
-- \freqGen3|Add2~41\ = CARRY((\freqGen3|fpaddress\(21) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\) # (!\freqGen3|Add2~39\))) # (!\freqGen3|fpaddress\(21) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\ & !\freqGen3|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(21),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datad => VCC,
	cin => \freqGen3|Add2~39\,
	combout => \freqGen3|Add2~40_combout\,
	cout => \freqGen3|Add2~41\);

-- Location: LCCOMB_X17_Y4_N18
\freqGen3|Add2~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~42_combout\ = (\freqGen3|fpaddress\(22) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ & (\freqGen3|Add2~41\ & VCC)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\freqGen3|Add2~41\)))) # (!\freqGen3|fpaddress\(22) & 
-- ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ & (!\freqGen3|Add2~41\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\freqGen3|Add2~41\) # (GND)))))
-- \freqGen3|Add2~43\ = CARRY((\freqGen3|fpaddress\(22) & (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\ & !\freqGen3|Add2~41\)) # (!\freqGen3|fpaddress\(22) & ((!\freqGen3|Add2~41\) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(22),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datad => VCC,
	cin => \freqGen3|Add2~41\,
	combout => \freqGen3|Add2~42_combout\,
	cout => \freqGen3|Add2~43\);

-- Location: LCCOMB_X17_Y4_N20
\freqGen3|Add2~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~44_combout\ = ((\freqGen3|fpaddress\(23) $ (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\ $ (!\freqGen3|Add2~43\)))) # (GND)
-- \freqGen3|Add2~45\ = CARRY((\freqGen3|fpaddress\(23) & ((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\) # (!\freqGen3|Add2~43\))) # (!\freqGen3|fpaddress\(23) & (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\ & !\freqGen3|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|fpaddress\(23),
	datab => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \freqGen3|Add2~43\,
	combout => \freqGen3|Add2~44_combout\,
	cout => \freqGen3|Add2~45\);

-- Location: LCCOMB_X17_Y4_N22
\freqGen3|Add2~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~46_combout\ = (\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\freqGen3|fpaddress\(24) & (\freqGen3|Add2~45\ & VCC)) # (!\freqGen3|fpaddress\(24) & (!\freqGen3|Add2~45\)))) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ & 
-- ((\freqGen3|fpaddress\(24) & (!\freqGen3|Add2~45\)) # (!\freqGen3|fpaddress\(24) & ((\freqGen3|Add2~45\) # (GND)))))
-- \freqGen3|Add2~47\ = CARRY((\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ & (!\freqGen3|fpaddress\(24) & !\freqGen3|Add2~45\)) # (!\freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((!\freqGen3|Add2~45\) # (!\freqGen3|fpaddress\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \freqGen3|fpaddress\(24),
	datad => VCC,
	cin => \freqGen3|Add2~45\,
	combout => \freqGen3|Add2~46_combout\,
	cout => \freqGen3|Add2~47\);

-- Location: LCCOMB_X17_Y4_N30
\freqGen3|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~0_combout\ = \freqGen3|Add2~44_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~44_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~0_combout\);

-- Location: LCCOMB_X12_Y4_N30
\freqGen3|rom|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|rom|Selector0~0_combout\ = (\freqGen3|Add2~38_combout\ & ((\freqGen3|Add2~36_combout\) # ((\freqGen3|Add2~32_combout\ & \freqGen3|Add2~34_combout\)))) # (!\freqGen3|Add2~38_combout\ & (((!\freqGen3|Add2~32_combout\ & 
-- !\freqGen3|Add2~34_combout\)) # (!\freqGen3|Add2~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Add2~38_combout\,
	datab => \freqGen3|Add2~36_combout\,
	datac => \freqGen3|Add2~32_combout\,
	datad => \freqGen3|Add2~34_combout\,
	combout => \freqGen3|rom|Selector0~0_combout\);

-- Location: LCCOMB_X12_Y4_N20
\freqGen3|rom|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|rom|Selector0~1_combout\ = (\freqGen3|rom|Selector0~0_combout\ & ((\freqGen3|Add2~38_combout\ & (!\freqGen3|Add2~46_combout\ & \freqGen3|Add2~42_combout\)) # (!\freqGen3|Add2~38_combout\ & (\freqGen3|Add2~46_combout\ & 
-- !\freqGen3|Add2~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|Add2~38_combout\,
	datab => \freqGen3|Add2~46_combout\,
	datac => \freqGen3|Add2~42_combout\,
	datad => \freqGen3|rom|Selector0~0_combout\,
	combout => \freqGen3|rom|Selector0~1_combout\);

-- Location: LCCOMB_X17_Y4_N28
\freqGen3|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~2_combout\ = \freqGen3|Add2~40_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~40_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~2_combout\);

-- Location: LCCOMB_X12_Y4_N4
\freqGen3|rom|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|rom|Selector0~2_combout\ = (\freqGen3|comb~0_combout\) # ((\freqGen3|rom|Selector0~1_combout\) # ((\freqGen3|comb~1_combout\ & \freqGen3|comb~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|comb~1_combout\,
	datab => \freqGen3|comb~0_combout\,
	datac => \freqGen3|rom|Selector0~1_combout\,
	datad => \freqGen3|comb~2_combout\,
	combout => \freqGen3|rom|Selector0~2_combout\);

-- Location: LCFF_X12_Y4_N5
\freqGen3|rom|svalue[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \freqGen3|rom|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \freqGen3|rom|svalue\(14));

-- Location: LCCOMB_X17_Y4_N24
\freqGen3|Add2~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|Add2~48_combout\ = \freqGen3|Add2~47\ $ (!\freqGen3|fpaddress\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \freqGen3|fpaddress\(25),
	cin => \freqGen3|Add2~47\,
	combout => \freqGen3|Add2~48_combout\);

-- Location: LCCOMB_X15_Y4_N28
\freqGen3|romdata[14]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[14]~0_combout\ = \freqGen3|rom|svalue\(14) $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|svalue\(14),
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[14]~0_combout\);

-- Location: LCCOMB_X12_Y4_N8
\freqGen3|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~3_combout\ = \freqGen3|Add2~30_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~30_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~3_combout\);

-- Location: LCCOMB_X12_Y4_N6
\freqGen3|comb~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~4_combout\ = \freqGen3|Add2~32_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~32_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~4_combout\);

-- Location: LCCOMB_X12_Y4_N24
\freqGen3|comb~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~5_combout\ = \freqGen3|Add2~46_combout\ $ (\freqGen3|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~46_combout\,
	datad => \freqGen3|Add2~34_combout\,
	combout => \freqGen3|comb~5_combout\);

-- Location: LCCOMB_X12_Y4_N22
\freqGen3|comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~6_combout\ = \freqGen3|Add2~36_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~36_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~6_combout\);

-- Location: LCCOMB_X12_Y4_N28
\freqGen3|comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~7_combout\ = \freqGen3|Add2~38_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~38_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~7_combout\);

-- Location: LCCOMB_X12_Y4_N10
\freqGen3|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|comb~1_combout\ = \freqGen3|Add2~42_combout\ $ (\freqGen3|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|Add2~42_combout\,
	datad => \freqGen3|Add2~46_combout\,
	combout => \freqGen3|comb~1_combout\);

-- Location: LCCOMB_X15_Y4_N24
\freqGen3|romdata[12]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[12]~2_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a1\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a1\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[12]~2_combout\);

-- Location: LCCOMB_X15_Y4_N10
\freqGen3|romdata[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[11]~3_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a2\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a2\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[11]~3_combout\);

-- Location: LCCOMB_X15_Y4_N8
\freqGen3|romdata[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[10]~4_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a3\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a3\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[10]~4_combout\);

-- Location: LCCOMB_X15_Y4_N22
\freqGen3|romdata[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[9]~5_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a4\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a4\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[9]~5_combout\);

-- Location: LCCOMB_X14_Y4_N26
\freqGen3|romdata[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[8]~6_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a5\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a5\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[8]~6_combout\);

-- Location: LCFF_X13_Y4_N17
\pwmradio|pwm_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmradio|pwm_counter[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwm_counter\(4));

-- Location: LCCOMB_X14_Y4_N30
\freqGen3|romdata[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[6]~8_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a7\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a7\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[6]~8_combout\);

-- Location: LCCOMB_X14_Y4_N28
\freqGen3|romdata[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[5]~9_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a8\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a8\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[5]~9_combout\);

-- Location: LCCOMB_X15_Y4_N12
\freqGen3|romdata[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[4]~10_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a9\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a9\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[4]~10_combout\);

-- Location: LCCOMB_X15_Y4_N30
\freqGen3|romdata[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \freqGen3|romdata[3]~11_combout\ = \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a10\ $ (\freqGen3|Add2~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \freqGen3|rom|Selector1_rtl_0|auto_generated|ram_block1a10\,
	datad => \freqGen3|Add2~48_combout\,
	combout => \freqGen3|romdata[3]~11_combout\);

-- Location: LCCOMB_X14_Y4_N0
\pwmspeaker|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~1_cout\ = CARRY((!musicdiv(0) & \freqGen3|romdata[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicdiv(0),
	datab => \freqGen3|romdata[3]~11_combout\,
	datad => VCC,
	cout => \pwmspeaker|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y4_N2
\pwmspeaker|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~3_cout\ = CARRY((musicdiv(1) & ((!\pwmspeaker|LessThan0~1_cout\) # (!\freqGen3|romdata[4]~10_combout\))) # (!musicdiv(1) & (!\freqGen3|romdata[4]~10_combout\ & !\pwmspeaker|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => musicdiv(1),
	datab => \freqGen3|romdata[4]~10_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~1_cout\,
	cout => \pwmspeaker|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y4_N4
\pwmspeaker|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~5_cout\ = CARRY((\pwmradio|pwm_counter\(2) & (\freqGen3|romdata[5]~9_combout\ & !\pwmspeaker|LessThan0~3_cout\)) # (!\pwmradio|pwm_counter\(2) & ((\freqGen3|romdata[5]~9_combout\) # (!\pwmspeaker|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(2),
	datab => \freqGen3|romdata[5]~9_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~3_cout\,
	cout => \pwmspeaker|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y4_N6
\pwmspeaker|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~7_cout\ = CARRY((\pwmradio|pwm_counter\(3) & ((!\pwmspeaker|LessThan0~5_cout\) # (!\freqGen3|romdata[6]~8_combout\))) # (!\pwmradio|pwm_counter\(3) & (!\freqGen3|romdata[6]~8_combout\ & !\pwmspeaker|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(3),
	datab => \freqGen3|romdata[6]~8_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~5_cout\,
	cout => \pwmspeaker|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y4_N8
\pwmspeaker|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~9_cout\ = CARRY((\freqGen3|romdata[7]~7_combout\ & ((!\pwmspeaker|LessThan0~7_cout\) # (!\pwmradio|pwm_counter\(4)))) # (!\freqGen3|romdata[7]~7_combout\ & (!\pwmradio|pwm_counter\(4) & !\pwmspeaker|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|romdata[7]~7_combout\,
	datab => \pwmradio|pwm_counter\(4),
	datad => VCC,
	cin => \pwmspeaker|LessThan0~7_cout\,
	cout => \pwmspeaker|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y4_N10
\pwmspeaker|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~11_cout\ = CARRY((\pwmradio|pwm_counter\(5) & ((!\pwmspeaker|LessThan0~9_cout\) # (!\freqGen3|romdata[8]~6_combout\))) # (!\pwmradio|pwm_counter\(5) & (!\freqGen3|romdata[8]~6_combout\ & !\pwmspeaker|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(5),
	datab => \freqGen3|romdata[8]~6_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~9_cout\,
	cout => \pwmspeaker|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y4_N12
\pwmspeaker|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~13_cout\ = CARRY((\pwmradio|pwm_counter\(6) & (\freqGen3|romdata[9]~5_combout\ & !\pwmspeaker|LessThan0~11_cout\)) # (!\pwmradio|pwm_counter\(6) & ((\freqGen3|romdata[9]~5_combout\) # (!\pwmspeaker|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(6),
	datab => \freqGen3|romdata[9]~5_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~11_cout\,
	cout => \pwmspeaker|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y4_N14
\pwmspeaker|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~15_cout\ = CARRY((\pwmradio|pwm_counter\(7) & ((!\pwmspeaker|LessThan0~13_cout\) # (!\freqGen3|romdata[10]~4_combout\))) # (!\pwmradio|pwm_counter\(7) & (!\freqGen3|romdata[10]~4_combout\ & !\pwmspeaker|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(7),
	datab => \freqGen3|romdata[10]~4_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~13_cout\,
	cout => \pwmspeaker|LessThan0~15_cout\);

-- Location: LCCOMB_X14_Y4_N16
\pwmspeaker|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~17_cout\ = CARRY((\pwmradio|pwm_counter\(8) & (\freqGen3|romdata[11]~3_combout\ & !\pwmspeaker|LessThan0~15_cout\)) # (!\pwmradio|pwm_counter\(8) & ((\freqGen3|romdata[11]~3_combout\) # (!\pwmspeaker|LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(8),
	datab => \freqGen3|romdata[11]~3_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~15_cout\,
	cout => \pwmspeaker|LessThan0~17_cout\);

-- Location: LCCOMB_X14_Y4_N18
\pwmspeaker|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~19_cout\ = CARRY((\pwmradio|pwm_counter\(9) & ((!\pwmspeaker|LessThan0~17_cout\) # (!\freqGen3|romdata[12]~2_combout\))) # (!\pwmradio|pwm_counter\(9) & (!\freqGen3|romdata[12]~2_combout\ & !\pwmspeaker|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(9),
	datab => \freqGen3|romdata[12]~2_combout\,
	datad => VCC,
	cin => \pwmspeaker|LessThan0~17_cout\,
	cout => \pwmspeaker|LessThan0~19_cout\);

-- Location: LCCOMB_X14_Y4_N20
\pwmspeaker|LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~21_cout\ = CARRY((\freqGen3|romdata[13]~1_combout\ & ((!\pwmspeaker|LessThan0~19_cout\) # (!\pwmradio|pwm_counter\(10)))) # (!\freqGen3|romdata[13]~1_combout\ & (!\pwmradio|pwm_counter\(10) & !\pwmspeaker|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \freqGen3|romdata[13]~1_combout\,
	datab => \pwmradio|pwm_counter\(10),
	datad => VCC,
	cin => \pwmspeaker|LessThan0~19_cout\,
	cout => \pwmspeaker|LessThan0~21_cout\);

-- Location: LCCOMB_X14_Y4_N22
\pwmspeaker|LessThan0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pwmspeaker|LessThan0~22_combout\ = (\pwmradio|pwm_counter\(11) & (\pwmspeaker|LessThan0~21_cout\ & \freqGen3|romdata[14]~0_combout\)) # (!\pwmradio|pwm_counter\(11) & ((\pwmspeaker|LessThan0~21_cout\) # (\freqGen3|romdata[14]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pwmradio|pwm_counter\(11),
	datad => \freqGen3|romdata[14]~0_combout\,
	cin => \pwmspeaker|LessThan0~21_cout\,
	combout => \pwmspeaker|LessThan0~22_combout\);

-- Location: LCFF_X14_Y4_N23
\pwmspeaker|pwmpin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \pwmspeaker|LessThan0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmspeaker|pwmpin~regout\);

-- Location: LCFF_X14_Y4_N29
\pwmradio|pwmpin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \pwmspeaker|LessThan0~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pwmradio|pwmpin~regout\);

-- Location: LCCOMB_X22_Y2_N12
\env|currentGain[24]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[24]~68_combout\ = (\env|currentGain\(24) & (\env|currentGain[23]~67\ $ (GND))) # (!\env|currentGain\(24) & (!\env|currentGain[23]~67\ & VCC))
-- \env|currentGain[24]~69\ = CARRY((\env|currentGain\(24) & !\env|currentGain[23]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(24),
	datad => VCC,
	cin => \env|currentGain[23]~67\,
	combout => \env|currentGain[24]~68_combout\,
	cout => \env|currentGain[24]~69\);

-- Location: LCCOMB_X22_Y2_N14
\env|currentGain[25]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[25]~71_combout\ = (\env|currentGain\(25) & (!\env|currentGain[24]~69\)) # (!\env|currentGain\(25) & ((\env|currentGain[24]~69\) # (GND)))
-- \env|currentGain[25]~72\ = CARRY((!\env|currentGain[24]~69\) # (!\env|currentGain\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(25),
	datad => VCC,
	cin => \env|currentGain[24]~69\,
	combout => \env|currentGain[25]~71_combout\,
	cout => \env|currentGain[25]~72\);

-- Location: LCCOMB_X22_Y2_N28
\env|currentGain[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[23]~70_combout\ = (\env|state.STATE_RELEASE~regout\) # (\env|state.STATE_SUSTAIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \env|state.STATE_RELEASE~regout\,
	datad => \env|state.STATE_SUSTAIN~regout\,
	combout => \env|currentGain[23]~70_combout\);

-- Location: LCFF_X22_Y2_N15
\env|currentGain[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[25]~71_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(25));

-- Location: LCCOMB_X22_Y2_N16
\env|currentGain[26]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[26]~73_combout\ = (\env|currentGain\(26) & (\env|currentGain[25]~72\ $ (GND))) # (!\env|currentGain\(26) & (!\env|currentGain[25]~72\ & VCC))
-- \env|currentGain[26]~74\ = CARRY((\env|currentGain\(26) & !\env|currentGain[25]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(26),
	datad => VCC,
	cin => \env|currentGain[25]~72\,
	combout => \env|currentGain[26]~73_combout\,
	cout => \env|currentGain[26]~74\);

-- Location: LCCOMB_X22_Y2_N18
\env|currentGain[27]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[27]~75_combout\ = (\env|currentGain\(27) & (!\env|currentGain[26]~74\)) # (!\env|currentGain\(27) & ((\env|currentGain[26]~74\) # (GND)))
-- \env|currentGain[27]~76\ = CARRY((!\env|currentGain[26]~74\) # (!\env|currentGain\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(27),
	datad => VCC,
	cin => \env|currentGain[26]~74\,
	combout => \env|currentGain[27]~75_combout\,
	cout => \env|currentGain[27]~76\);

-- Location: LCFF_X22_Y2_N19
\env|currentGain[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[27]~75_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(27));

-- Location: LCCOMB_X22_Y2_N20
\env|currentGain[28]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[28]~77_combout\ = (\env|currentGain\(28) & (\env|currentGain[27]~76\ $ (GND))) # (!\env|currentGain\(28) & (!\env|currentGain[27]~76\ & VCC))
-- \env|currentGain[28]~78\ = CARRY((\env|currentGain\(28) & !\env|currentGain[27]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(28),
	datad => VCC,
	cin => \env|currentGain[27]~76\,
	combout => \env|currentGain[28]~77_combout\,
	cout => \env|currentGain[28]~78\);

-- Location: LCCOMB_X22_Y2_N22
\env|currentGain[29]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[29]~80_combout\ = (\env|currentGain\(29) & (!\env|currentGain[28]~78\)) # (!\env|currentGain\(29) & ((\env|currentGain[28]~78\) # (GND)))
-- \env|currentGain[29]~81\ = CARRY((!\env|currentGain[28]~78\) # (!\env|currentGain\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(29),
	datad => VCC,
	cin => \env|currentGain[28]~78\,
	combout => \env|currentGain[29]~80_combout\,
	cout => \env|currentGain[29]~81\);

-- Location: LCFF_X22_Y2_N23
\env|currentGain[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[29]~80_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(29));

-- Location: LCCOMB_X22_Y2_N26
\env|currentGain[31]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[31]~84_combout\ = \env|currentGain[30]~83\ $ (\env|currentGain\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \env|currentGain\(31),
	cin => \env|currentGain[30]~83\,
	combout => \env|currentGain[31]~84_combout\);

-- Location: LCFF_X22_Y2_N27
\env|currentGain[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[31]~84_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(31));

-- Location: LCFF_X22_Y2_N21
\env|currentGain[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[28]~77_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(28));

-- Location: LCCOMB_X22_Y2_N30
\env|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Equal2~0_combout\ = (!\env|currentGain\(30) & (!\env|currentGain\(31) & (!\env|currentGain\(28) & !\env|currentGain\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|currentGain\(30),
	datab => \env|currentGain\(31),
	datac => \env|currentGain\(28),
	datad => \env|currentGain\(29),
	combout => \env|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y2_N0
\env|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector4~2_combout\ = (\btn~combout\ & (((\env|state.STATE_RELEASE~regout\ & !\env|Equal2~0_combout\)))) # (!\btn~combout\ & ((\env|state.STATE_SUSTAIN~regout\) # ((\env|state.STATE_RELEASE~regout\ & !\env|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \env|state.STATE_SUSTAIN~regout\,
	datac => \env|state.STATE_RELEASE~regout\,
	datad => \env|Equal2~0_combout\,
	combout => \env|Selector4~2_combout\);

-- Location: LCFF_X21_Y2_N1
\env|state.STATE_RELEASE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|state.STATE_RELEASE~regout\);

-- Location: LCCOMB_X21_Y2_N4
\env|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~1_combout\ = (!\btn~combout\ & \env|state.STATE_SUSTAIN~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \btn~combout\,
	datad => \env|state.STATE_SUSTAIN~regout\,
	combout => \env|Selector2~1_combout\);

-- Location: LCCOMB_X21_Y2_N18
\env|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector0~0_combout\ = (\btn~combout\ & (((!\env|Equal2~0_combout\)) # (!\env|state.STATE_RELEASE~regout\))) # (!\btn~combout\ & (\env|state.STATE_IDLE~regout\ & ((!\env|Equal2~0_combout\) # (!\env|state.STATE_RELEASE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \env|state.STATE_RELEASE~regout\,
	datac => \env|state.STATE_IDLE~regout\,
	datad => \env|Equal2~0_combout\,
	combout => \env|Selector0~0_combout\);

-- Location: LCFF_X21_Y2_N19
\env|state.STATE_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|state.STATE_IDLE~regout\);

-- Location: LCCOMB_X21_Y2_N22
\env|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector3~1_combout\ = (!\env|state.STATE_DECAY~regout\ & !\env|state.STATE_RELEASE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \env|state.STATE_DECAY~regout\,
	datad => \env|state.STATE_RELEASE~regout\,
	combout => \env|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y2_N30
\env|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~3_combout\ = (\env|Selector2~2_combout\ & ((\env|currentGain\(31)) # ((!\env|Selector3~1_combout\ & \env|Equal2~0_combout\)))) # (!\env|Selector2~2_combout\ & (!\env|Selector3~1_combout\ & ((\env|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|Selector2~2_combout\,
	datab => \env|Selector3~1_combout\,
	datac => \env|currentGain\(31),
	datad => \env|Equal2~0_combout\,
	combout => \env|Selector2~3_combout\);

-- Location: LCCOMB_X21_Y2_N12
\env|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~4_combout\ = (\env|state.STATE_DECAY~regout\ & (!\env|Selector2~3_combout\ & ((\env|state.STATE_IDLE~regout\) # (!\btn~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \btn~combout\,
	datab => \env|state.STATE_IDLE~regout\,
	datac => \env|state.STATE_DECAY~regout\,
	datad => \env|Selector2~3_combout\,
	combout => \env|Selector2~4_combout\);

-- Location: LCCOMB_X21_Y2_N8
\env|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector2~5_combout\ = (!\env|Selector2~1_combout\ & ((\env|Selector2~4_combout\) # ((\env|Selector2~2_combout\ & \env|currentGain\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|Selector2~2_combout\,
	datab => \env|Selector2~1_combout\,
	datac => \env|currentGain\(31),
	datad => \env|Selector2~4_combout\,
	combout => \env|Selector2~5_combout\);

-- Location: LCFF_X21_Y2_N9
\env|state.STATE_DECAY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|Selector2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|state.STATE_DECAY~regout\);

-- Location: LCCOMB_X21_Y2_N26
\env|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|Selector3~3_combout\ = (\env|Equal2~0_combout\ & (!\env|state.STATE_RELEASE~regout\ & ((\env|Selector3~2_combout\) # (\env|state.STATE_DECAY~regout\)))) # (!\env|Equal2~0_combout\ & (\env|Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|Selector3~2_combout\,
	datab => \env|state.STATE_RELEASE~regout\,
	datac => \env|state.STATE_DECAY~regout\,
	datad => \env|Equal2~0_combout\,
	combout => \env|Selector3~3_combout\);

-- Location: LCFF_X21_Y2_N27
\env|state.STATE_SUSTAIN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|state.STATE_SUSTAIN~regout\);

-- Location: LCCOMB_X22_Y3_N0
\env|currentGain[3]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[3]~79_combout\ = (\env|state.STATE_RELEASE~regout\ & (!\env|currentGain\(3))) # (!\env|state.STATE_RELEASE~regout\ & (\env|currentGain\(3) & !\env|state.STATE_SUSTAIN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \env|state.STATE_RELEASE~regout\,
	datac => \env|currentGain\(3),
	datad => \env|state.STATE_SUSTAIN~regout\,
	combout => \env|currentGain[3]~79_combout\);

-- Location: LCFF_X22_Y3_N1
\env|currentGain[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[3]~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(3));

-- Location: LCCOMB_X22_Y3_N8
\env|currentGain[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[6]~32_combout\ = (\env|currentGain\(6) & (\env|currentGain[5]~31\ $ (GND))) # (!\env|currentGain\(6) & (!\env|currentGain[5]~31\ & VCC))
-- \env|currentGain[6]~33\ = CARRY((\env|currentGain\(6) & !\env|currentGain[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(6),
	datad => VCC,
	cin => \env|currentGain[5]~31\,
	combout => \env|currentGain[6]~32_combout\,
	cout => \env|currentGain[6]~33\);

-- Location: LCFF_X22_Y3_N9
\env|currentGain[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[6]~32_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(6));

-- Location: LCCOMB_X22_Y3_N12
\env|currentGain[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[8]~36_combout\ = (\env|currentGain\(8) & (\env|currentGain[7]~35\ $ (GND))) # (!\env|currentGain\(8) & (!\env|currentGain[7]~35\ & VCC))
-- \env|currentGain[8]~37\ = CARRY((\env|currentGain\(8) & !\env|currentGain[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(8),
	datad => VCC,
	cin => \env|currentGain[7]~35\,
	combout => \env|currentGain[8]~36_combout\,
	cout => \env|currentGain[8]~37\);

-- Location: LCFF_X22_Y3_N13
\env|currentGain[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[8]~36_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(8));

-- Location: LCCOMB_X22_Y3_N14
\env|currentGain[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[9]~38_combout\ = (\env|currentGain\(9) & (!\env|currentGain[8]~37\)) # (!\env|currentGain\(9) & ((\env|currentGain[8]~37\) # (GND)))
-- \env|currentGain[9]~39\ = CARRY((!\env|currentGain[8]~37\) # (!\env|currentGain\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(9),
	datad => VCC,
	cin => \env|currentGain[8]~37\,
	combout => \env|currentGain[9]~38_combout\,
	cout => \env|currentGain[9]~39\);

-- Location: LCFF_X22_Y3_N15
\env|currentGain[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[9]~38_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(9));

-- Location: LCCOMB_X22_Y3_N18
\env|currentGain[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[11]~42_combout\ = (\env|currentGain\(11) & (!\env|currentGain[10]~41\)) # (!\env|currentGain\(11) & ((\env|currentGain[10]~41\) # (GND)))
-- \env|currentGain[11]~43\ = CARRY((!\env|currentGain[10]~41\) # (!\env|currentGain\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(11),
	datad => VCC,
	cin => \env|currentGain[10]~41\,
	combout => \env|currentGain[11]~42_combout\,
	cout => \env|currentGain[11]~43\);

-- Location: LCFF_X22_Y3_N19
\env|currentGain[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[11]~42_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(11));

-- Location: LCCOMB_X22_Y3_N20
\env|currentGain[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[12]~44_combout\ = (\env|currentGain\(12) & (\env|currentGain[11]~43\ $ (GND))) # (!\env|currentGain\(12) & (!\env|currentGain[11]~43\ & VCC))
-- \env|currentGain[12]~45\ = CARRY((\env|currentGain\(12) & !\env|currentGain[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(12),
	datad => VCC,
	cin => \env|currentGain[11]~43\,
	combout => \env|currentGain[12]~44_combout\,
	cout => \env|currentGain[12]~45\);

-- Location: LCFF_X22_Y3_N21
\env|currentGain[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[12]~44_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(12));

-- Location: LCCOMB_X22_Y3_N22
\env|currentGain[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[13]~46_combout\ = (\env|currentGain\(13) & (!\env|currentGain[12]~45\)) # (!\env|currentGain\(13) & ((\env|currentGain[12]~45\) # (GND)))
-- \env|currentGain[13]~47\ = CARRY((!\env|currentGain[12]~45\) # (!\env|currentGain\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(13),
	datad => VCC,
	cin => \env|currentGain[12]~45\,
	combout => \env|currentGain[13]~46_combout\,
	cout => \env|currentGain[13]~47\);

-- Location: LCFF_X22_Y3_N23
\env|currentGain[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[13]~46_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(13));

-- Location: LCCOMB_X22_Y3_N24
\env|currentGain[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[14]~48_combout\ = (\env|currentGain\(14) & (\env|currentGain[13]~47\ $ (GND))) # (!\env|currentGain\(14) & (!\env|currentGain[13]~47\ & VCC))
-- \env|currentGain[14]~49\ = CARRY((\env|currentGain\(14) & !\env|currentGain[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(14),
	datad => VCC,
	cin => \env|currentGain[13]~47\,
	combout => \env|currentGain[14]~48_combout\,
	cout => \env|currentGain[14]~49\);

-- Location: LCFF_X22_Y3_N25
\env|currentGain[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[14]~48_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(14));

-- Location: LCCOMB_X22_Y3_N26
\env|currentGain[15]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[15]~50_combout\ = (\env|currentGain\(15) & (!\env|currentGain[14]~49\)) # (!\env|currentGain\(15) & ((\env|currentGain[14]~49\) # (GND)))
-- \env|currentGain[15]~51\ = CARRY((!\env|currentGain[14]~49\) # (!\env|currentGain\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(15),
	datad => VCC,
	cin => \env|currentGain[14]~49\,
	combout => \env|currentGain[15]~50_combout\,
	cout => \env|currentGain[15]~51\);

-- Location: LCFF_X22_Y3_N27
\env|currentGain[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[15]~50_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(15));

-- Location: LCCOMB_X22_Y3_N28
\env|currentGain[16]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[16]~52_combout\ = (\env|currentGain\(16) & (\env|currentGain[15]~51\ $ (GND))) # (!\env|currentGain\(16) & (!\env|currentGain[15]~51\ & VCC))
-- \env|currentGain[16]~53\ = CARRY((\env|currentGain\(16) & !\env|currentGain[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(16),
	datad => VCC,
	cin => \env|currentGain[15]~51\,
	combout => \env|currentGain[16]~52_combout\,
	cout => \env|currentGain[16]~53\);

-- Location: LCFF_X22_Y3_N29
\env|currentGain[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[16]~52_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(16));

-- Location: LCCOMB_X22_Y3_N30
\env|currentGain[17]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[17]~54_combout\ = (\env|currentGain\(17) & (!\env|currentGain[16]~53\)) # (!\env|currentGain\(17) & ((\env|currentGain[16]~53\) # (GND)))
-- \env|currentGain[17]~55\ = CARRY((!\env|currentGain[16]~53\) # (!\env|currentGain\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(17),
	datad => VCC,
	cin => \env|currentGain[16]~53\,
	combout => \env|currentGain[17]~54_combout\,
	cout => \env|currentGain[17]~55\);

-- Location: LCFF_X22_Y3_N31
\env|currentGain[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[17]~54_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(17));

-- Location: LCCOMB_X22_Y2_N0
\env|currentGain[18]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[18]~56_combout\ = (\env|currentGain\(18) & (\env|currentGain[17]~55\ $ (GND))) # (!\env|currentGain\(18) & (!\env|currentGain[17]~55\ & VCC))
-- \env|currentGain[18]~57\ = CARRY((\env|currentGain\(18) & !\env|currentGain[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(18),
	datad => VCC,
	cin => \env|currentGain[17]~55\,
	combout => \env|currentGain[18]~56_combout\,
	cout => \env|currentGain[18]~57\);

-- Location: LCFF_X22_Y2_N1
\env|currentGain[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[18]~56_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(18));

-- Location: LCCOMB_X22_Y2_N2
\env|currentGain[19]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[19]~58_combout\ = (\env|currentGain\(19) & (!\env|currentGain[18]~57\)) # (!\env|currentGain\(19) & ((\env|currentGain[18]~57\) # (GND)))
-- \env|currentGain[19]~59\ = CARRY((!\env|currentGain[18]~57\) # (!\env|currentGain\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(19),
	datad => VCC,
	cin => \env|currentGain[18]~57\,
	combout => \env|currentGain[19]~58_combout\,
	cout => \env|currentGain[19]~59\);

-- Location: LCFF_X22_Y2_N3
\env|currentGain[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[19]~58_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(19));

-- Location: LCCOMB_X22_Y2_N4
\env|currentGain[20]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[20]~60_combout\ = (\env|currentGain\(20) & (\env|currentGain[19]~59\ $ (GND))) # (!\env|currentGain\(20) & (!\env|currentGain[19]~59\ & VCC))
-- \env|currentGain[20]~61\ = CARRY((\env|currentGain\(20) & !\env|currentGain[19]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(20),
	datad => VCC,
	cin => \env|currentGain[19]~59\,
	combout => \env|currentGain[20]~60_combout\,
	cout => \env|currentGain[20]~61\);

-- Location: LCFF_X22_Y2_N5
\env|currentGain[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[20]~60_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(20));

-- Location: LCCOMB_X22_Y2_N8
\env|currentGain[22]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \env|currentGain[22]~64_combout\ = (\env|currentGain\(22) & (\env|currentGain[21]~63\ $ (GND))) # (!\env|currentGain\(22) & (!\env|currentGain[21]~63\ & VCC))
-- \env|currentGain[22]~65\ = CARRY((\env|currentGain\(22) & !\env|currentGain[21]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \env|currentGain\(22),
	datad => VCC,
	cin => \env|currentGain[21]~63\,
	combout => \env|currentGain[22]~64_combout\,
	cout => \env|currentGain[22]~65\);

-- Location: LCFF_X22_Y2_N9
\env|currentGain[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[22]~64_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(22));

-- Location: LCFF_X22_Y2_N13
\env|currentGain[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[24]~68_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(24));

-- Location: LCFF_X22_Y2_N17
\env|currentGain[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \env|currentGain[26]~73_combout\,
	sclr => \env|ALT_INV_state.STATE_RELEASE~regout\,
	ena => \env|currentGain[23]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \env|currentGain\(26));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \blinker|rled~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \blinker|ALT_INV_rled~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led2);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\led3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \btn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_led3);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\speaker~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pwmspeaker|pwmpin~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_speaker);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\radio~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pwmradio|pwmpin~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_radio);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \env|currentGain\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(0));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \env|currentGain\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(1));

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \env|currentGain\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(2));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \env|currentGain\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(3));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \env|currentGain\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(5));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(6));

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\u8bit_sineromvalue[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_u8bit_sineromvalue(7));
END structure;


