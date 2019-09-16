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
-- CREATED		"Tue May 07 14:26:09 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY diff IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		diffIn :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		diffOut :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END diff;

ARCHITECTURE bdf_type OF diff IS 

COMPONENT mymult1
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT alpha
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT beta
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT halfsies
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT threshold
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT sub32
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add32
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT absolutely
	PORT(data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



b2v_inst : mymult1
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_15,
		 datab => diffIn,
		 result => SYNTHESIZED_WIRE_11);


b2v_inst1 : mymult1
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_1,
		 datab => SYNTHESIZED_WIRE_2,
		 result => SYNTHESIZED_WIRE_12);


b2v_inst10 : alpha
PORT MAP(		 result => SYNTHESIZED_WIRE_5);


b2v_inst11 : beta
PORT MAP(		 result => SYNTHESIZED_WIRE_15);


b2v_inst12 : halfsies
PORT MAP(		 result => SYNTHESIZED_WIRE_4);


b2v_inst13 : threshold
PORT MAP(		 result => SYNTHESIZED_WIRE_16);


b2v_inst2 : mymult1
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_3,
		 datab => SYNTHESIZED_WIRE_4,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst3 : sub32
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_5,
		 datab => SYNTHESIZED_WIRE_15,
		 result => SYNTHESIZED_WIRE_3);


b2v_inst4 : sub32
PORT MAP(clock => clock,
		 dataa => diffIn,
		 datab => SYNTHESIZED_WIRE_16,
		 result => SYNTHESIZED_WIRE_14);


b2v_inst5 : sub32
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_8,
		 datab => SYNTHESIZED_WIRE_9,
		 result => SYNTHESIZED_WIRE_2);


b2v_inst6 : add32
PORT MAP(clock => clock,
		 dataa => diffIn,
		 datab => SYNTHESIZED_WIRE_16,
		 result => SYNTHESIZED_WIRE_13);


b2v_inst7 : add32
PORT MAP(clock => clock,
		 dataa => SYNTHESIZED_WIRE_11,
		 datab => SYNTHESIZED_WIRE_12,
		 result => diffOut);


b2v_inst8 : absolutely
PORT MAP(data => SYNTHESIZED_WIRE_13,
		 result => SYNTHESIZED_WIRE_8);


b2v_inst9 : absolutely
PORT MAP(data => SYNTHESIZED_WIRE_14,
		 result => SYNTHESIZED_WIRE_9);


END bdf_type;