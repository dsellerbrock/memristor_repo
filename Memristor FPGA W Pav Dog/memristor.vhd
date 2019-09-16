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
-- CREATED		"Wed May 08 19:02:09 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY memristor IS 
	PORT
	(
		Reset :  IN  STD_LOGIC;
		Clock :  IN  STD_LOGIC;
		R_init :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Valid_Vbe :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Valid_Vte :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Vbe :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Vte :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		I :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END memristor;

ARCHITECTURE bdf_type OF memristor IS 

COMPONENT sub32
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT deltat
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT add32
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT regy
	PORT(load : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT compequal
	PORT(dataa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 aeb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fpcomparegreat
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 agb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fpcompareless
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 alb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT diff
	PORT(clock : IN STD_LOGIC;
		 diffIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 diffOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT divider2
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
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

COMPONENT rmin
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rmax
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT muxmeup
	PORT(sel : IN STD_LOGIC;
		 data0x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 data1x : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 
R <= SYNTHESIZED_WIRE_25;
SYNTHESIZED_WIRE_2 <= '1';



b2v_inst : sub32
PORT MAP(clock => Clock,
		 dataa => Vte,
		 datab => Vbe,
		 result => SYNTHESIZED_WIRE_29);


b2v_inst1 : deltat
PORT MAP(		 result => SYNTHESIZED_WIRE_14);


b2v_inst10 : add32
PORT MAP(clock => Clock,
		 dataa => SYNTHESIZED_WIRE_25,
		 datab => SYNTHESIZED_WIRE_1,
		 result => SYNTHESIZED_WIRE_26);


b2v_inst11 : regy
PORT MAP(load => SYNTHESIZED_WIRE_2,
		 clock => Clock,
		 data => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_25);



b2v_inst13 : compequal
PORT MAP(dataa => Valid_Vte,
		 aeb => SYNTHESIZED_WIRE_4);


b2v_inst14 : compequal
PORT MAP(dataa => Valid_Vbe,
		 aeb => SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_21 <= NOT(SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5);


b2v_inst16 : fpcomparegreat
PORT MAP(clock => Clock,
		 dataa => SYNTHESIZED_WIRE_26,
		 datab => SYNTHESIZED_WIRE_27,
		 agb => SYNTHESIZED_WIRE_18);


b2v_inst17 : fpcompareless
PORT MAP(clock => Clock,
		 dataa => SYNTHESIZED_WIRE_26,
		 datab => SYNTHESIZED_WIRE_28,
		 alb => SYNTHESIZED_WIRE_15);


b2v_inst2 : diff
PORT MAP(clock => Clock,
		 diffIn => SYNTHESIZED_WIRE_29,
		 diffOut => SYNTHESIZED_WIRE_13);


b2v_inst20 : divider2
PORT MAP(clock => Clock,
		 dataa => SYNTHESIZED_WIRE_29,
		 datab => SYNTHESIZED_WIRE_25,
		 result => I);


b2v_inst3 : mymult1
PORT MAP(clock => Clock,
		 dataa => SYNTHESIZED_WIRE_13,
		 datab => SYNTHESIZED_WIRE_14,
		 result => SYNTHESIZED_WIRE_1);


b2v_inst4 : rmin
PORT MAP(		 result => SYNTHESIZED_WIRE_28);


b2v_inst5 : rmax
PORT MAP(		 result => SYNTHESIZED_WIRE_27);


b2v_inst6 : muxmeup
PORT MAP(sel => SYNTHESIZED_WIRE_15,
		 data0x => SYNTHESIZED_WIRE_26,
		 data1x => SYNTHESIZED_WIRE_28,
		 result => SYNTHESIZED_WIRE_19);


b2v_inst7 : muxmeup
PORT MAP(sel => SYNTHESIZED_WIRE_18,
		 data0x => SYNTHESIZED_WIRE_19,
		 data1x => SYNTHESIZED_WIRE_27,
		 result => SYNTHESIZED_WIRE_23);


b2v_inst8 : muxmeup
PORT MAP(sel => SYNTHESIZED_WIRE_21,
		 data0x => SYNTHESIZED_WIRE_25,
		 data1x => SYNTHESIZED_WIRE_23,
		 result => SYNTHESIZED_WIRE_24);


b2v_inst9 : muxmeup
PORT MAP(sel => Reset,
		 data0x => SYNTHESIZED_WIRE_24,
		 data1x => R_init,
		 result => SYNTHESIZED_WIRE_3);


END bdf_type;