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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Tue Apr 30 19:49:08 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DDS_TEST IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		output :  OUT  STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END DDS_TEST;

ARCHITECTURE bdf_type OF DDS_TEST IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_constant_0
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_0: COMPONENT IS true;

COMPONENT lpm_constant_1
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_1: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_1: COMPONENT IS true;

COMPONENT lpm_constant_2
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_2: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_2: COMPONENT IS true;

COMPONENT lpm_constant_3
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_3: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_3: COMPONENT IS true;

COMPONENT dds_sine
	PORT(i_clk : IN STD_LOGIC;
		 i_rstb : IN STD_LOGIC;
		 i_sync_reset : IN STD_LOGIC;
		 i_fcw : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 i_start_phase : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 o_sine : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : dds_sine
PORT MAP(i_clk => Clock,
		 i_rstb => SYNTHESIZED_WIRE_0,
		 i_sync_reset => SYNTHESIZED_WIRE_1,
		 i_fcw => SYNTHESIZED_WIRE_2,
		 i_start_phase => SYNTHESIZED_WIRE_3,
		 o_sine => output);


b2v_inst2 : lpm_constant_0
PORT MAP(		 result => SYNTHESIZED_WIRE_3);


b2v_inst4 : lpm_constant_1
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_inst5 : lpm_constant_2
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_0);


b2v_inst6 : lpm_constant_3
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_1);


END bdf_type;