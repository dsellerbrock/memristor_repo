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
-- CREATED		"Sun May 05 18:25:23 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Memristor_Model IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clock :  IN  STD_LOGIC;
		Rinit :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Valid_Vbe :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Valid_Vte :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Vbe :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Vte :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		G :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END Memristor_Model;

ARCHITECTURE bdf_type OF Memristor_Model IS 

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
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_2: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_2: COMPONENT IS true;

COMPONENT lpm_constant_3
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_3: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_3: COMPONENT IS true;

COMPONENT lpm_constant_4
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_4: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_4: COMPONENT IS true;

COMPONENT lpm_constant_5
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_5: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_5: COMPONENT IS true;

COMPONENT lpm_constant_6
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_6: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_6: COMPONENT IS true;

COMPONENT lpm_constant_7
	PORT(		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_7: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_7: COMPONENT IS true;

COMPONENT lpm_constant_8
	PORT(		 result : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_8: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_8: COMPONENT IS true;

COMPONENT lpm_constant_9
	PORT(		 result : OUT STD_LOGIC_VECTOR(0 TO 0));
END COMPONENT;
ATTRIBUTE black_box OF lpm_constant_9: COMPONENT IS true;
ATTRIBUTE noopt OF lpm_constant_9: COMPONENT IS true;

COMPONENT subtractor_source
	PORT(A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 C : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 BORROW : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 DIFFERENCE : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT test
	PORT(Clock : IN STD_LOGIC;
		 DiffIn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 DiffOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT vhdl_binary_comparator
	PORT(inp_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 inp_B : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 greater : OUT STD_LOGIC;
		 equal : OUT STD_LOGIC;
		 smaller : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT vhdl_twobit_binary_comparator
	PORT(inp_A : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 inp_B : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 greater : OUT STD_LOGIC;
		 equal : OUT STD_LOGIC;
		 smaller : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux_2_to_1
	PORT(i_Select : IN STD_LOGIC;
		 i_Data1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 i_Data2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 o_Data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT register_file
	PORT(writeEnable : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 input : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 regASel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 writeRegSel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_div
GENERIC (PIPELINE : INTEGER;
			ROUNDING : STRING;
			WIDTH_EXP : INTEGER;
			WIDTH_MAN : INTEGER
			);
	PORT(aclr : IN STD_LOGIC;
		 clk_en : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 division_by_zero : OUT STD_LOGIC;
		 nan : OUT STD_LOGIC;
		 overflow : OUT STD_LOGIC;
		 underflow : OUT STD_LOGIC;
		 zero : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_constant0
	PORT(		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_add_sub
GENERIC (PIPELINE : INTEGER;
			ROUNDING : STRING;
			WIDTH_EXP : INTEGER;
			WIDTH_MAN : INTEGER
			);
	PORT(aclr : IN STD_LOGIC;
		 clk_en : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 nan : OUT STD_LOGIC;
		 overflow : OUT STD_LOGIC;
		 underflow : OUT STD_LOGIC;
		 zero : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT altfp_mult
GENERIC (DEDICATED_MULTIPLIER_CIRCUITRY : STRING;
			PIPELINE : INTEGER;
			REDUCED_FUNCTIONALITY : STRING;
			WIDTH_EXP : INTEGER;
			WIDTH_MAN : INTEGER
			);
	PORT(aclr : IN STD_LOGIC;
		 clk_en : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 dataa : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 datab : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 overflow : OUT STD_LOGIC;
		 underflow : OUT STD_LOGIC;
		 zero : OUT STD_LOGIC;
		 result : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC_VECTOR(31 DOWNTO 0);


BEGIN 



SYNTHESIZED_WIRE_25 <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1;


b2v_inst10 : lpm_constant_0
PORT MAP(		 result => SYNTHESIZED_WIRE_15);


b2v_inst11 : lpm_constant_1
PORT MAP(		 result => SYNTHESIZED_WIRE_5);


b2v_inst12 : subtractor_source
PORT MAP(A => Vte,
		 B => Vbe,
		 C => SYNTHESIZED_WIRE_2,
		 DIFFERENCE => SYNTHESIZED_WIRE_3);


b2v_inst13 : lpm_constant_2
PORT MAP(		 result => SYNTHESIZED_WIRE_22);


b2v_inst14 : test
PORT MAP(Clock => clock,
		 DiffIn => SYNTHESIZED_WIRE_3,
		 DiffOut => SYNTHESIZED_WIRE_35);


b2v_inst15 : vhdl_binary_comparator
PORT MAP(inp_A => SYNTHESIZED_WIRE_37,
		 inp_B => SYNTHESIZED_WIRE_5,
		 smaller => SYNTHESIZED_WIRE_20);


b2v_inst16 : vhdl_twobit_binary_comparator
PORT MAP(inp_A => Valid_Vbe,
		 inp_B => SYNTHESIZED_WIRE_38,
		 equal => SYNTHESIZED_WIRE_16);


b2v_inst17 : mux_2_to_1
PORT MAP(i_Select => reset,
		 i_Data1 => SYNTHESIZED_WIRE_7,
		 i_Data2 => Rinit,
		 o_Data => SYNTHESIZED_WIRE_8);


b2v_inst19 : register_file
PORT MAP(writeEnable => clock,
		 clk => clock,
		 input => SYNTHESIZED_WIRE_8,
		 regASel => SYNTHESIZED_WIRE_39,
		 writeRegSel => SYNTHESIZED_WIRE_39,
		 output => SYNTHESIZED_WIRE_42);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_11);



b2v_inst20 : lpm_constant_3
PORT MAP(		 result => SYNTHESIZED_WIRE_24);


b2v_inst21 : lpm_constant_4
PORT MAP(		 result => SYNTHESIZED_WIRE_19);


b2v_inst22 : lpm_constant_5
PORT MAP(		 result => SYNTHESIZED_WIRE_2);


b2v_inst23 : altfp_div
GENERIC MAP(PIPELINE => 6,
			ROUNDING => "TO_NEAREST",
			WIDTH_EXP => 8,
			WIDTH_MAN => 23
			)
PORT MAP(aclr => SYNTHESIZED_WIRE_40,
		 clk_en => SYNTHESIZED_WIRE_41,
		 clock => clock,
		 dataa => SYNTHESIZED_WIRE_42,
		 datab => SYNTHESIZED_WIRE_15,
		 result => G);


b2v_inst24 : lpm_constant_6
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_40);


b2v_inst25 : lpm_constant_7
PORT MAP(		 result => SYNTHESIZED_WIRE_39);


b2v_inst26 : lpm_constant0
PORT MAP(		 result => SYNTHESIZED_WIRE_36);


b2v_inst27 : lpm_constant_8
PORT MAP(		 result => SYNTHESIZED_WIRE_38);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_16);



b2v_inst30 : mux_2_to_1
PORT MAP(i_Select => SYNTHESIZED_WIRE_17,
		 i_Data1 => SYNTHESIZED_WIRE_37,
		 i_Data2 => SYNTHESIZED_WIRE_19,
		 o_Data => SYNTHESIZED_WIRE_21);


b2v_inst31 : mux_2_to_1
PORT MAP(i_Select => SYNTHESIZED_WIRE_20,
		 i_Data1 => SYNTHESIZED_WIRE_21,
		 i_Data2 => SYNTHESIZED_WIRE_22,
		 o_Data => SYNTHESIZED_WIRE_27);


b2v_inst4 : lpm_constant_9
PORT MAP(		 result(0) => SYNTHESIZED_WIRE_41);


b2v_inst5 : vhdl_binary_comparator
PORT MAP(inp_A => SYNTHESIZED_WIRE_37,
		 inp_B => SYNTHESIZED_WIRE_24,
		 smaller => SYNTHESIZED_WIRE_17);


b2v_inst6 : mux_2_to_1
PORT MAP(i_Select => SYNTHESIZED_WIRE_25,
		 i_Data1 => SYNTHESIZED_WIRE_42,
		 i_Data2 => SYNTHESIZED_WIRE_27,
		 o_Data => SYNTHESIZED_WIRE_7);


b2v_inst7 : altfp_add_sub
GENERIC MAP(PIPELINE => 14,
			ROUNDING => "TO_NEAREST",
			WIDTH_EXP => 8,
			WIDTH_MAN => 23
			)
PORT MAP(aclr => SYNTHESIZED_WIRE_40,
		 clk_en => SYNTHESIZED_WIRE_41,
		 clock => clock,
		 dataa => SYNTHESIZED_WIRE_42,
		 datab => SYNTHESIZED_WIRE_31,
		 result => SYNTHESIZED_WIRE_37);


b2v_inst8 : vhdl_twobit_binary_comparator
PORT MAP(inp_A => Valid_Vte,
		 inp_B => SYNTHESIZED_WIRE_38,
		 equal => SYNTHESIZED_WIRE_11);


b2v_inst9 : altfp_mult
GENERIC MAP(DEDICATED_MULTIPLIER_CIRCUITRY => "AUTO",
			PIPELINE => 5,
			REDUCED_FUNCTIONALITY => "YES",
			WIDTH_EXP => 8,
			WIDTH_MAN => 23
			)
PORT MAP(aclr => SYNTHESIZED_WIRE_40,
		 clk_en => SYNTHESIZED_WIRE_41,
		 clock => clock,
		 dataa => SYNTHESIZED_WIRE_35,
		 datab => SYNTHESIZED_WIRE_36,
		 result => SYNTHESIZED_WIRE_31);


END bdf_type;