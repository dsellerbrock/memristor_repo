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
-- CREATED		"Thu May 09 18:52:09 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY pavDOGFPGA IS 
	PORT
	(
		z_i_clk :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		sel :  IN  STD_LOGIC;
		agb :  OUT  STD_LOGIC;
		Clock1 :  OUT  STD_LOGIC;
		Clock0 :  OUT  STD_LOGIC
	);
END pavDOGFPGA;

ARCHITECTURE bdf_type OF pavDOGFPGA IS 

COMPONENT memristor
	PORT(Clock : IN STD_LOGIC;
		 Reset : IN STD_LOGIC;
		 R_init : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Valid_Vbe : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Valid_Vte : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Vbe : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Vte : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clock1
	PORT(inclk0 : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT clk2const
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

COMPONENT vtebe
	PORT(		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT divider2
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rtotconst
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT mymult1
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT r2const
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

COMPONENT fpcomparegreat
	PORT(clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 agb : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pavthresh
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT rmax
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT clk1const
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 
Clock1 <= SYNTHESIZED_WIRE_27;
Clock0 <= SYNTHESIZED_WIRE_16;
SYNTHESIZED_WIRE_17 <= "00000000000000000000000000000000";
SYNTHESIZED_WIRE_28 <= "00000000000000000000000000000000";



b2v_inst : memristor
PORT MAP(Clock => z_i_clk,
		 Reset => SYNTHESIZED_WIRE_0,
		 R_init => SYNTHESIZED_WIRE_1,
		 Valid_Vbe => SYNTHESIZED_WIRE_32,
		 Valid_Vte => SYNTHESIZED_WIRE_32,
		 Vbe => SYNTHESIZED_WIRE_4,
		 Vte => SYNTHESIZED_WIRE_33,
		 I => SYNTHESIZED_WIRE_34,
		 R => SYNTHESIZED_WIRE_36);


b2v_inst1 : clock1
PORT MAP(inclk0 => z_i_clk,
		 c0 => SYNTHESIZED_WIRE_16,
		 c1 => SYNTHESIZED_WIRE_27);


b2v_inst10 : clk2const
PORT MAP(		 result => SYNTHESIZED_WIRE_29);


b2v_inst11 : add32
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_34,
		 datab => SYNTHESIZED_WIRE_7,
		 result => SYNTHESIZED_WIRE_13);


b2v_inst12 : vtebe
PORT MAP(		 result => SYNTHESIZED_WIRE_32);


b2v_inst13 : divider2
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_35,
		 datab => SYNTHESIZED_WIRE_9,
		 result => SYNTHESIZED_WIRE_7);


b2v_inst14 : rtotconst
PORT MAP(		 result => SYNTHESIZED_WIRE_9);


b2v_inst15 : mymult1
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_10,
		 datab => SYNTHESIZED_WIRE_11,
		 result => SYNTHESIZED_WIRE_19);


b2v_inst16 : r2const
PORT MAP(		 result => SYNTHESIZED_WIRE_11);


b2v_inst17 : muxmeup
PORT MAP(sel => sel,
		 data0x => SYNTHESIZED_WIRE_12,
		 data1x => SYNTHESIZED_WIRE_13,
		 result => SYNTHESIZED_WIRE_10);


b2v_inst18 : mymult1
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_34,
		 datab => SYNTHESIZED_WIRE_36,
		 result => SYNTHESIZED_WIRE_12);


b2v_inst2 : muxmeup
PORT MAP(sel => SYNTHESIZED_WIRE_16,
		 data0x => SYNTHESIZED_WIRE_17,
		 data1x => SYNTHESIZED_WIRE_18,
		 result => SYNTHESIZED_WIRE_33);


b2v_inst20 : fpcomparegreat
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_19,
		 datab => SYNTHESIZED_WIRE_20,
		 agb => agb);


b2v_inst21 : pavthresh
PORT MAP(		 result => SYNTHESIZED_WIRE_20);


b2v_inst22 : rtotconst
PORT MAP(		 result => SYNTHESIZED_WIRE_23);


b2v_inst23 : mymult1
PORT MAP(dataa => SYNTHESIZED_WIRE_33,
		 datab => SYNTHESIZED_WIRE_22,
		 result => SYNTHESIZED_WIRE_30);


b2v_inst24 : divider2
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_23,
		 datab => SYNTHESIZED_WIRE_24,
		 result => SYNTHESIZED_WIRE_22);


b2v_inst25 : rtotconst
PORT MAP(		 result => SYNTHESIZED_WIRE_25);


b2v_inst26 : add32
PORT MAP(clock => z_i_clk,
		 dataa => SYNTHESIZED_WIRE_25,
		 datab => SYNTHESIZED_WIRE_36,
		 result => SYNTHESIZED_WIRE_24);


b2v_inst3 : muxmeup
PORT MAP(sel => SYNTHESIZED_WIRE_27,
		 data0x => SYNTHESIZED_WIRE_28,
		 data1x => SYNTHESIZED_WIRE_29,
		 result => SYNTHESIZED_WIRE_35);




SYNTHESIZED_WIRE_0 <= NOT(Reset);



b2v_inst7 : muxmeup
PORT MAP(sel => sel,
		 data0x => SYNTHESIZED_WIRE_30,
		 data1x => SYNTHESIZED_WIRE_35,
		 result => SYNTHESIZED_WIRE_4);


b2v_inst8 : rmax
PORT MAP(		 result => SYNTHESIZED_WIRE_1);


b2v_inst9 : clk1const
PORT MAP(		 result => SYNTHESIZED_WIRE_18);


END bdf_type;