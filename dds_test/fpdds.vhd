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
-- CREATED		"Thu May 02 18:51:10 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fpdds IS 
	PORT
	(
		z_i_clk :  IN  STD_LOGIC;
		z_i_rstb :  IN  STD_LOGIC;
		z_i_sync_reset :  IN  STD_LOGIC;
		z_i_fcw :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		z_i_start_phase :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		fpOut :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END fpdds;

ARCHITECTURE bdf_type OF fpdds IS 

COMPONENT dds_sine
	PORT(i_clk : IN STD_LOGIC;
		 i_rstb : IN STD_LOGIC;
		 i_sync_reset : IN STD_LOGIC;
		 i_fcw : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 i_start_phase : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 o_sine : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
	);
END COMPONENT;

COMPONENT myconvert
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mymult1
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT constdac
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT constdac2
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT divider
	PORT(denom : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 numer : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 quotient : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(13 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : dds_sine
PORT MAP(i_clk => z_i_clk,
		 i_rstb => z_i_rstb,
		 i_sync_reset => z_i_sync_reset,
		 i_fcw => z_i_fcw,
		 i_start_phase => z_i_start_phase,
		 o_sine => SYNTHESIZED_WIRE_0);


b2v_inst2 : myconvert
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_0,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst3 : mymult1
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_1,
		 datab => SYNTHESIZED_WIRE_2,
		 result => fpOut);


b2v_inst4 : constdac
PORT MAP(		 result => SYNTHESIZED_WIRE_4);


b2v_inst5 : constdac2
PORT MAP(		 result => SYNTHESIZED_WIRE_3);


b2v_inst99 : divider
PORT MAP(denom => SYNTHESIZED_WIRE_3,
		 numer => SYNTHESIZED_WIRE_4,
		 quotient => SYNTHESIZED_WIRE_2);


END bdf_type;