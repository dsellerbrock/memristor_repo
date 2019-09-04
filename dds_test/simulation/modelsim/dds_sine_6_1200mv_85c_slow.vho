-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/02/2019 17:17:31"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dds_sine IS
    PORT (
	i_clk : IN std_logic;
	i_rstb : IN std_logic;
	i_sync_reset : IN std_logic;
	i_fcw : IN std_logic_vector(31 DOWNTO 0);
	i_start_phase : IN std_logic_vector(31 DOWNTO 0);
	o_sine : BUFFER std_logic_vector(13 DOWNTO 0)
	);
END dds_sine;

-- Design Ports Information
-- o_sine[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[5]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[7]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[9]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[10]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[11]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[12]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_sine[13]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_rstb	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[19]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[18]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[17]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[16]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[15]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[14]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[13]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[12]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[11]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[8]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[6]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[5]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[4]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[19]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_sync_reset	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[20]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[20]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[21]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[21]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[22]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[22]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[23]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[23]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[24]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[24]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[25]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[25]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[26]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[26]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[27]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[27]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[28]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[28]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[29]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[29]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[30]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[30]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_fcw[31]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[31]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[18]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[17]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[16]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[15]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[14]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[11]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[8]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_start_phase[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dds_sine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rstb : std_logic;
SIGNAL ww_i_sync_reset : std_logic;
SIGNAL ww_i_fcw : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_i_start_phase : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_o_sine : std_logic_vector(13 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \Mux13_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i_rstb~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \o_sine[0]~output_o\ : std_logic;
SIGNAL \o_sine[1]~output_o\ : std_logic;
SIGNAL \o_sine[2]~output_o\ : std_logic;
SIGNAL \o_sine[3]~output_o\ : std_logic;
SIGNAL \o_sine[4]~output_o\ : std_logic;
SIGNAL \o_sine[5]~output_o\ : std_logic;
SIGNAL \o_sine[6]~output_o\ : std_logic;
SIGNAL \o_sine[7]~output_o\ : std_logic;
SIGNAL \o_sine[8]~output_o\ : std_logic;
SIGNAL \o_sine[9]~output_o\ : std_logic;
SIGNAL \o_sine[10]~output_o\ : std_logic;
SIGNAL \o_sine[11]~output_o\ : std_logic;
SIGNAL \o_sine[12]~output_o\ : std_logic;
SIGNAL \o_sine[13]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_rstb~input_o\ : std_logic;
SIGNAL \i_rstb~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_fcw[19]~input_o\ : std_logic;
SIGNAL \r_fcw[19]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[18]~input_o\ : std_logic;
SIGNAL \r_fcw[18]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[17]~input_o\ : std_logic;
SIGNAL \r_fcw[17]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[16]~input_o\ : std_logic;
SIGNAL \r_fcw[16]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[15]~input_o\ : std_logic;
SIGNAL \r_fcw[15]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[14]~input_o\ : std_logic;
SIGNAL \r_fcw[14]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[13]~input_o\ : std_logic;
SIGNAL \r_fcw[13]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[12]~input_o\ : std_logic;
SIGNAL \r_fcw[12]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[11]~input_o\ : std_logic;
SIGNAL \r_fcw[11]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[10]~input_o\ : std_logic;
SIGNAL \r_fcw[10]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[9]~input_o\ : std_logic;
SIGNAL \r_fcw[9]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[8]~input_o\ : std_logic;
SIGNAL \i_fcw[7]~input_o\ : std_logic;
SIGNAL \i_fcw[6]~input_o\ : std_logic;
SIGNAL \i_fcw[5]~input_o\ : std_logic;
SIGNAL \i_fcw[4]~input_o\ : std_logic;
SIGNAL \i_fcw[3]~input_o\ : std_logic;
SIGNAL \i_fcw[2]~input_o\ : std_logic;
SIGNAL \i_fcw[1]~input_o\ : std_logic;
SIGNAL \i_fcw[0]~input_o\ : std_logic;
SIGNAL \r_nco[0]~32_combout\ : std_logic;
SIGNAL \r_nco[0]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[0]~input_o\ : std_logic;
SIGNAL \r_start_phase[0]~feeder_combout\ : std_logic;
SIGNAL \i_sync_reset~input_o\ : std_logic;
SIGNAL \r_sync_reset~0_combout\ : std_logic;
SIGNAL \r_sync_reset~q\ : std_logic;
SIGNAL \r_nco[0]~33\ : std_logic;
SIGNAL \r_nco[1]~34_combout\ : std_logic;
SIGNAL \r_nco[1]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[1]~input_o\ : std_logic;
SIGNAL \r_start_phase[1]~feeder_combout\ : std_logic;
SIGNAL \r_nco[1]~35\ : std_logic;
SIGNAL \r_nco[2]~36_combout\ : std_logic;
SIGNAL \r_nco[2]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[2]~input_o\ : std_logic;
SIGNAL \r_start_phase[2]~feeder_combout\ : std_logic;
SIGNAL \r_nco[2]~37\ : std_logic;
SIGNAL \r_nco[3]~38_combout\ : std_logic;
SIGNAL \r_nco[3]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[3]~input_o\ : std_logic;
SIGNAL \r_start_phase[3]~feeder_combout\ : std_logic;
SIGNAL \r_nco[3]~39\ : std_logic;
SIGNAL \r_nco[4]~40_combout\ : std_logic;
SIGNAL \r_nco[4]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[4]~input_o\ : std_logic;
SIGNAL \r_start_phase[4]~feeder_combout\ : std_logic;
SIGNAL \r_nco[4]~41\ : std_logic;
SIGNAL \r_nco[5]~42_combout\ : std_logic;
SIGNAL \r_nco[5]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[5]~input_o\ : std_logic;
SIGNAL \r_start_phase[5]~feeder_combout\ : std_logic;
SIGNAL \r_nco[5]~43\ : std_logic;
SIGNAL \r_nco[6]~44_combout\ : std_logic;
SIGNAL \r_nco[6]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[6]~input_o\ : std_logic;
SIGNAL \r_start_phase[6]~feeder_combout\ : std_logic;
SIGNAL \r_nco[6]~45\ : std_logic;
SIGNAL \r_nco[7]~46_combout\ : std_logic;
SIGNAL \r_nco[7]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[7]~input_o\ : std_logic;
SIGNAL \r_start_phase[7]~feeder_combout\ : std_logic;
SIGNAL \r_nco[7]~47\ : std_logic;
SIGNAL \r_nco[8]~48_combout\ : std_logic;
SIGNAL \r_nco[8]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[8]~input_o\ : std_logic;
SIGNAL \r_start_phase[8]~feeder_combout\ : std_logic;
SIGNAL \r_nco[8]~49\ : std_logic;
SIGNAL \r_nco[9]~50_combout\ : std_logic;
SIGNAL \r_nco[9]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[9]~input_o\ : std_logic;
SIGNAL \r_start_phase[9]~feeder_combout\ : std_logic;
SIGNAL \r_nco[9]~51\ : std_logic;
SIGNAL \r_nco[10]~52_combout\ : std_logic;
SIGNAL \r_nco[10]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[10]~input_o\ : std_logic;
SIGNAL \r_start_phase[10]~feeder_combout\ : std_logic;
SIGNAL \r_nco[10]~53\ : std_logic;
SIGNAL \r_nco[11]~54_combout\ : std_logic;
SIGNAL \r_nco[11]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[11]~input_o\ : std_logic;
SIGNAL \r_start_phase[11]~feeder_combout\ : std_logic;
SIGNAL \r_nco[11]~55\ : std_logic;
SIGNAL \r_nco[12]~56_combout\ : std_logic;
SIGNAL \r_nco[12]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[12]~input_o\ : std_logic;
SIGNAL \r_start_phase[12]~feeder_combout\ : std_logic;
SIGNAL \r_nco[12]~57\ : std_logic;
SIGNAL \r_nco[13]~58_combout\ : std_logic;
SIGNAL \r_nco[13]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[13]~input_o\ : std_logic;
SIGNAL \r_start_phase[13]~feeder_combout\ : std_logic;
SIGNAL \r_nco[13]~59\ : std_logic;
SIGNAL \r_nco[14]~60_combout\ : std_logic;
SIGNAL \r_nco[14]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[14]~input_o\ : std_logic;
SIGNAL \r_start_phase[14]~feeder_combout\ : std_logic;
SIGNAL \r_nco[14]~61\ : std_logic;
SIGNAL \r_nco[15]~62_combout\ : std_logic;
SIGNAL \r_nco[15]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[15]~input_o\ : std_logic;
SIGNAL \r_start_phase[15]~feeder_combout\ : std_logic;
SIGNAL \r_nco[15]~63\ : std_logic;
SIGNAL \r_nco[16]~64_combout\ : std_logic;
SIGNAL \r_nco[16]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[16]~input_o\ : std_logic;
SIGNAL \r_start_phase[16]~feeder_combout\ : std_logic;
SIGNAL \r_nco[16]~65\ : std_logic;
SIGNAL \r_nco[17]~66_combout\ : std_logic;
SIGNAL \i_start_phase[17]~input_o\ : std_logic;
SIGNAL \r_start_phase[17]~feeder_combout\ : std_logic;
SIGNAL \r_nco[17]~67\ : std_logic;
SIGNAL \r_nco[18]~68_combout\ : std_logic;
SIGNAL \r_nco[18]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[18]~input_o\ : std_logic;
SIGNAL \r_start_phase[18]~feeder_combout\ : std_logic;
SIGNAL \r_nco[18]~69\ : std_logic;
SIGNAL \r_nco[19]~70_combout\ : std_logic;
SIGNAL \i_start_phase[19]~input_o\ : std_logic;
SIGNAL \r_start_phase[19]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[0]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[20]~input_o\ : std_logic;
SIGNAL \r_fcw[20]~feeder_combout\ : std_logic;
SIGNAL \r_nco[19]~71\ : std_logic;
SIGNAL \r_nco[20]~72_combout\ : std_logic;
SIGNAL \i_start_phase[20]~input_o\ : std_logic;
SIGNAL \r_start_phase[20]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[1]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[21]~input_o\ : std_logic;
SIGNAL \r_fcw[21]~feeder_combout\ : std_logic;
SIGNAL \r_nco[20]~73\ : std_logic;
SIGNAL \r_nco[21]~74_combout\ : std_logic;
SIGNAL \r_nco[21]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[21]~input_o\ : std_logic;
SIGNAL \lut_addr[2]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[22]~input_o\ : std_logic;
SIGNAL \r_fcw[22]~feeder_combout\ : std_logic;
SIGNAL \r_nco[21]~75\ : std_logic;
SIGNAL \r_nco[22]~76_combout\ : std_logic;
SIGNAL \r_nco[22]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[22]~input_o\ : std_logic;
SIGNAL \r_start_phase[22]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[3]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[23]~input_o\ : std_logic;
SIGNAL \r_fcw[23]~feeder_combout\ : std_logic;
SIGNAL \r_nco[22]~77\ : std_logic;
SIGNAL \r_nco[23]~78_combout\ : std_logic;
SIGNAL \r_nco[23]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[23]~input_o\ : std_logic;
SIGNAL \lut_addr[4]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[24]~input_o\ : std_logic;
SIGNAL \r_nco[23]~79\ : std_logic;
SIGNAL \r_nco[24]~80_combout\ : std_logic;
SIGNAL \r_nco[24]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[24]~input_o\ : std_logic;
SIGNAL \r_start_phase[24]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[5]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[25]~input_o\ : std_logic;
SIGNAL \r_nco[24]~81\ : std_logic;
SIGNAL \r_nco[25]~82_combout\ : std_logic;
SIGNAL \r_nco[25]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[25]~input_o\ : std_logic;
SIGNAL \lut_addr[6]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[26]~input_o\ : std_logic;
SIGNAL \r_fcw[26]~feeder_combout\ : std_logic;
SIGNAL \r_nco[25]~83\ : std_logic;
SIGNAL \r_nco[26]~84_combout\ : std_logic;
SIGNAL \r_nco[26]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[26]~input_o\ : std_logic;
SIGNAL \r_start_phase[26]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[7]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[27]~input_o\ : std_logic;
SIGNAL \r_fcw[27]~feeder_combout\ : std_logic;
SIGNAL \r_nco[26]~85\ : std_logic;
SIGNAL \r_nco[27]~86_combout\ : std_logic;
SIGNAL \r_nco[27]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[27]~input_o\ : std_logic;
SIGNAL \lut_addr[8]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[28]~input_o\ : std_logic;
SIGNAL \r_fcw[28]~feeder_combout\ : std_logic;
SIGNAL \r_nco[27]~87\ : std_logic;
SIGNAL \r_nco[28]~88_combout\ : std_logic;
SIGNAL \i_start_phase[28]~input_o\ : std_logic;
SIGNAL \r_start_phase[28]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[9]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[29]~input_o\ : std_logic;
SIGNAL \r_fcw[29]~feeder_combout\ : std_logic;
SIGNAL \r_nco[28]~89\ : std_logic;
SIGNAL \r_nco[29]~90_combout\ : std_logic;
SIGNAL \i_start_phase[29]~input_o\ : std_logic;
SIGNAL \r_start_phase[29]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[10]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[30]~input_o\ : std_logic;
SIGNAL \r_fcw[30]~feeder_combout\ : std_logic;
SIGNAL \r_nco[29]~91\ : std_logic;
SIGNAL \r_nco[30]~92_combout\ : std_logic;
SIGNAL \r_nco[30]~feeder_combout\ : std_logic;
SIGNAL \i_start_phase[30]~input_o\ : std_logic;
SIGNAL \r_start_phase[30]~feeder_combout\ : std_logic;
SIGNAL \lut_addr[11]~feeder_combout\ : std_logic;
SIGNAL \i_fcw[31]~input_o\ : std_logic;
SIGNAL \r_fcw[31]~feeder_combout\ : std_logic;
SIGNAL \r_nco[30]~93\ : std_logic;
SIGNAL \r_nco[31]~94_combout\ : std_logic;
SIGNAL \i_start_phase[31]~input_o\ : std_logic;
SIGNAL \lut_addr[12]~feeder_combout\ : std_logic;
SIGNAL \o_sine[0]~reg0\ : std_logic;
SIGNAL \o_sine[1]~reg0\ : std_logic;
SIGNAL \o_sine[2]~reg0\ : std_logic;
SIGNAL \o_sine[3]~reg0\ : std_logic;
SIGNAL \o_sine[4]~reg0\ : std_logic;
SIGNAL \o_sine[5]~reg0\ : std_logic;
SIGNAL \o_sine[6]~reg0\ : std_logic;
SIGNAL \o_sine[7]~reg0\ : std_logic;
SIGNAL \o_sine[8]~reg0\ : std_logic;
SIGNAL \o_sine[9]~reg0\ : std_logic;
SIGNAL \o_sine[10]~reg0\ : std_logic;
SIGNAL \o_sine[11]~reg0\ : std_logic;
SIGNAL \o_sine[12]~reg0\ : std_logic;
SIGNAL \o_sine[13]~reg0\ : std_logic;
SIGNAL r_nco : std_logic_vector(31 DOWNTO 0);
SIGNAL lut_addr : std_logic_vector(12 DOWNTO 0);
SIGNAL r_fcw : std_logic_vector(31 DOWNTO 0);
SIGNAL r_start_phase : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_i_rstb~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_r_sync_reset~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_i_clk <= i_clk;
ww_i_rstb <= i_rstb;
ww_i_sync_reset <= i_sync_reset;
ww_i_fcw <= i_fcw;
ww_i_start_phase <= i_start_phase;
o_sine <= ww_o_sine;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mux13_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[0]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[1]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[2]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[3]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[4]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[5]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[6]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[7]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[8]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[9]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[10]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[11]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[12]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\Mux13_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (lut_addr(12) & lut_addr(11) & lut_addr(10) & lut_addr(9) & lut_addr(8) & lut_addr(7) & lut_addr(6) & lut_addr(5) & lut_addr(4) & lut_addr(3) & lut_addr(2) & lut_addr(1) & 
lut_addr(0));

\o_sine[13]~reg0\ <= \Mux13_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\i_rstb~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_rstb~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_rstb~inputclkctrl_outclk\ <= NOT \i_rstb~inputclkctrl_outclk\;
\ALT_INV_r_sync_reset~q\ <= NOT \r_sync_reset~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N23
\o_sine[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[0]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\o_sine[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[1]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\o_sine[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[2]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[2]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\o_sine[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[3]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\o_sine[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[4]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[4]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\o_sine[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[5]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\o_sine[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[6]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[6]~output_o\);

-- Location: IOOBUF_X3_Y24_N2
\o_sine[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[7]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\o_sine[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[8]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[8]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\o_sine[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[9]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[9]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\o_sine[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[10]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[10]~output_o\);

-- Location: IOOBUF_X3_Y24_N9
\o_sine[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[11]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[11]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\o_sine[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[12]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[12]~output_o\);

-- Location: IOOBUF_X32_Y24_N16
\o_sine[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \o_sine[13]~reg0\,
	devoe => ww_devoe,
	o => \o_sine[13]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\i_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G2
\i_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N15
\i_rstb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rstb,
	o => \i_rstb~input_o\);

-- Location: CLKCTRL_G4
\i_rstb~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_rstb~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_rstb~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y19_N1
\i_fcw[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(19),
	o => \i_fcw[19]~input_o\);

-- Location: LCCOMB_X13_Y19_N28
\r_fcw[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[19]~feeder_combout\ = \i_fcw[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[19]~input_o\,
	combout => \r_fcw[19]~feeder_combout\);

-- Location: FF_X13_Y19_N29
\r_fcw[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[19]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(19));

-- Location: IOIBUF_X13_Y0_N15
\i_fcw[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(18),
	o => \i_fcw[18]~input_o\);

-- Location: LCCOMB_X16_Y19_N12
\r_fcw[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[18]~feeder_combout\ = \i_fcw[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fcw[18]~input_o\,
	combout => \r_fcw[18]~feeder_combout\);

-- Location: FF_X16_Y19_N13
\r_fcw[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[18]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(18));

-- Location: IOIBUF_X9_Y24_N8
\i_fcw[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(17),
	o => \i_fcw[17]~input_o\);

-- Location: LCCOMB_X13_Y19_N30
\r_fcw[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[17]~feeder_combout\ = \i_fcw[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[17]~input_o\,
	combout => \r_fcw[17]~feeder_combout\);

-- Location: FF_X13_Y19_N31
\r_fcw[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[17]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(17));

-- Location: IOIBUF_X11_Y24_N8
\i_fcw[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(16),
	o => \i_fcw[16]~input_o\);

-- Location: LCCOMB_X16_Y19_N10
\r_fcw[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[16]~feeder_combout\ = \i_fcw[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fcw[16]~input_o\,
	combout => \r_fcw[16]~feeder_combout\);

-- Location: FF_X16_Y19_N11
\r_fcw[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[16]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(16));

-- Location: IOIBUF_X23_Y24_N1
\i_fcw[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(15),
	o => \i_fcw[15]~input_o\);

-- Location: LCCOMB_X18_Y20_N6
\r_fcw[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[15]~feeder_combout\ = \i_fcw[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[15]~input_o\,
	combout => \r_fcw[15]~feeder_combout\);

-- Location: FF_X18_Y20_N7
\r_fcw[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[15]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(15));

-- Location: IOIBUF_X34_Y20_N1
\i_fcw[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(14),
	o => \i_fcw[14]~input_o\);

-- Location: LCCOMB_X16_Y20_N0
\r_fcw[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[14]~feeder_combout\ = \i_fcw[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fcw[14]~input_o\,
	combout => \r_fcw[14]~feeder_combout\);

-- Location: FF_X16_Y20_N1
\r_fcw[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[14]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(14));

-- Location: IOIBUF_X11_Y24_N15
\i_fcw[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(13),
	o => \i_fcw[13]~input_o\);

-- Location: LCCOMB_X16_Y20_N12
\r_fcw[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[13]~feeder_combout\ = \i_fcw[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[13]~input_o\,
	combout => \r_fcw[13]~feeder_combout\);

-- Location: FF_X16_Y20_N13
\r_fcw[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[13]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(13));

-- Location: IOIBUF_X16_Y24_N15
\i_fcw[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(12),
	o => \i_fcw[12]~input_o\);

-- Location: LCCOMB_X16_Y20_N28
\r_fcw[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[12]~feeder_combout\ = \i_fcw[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[12]~input_o\,
	combout => \r_fcw[12]~feeder_combout\);

-- Location: FF_X16_Y20_N29
\r_fcw[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[12]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(12));

-- Location: IOIBUF_X21_Y24_N1
\i_fcw[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(11),
	o => \i_fcw[11]~input_o\);

-- Location: LCCOMB_X18_Y20_N12
\r_fcw[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[11]~feeder_combout\ = \i_fcw[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fcw[11]~input_o\,
	combout => \r_fcw[11]~feeder_combout\);

-- Location: FF_X18_Y20_N13
\r_fcw[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[11]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(11));

-- Location: IOIBUF_X11_Y24_N1
\i_fcw[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(10),
	o => \i_fcw[10]~input_o\);

-- Location: LCCOMB_X18_Y20_N24
\r_fcw[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[10]~feeder_combout\ = \i_fcw[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[10]~input_o\,
	combout => \r_fcw[10]~feeder_combout\);

-- Location: FF_X18_Y20_N25
\r_fcw[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[10]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(10));

-- Location: IOIBUF_X11_Y24_N22
\i_fcw[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(9),
	o => \i_fcw[9]~input_o\);

-- Location: LCCOMB_X16_Y20_N4
\r_fcw[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[9]~feeder_combout\ = \i_fcw[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_fcw[9]~input_o\,
	combout => \r_fcw[9]~feeder_combout\);

-- Location: FF_X16_Y20_N5
\r_fcw[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[9]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(9));

-- Location: IOIBUF_X16_Y24_N1
\i_fcw[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(8),
	o => \i_fcw[8]~input_o\);

-- Location: FF_X17_Y20_N27
\r_fcw[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[8]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(8));

-- Location: IOIBUF_X18_Y24_N8
\i_fcw[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(7),
	o => \i_fcw[7]~input_o\);

-- Location: FF_X17_Y20_N13
\r_fcw[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[7]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(7));

-- Location: IOIBUF_X13_Y24_N22
\i_fcw[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(6),
	o => \i_fcw[6]~input_o\);

-- Location: FF_X17_Y20_N25
\r_fcw[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[6]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(6));

-- Location: IOIBUF_X16_Y24_N8
\i_fcw[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(5),
	o => \i_fcw[5]~input_o\);

-- Location: FF_X17_Y20_N3
\r_fcw[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[5]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(5));

-- Location: IOIBUF_X34_Y20_N8
\i_fcw[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(4),
	o => \i_fcw[4]~input_o\);

-- Location: FF_X17_Y20_N17
\r_fcw[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[4]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(4));

-- Location: IOIBUF_X16_Y24_N22
\i_fcw[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(3),
	o => \i_fcw[3]~input_o\);

-- Location: FF_X17_Y20_N21
\r_fcw[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[3]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(3));

-- Location: IOIBUF_X21_Y24_N15
\i_fcw[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(2),
	o => \i_fcw[2]~input_o\);

-- Location: FF_X17_Y20_N7
\r_fcw[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[2]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(2));

-- Location: IOIBUF_X25_Y24_N1
\i_fcw[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(1),
	o => \i_fcw[1]~input_o\);

-- Location: FF_X17_Y20_N31
\r_fcw[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[1]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(1));

-- Location: IOIBUF_X13_Y24_N1
\i_fcw[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(0),
	o => \i_fcw[0]~input_o\);

-- Location: FF_X17_Y20_N19
\r_fcw[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[0]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(0));

-- Location: LCCOMB_X17_Y20_N0
\r_nco[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[0]~32_combout\ = (r_nco(0) & (r_fcw(0) $ (VCC))) # (!r_nco(0) & (r_fcw(0) & VCC))
-- \r_nco[0]~33\ = CARRY((r_nco(0) & r_fcw(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(0),
	datab => r_fcw(0),
	datad => VCC,
	combout => \r_nco[0]~32_combout\,
	cout => \r_nco[0]~33\);

-- Location: LCCOMB_X16_Y20_N16
\r_nco[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[0]~feeder_combout\ = \r_nco[0]~32_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_nco[0]~32_combout\,
	combout => \r_nco[0]~feeder_combout\);

-- Location: IOIBUF_X18_Y24_N15
\i_start_phase[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(0),
	o => \i_start_phase[0]~input_o\);

-- Location: LCCOMB_X18_Y20_N8
\r_start_phase[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[0]~feeder_combout\ = \i_start_phase[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[0]~input_o\,
	combout => \r_start_phase[0]~feeder_combout\);

-- Location: FF_X18_Y20_N9
\r_start_phase[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[0]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(0));

-- Location: IOIBUF_X34_Y19_N1
\i_sync_reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_sync_reset,
	o => \i_sync_reset~input_o\);

-- Location: LCCOMB_X16_Y19_N16
\r_sync_reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_sync_reset~0_combout\ = !\i_sync_reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_sync_reset~input_o\,
	combout => \r_sync_reset~0_combout\);

-- Location: FF_X16_Y19_N17
r_sync_reset : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_sync_reset~0_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r_sync_reset~q\);

-- Location: FF_X16_Y20_N17
\r_nco[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[0]~feeder_combout\,
	asdata => r_start_phase(0),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(0));

-- Location: LCCOMB_X17_Y20_N2
\r_nco[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[1]~34_combout\ = (r_fcw(1) & ((r_nco(1) & (\r_nco[0]~33\ & VCC)) # (!r_nco(1) & (!\r_nco[0]~33\)))) # (!r_fcw(1) & ((r_nco(1) & (!\r_nco[0]~33\)) # (!r_nco(1) & ((\r_nco[0]~33\) # (GND)))))
-- \r_nco[1]~35\ = CARRY((r_fcw(1) & (!r_nco(1) & !\r_nco[0]~33\)) # (!r_fcw(1) & ((!\r_nco[0]~33\) # (!r_nco(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(1),
	datab => r_nco(1),
	datad => VCC,
	cin => \r_nco[0]~33\,
	combout => \r_nco[1]~34_combout\,
	cout => \r_nco[1]~35\);

-- Location: LCCOMB_X16_Y20_N6
\r_nco[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[1]~feeder_combout\ = \r_nco[1]~34_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[1]~34_combout\,
	combout => \r_nco[1]~feeder_combout\);

-- Location: IOIBUF_X25_Y24_N8
\i_start_phase[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(1),
	o => \i_start_phase[1]~input_o\);

-- Location: LCCOMB_X18_Y20_N18
\r_start_phase[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[1]~feeder_combout\ = \i_start_phase[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_start_phase[1]~input_o\,
	combout => \r_start_phase[1]~feeder_combout\);

-- Location: FF_X18_Y20_N19
\r_start_phase[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[1]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(1));

-- Location: FF_X16_Y20_N7
\r_nco[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[1]~feeder_combout\,
	asdata => r_start_phase(1),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(1));

-- Location: LCCOMB_X17_Y20_N4
\r_nco[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[2]~36_combout\ = ((r_fcw(2) $ (r_nco(2) $ (!\r_nco[1]~35\)))) # (GND)
-- \r_nco[2]~37\ = CARRY((r_fcw(2) & ((r_nco(2)) # (!\r_nco[1]~35\))) # (!r_fcw(2) & (r_nco(2) & !\r_nco[1]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(2),
	datab => r_nco(2),
	datad => VCC,
	cin => \r_nco[1]~35\,
	combout => \r_nco[2]~36_combout\,
	cout => \r_nco[2]~37\);

-- Location: LCCOMB_X18_Y20_N10
\r_nco[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[2]~feeder_combout\ = \r_nco[2]~36_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_nco[2]~36_combout\,
	combout => \r_nco[2]~feeder_combout\);

-- Location: IOIBUF_X18_Y24_N22
\i_start_phase[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(2),
	o => \i_start_phase[2]~input_o\);

-- Location: LCCOMB_X18_Y20_N26
\r_start_phase[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[2]~feeder_combout\ = \i_start_phase[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[2]~input_o\,
	combout => \r_start_phase[2]~feeder_combout\);

-- Location: FF_X18_Y20_N27
\r_start_phase[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[2]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(2));

-- Location: FF_X18_Y20_N11
\r_nco[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[2]~feeder_combout\,
	asdata => r_start_phase(2),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(2));

-- Location: LCCOMB_X17_Y20_N6
\r_nco[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[3]~38_combout\ = (r_nco(3) & ((r_fcw(3) & (\r_nco[2]~37\ & VCC)) # (!r_fcw(3) & (!\r_nco[2]~37\)))) # (!r_nco(3) & ((r_fcw(3) & (!\r_nco[2]~37\)) # (!r_fcw(3) & ((\r_nco[2]~37\) # (GND)))))
-- \r_nco[3]~39\ = CARRY((r_nco(3) & (!r_fcw(3) & !\r_nco[2]~37\)) # (!r_nco(3) & ((!\r_nco[2]~37\) # (!r_fcw(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(3),
	datab => r_fcw(3),
	datad => VCC,
	cin => \r_nco[2]~37\,
	combout => \r_nco[3]~38_combout\,
	cout => \r_nco[3]~39\);

-- Location: LCCOMB_X16_Y20_N14
\r_nco[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[3]~feeder_combout\ = \r_nco[3]~38_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[3]~38_combout\,
	combout => \r_nco[3]~feeder_combout\);

-- Location: IOIBUF_X25_Y24_N15
\i_start_phase[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(3),
	o => \i_start_phase[3]~input_o\);

-- Location: LCCOMB_X18_Y20_N14
\r_start_phase[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[3]~feeder_combout\ = \i_start_phase[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[3]~input_o\,
	combout => \r_start_phase[3]~feeder_combout\);

-- Location: FF_X18_Y20_N15
\r_start_phase[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[3]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(3));

-- Location: FF_X16_Y20_N15
\r_nco[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[3]~feeder_combout\,
	asdata => r_start_phase(3),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(3));

-- Location: LCCOMB_X17_Y20_N8
\r_nco[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[4]~40_combout\ = ((r_nco(4) $ (r_fcw(4) $ (!\r_nco[3]~39\)))) # (GND)
-- \r_nco[4]~41\ = CARRY((r_nco(4) & ((r_fcw(4)) # (!\r_nco[3]~39\))) # (!r_nco(4) & (r_fcw(4) & !\r_nco[3]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(4),
	datab => r_fcw(4),
	datad => VCC,
	cin => \r_nco[3]~39\,
	combout => \r_nco[4]~40_combout\,
	cout => \r_nco[4]~41\);

-- Location: LCCOMB_X18_Y20_N2
\r_nco[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[4]~feeder_combout\ = \r_nco[4]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[4]~40_combout\,
	combout => \r_nco[4]~feeder_combout\);

-- Location: IOIBUF_X23_Y24_N15
\i_start_phase[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(4),
	o => \i_start_phase[4]~input_o\);

-- Location: LCCOMB_X18_Y20_N30
\r_start_phase[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[4]~feeder_combout\ = \i_start_phase[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_start_phase[4]~input_o\,
	combout => \r_start_phase[4]~feeder_combout\);

-- Location: FF_X18_Y20_N31
\r_start_phase[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[4]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(4));

-- Location: FF_X18_Y20_N3
\r_nco[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[4]~feeder_combout\,
	asdata => r_start_phase(4),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(4));

-- Location: LCCOMB_X17_Y20_N10
\r_nco[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[5]~42_combout\ = (r_nco(5) & ((r_fcw(5) & (\r_nco[4]~41\ & VCC)) # (!r_fcw(5) & (!\r_nco[4]~41\)))) # (!r_nco(5) & ((r_fcw(5) & (!\r_nco[4]~41\)) # (!r_fcw(5) & ((\r_nco[4]~41\) # (GND)))))
-- \r_nco[5]~43\ = CARRY((r_nco(5) & (!r_fcw(5) & !\r_nco[4]~41\)) # (!r_nco(5) & ((!\r_nco[4]~41\) # (!r_fcw(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(5),
	datab => r_fcw(5),
	datad => VCC,
	cin => \r_nco[4]~41\,
	combout => \r_nco[5]~42_combout\,
	cout => \r_nco[5]~43\);

-- Location: LCCOMB_X18_Y20_N20
\r_nco[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[5]~feeder_combout\ = \r_nco[5]~42_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[5]~42_combout\,
	combout => \r_nco[5]~feeder_combout\);

-- Location: IOIBUF_X34_Y17_N1
\i_start_phase[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(5),
	o => \i_start_phase[5]~input_o\);

-- Location: LCCOMB_X19_Y20_N30
\r_start_phase[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[5]~feeder_combout\ = \i_start_phase[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[5]~input_o\,
	combout => \r_start_phase[5]~feeder_combout\);

-- Location: FF_X19_Y20_N31
\r_start_phase[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[5]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(5));

-- Location: FF_X18_Y20_N21
\r_nco[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[5]~feeder_combout\,
	asdata => r_start_phase(5),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(5));

-- Location: LCCOMB_X17_Y20_N12
\r_nco[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[6]~44_combout\ = ((r_nco(6) $ (r_fcw(6) $ (!\r_nco[5]~43\)))) # (GND)
-- \r_nco[6]~45\ = CARRY((r_nco(6) & ((r_fcw(6)) # (!\r_nco[5]~43\))) # (!r_nco(6) & (r_fcw(6) & !\r_nco[5]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(6),
	datab => r_fcw(6),
	datad => VCC,
	cin => \r_nco[5]~43\,
	combout => \r_nco[6]~44_combout\,
	cout => \r_nco[6]~45\);

-- Location: LCCOMB_X16_Y20_N10
\r_nco[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[6]~feeder_combout\ = \r_nco[6]~44_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_nco[6]~44_combout\,
	combout => \r_nco[6]~feeder_combout\);

-- Location: IOIBUF_X13_Y24_N8
\i_start_phase[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(6),
	o => \i_start_phase[6]~input_o\);

-- Location: LCCOMB_X14_Y20_N12
\r_start_phase[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[6]~feeder_combout\ = \i_start_phase[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[6]~input_o\,
	combout => \r_start_phase[6]~feeder_combout\);

-- Location: FF_X14_Y20_N13
\r_start_phase[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[6]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(6));

-- Location: FF_X16_Y20_N11
\r_nco[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[6]~feeder_combout\,
	asdata => r_start_phase(6),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(6));

-- Location: LCCOMB_X17_Y20_N14
\r_nco[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[7]~46_combout\ = (r_fcw(7) & ((r_nco(7) & (\r_nco[6]~45\ & VCC)) # (!r_nco(7) & (!\r_nco[6]~45\)))) # (!r_fcw(7) & ((r_nco(7) & (!\r_nco[6]~45\)) # (!r_nco(7) & ((\r_nco[6]~45\) # (GND)))))
-- \r_nco[7]~47\ = CARRY((r_fcw(7) & (!r_nco(7) & !\r_nco[6]~45\)) # (!r_fcw(7) & ((!\r_nco[6]~45\) # (!r_nco(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(7),
	datab => r_nco(7),
	datad => VCC,
	cin => \r_nco[6]~45\,
	combout => \r_nco[7]~46_combout\,
	cout => \r_nco[7]~47\);

-- Location: LCCOMB_X16_Y20_N24
\r_nco[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[7]~feeder_combout\ = \r_nco[7]~46_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[7]~46_combout\,
	combout => \r_nco[7]~feeder_combout\);

-- Location: IOIBUF_X7_Y24_N1
\i_start_phase[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(7),
	o => \i_start_phase[7]~input_o\);

-- Location: LCCOMB_X12_Y20_N0
\r_start_phase[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[7]~feeder_combout\ = \i_start_phase[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[7]~input_o\,
	combout => \r_start_phase[7]~feeder_combout\);

-- Location: FF_X12_Y20_N1
\r_start_phase[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[7]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(7));

-- Location: FF_X16_Y20_N25
\r_nco[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[7]~feeder_combout\,
	asdata => r_start_phase(7),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(7));

-- Location: LCCOMB_X17_Y20_N16
\r_nco[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[8]~48_combout\ = ((r_fcw(8) $ (r_nco(8) $ (!\r_nco[7]~47\)))) # (GND)
-- \r_nco[8]~49\ = CARRY((r_fcw(8) & ((r_nco(8)) # (!\r_nco[7]~47\))) # (!r_fcw(8) & (r_nco(8) & !\r_nco[7]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(8),
	datab => r_nco(8),
	datad => VCC,
	cin => \r_nco[7]~47\,
	combout => \r_nco[8]~48_combout\,
	cout => \r_nco[8]~49\);

-- Location: LCCOMB_X16_Y20_N20
\r_nco[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[8]~feeder_combout\ = \r_nco[8]~48_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[8]~48_combout\,
	combout => \r_nco[8]~feeder_combout\);

-- Location: IOIBUF_X7_Y24_N15
\i_start_phase[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(8),
	o => \i_start_phase[8]~input_o\);

-- Location: LCCOMB_X14_Y20_N14
\r_start_phase[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[8]~feeder_combout\ = \i_start_phase[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[8]~input_o\,
	combout => \r_start_phase[8]~feeder_combout\);

-- Location: FF_X14_Y20_N15
\r_start_phase[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[8]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(8));

-- Location: FF_X16_Y20_N21
\r_nco[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[8]~feeder_combout\,
	asdata => r_start_phase(8),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(8));

-- Location: LCCOMB_X17_Y20_N18
\r_nco[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[9]~50_combout\ = (r_nco(9) & ((r_fcw(9) & (\r_nco[8]~49\ & VCC)) # (!r_fcw(9) & (!\r_nco[8]~49\)))) # (!r_nco(9) & ((r_fcw(9) & (!\r_nco[8]~49\)) # (!r_fcw(9) & ((\r_nco[8]~49\) # (GND)))))
-- \r_nco[9]~51\ = CARRY((r_nco(9) & (!r_fcw(9) & !\r_nco[8]~49\)) # (!r_nco(9) & ((!\r_nco[8]~49\) # (!r_fcw(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(9),
	datab => r_fcw(9),
	datad => VCC,
	cin => \r_nco[8]~49\,
	combout => \r_nco[9]~50_combout\,
	cout => \r_nco[9]~51\);

-- Location: LCCOMB_X16_Y20_N8
\r_nco[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[9]~feeder_combout\ = \r_nco[9]~50_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[9]~50_combout\,
	combout => \r_nco[9]~feeder_combout\);

-- Location: IOIBUF_X13_Y24_N15
\i_start_phase[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(9),
	o => \i_start_phase[9]~input_o\);

-- Location: LCCOMB_X14_Y20_N8
\r_start_phase[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[9]~feeder_combout\ = \i_start_phase[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[9]~input_o\,
	combout => \r_start_phase[9]~feeder_combout\);

-- Location: FF_X14_Y20_N9
\r_start_phase[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[9]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(9));

-- Location: FF_X16_Y20_N9
\r_nco[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[9]~feeder_combout\,
	asdata => r_start_phase(9),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(9));

-- Location: LCCOMB_X17_Y20_N20
\r_nco[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[10]~52_combout\ = ((r_nco(10) $ (r_fcw(10) $ (!\r_nco[9]~51\)))) # (GND)
-- \r_nco[10]~53\ = CARRY((r_nco(10) & ((r_fcw(10)) # (!\r_nco[9]~51\))) # (!r_nco(10) & (r_fcw(10) & !\r_nco[9]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(10),
	datab => r_fcw(10),
	datad => VCC,
	cin => \r_nco[9]~51\,
	combout => \r_nco[10]~52_combout\,
	cout => \r_nco[10]~53\);

-- Location: LCCOMB_X16_Y20_N26
\r_nco[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[10]~feeder_combout\ = \r_nco[10]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_nco[10]~52_combout\,
	combout => \r_nco[10]~feeder_combout\);

-- Location: IOIBUF_X7_Y24_N8
\i_start_phase[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(10),
	o => \i_start_phase[10]~input_o\);

-- Location: LCCOMB_X7_Y20_N8
\r_start_phase[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[10]~feeder_combout\ = \i_start_phase[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[10]~input_o\,
	combout => \r_start_phase[10]~feeder_combout\);

-- Location: FF_X7_Y20_N9
\r_start_phase[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[10]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(10));

-- Location: FF_X16_Y20_N27
\r_nco[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[10]~feeder_combout\,
	asdata => r_start_phase(10),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(10));

-- Location: LCCOMB_X17_Y20_N22
\r_nco[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[11]~54_combout\ = (r_nco(11) & ((r_fcw(11) & (\r_nco[10]~53\ & VCC)) # (!r_fcw(11) & (!\r_nco[10]~53\)))) # (!r_nco(11) & ((r_fcw(11) & (!\r_nco[10]~53\)) # (!r_fcw(11) & ((\r_nco[10]~53\) # (GND)))))
-- \r_nco[11]~55\ = CARRY((r_nco(11) & (!r_fcw(11) & !\r_nco[10]~53\)) # (!r_nco(11) & ((!\r_nco[10]~53\) # (!r_fcw(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(11),
	datab => r_fcw(11),
	datad => VCC,
	cin => \r_nco[10]~53\,
	combout => \r_nco[11]~54_combout\,
	cout => \r_nco[11]~55\);

-- Location: LCCOMB_X16_Y20_N2
\r_nco[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[11]~feeder_combout\ = \r_nco[11]~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[11]~54_combout\,
	combout => \r_nco[11]~feeder_combout\);

-- Location: IOIBUF_X0_Y11_N22
\i_start_phase[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(11),
	o => \i_start_phase[11]~input_o\);

-- Location: LCCOMB_X16_Y20_N30
\r_start_phase[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[11]~feeder_combout\ = \i_start_phase[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[11]~input_o\,
	combout => \r_start_phase[11]~feeder_combout\);

-- Location: FF_X16_Y20_N31
\r_start_phase[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[11]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(11));

-- Location: FF_X16_Y20_N3
\r_nco[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[11]~feeder_combout\,
	asdata => r_start_phase(11),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(11));

-- Location: LCCOMB_X17_Y20_N24
\r_nco[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[12]~56_combout\ = ((r_nco(12) $ (r_fcw(12) $ (!\r_nco[11]~55\)))) # (GND)
-- \r_nco[12]~57\ = CARRY((r_nco(12) & ((r_fcw(12)) # (!\r_nco[11]~55\))) # (!r_nco(12) & (r_fcw(12) & !\r_nco[11]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(12),
	datab => r_fcw(12),
	datad => VCC,
	cin => \r_nco[11]~55\,
	combout => \r_nco[12]~56_combout\,
	cout => \r_nco[12]~57\);

-- Location: LCCOMB_X18_Y20_N4
\r_nco[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[12]~feeder_combout\ = \r_nco[12]~56_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[12]~56_combout\,
	combout => \r_nco[12]~feeder_combout\);

-- Location: IOIBUF_X13_Y0_N22
\i_start_phase[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(12),
	o => \i_start_phase[12]~input_o\);

-- Location: LCCOMB_X14_Y20_N26
\r_start_phase[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[12]~feeder_combout\ = \i_start_phase[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[12]~input_o\,
	combout => \r_start_phase[12]~feeder_combout\);

-- Location: FF_X14_Y20_N27
\r_start_phase[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[12]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(12));

-- Location: FF_X18_Y20_N5
\r_nco[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[12]~feeder_combout\,
	asdata => r_start_phase(12),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(12));

-- Location: LCCOMB_X17_Y20_N26
\r_nco[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[13]~58_combout\ = (r_fcw(13) & ((r_nco(13) & (\r_nco[12]~57\ & VCC)) # (!r_nco(13) & (!\r_nco[12]~57\)))) # (!r_fcw(13) & ((r_nco(13) & (!\r_nco[12]~57\)) # (!r_nco(13) & ((\r_nco[12]~57\) # (GND)))))
-- \r_nco[13]~59\ = CARRY((r_fcw(13) & (!r_nco(13) & !\r_nco[12]~57\)) # (!r_fcw(13) & ((!\r_nco[12]~57\) # (!r_nco(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(13),
	datab => r_nco(13),
	datad => VCC,
	cin => \r_nco[12]~57\,
	combout => \r_nco[13]~58_combout\,
	cout => \r_nco[13]~59\);

-- Location: LCCOMB_X18_Y20_N28
\r_nco[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[13]~feeder_combout\ = \r_nco[13]~58_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_nco[13]~58_combout\,
	combout => \r_nco[13]~feeder_combout\);

-- Location: IOIBUF_X21_Y24_N8
\i_start_phase[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(13),
	o => \i_start_phase[13]~input_o\);

-- Location: LCCOMB_X18_Y20_N22
\r_start_phase[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[13]~feeder_combout\ = \i_start_phase[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[13]~input_o\,
	combout => \r_start_phase[13]~feeder_combout\);

-- Location: FF_X18_Y20_N23
\r_start_phase[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[13]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(13));

-- Location: FF_X18_Y20_N29
\r_nco[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[13]~feeder_combout\,
	asdata => r_start_phase(13),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(13));

-- Location: LCCOMB_X17_Y20_N28
\r_nco[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[14]~60_combout\ = ((r_fcw(14) $ (r_nco(14) $ (!\r_nco[13]~59\)))) # (GND)
-- \r_nco[14]~61\ = CARRY((r_fcw(14) & ((r_nco(14)) # (!\r_nco[13]~59\))) # (!r_fcw(14) & (r_nco(14) & !\r_nco[13]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(14),
	datab => r_nco(14),
	datad => VCC,
	cin => \r_nco[13]~59\,
	combout => \r_nco[14]~60_combout\,
	cout => \r_nco[14]~61\);

-- Location: LCCOMB_X16_Y20_N22
\r_nco[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[14]~feeder_combout\ = \r_nco[14]~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[14]~60_combout\,
	combout => \r_nco[14]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_start_phase[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(14),
	o => \i_start_phase[14]~input_o\);

-- Location: LCCOMB_X16_Y19_N2
\r_start_phase[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[14]~feeder_combout\ = \i_start_phase[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[14]~input_o\,
	combout => \r_start_phase[14]~feeder_combout\);

-- Location: FF_X16_Y19_N3
\r_start_phase[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[14]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(14));

-- Location: FF_X16_Y20_N23
\r_nco[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[14]~feeder_combout\,
	asdata => r_start_phase(14),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(14));

-- Location: LCCOMB_X17_Y20_N30
\r_nco[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[15]~62_combout\ = (r_fcw(15) & ((r_nco(15) & (\r_nco[14]~61\ & VCC)) # (!r_nco(15) & (!\r_nco[14]~61\)))) # (!r_fcw(15) & ((r_nco(15) & (!\r_nco[14]~61\)) # (!r_nco(15) & ((\r_nco[14]~61\) # (GND)))))
-- \r_nco[15]~63\ = CARRY((r_fcw(15) & (!r_nco(15) & !\r_nco[14]~61\)) # (!r_fcw(15) & ((!\r_nco[14]~61\) # (!r_nco(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(15),
	datab => r_nco(15),
	datad => VCC,
	cin => \r_nco[14]~61\,
	combout => \r_nco[15]~62_combout\,
	cout => \r_nco[15]~63\);

-- Location: LCCOMB_X16_Y20_N18
\r_nco[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[15]~feeder_combout\ = \r_nco[15]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_nco[15]~62_combout\,
	combout => \r_nco[15]~feeder_combout\);

-- Location: IOIBUF_X18_Y0_N8
\i_start_phase[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(15),
	o => \i_start_phase[15]~input_o\);

-- Location: LCCOMB_X16_Y18_N26
\r_start_phase[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[15]~feeder_combout\ = \i_start_phase[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[15]~input_o\,
	combout => \r_start_phase[15]~feeder_combout\);

-- Location: FF_X16_Y18_N27
\r_start_phase[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[15]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(15));

-- Location: FF_X16_Y20_N19
\r_nco[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[15]~feeder_combout\,
	asdata => r_start_phase(15),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(15));

-- Location: LCCOMB_X17_Y19_N0
\r_nco[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[16]~64_combout\ = ((r_fcw(16) $ (r_nco(16) $ (!\r_nco[15]~63\)))) # (GND)
-- \r_nco[16]~65\ = CARRY((r_fcw(16) & ((r_nco(16)) # (!\r_nco[15]~63\))) # (!r_fcw(16) & (r_nco(16) & !\r_nco[15]~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(16),
	datab => r_nco(16),
	datad => VCC,
	cin => \r_nco[15]~63\,
	combout => \r_nco[16]~64_combout\,
	cout => \r_nco[16]~65\);

-- Location: LCCOMB_X18_Y19_N0
\r_nco[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[16]~feeder_combout\ = \r_nco[16]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_nco[16]~64_combout\,
	combout => \r_nco[16]~feeder_combout\);

-- Location: IOIBUF_X23_Y24_N22
\i_start_phase[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(16),
	o => \i_start_phase[16]~input_o\);

-- Location: LCCOMB_X23_Y23_N16
\r_start_phase[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[16]~feeder_combout\ = \i_start_phase[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[16]~input_o\,
	combout => \r_start_phase[16]~feeder_combout\);

-- Location: FF_X23_Y23_N17
\r_start_phase[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[16]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(16));

-- Location: FF_X18_Y19_N1
\r_nco[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[16]~feeder_combout\,
	asdata => r_start_phase(16),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(16));

-- Location: LCCOMB_X17_Y19_N2
\r_nco[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[17]~66_combout\ = (r_fcw(17) & ((r_nco(17) & (\r_nco[16]~65\ & VCC)) # (!r_nco(17) & (!\r_nco[16]~65\)))) # (!r_fcw(17) & ((r_nco(17) & (!\r_nco[16]~65\)) # (!r_nco(17) & ((\r_nco[16]~65\) # (GND)))))
-- \r_nco[17]~67\ = CARRY((r_fcw(17) & (!r_nco(17) & !\r_nco[16]~65\)) # (!r_fcw(17) & ((!\r_nco[16]~65\) # (!r_nco(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(17),
	datab => r_nco(17),
	datad => VCC,
	cin => \r_nco[16]~65\,
	combout => \r_nco[17]~66_combout\,
	cout => \r_nco[17]~67\);

-- Location: IOIBUF_X16_Y0_N1
\i_start_phase[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(17),
	o => \i_start_phase[17]~input_o\);

-- Location: LCCOMB_X16_Y19_N4
\r_start_phase[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[17]~feeder_combout\ = \i_start_phase[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[17]~input_o\,
	combout => \r_start_phase[17]~feeder_combout\);

-- Location: FF_X16_Y19_N5
\r_start_phase[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[17]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(17));

-- Location: FF_X17_Y19_N3
\r_nco[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[17]~66_combout\,
	asdata => r_start_phase(17),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(17));

-- Location: LCCOMB_X17_Y19_N4
\r_nco[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[18]~68_combout\ = ((r_fcw(18) $ (r_nco(18) $ (!\r_nco[17]~67\)))) # (GND)
-- \r_nco[18]~69\ = CARRY((r_fcw(18) & ((r_nco(18)) # (!\r_nco[17]~67\))) # (!r_fcw(18) & (r_nco(18) & !\r_nco[17]~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(18),
	datab => r_nco(18),
	datad => VCC,
	cin => \r_nco[17]~67\,
	combout => \r_nco[18]~68_combout\,
	cout => \r_nco[18]~69\);

-- Location: LCCOMB_X16_Y19_N28
\r_nco[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[18]~feeder_combout\ = \r_nco[18]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[18]~68_combout\,
	combout => \r_nco[18]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N8
\i_start_phase[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(18),
	o => \i_start_phase[18]~input_o\);

-- Location: LCCOMB_X16_Y18_N16
\r_start_phase[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[18]~feeder_combout\ = \i_start_phase[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[18]~input_o\,
	combout => \r_start_phase[18]~feeder_combout\);

-- Location: FF_X16_Y18_N17
\r_start_phase[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[18]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(18));

-- Location: FF_X16_Y19_N29
\r_nco[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[18]~feeder_combout\,
	asdata => r_start_phase(18),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(18));

-- Location: LCCOMB_X17_Y19_N6
\r_nco[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[19]~70_combout\ = (r_nco(19) & ((r_fcw(19) & (\r_nco[18]~69\ & VCC)) # (!r_fcw(19) & (!\r_nco[18]~69\)))) # (!r_nco(19) & ((r_fcw(19) & (!\r_nco[18]~69\)) # (!r_fcw(19) & ((\r_nco[18]~69\) # (GND)))))
-- \r_nco[19]~71\ = CARRY((r_nco(19) & (!r_fcw(19) & !\r_nco[18]~69\)) # (!r_nco(19) & ((!\r_nco[18]~69\) # (!r_fcw(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(19),
	datab => r_fcw(19),
	datad => VCC,
	cin => \r_nco[18]~69\,
	combout => \r_nco[19]~70_combout\,
	cout => \r_nco[19]~71\);

-- Location: IOIBUF_X28_Y24_N15
\i_start_phase[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(19),
	o => \i_start_phase[19]~input_o\);

-- Location: LCCOMB_X21_Y20_N24
\r_start_phase[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[19]~feeder_combout\ = \i_start_phase[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[19]~input_o\,
	combout => \r_start_phase[19]~feeder_combout\);

-- Location: FF_X21_Y20_N25
\r_start_phase[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[19]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(19));

-- Location: FF_X17_Y19_N7
\r_nco[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[19]~70_combout\,
	asdata => r_start_phase(19),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(19));

-- Location: LCCOMB_X16_Y19_N14
\lut_addr[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[0]~feeder_combout\ = r_nco(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(19),
	combout => \lut_addr[0]~feeder_combout\);

-- Location: FF_X16_Y19_N15
\lut_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(0));

-- Location: IOIBUF_X0_Y22_N1
\i_fcw[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(20),
	o => \i_fcw[20]~input_o\);

-- Location: LCCOMB_X13_Y19_N12
\r_fcw[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[20]~feeder_combout\ = \i_fcw[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[20]~input_o\,
	combout => \r_fcw[20]~feeder_combout\);

-- Location: FF_X13_Y19_N13
\r_fcw[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[20]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(20));

-- Location: LCCOMB_X17_Y19_N8
\r_nco[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[20]~72_combout\ = ((r_fcw(20) $ (r_nco(20) $ (!\r_nco[19]~71\)))) # (GND)
-- \r_nco[20]~73\ = CARRY((r_fcw(20) & ((r_nco(20)) # (!\r_nco[19]~71\))) # (!r_fcw(20) & (r_nco(20) & !\r_nco[19]~71\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(20),
	datab => r_nco(20),
	datad => VCC,
	cin => \r_nco[19]~71\,
	combout => \r_nco[20]~72_combout\,
	cout => \r_nco[20]~73\);

-- Location: IOIBUF_X16_Y0_N15
\i_start_phase[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(20),
	o => \i_start_phase[20]~input_o\);

-- Location: LCCOMB_X16_Y19_N26
\r_start_phase[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[20]~feeder_combout\ = \i_start_phase[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[20]~input_o\,
	combout => \r_start_phase[20]~feeder_combout\);

-- Location: FF_X16_Y19_N27
\r_start_phase[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[20]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(20));

-- Location: FF_X17_Y19_N9
\r_nco[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[20]~72_combout\,
	asdata => r_start_phase(20),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(20));

-- Location: LCCOMB_X16_Y19_N24
\lut_addr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[1]~feeder_combout\ = r_nco(20)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(20),
	combout => \lut_addr[1]~feeder_combout\);

-- Location: FF_X16_Y19_N25
\lut_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(1));

-- Location: IOIBUF_X0_Y21_N22
\i_fcw[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(21),
	o => \i_fcw[21]~input_o\);

-- Location: LCCOMB_X13_Y19_N10
\r_fcw[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[21]~feeder_combout\ = \i_fcw[21]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[21]~input_o\,
	combout => \r_fcw[21]~feeder_combout\);

-- Location: FF_X13_Y19_N11
\r_fcw[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[21]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(21));

-- Location: LCCOMB_X17_Y19_N10
\r_nco[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[21]~74_combout\ = (r_fcw(21) & ((r_nco(21) & (\r_nco[20]~73\ & VCC)) # (!r_nco(21) & (!\r_nco[20]~73\)))) # (!r_fcw(21) & ((r_nco(21) & (!\r_nco[20]~73\)) # (!r_nco(21) & ((\r_nco[20]~73\) # (GND)))))
-- \r_nco[21]~75\ = CARRY((r_fcw(21) & (!r_nco(21) & !\r_nco[20]~73\)) # (!r_fcw(21) & ((!\r_nco[20]~73\) # (!r_nco(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(21),
	datab => r_nco(21),
	datad => VCC,
	cin => \r_nco[20]~73\,
	combout => \r_nco[21]~74_combout\,
	cout => \r_nco[21]~75\);

-- Location: LCCOMB_X16_Y19_N18
\r_nco[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[21]~feeder_combout\ = \r_nco[21]~74_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_nco[21]~74_combout\,
	combout => \r_nco[21]~feeder_combout\);

-- Location: IOIBUF_X5_Y24_N22
\i_start_phase[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(21),
	o => \i_start_phase[21]~input_o\);

-- Location: FF_X13_Y19_N9
\r_start_phase[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_start_phase[21]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(21));

-- Location: FF_X16_Y19_N19
\r_nco[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[21]~feeder_combout\,
	asdata => r_start_phase(21),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(21));

-- Location: LCCOMB_X16_Y19_N8
\lut_addr[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[2]~feeder_combout\ = r_nco(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(21),
	combout => \lut_addr[2]~feeder_combout\);

-- Location: FF_X16_Y19_N9
\lut_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(2));

-- Location: IOIBUF_X0_Y22_N15
\i_fcw[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(22),
	o => \i_fcw[22]~input_o\);

-- Location: LCCOMB_X13_Y19_N18
\r_fcw[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[22]~feeder_combout\ = \i_fcw[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[22]~input_o\,
	combout => \r_fcw[22]~feeder_combout\);

-- Location: FF_X13_Y19_N19
\r_fcw[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[22]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(22));

-- Location: LCCOMB_X17_Y19_N12
\r_nco[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[22]~76_combout\ = ((r_nco(22) $ (r_fcw(22) $ (!\r_nco[21]~75\)))) # (GND)
-- \r_nco[22]~77\ = CARRY((r_nco(22) & ((r_fcw(22)) # (!\r_nco[21]~75\))) # (!r_nco(22) & (r_fcw(22) & !\r_nco[21]~75\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(22),
	datab => r_fcw(22),
	datad => VCC,
	cin => \r_nco[21]~75\,
	combout => \r_nco[22]~76_combout\,
	cout => \r_nco[22]~77\);

-- Location: LCCOMB_X16_Y19_N0
\r_nco[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[22]~feeder_combout\ = \r_nco[22]~76_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r_nco[22]~76_combout\,
	combout => \r_nco[22]~feeder_combout\);

-- Location: IOIBUF_X9_Y24_N15
\i_start_phase[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(22),
	o => \i_start_phase[22]~input_o\);

-- Location: LCCOMB_X16_Y19_N30
\r_start_phase[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[22]~feeder_combout\ = \i_start_phase[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[22]~input_o\,
	combout => \r_start_phase[22]~feeder_combout\);

-- Location: FF_X16_Y19_N31
\r_start_phase[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[22]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(22));

-- Location: FF_X16_Y19_N1
\r_nco[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[22]~feeder_combout\,
	asdata => r_start_phase(22),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(22));

-- Location: LCCOMB_X16_Y19_N22
\lut_addr[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[3]~feeder_combout\ = r_nco(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(22),
	combout => \lut_addr[3]~feeder_combout\);

-- Location: FF_X16_Y19_N23
\lut_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(3));

-- Location: IOIBUF_X1_Y24_N8
\i_fcw[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(23),
	o => \i_fcw[23]~input_o\);

-- Location: LCCOMB_X13_Y19_N20
\r_fcw[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[23]~feeder_combout\ = \i_fcw[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[23]~input_o\,
	combout => \r_fcw[23]~feeder_combout\);

-- Location: FF_X13_Y19_N21
\r_fcw[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[23]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(23));

-- Location: LCCOMB_X17_Y19_N14
\r_nco[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[23]~78_combout\ = (r_nco(23) & ((r_fcw(23) & (\r_nco[22]~77\ & VCC)) # (!r_fcw(23) & (!\r_nco[22]~77\)))) # (!r_nco(23) & ((r_fcw(23) & (!\r_nco[22]~77\)) # (!r_fcw(23) & ((\r_nco[22]~77\) # (GND)))))
-- \r_nco[23]~79\ = CARRY((r_nco(23) & (!r_fcw(23) & !\r_nco[22]~77\)) # (!r_nco(23) & ((!\r_nco[22]~77\) # (!r_fcw(23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(23),
	datab => r_fcw(23),
	datad => VCC,
	cin => \r_nco[22]~77\,
	combout => \r_nco[23]~78_combout\,
	cout => \r_nco[23]~79\);

-- Location: LCCOMB_X18_Y19_N4
\r_nco[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[23]~feeder_combout\ = \r_nco[23]~78_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[23]~78_combout\,
	combout => \r_nco[23]~feeder_combout\);

-- Location: IOIBUF_X34_Y19_N15
\i_start_phase[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(23),
	o => \i_start_phase[23]~input_o\);

-- Location: FF_X22_Y19_N13
\r_start_phase[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_start_phase[23]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(23));

-- Location: FF_X18_Y19_N5
\r_nco[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[23]~feeder_combout\,
	asdata => r_start_phase(23),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(23));

-- Location: LCCOMB_X18_Y19_N2
\lut_addr[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[4]~feeder_combout\ = r_nco(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(23),
	combout => \lut_addr[4]~feeder_combout\);

-- Location: FF_X18_Y19_N3
\lut_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(4));

-- Location: IOIBUF_X5_Y24_N1
\i_fcw[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(24),
	o => \i_fcw[24]~input_o\);

-- Location: FF_X13_Y19_N3
\r_fcw[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[24]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(24));

-- Location: LCCOMB_X17_Y19_N16
\r_nco[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[24]~80_combout\ = ((r_nco(24) $ (r_fcw(24) $ (!\r_nco[23]~79\)))) # (GND)
-- \r_nco[24]~81\ = CARRY((r_nco(24) & ((r_fcw(24)) # (!\r_nco[23]~79\))) # (!r_nco(24) & (r_fcw(24) & !\r_nco[23]~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(24),
	datab => r_fcw(24),
	datad => VCC,
	cin => \r_nco[23]~79\,
	combout => \r_nco[24]~80_combout\,
	cout => \r_nco[24]~81\);

-- Location: LCCOMB_X18_Y19_N30
\r_nco[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[24]~feeder_combout\ = \r_nco[24]~80_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r_nco[24]~80_combout\,
	combout => \r_nco[24]~feeder_combout\);

-- Location: IOIBUF_X23_Y24_N8
\i_start_phase[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(24),
	o => \i_start_phase[24]~input_o\);

-- Location: LCCOMB_X19_Y20_N4
\r_start_phase[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[24]~feeder_combout\ = \i_start_phase[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[24]~input_o\,
	combout => \r_start_phase[24]~feeder_combout\);

-- Location: FF_X19_Y20_N5
\r_start_phase[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[24]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(24));

-- Location: FF_X18_Y19_N31
\r_nco[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[24]~feeder_combout\,
	asdata => r_start_phase(24),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(24));

-- Location: LCCOMB_X18_Y19_N8
\lut_addr[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[5]~feeder_combout\ = r_nco(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(24),
	combout => \lut_addr[5]~feeder_combout\);

-- Location: FF_X18_Y19_N9
\lut_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(5));

-- Location: IOIBUF_X3_Y24_N15
\i_fcw[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(25),
	o => \i_fcw[25]~input_o\);

-- Location: FF_X13_Y19_N1
\r_fcw[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_fcw[25]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(25));

-- Location: LCCOMB_X17_Y19_N18
\r_nco[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[25]~82_combout\ = (r_fcw(25) & ((r_nco(25) & (\r_nco[24]~81\ & VCC)) # (!r_nco(25) & (!\r_nco[24]~81\)))) # (!r_fcw(25) & ((r_nco(25) & (!\r_nco[24]~81\)) # (!r_nco(25) & ((\r_nco[24]~81\) # (GND)))))
-- \r_nco[25]~83\ = CARRY((r_fcw(25) & (!r_nco(25) & !\r_nco[24]~81\)) # (!r_fcw(25) & ((!\r_nco[24]~81\) # (!r_nco(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(25),
	datab => r_nco(25),
	datad => VCC,
	cin => \r_nco[24]~81\,
	combout => \r_nco[25]~82_combout\,
	cout => \r_nco[25]~83\);

-- Location: LCCOMB_X18_Y19_N16
\r_nco[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[25]~feeder_combout\ = \r_nco[25]~82_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[25]~82_combout\,
	combout => \r_nco[25]~feeder_combout\);

-- Location: IOIBUF_X28_Y24_N8
\i_start_phase[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(25),
	o => \i_start_phase[25]~input_o\);

-- Location: FF_X25_Y20_N21
\r_start_phase[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_start_phase[25]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(25));

-- Location: FF_X18_Y19_N17
\r_nco[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[25]~feeder_combout\,
	asdata => r_start_phase(25),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(25));

-- Location: LCCOMB_X18_Y19_N18
\lut_addr[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[6]~feeder_combout\ = r_nco(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(25),
	combout => \lut_addr[6]~feeder_combout\);

-- Location: FF_X18_Y19_N19
\lut_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(6));

-- Location: IOIBUF_X0_Y19_N22
\i_fcw[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(26),
	o => \i_fcw[26]~input_o\);

-- Location: LCCOMB_X16_Y19_N6
\r_fcw[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[26]~feeder_combout\ = \i_fcw[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[26]~input_o\,
	combout => \r_fcw[26]~feeder_combout\);

-- Location: FF_X16_Y19_N7
\r_fcw[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[26]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(26));

-- Location: LCCOMB_X17_Y19_N20
\r_nco[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[26]~84_combout\ = ((r_nco(26) $ (r_fcw(26) $ (!\r_nco[25]~83\)))) # (GND)
-- \r_nco[26]~85\ = CARRY((r_nco(26) & ((r_fcw(26)) # (!\r_nco[25]~83\))) # (!r_nco(26) & (r_fcw(26) & !\r_nco[25]~83\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(26),
	datab => r_fcw(26),
	datad => VCC,
	cin => \r_nco[25]~83\,
	combout => \r_nco[26]~84_combout\,
	cout => \r_nco[26]~85\);

-- Location: LCCOMB_X18_Y19_N6
\r_nco[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[26]~feeder_combout\ = \r_nco[26]~84_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[26]~84_combout\,
	combout => \r_nco[26]~feeder_combout\);

-- Location: IOIBUF_X25_Y24_N22
\i_start_phase[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(26),
	o => \i_start_phase[26]~input_o\);

-- Location: LCCOMB_X25_Y23_N24
\r_start_phase[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[26]~feeder_combout\ = \i_start_phase[26]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[26]~input_o\,
	combout => \r_start_phase[26]~feeder_combout\);

-- Location: FF_X25_Y23_N25
\r_start_phase[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[26]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(26));

-- Location: FF_X18_Y19_N7
\r_nco[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[26]~feeder_combout\,
	asdata => r_start_phase(26),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(26));

-- Location: LCCOMB_X18_Y19_N24
\lut_addr[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[7]~feeder_combout\ = r_nco(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(26),
	combout => \lut_addr[7]~feeder_combout\);

-- Location: FF_X18_Y19_N25
\lut_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(7));

-- Location: IOIBUF_X9_Y24_N22
\i_fcw[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(27),
	o => \i_fcw[27]~input_o\);

-- Location: LCCOMB_X13_Y19_N26
\r_fcw[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[27]~feeder_combout\ = \i_fcw[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[27]~input_o\,
	combout => \r_fcw[27]~feeder_combout\);

-- Location: FF_X13_Y19_N27
\r_fcw[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[27]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(27));

-- Location: LCCOMB_X17_Y19_N22
\r_nco[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[27]~86_combout\ = (r_nco(27) & ((r_fcw(27) & (\r_nco[26]~85\ & VCC)) # (!r_fcw(27) & (!\r_nco[26]~85\)))) # (!r_nco(27) & ((r_fcw(27) & (!\r_nco[26]~85\)) # (!r_fcw(27) & ((\r_nco[26]~85\) # (GND)))))
-- \r_nco[27]~87\ = CARRY((r_nco(27) & (!r_fcw(27) & !\r_nco[26]~85\)) # (!r_nco(27) & ((!\r_nco[26]~85\) # (!r_fcw(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(27),
	datab => r_fcw(27),
	datad => VCC,
	cin => \r_nco[26]~85\,
	combout => \r_nco[27]~86_combout\,
	cout => \r_nco[27]~87\);

-- Location: LCCOMB_X18_Y19_N20
\r_nco[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[27]~feeder_combout\ = \r_nco[27]~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[27]~86_combout\,
	combout => \r_nco[27]~feeder_combout\);

-- Location: IOIBUF_X34_Y20_N15
\i_start_phase[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(27),
	o => \i_start_phase[27]~input_o\);

-- Location: FF_X26_Y19_N5
\r_start_phase[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_start_phase[27]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(27));

-- Location: FF_X18_Y19_N21
\r_nco[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[27]~feeder_combout\,
	asdata => r_start_phase(27),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(27));

-- Location: LCCOMB_X18_Y19_N14
\lut_addr[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[8]~feeder_combout\ = r_nco(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_nco(27),
	combout => \lut_addr[8]~feeder_combout\);

-- Location: FF_X18_Y19_N15
\lut_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(8));

-- Location: IOIBUF_X5_Y24_N8
\i_fcw[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(28),
	o => \i_fcw[28]~input_o\);

-- Location: LCCOMB_X13_Y19_N24
\r_fcw[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[28]~feeder_combout\ = \i_fcw[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[28]~input_o\,
	combout => \r_fcw[28]~feeder_combout\);

-- Location: FF_X13_Y19_N25
\r_fcw[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[28]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(28));

-- Location: LCCOMB_X17_Y19_N24
\r_nco[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[28]~88_combout\ = ((r_fcw(28) $ (r_nco(28) $ (!\r_nco[27]~87\)))) # (GND)
-- \r_nco[28]~89\ = CARRY((r_fcw(28) & ((r_nco(28)) # (!\r_nco[27]~87\))) # (!r_fcw(28) & (r_nco(28) & !\r_nco[27]~87\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(28),
	datab => r_nco(28),
	datad => VCC,
	cin => \r_nco[27]~87\,
	combout => \r_nco[28]~88_combout\,
	cout => \r_nco[28]~89\);

-- Location: IOIBUF_X34_Y18_N15
\i_start_phase[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(28),
	o => \i_start_phase[28]~input_o\);

-- Location: LCCOMB_X17_Y18_N0
\r_start_phase[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[28]~feeder_combout\ = \i_start_phase[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[28]~input_o\,
	combout => \r_start_phase[28]~feeder_combout\);

-- Location: FF_X17_Y18_N1
\r_start_phase[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[28]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(28));

-- Location: FF_X17_Y19_N25
\r_nco[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[28]~88_combout\,
	asdata => r_start_phase(28),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(28));

-- Location: LCCOMB_X18_Y20_N0
\lut_addr[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[9]~feeder_combout\ = r_nco(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(28),
	combout => \lut_addr[9]~feeder_combout\);

-- Location: FF_X18_Y20_N1
\lut_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(9));

-- Location: IOIBUF_X5_Y24_N15
\i_fcw[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(29),
	o => \i_fcw[29]~input_o\);

-- Location: LCCOMB_X13_Y19_N6
\r_fcw[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[29]~feeder_combout\ = \i_fcw[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[29]~input_o\,
	combout => \r_fcw[29]~feeder_combout\);

-- Location: FF_X13_Y19_N7
\r_fcw[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[29]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(29));

-- Location: LCCOMB_X17_Y19_N26
\r_nco[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[29]~90_combout\ = (r_nco(29) & ((r_fcw(29) & (\r_nco[28]~89\ & VCC)) # (!r_fcw(29) & (!\r_nco[28]~89\)))) # (!r_nco(29) & ((r_fcw(29) & (!\r_nco[28]~89\)) # (!r_fcw(29) & ((\r_nco[28]~89\) # (GND)))))
-- \r_nco[29]~91\ = CARRY((r_nco(29) & (!r_fcw(29) & !\r_nco[28]~89\)) # (!r_nco(29) & ((!\r_nco[28]~89\) # (!r_fcw(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_nco(29),
	datab => r_fcw(29),
	datad => VCC,
	cin => \r_nco[28]~89\,
	combout => \r_nco[29]~90_combout\,
	cout => \r_nco[29]~91\);

-- Location: IOIBUF_X34_Y19_N8
\i_start_phase[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(29),
	o => \i_start_phase[29]~input_o\);

-- Location: LCCOMB_X18_Y19_N12
\r_start_phase[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[29]~feeder_combout\ = \i_start_phase[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_start_phase[29]~input_o\,
	combout => \r_start_phase[29]~feeder_combout\);

-- Location: FF_X18_Y19_N13
\r_start_phase[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[29]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(29));

-- Location: FF_X17_Y19_N27
\r_nco[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[29]~90_combout\,
	asdata => r_start_phase(29),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(29));

-- Location: LCCOMB_X18_Y19_N28
\lut_addr[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[10]~feeder_combout\ = r_nco(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(29),
	combout => \lut_addr[10]~feeder_combout\);

-- Location: FF_X18_Y19_N29
\lut_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(10));

-- Location: IOIBUF_X0_Y19_N15
\i_fcw[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(30),
	o => \i_fcw[30]~input_o\);

-- Location: LCCOMB_X10_Y19_N8
\r_fcw[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[30]~feeder_combout\ = \i_fcw[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[30]~input_o\,
	combout => \r_fcw[30]~feeder_combout\);

-- Location: FF_X10_Y19_N9
\r_fcw[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[30]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(30));

-- Location: LCCOMB_X17_Y19_N28
\r_nco[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[30]~92_combout\ = ((r_fcw(30) $ (r_nco(30) $ (!\r_nco[29]~91\)))) # (GND)
-- \r_nco[30]~93\ = CARRY((r_fcw(30) & ((r_nco(30)) # (!\r_nco[29]~91\))) # (!r_fcw(30) & (r_nco(30) & !\r_nco[29]~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_fcw(30),
	datab => r_nco(30),
	datad => VCC,
	cin => \r_nco[29]~91\,
	combout => \r_nco[30]~92_combout\,
	cout => \r_nco[30]~93\);

-- Location: LCCOMB_X18_Y19_N22
\r_nco[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[30]~feeder_combout\ = \r_nco[30]~92_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r_nco[30]~92_combout\,
	combout => \r_nco[30]~feeder_combout\);

-- Location: IOIBUF_X28_Y24_N1
\i_start_phase[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(30),
	o => \i_start_phase[30]~input_o\);

-- Location: LCCOMB_X21_Y20_N30
\r_start_phase[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_start_phase[30]~feeder_combout\ = \i_start_phase[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_start_phase[30]~input_o\,
	combout => \r_start_phase[30]~feeder_combout\);

-- Location: FF_X21_Y20_N31
\r_start_phase[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_start_phase[30]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(30));

-- Location: FF_X18_Y19_N23
\r_nco[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[30]~feeder_combout\,
	asdata => r_start_phase(30),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(30));

-- Location: LCCOMB_X18_Y19_N26
\lut_addr[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[11]~feeder_combout\ = r_nco(30)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(30),
	combout => \lut_addr[11]~feeder_combout\);

-- Location: FF_X18_Y19_N27
\lut_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(11));

-- Location: IOIBUF_X0_Y18_N22
\i_fcw[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_fcw(31),
	o => \i_fcw[31]~input_o\);

-- Location: LCCOMB_X13_Y19_N16
\r_fcw[31]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_fcw[31]~feeder_combout\ = \i_fcw[31]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_fcw[31]~input_o\,
	combout => \r_fcw[31]~feeder_combout\);

-- Location: FF_X13_Y19_N17
\r_fcw[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_fcw[31]~feeder_combout\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_fcw(31));

-- Location: LCCOMB_X17_Y19_N30
\r_nco[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_nco[31]~94_combout\ = r_fcw(31) $ (\r_nco[30]~93\ $ (r_nco(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_fcw(31),
	datad => r_nco(31),
	cin => \r_nco[30]~93\,
	combout => \r_nco[31]~94_combout\);

-- Location: IOIBUF_X1_Y24_N1
\i_start_phase[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_start_phase(31),
	o => \i_start_phase[31]~input_o\);

-- Location: FF_X14_Y20_N29
\r_start_phase[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_start_phase[31]~input_o\,
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_start_phase(31));

-- Location: FF_X17_Y19_N31
\r_nco[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \r_nco[31]~94_combout\,
	asdata => r_start_phase(31),
	clrn => \i_rstb~inputclkctrl_outclk\,
	sload => \ALT_INV_r_sync_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_nco(31));

-- Location: LCCOMB_X16_Y19_N20
\lut_addr[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lut_addr[12]~feeder_combout\ = r_nco(31)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_nco(31),
	combout => \lut_addr[12]~feeder_combout\);

-- Location: FF_X16_Y19_N21
\lut_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \lut_addr[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lut_addr(12));

-- Location: M9K_X27_Y21_N0
\Mux13_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"E1C3870E1E3C78F0E1E3C387870F0F0F0F0F0F0F0787C3E1F07C1F07C1F81F03F81FC07F807F801FF8003FFF80000001FFFF80000003FFF800FFC03F80FC0FC1F07C3C3C3C3870E38E38E718E7318CC66673336666CD9B26C936DB6D24B69694B5AD4AD4AB552AAA55555554AAA954AB56A5296B4B6925B6C926C9933266673319CE71CE3C70F0F0F83F01FE001FFFFFFFF000FF01F83E1E1C38E38E7398CCCCCCD9B36C924B692D695A952A95555555554AA54AD6B4B496DB6C9B36666666338C71C70E1E0F81FE007FFFFFFFC00FE07C1E1C38E38C673399B3364D92496D2D295A954AAAAAAAAAB55A95AD2D25B6D9364CCCCCCE739C71C3C3C1F01FE00000",
	mem_init2 => X"00000FF01F0787871C739CE6666664D936DB49696B52B55AAAAAAAAAA552B529696D249364D99B3399CC638E3870F07C0FE007FFFFFFFC00FF03E0F0E1C71C6398CCCCCCD9B26DB6D25A5AD6A54AA55555555552A952B52D692DA4926D9B36666666339CE38E3870F0F83F01FE001FFFFFFFF000FF01F83E1E1E1C78E71CE73199CCCC999326C926DB492DA5AD294AD5AA552AAA55555554AAA955AA56A56B5A52D2DA496DB6D926C9B366CCCD999CCCC66319CE31CE38E38E1C387878787C1F07E07E03F807FE003FFF80000003FFFF00000003FFF8003FF003FC03FC07F03F81F03F07C1F07C1F0F87C3C1E1E1E1E1E1E1E1C3C3878F0E1E3C78F0E1C3870E",
	mem_init1 => X"E1C3870E1E3C78F0E1E3C387870F0F0F0F0F0F0F0787C3E1F07C1F07C1F81F03F81FC07F807F801FF8003FFF80000001FFFF80000003FFF800FFC03F80FC0FC1F07C3C3C3C3870E38E38E718E7318CC66673336666CD9B26C936DB6D24B69694B5AD4AD4AB552AAA55555554AAA954AB56A5296B4B6925B6C926C9933266673319CE71CE3C70F0F0F83F01FE001FFFFFFFF000FF01F83E1E1C38E38E7398CCCCCCD9B36C924B692D695A952A95555555554AA54AD6B4B496DB6C9B36666666338C71C70E1E0F81FE007FFFFFFFC00FE07C1E1C38E38C673399B3364D92496D2D295A954AAAAAAAAAB55A95AD2D25B6D9364CCCCCCE739C71C3C3C1F01FFFFFFF",
	mem_init0 => X"FFFFFFF01F0787871C739CE6666664D936DB49696B52B55AAAAAAAAAA552B529696D249364D99B3399CC638E3870F07C0FE007FFFFFFFC00FF03E0F0E1C71C6398CCCCCCD9B26DB6D25A5AD6A54AA55555555552A952B52D692DA4926D9B36666666339CE38E3870F0F83F01FE001FFFFFFFF000FF01F83E1E1E1C78E71CE73199CCCC999326C926DB492DA5AD294AD5AA552AAA55555554AAA955AA56A56B5A52D2DA496DB6D926C9B366CCCD999CCCC66319CE31CE38E38E1C387878787C1F07E07E03F807FE003FFF80000003FFFF00000003FFF8003FF003FC03FC07F03F81F03F07C1F07C1F0F87C3C1E1E1E1E1E1E1E1C3C3878F0E1E3C78F0E1C3870E",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y18_N0
\Mux13_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"54A952A54A952A55AB56A952AD5AA55AA55AA55AAD52A954AAD54AAD54AAB556AAB5552AAAD5554AAAAA955555555554AAAAD55555555552AAAA95552AA9556AA556A956A952A54AD4AD4A52B5A5296B4B5A5A4B4B692DB4925B6DB64924DB26D9366C9932664CCC99999998CCCE673398C6318C738E39C70E38F1E3C38787C3E1F07E0FC07F00FF003FFE00001FFFFFFFF00000FFF801FE03F81F81F0783C3C3C3870E38E38E71CE7398CE67333333333266CD9B26D924DB6DA496D2D2D2D695AD4AD5AB55AAB55552AAAAAAA95554AA954A952B5294A5AD2DA5B69249249B64D93266CCCCCCCCCC66319CE31C638E1C78F0F0F0F83E07E03FC01FFE0000000",
	mem_init2 => X"0000000FFF007F80FC0F83E1E1E1E3C70E38C718E7318CC6666666666CC99364DB2492492DB4B696B4A5295A952A552AA55552AAAAAAA95555AAB55AB56A56B52D6969696D24B6DB64936C9B366CC9999999999CCE6339CE71CE38E38E1C387878783C1F03F03F80FF003FFE00001FFFFFFFF00000FFF801FE01FC07E0FC1F0F87C3C3878F1E38E1C738E39C6318C63399CCE666333333326664CC99326CD936C9B64924DB6DB4925B692DA5A4B4B5A5AD294B5A94A56A56A54A952AD52AD54AAD552AA95552AAAA955555555556AAAA555555555552AAAAA55556AAA9555AAAD55AAA556AA556AA552A956AB54AB54AB54AB56A952AD5AB54A952A54A952A54",
	mem_init1 => X"B56AD5AB54A952A54AB56AD52A55AA55AA55AA55AAD56AB55AA955AA9552AA5552AA95552AAAD55552AAAAAAD5555555555555555556AAAAAA55556AAA555AAB552A956A956AD5A95A95AD4A5294A5AD2D29692D2DA4B6925B6DB6DB6D924DB26C9B264D99336666CCCCCCCC66673398CE6318E738E71C71C71E3870F1E1E0F0F83E0FC1FC0FF00FF800FFFE00000000000000FFFE003FE01FC0FC0F83E0F0F0F0E1C38F1C738E318E6319CCE6666666666CC99364D926DB6DB6D25B4B4B4B5AD6A56A54AB552AAB5555555555555AAAD54AB56A56A52D694B696D24B6DB249B64C9B3266666666673398C631CE38E38F1C3C3C3C1F07C0FC03FC00FFFFFFFFF",
	mem_init0 => X"FFFFFFFFE007F807E07C1F078787871E38E38E718C63399CCCCCCCCCC99B264DB249B6DA496D2DA52D694AD4AD5AA556AAB5555555555555AAA955AA54AD4AD6B5A5A5A5B496DB6DB6C9364D93266CCCCCCCCCCE67318CE318E39C71E3870E1E1E1E0F83E07E07F00FF800FFFE00000000000000FFFE003FE01FE07F07E0F83E1E0F0F1E1C38F1C71C71CE39CE318CE63399CCCC66666666CCCD993364C9B26C9B64936DB6DB6DB492DA4B69692D29696B4A5294A56B52B52B56AD52AD52A955AAB554AAAD5554AAAAAAD5555555555555555556AAAAAA955556AAA95552AA9554AA9552AB552AB55AAD56AB54AB54AB54AB54A956AD5AA54A952A55AB56AD5A",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y17_N0
\Mux13_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"3398CE63398CE63398CE67319CC663399CC663399CCE673399CCC66333998CCE6673331999CCCCC666667333333333339999B3333333333666664CCC999B33266CCD9B3264C993264D9B26C9936C9B26D936C926D9249B6DB6C92492DB6DB6924B6D25B496D2DA5A4B4B4B4A5A5AD296B5AD6B5AD6A56B52A56A54A956AD52A954AAD55AAAD555AAAA955555554AAAAAAAA555555552AAAB5552AAD55AAD56A956AD5AB52B52B5A94A52D6B4A5A5A5A5A5B4B692DB492496DB6C9249B649B64D9366C993266CCD9999B333333319998CCE67319CC6318C631CE39C71C71C71C78E1C3870F0F0F0F0F87C1E0FC1F83F01F80FF00FF003FF8003FFFE0000000000",
	mem_init2 => X"0000000000FFFF8003FF801FE01FE03F01F83F07E0F07C3E1E1E1E1E1C3870E3C71C71C71C738E718C6318C67319CCE66333319999999B3333666CC99326CD9364DB24DB24926DB6D24925B692DA5B4B4B4B4B4A5AD694A52B5A95A95AB56AD52AD56AB556AA9555AAAA955555554AAAAAAAA555555552AAAB5556AAB556AA552A956AD52A54AD4A95AD4AD6B5AD6B5AD296B4B4A5A5A5A4B4B696D25B496DA492DB6DB6924926DB6DB24936C926D936C9B26D9326C9B364C993264C99B3666CC999B3326664CCCCD9999999999B333399999999999CCCCCC666673331999CCCE66333998CC6673399CCE673398CC673398CC67319CCE63398CE63398CE63398",
	mem_init1 => X"C67319CC67319CC673398CE63399CC663399CC6633198CC6633199CCE66333999CCCE666333319999CCCCCCCE6666666666666666664CCCCCC9999B333666CCD99B3264CD9B366CD9326C99364D936C9B64DB249B6C924DB6DB6DB6DB6DB6924B6D24B692DA5B4B496969696B4B5A52D6B4A52B5AD4A56A56A54AD5AA54AB55AAD54AA9556AAA55552AAAAAB55555555555555AAAAAA95554AAA555AA955AA55AA54A95AB5295A94A5294B5A52D2D2D2D2DA5B492DB4924924924936D926D9364D9326CD99336666CCCCCCCCCCCCC66633398CE6319CE318C718E31C71C71C78E3C78F1E1E1E1E1E0F0783E0FC1F81F80FC03FC03FF003FFC0003FFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFF80007FF801FF807F807E03F03F07E0F83C1E0F0F0F0F0F1E3C78E3C71C71C718E31C6318E7318CE633998CCC6666666666666CCCD993366C99364D936C936D924924924925B6925B4B69696969694B5A5294A52B5295AB52A54AB54AB552AB554AAA55552AAAAAB55555555555555AAAAAA95554AAAD552AA556AB55AA54AB56A54AD4AD4A56B5A94A5AD694B5A5AD2D2D2D25A5B4B692DA496DA492DB6DB6DB6DB6DB64926DB249B64DB26D9364D9326C99366CD9B3664C99B33666CCD999B33326666664CCCCCCCCCCCCCCCCCCE6666667333319998CCCE667333998CCE6733198CC6633198CC673398CC673398CE63399CC67319CC67319CC6",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y20_N0
\Mux13_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"A52D6B4A52D6B4A52D6B4A5AD694B5AD296B4A52D694B5A52D696B4A5AD2D694B4A5A5AD2D69696B4B4B5A5A5A5A5A5AD2D2DA5A5A5A5A5B4B4B69692D2DA5B4B696D25B496D25B496D24B6D25B6D24B6DA4924B6DB6D24924924924924924DB6DB64926DB64936C926D926C936C9B24D9364D9364C9B264C9B366CD9B3664CD9933666CCC99993333266666666CCCCCCCC6666666633333999CCCE6633198CE67319CC6339CC6318C6318C739C639C639C738E31C71C718E38F1C71C78E3871E3870E1C3870F1E1E1C3C3C3C3E1E1F0F0783E1F07C1F07C1F03E07E07E07E07F01FC07F00FF00FF007FE00FFE003FFE000FFFF00003FFFFFC00000000000000",
	mem_init2 => X"000000000000007FFFFF80001FFFE000FFF800FFE00FFC01FE01FE01FC07F01FC0FC0FC0FC0F81F07C1F07C1F0F83C1E1F0F0F878787870F0F1E1C3870E1C38F1C38E3C71C71E38E31C71C718E39C738C738C739C6318C6318C67398C67319CCE633198CCE66733399998CCCCCCCC66666666CCCCCCCC999993332666CCD9933664CD9B366CD9B264C9B264D9364D93649B26D926C936C926D924DB6C924DB6DB6492492492492492496DB6DA4924B6DA496DB496DA496D25B496D25B496D2DA5B4B69692D2DA5A5B4B4B4B4B4B69696B4B4B4B4B4B5A5A5AD2D2D696B4B4A5A52D696B4A5AD2D694B5A52D694A5AD296B5A52D6B4A5AD694A5AD694A5AD694A",
	mem_init1 => X"52D6B4A52D6B4A52D694A5AD694B5AD296B4A52D694B5A52D694B4A5AD29694B4A5A52D29696B4B4B5A5A5A5AD2D2D2D2D2D2D2D2D2DA5A5A5B4B49696D2DA5B4B696D25B496D25B496DA4B6D24B6DA492DB6924925B6DB6DB6DB6DB6DB6DB6D924926DB64936D924DB24DB26D936C9B26D9366C9B26CD9326CD9B366CD9933664CD99B332666CCCC9999999333333333333339999998CCCC666333998CC663399CC67398CE7398C6318C739CE31CE31CE39C738E38C71C71C71C70E38E1C70E3C70E1C3870F1E1E3C3C3C3C3C3C3E1E0F0783E1F07C1F07C0F81F03F03F03F81FC07F01FE01FE01FF007FE003FF8007FFC0003FFFF000003FFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFF800001FFFF80007FFC003FF800FFC01FF00FF00FF01FC07F03F81F81F81F03E07C1F07C1F0F83C1E0F0F8787878787878F0F1E1C3870E1C78E1C70E38E1C71C71C71C638E39C738E718E718E739C6318C6339CE6339CC673398CC66333998CCC666633333339999999999999933333326666CCC999B33664CD993366CD9B366C99366C9B26CD936C9B26D936C9B649B64936D924DB6C924936DB6DB6DB6DB6DB6DB6DB492492DB6924B6DA496DA4B6D25B496D25B496D2DA5B4B696D2D25A5B4B4B4B6969696969696969696B4B4B4B5A5A5AD2D29694B4A5A52D296B4A5A52D694B5A52D694A5AD296B5A52D6B4A52D694A5AD694A5AD694",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y22_N0
\Mux13_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"C6318C739CE738C6318C739CE718C631CE738C6318E739C6318E738C631CE718C739C631CE718E738C739C639C639C631CE31C639C639C638C738E71CE31C638C718E39C718E39C718E38C71C638E38C71C71C738E38E38E38E38E38E38E38E38E3871C71C78E38F1C71E38F1C70E3C71E3871E3870E3C78F1C3870E1C3878F1E1C3878F0F1E1E3C3C3878787870F0F0F0F87878787C3C3C1E1F0F0783C1E0F0783E1F07C3E0F83E0F83E0F83E07C1F83E07C0FC1F81F81F03F01F81F80FC07E03F80FE03F80FE01FE03FC03FC01FE00FF803FE007FE007FE003FF8007FF8007FFE0007FFF0000FFFF80000FFFFFC000000FFFFFFFFC00000000000000000000",
	mem_init2 => X"000000000000000000007FFFFFFFE0000007FFFFE00003FFFE0001FFFC000FFFC003FFC003FF800FFC00FFC00FF803FE00FF007F807F80FF00FE03F80FE03F80FC07E03F03F01F81F03F03F07E07C0F83F07C0F83E0F83E0F83E0F87C1F0F83C1E0F0783C1E1F0F078787C3C3C3C3E1E1E1E1C3C3C3C387878F0F1E1E3C3870F1E3C3870E1C3871E3C78E1C38F1C38F1C78E1C71E38F1C71E38E3C71C71C38E38E38E38E38E38E38E38E38E39C71C71C638E38C71C638E31C738E31C738E31C638C718E71CE39C638C738C738C718E718C738C738C739C639CE31CE718C739C631CE718C639CE318C739CE318C639CE718C631CE739C6318C639CE739C6318C6",
	mem_init1 => X"31CE739CE318C631CE739C6318C739CE718C631CE738C631CE738C639CE718C739C631CE718E738C739C639C631CE31CE31CE31CE31C639C638C738E71CE39C738E71CE38C71CE38C71C638E31C71C638E38E71C71C71C71C71C71C71C71C71C71C71E38E38F1C71C38E3C71E38F1C78E1C70E1C78E1C38F1E3C78F1E3C78F0E1C3C7870F1E1E3C3C78787870F0F0F0F0F0F0F87878783C3C1E1F0F8783C1E0F87C3E0F87C1F0783E0F83F07C1F03E0FC1F83F07E07C0FC0FC0FC0FE07E03F01FC0FE03F80FF01FE03FC03FC03FC01FE00FF801FF003FF003FF800FFF000FFF8003FFF0001FFFE0000FFFFE000007FFFFFC00000000FFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFE000000007FFFFFC00000FFFFE0000FFFF0001FFF8003FFE001FFE003FF801FF801FF003FE00FF007F807F807F80FF01FE03F80FE07F01F80FC0FE07E07E07E07C0FC1F83F07E0F81F07C1F83E0F83C1F07C3E0F87C3E0F0783C3E1F0F078783C3C3C3E1E1E1E1E1E1E1C3C3C3C7878F0F1E1C3C7870E1E3C78F1E3C78F1E3870E3C70E1C70E3C71E38F1C78E3871C71E38E38F1C71C71C71C71C71C71C71C71C71C71CE38E38C71C718E38C71C638E71C638E71CE39C738E71CE39C638C738C718E718E718E718E718C738C739C639CE31CE718C739C631CE738C639CE718C639CE718C631CE739C6318C739CE718C6318E739CE718",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y18_N0
\Mux13_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F83E0F83E0F83F07C1F07C1F07E0F83E0F83F07C1F07C1F83E0F83F07C1F07E0F83E07C1F07E0F83F07C1F83E07C1F83E0FC1F83E07C1F83F07C0F81F03E07C0F81F03E07E0FC1F81F03F07E07C0FC0F81F81F83F03F03F03F03F03F03F03F03F03F81F81F80FC0FE07E03F01F80FC07E03F81FC07F03F80FE03F80FE03F80FE01FC07F00FE01FC03FC07F807F80FF00FF007F807F803FC01FE00FF803FE00FF803FE007FC00FFC00FFC00FFC007FE003FF800FFE001FFE003FFE001FFF0007FFC000FFFC000FFFE0003FFFC0001FFFF00003FFFF800007FFFFC000007FFFFF80000007FFFFFFF000000000FFFFFFFFFFFF00000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000001FFFFFFFFFFFE000000001FFFFFFFC0000003FFFFFC000007FFFFC00003FFFF80001FFFF00007FFF8000FFFE0007FFE0007FFC001FFF000FFF800FFF000FFE003FF800FFC007FE007FE007FE007FC00FF803FE00FF803FE00FF007F803FC03FC01FE01FE03FC03FC07F807F00FE01FC07F00FE03F80FE03F80FE03F81FC07F03F80FC07E03F01F80FC0FE07E03F03F03F81F81F81F81F81F81F81F81F81F83F03F03E07E07C0FC1F81F03F07E0FC0F81F03E07C0F81F03E07C1F83F07C0F83F07E0F83F07C0F83F07C1F83E0FC1F07C0F83E0FC1F07C1F83E0F83F07C1F07C1F83E0F83E0FC1F07C1F07C1F83E0F83E0F83E",
	mem_init1 => X"0FC1F07C1F07C1F03E0F83E0F83F07C1F07C1F03E0F83E0FC1F07C1F83E0F83F07C1F03E0F81F07C0F83E07C1F03E0FC1F03E0FC1F03E07C1F83F07E0FC1F83F07E0FC1F83F03E07C0FC1F81F03F03E07E07E0FC0FC0FC0FC0FC0FC0FC0FC0FC0FC0FE07E07F03F03F81FC0FE07F03F81FC0FE03F81FC07F01FC07F01FC07F01FC03F80FF01FE03FC07F807F00FF00FF00FF007F807F803FC01FF007F803FE007FC01FF803FF007FE007FF003FF001FFC007FF001FFC003FFC003FFE001FFF0003FFE0007FFF0001FFFC0003FFFC0001FFFF80000FFFFF000007FFFFF0000007FFFFFF00000001FFFFFFFFE000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000FFFFFFFFF00000001FFFFFFC000001FFFFFC00001FFFFE00003FFFF00007FFF80007FFF0001FFFC000FFF8001FFF000FFF8007FF8007FF001FFC007FF001FF801FFC00FFC01FF803FF007FC00FF803FC01FF007F803FC03FC01FE01FE01FE01FC03FC07F80FF01FE03F807F01FC07F01FC07F01FC07F03F80FE07F03F81FC0FE07F03F81F81FC0FC0FE07E07E07E07E07E07E07E07E07E07E0FC0FC0F81F81F03F07E07C0F81F83F07E0FC1F83F07E0FC1F83F07C0F81F07E0F81F07E0F81F07C0F83E07C1F03E0F81F07C1F83E0F83F07C1F07E0F83E0F81F07C1F07C1F83E0F83E0F81F07C1F07C1F07E0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y23_N0
\Mux13_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFC00FFC00FFC007FE007FE007FF003FF003FF801FF801FFC00FFC007FE007FF003FF801FF800FFC007FE003FF801FFC00FFE003FF801FFC007FF001FFC007FF001FFC007FF001FFE003FF8007FF000FFE001FFC003FFC003FFC003FFC003FFC003FFE001FFF000FFF8003FFE000FFF8003FFE0007FFC000FFFC000FFFC000FFFE0007FFF0001FFFC0007FFF8000FFFF00007FFF80003FFFE0000FFFFC0000FFFFC00007FFFF00000FFFFF000007FFFFC00000FFFFFE000003FFFFFE0000007FFFFFF0000000FFFFFFFC00000001FFFFFFFFC0000000007FFFFFFFFFF80000000000007FFFFFFFFFFFFFFFF00000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFC0000000000003FFFFFFFFFFC0000000007FFFFFFFF000000007FFFFFFE0000001FFFFFFC000000FFFFFF800000FFFFFE000007FFFFC00001FFFFE00001FFFFC00007FFFE00007FFFE0000FFFF80003FFFC0001FFFE0003FFFC0007FFF0001FFFC000FFFE0007FFE0007FFE0007FFC000FFF8003FFE000FFF8003FFE001FFF000FFF8007FF8007FF8007FF8007FF8007FF000FFE001FFC003FF800FFF001FFC007FF001FFC007FF001FFC007FF003FF800FFE007FF003FF800FFC007FE003FF003FF801FFC00FFC007FE007FF003FF003FF801FF801FFC00FFC00FFC007FE007FE007FE",
	mem_init1 => X"003FF003FF003FF001FF801FF800FFC00FFC00FFE007FE003FF003FF801FF800FFC00FFE007FF003FF801FFC00FFE003FF001FFC00FFE003FF800FFE003FF800FFE003FF800FFE003FFC007FF000FFE001FFE003FFC003FFC003FFC003FFC003FFC001FFE000FFF0007FFC001FFF0007FFC001FFF8003FFF0003FFF0003FFF0003FFF8000FFFE0003FFF8000FFFF0000FFFF00007FFF80003FFFF00007FFFE00003FFFF80000FFFFE00000FFFFF000003FFFFF000003FFFFFC000001FFFFFF0000001FFFFFFF00000003FFFFFFFC000000007FFFFFFFFF00000000000FFFFFFFFFFFFF00000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001FFFFFFFFFFFFE00000000001FFFFFFFFFC000000007FFFFFFF80000001FFFFFFF0000001FFFFFF0000007FFFFF800001FFFFF800001FFFFE00000FFFFE00003FFFF80000FFFFC0001FFFF80003FFFC0001FFFE0001FFFE0003FFF8000FFFE0003FFF8001FFF8001FFF8001FFF8003FFF0007FFC001FFF0007FFC001FFE000FFF0007FF8007FF8007FF8007FF8007FF800FFF000FFE001FFC007FF800FFE003FF800FFE003FF800FFE003FF800FFE007FF001FF800FFE007FF003FF801FFC00FFE007FE003FF003FF801FF800FFC00FFE007FE007FE003FF003FF001FF801FF801FF800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y20_N0
\Mux13_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFF00000FFFFF800007FFFF800003FFFFC00001FFFFE00000FFFFF800007FFFFC00001FFFFF000007FFFFC00001FFFFF000003FFFFE000007FFFFE000007FFFFE000007FFFFE000003FFFFF800000FFFFFE000003FFFFFC000003FFFFFC000003FFFFFE000000FFFFFFC000000FFFFFFC0000007FFFFFF0000000FFFFFFF00000007FFFFFFE00000007FFFFFFF000000007FFFFFFFC00000000FFFFFFFFF0000000007FFFFFFFFF00000000007FFFFFFFFFF000000000003FFFFFFFFFFFF80000000000000FFFFFFFFFFFFFFFE0000000000000000007FFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFC000000000000000000FFFFFFFFFFFFFFFE00000000000003FFFFFFFFFFFF800000000001FFFFFFFFFFC0000000001FFFFFFFFFC000000001FFFFFFFFE000000007FFFFFFFC00000001FFFFFFFC0000000FFFFFFFC0000001FFFFFFE0000001FFFFFFC0000007FFFFFE0000007FFFFFE000000FFFFFF8000007FFFFF8000007FFFFF800000FFFFFE000003FFFFF800000FFFFFC00000FFFFFC00000FFFFFC00000FFFFF800001FFFFF000007FFFFC00001FFFFF000007FFFFC00003FFFFE00000FFFFF000007FFFF800003FFFFC00003FFFFE00001FFFFE",
	mem_init1 => X"00000FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFF000007FFFF800003FFFFE00000FFFFF800003FFFFE00000FFFFFC00001FFFFF800001FFFFF800001FFFFF800001FFFFFC00000FFFFFE000001FFFFFC000003FFFFFC000003FFFFFC000001FFFFFF0000003FFFFFF0000003FFFFFF8000000FFFFFFF0000000FFFFFFF80000001FFFFFFF80000000FFFFFFFF000000007FFFFFFFF000000001FFFFFFFFF8000000001FFFFFFFFFF00000000000FFFFFFFFFFFC000000000000FFFFFFFFFFFFFF0000000000000003FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000001FFFFFFFFFFFFFFFFFF8000000000000001FFFFFFFFFFFFFE0000000000007FFFFFFFFFFE00000000001FFFFFFFFFF0000000003FFFFFFFFF000000001FFFFFFFFC00000001FFFFFFFE00000003FFFFFFF00000003FFFFFFE0000001FFFFFFE0000003FFFFFF8000001FFFFFF8000001FFFFFF0000007FFFFF8000007FFFFF8000007FFFFF000000FFFFFE000007FFFFF000003FFFFF000003FFFFF000003FFFFF000007FFFFE00000FFFFF800003FFFFE00000FFFFF800003FFFFC00001FFFFF00000FFFFF800007FFFFC00003FFFFE00001FFFFE00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y19_N0
\Mux13_rtl_0|auto_generated|ram_block1a8\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFF00000000007FFFFFFFFFE00000000007FFFFFFFFFE00000000003FFFFFFFFFF800000000007FFFFFFFFFF800000000003FFFFFFFFFFF000000000003FFFFFFFFFFFC000000000003FFFFFFFFFFFF0000000000000FFFFFFFFFFFFF80000000000000FFFFFFFFFFFFFF8000000000000007FFFFFFFFFFFFFFF80000000000000000FFFFFFFFFFFFFFFFFF800000000000000000007FFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFC00000000000000000003FFFFFFFFFFFFFFFFFE00000000000000003FFFFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFE00000000000003FFFFFFFFFFFFE0000000000001FFFFFFFFFFFF8000000000007FFFFFFFFFFF800000000001FFFFFFFFFFF800000000003FFFFFFFFFFC00000000003FFFFFFFFFF80000000000FFFFFFFFFFC0000000000FFFFFFFFFFC0000000001FFFFFFFFFF00000000007FFFFFFFFFC0000000001FFFFFFFFFE",
	mem_init1 => X"0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000001FFFFFFFFFF80000000001FFFFFFFFFFC00000000007FFFFFFFFFF800000000007FFFFFFFFFFC00000000001FFFFFFFFFFFC000000000003FFFFFFFFFFFC000000000000FFFFFFFFFFFFF00000000000007FFFFFFFFFFFFF000000000000007FFFFFFFFFFFFFF8000000000000000FFFFFFFFFFFFFFFFF0000000000000000007FFFFFFFFFFFFFFFFFFF00000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000001FFFFFFFFFFFFFFFFFFFC000000000000000001FFFFFFFFFFFFFFFFE0000000000000003FFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFC0000000000001FFFFFFFFFFFFE0000000000007FFFFFFFFFFF8000000000007FFFFFFFFFFF000000000007FFFFFFFFFFC00000000003FFFFFFFFFFC00000000007FFFFFFFFFF00000000003FFFFFFFFFF00000000003FFFFFFFFFE0000000000FFFFFFFFFF80000000003FFFFFFFFFE0000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y17_N0
\Mux13_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFF800000000000000000001FFFFFFFFFFFFFFFFFFFF8000000000000000000007FFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFFC00000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFF800000000000000000000007FFFFFFFFFFFFFFFFFFFFFC0000000000000000000007FFFFFFFFFFFFFFFFFFFFC000000000000000000003FFFFFFFFFFFFFFFFFFFF000000000000000000003FFFFFFFFFFFFFFFFFFFE",
	mem_init1 => X"000000000000000000007FFFFFFFFFFFFFFFFFFFE000000000000000000007FFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFFFC000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000007FFFFFFFFFFFFFFFFFFFFFF80000000000000000000003FFFFFFFFFFFFFFFFFFFFF8000000000000000000003FFFFFFFFFFFFFFFFFFFFC00000000000000000000FFFFFFFFFFFFFFFFFFFFC00000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y22_N0
\Mux13_rtl_0|auto_generated|ram_block1a10\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init1 => X"00000000000000000000000000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE00000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y23_N0
\Mux13_rtl_0|auto_generated|ram_block1a11\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M9K_X15_Y21_N0
\Mux13_rtl_0|auto_generated|ram_block1a12\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init1 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M9K_X27_Y19_N0
\Mux13_rtl_0|auto_generated|ram_block1a13\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "dds_sine.dds_sine0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "altsyncram:Mux13_rtl_0|altsyncram_ptv:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 13,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 14,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \i_clk~inputclkctrl_outclk\,
	clr0 => \ALT_INV_i_rstb~inputclkctrl_outclk\,
	portaaddr => \Mux13_rtl_0|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Mux13_rtl_0|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

ww_o_sine(0) <= \o_sine[0]~output_o\;

ww_o_sine(1) <= \o_sine[1]~output_o\;

ww_o_sine(2) <= \o_sine[2]~output_o\;

ww_o_sine(3) <= \o_sine[3]~output_o\;

ww_o_sine(4) <= \o_sine[4]~output_o\;

ww_o_sine(5) <= \o_sine[5]~output_o\;

ww_o_sine(6) <= \o_sine[6]~output_o\;

ww_o_sine(7) <= \o_sine[7]~output_o\;

ww_o_sine(8) <= \o_sine[8]~output_o\;

ww_o_sine(9) <= \o_sine[9]~output_o\;

ww_o_sine(10) <= \o_sine[10]~output_o\;

ww_o_sine(11) <= \o_sine[11]~output_o\;

ww_o_sine(12) <= \o_sine[12]~output_o\;

ww_o_sine(13) <= \o_sine[13]~output_o\;
END structure;


