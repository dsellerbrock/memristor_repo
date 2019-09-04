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
-- CREATED		"Thu Apr 25 16:10:46 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY HysTest IS 
	PORT
	(
		Clock :  IN  STD_LOGIC;
		InVoltage :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		memCurrent :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		memVoltage :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END HysTest;

ARCHITECTURE bdf_type OF HysTest IS 

ATTRIBUTE black_box : BOOLEAN;
ATTRIBUTE noopt : BOOLEAN;

COMPONENT lpm_constant_0
	PORT(		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_0: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_0: COMPONENT IS true;

COMPONENT lpm_constant_1
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_1: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_1: COMPONENT IS true;

COMPONENT lpm_constant_2
	PORT(		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_2: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_2: COMPONENT IS true;

COMPONENT lpm_constant_3
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_3: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_3: COMPONENT IS true;

COMPONENT lpm_constant_4
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_4: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_4: COMPONENT IS true;

COMPONENT memristor_model
	PORT(clock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 Rinit : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Valid_Vbe : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Valid_Vte : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Vbe : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Vte : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 G : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_mult
GENERIC (DEDICATED_MULTIPLIER_CIRCUITRY : STRING;
			PIPELINE : INTEGER;
			REDUCED_FUNCTIONALITY : STRING;
			WIDTH_EXP : INTEGER;
			WIDTH_MAN : INTEGER
			);
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 
memVoltage <= InVoltage;



b2v_inst : memristor_model
PORT MAP(clock => Clock,
		 reset => SYNTHESIZED_WIRE_0,
		 Rinit => SYNTHESIZED_WIRE_1,
		 Valid_Vbe => SYNTHESIZED_WIRE_2,
		 Valid_Vte => SYNTHESIZED_WIRE_3,
		 Vbe => SYNTHESIZED_WIRE_4,
		 Vte => InVoltage,
		 G => SYNTHESIZED_WIRE_5);


b2v_inst2 : altfp_mult
GENERIC MAP(DEDICATED_MULTIPLIER_CIRCUITRY => "AUTO",
			PIPELINE => 5,
			REDUCED_FUNCTIONALITY => "YES",
			WIDTH_EXP => 8,
			WIDTH_MAN => 23
			)
PORT MAP(clock => Clock,
		 dataa => InVoltage,
		 datab => SYNTHESIZED_WIRE_5,
		 result => memCurrent);


b2v_inst3 : lpm_constant_0
PORT MAP(		 result => SYNTHESIZED_WIRE_3);


b2v_inst4 : lpm_constant_1
PORT MAP(		 result => SYNTHESIZED_WIRE_1);


b2v_inst5 : lpm_constant_2
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_InstVBE : lpm_constant_3
PORT MAP(		 result => SYNTHESIZED_WIRE_4);


b2v_InstVBE4 : lpm_constant_4
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_0);


END bdf_type;