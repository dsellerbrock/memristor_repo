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
-- CREATED		"Thu May 09 12:35:50 2019"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY memtester IS 
	PORT
	(
		z_i_clk :  IN  STD_LOGIC;
		z_i_rstb :  IN  STD_LOGIC;
		z_i_sync_reset :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		R_init :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Valid_Vbe :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		Valid_Vte :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		z_i_fcw :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		I :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0);
		R :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END memtester;

ARCHITECTURE bdf_type OF memtester IS 

COMPONENT memristor
	PORT(Reset : IN STD_LOGIC;
		 Clock : IN STD_LOGIC;
		 R_init : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Valid_Vbe : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Valid_Vte : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Vbe : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 Vte : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 I : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 R : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT fpdds
	PORT(z_i_clk : IN STD_LOGIC;
		 z_i_rstb : IN STD_LOGIC;
		 z_i_sync_reset : IN STD_LOGIC;
		 z_i_fcw : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 z_i_start_phase : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 fpOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(0 TO 31);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(0 TO 31);


BEGIN 
SYNTHESIZED_WIRE_0 <= "00000000000000000000000000000000";
SYNTHESIZED_WIRE_2 <= "00000000000000000000000000000000";



b2v_inst : memristor
PORT MAP(Reset => Reset,
		 Clock => z_i_clk,
		 R_init => R_init,
		 Valid_Vbe => Valid_Vbe,
		 Valid_Vte => Valid_Vte,
		 Vbe => SYNTHESIZED_WIRE_0,
		 Vte => SYNTHESIZED_WIRE_1,
		 I => I,
		 R => R);



b2v_inst2 : fpdds
PORT MAP(z_i_clk => z_i_clk,
		 z_i_rstb => z_i_rstb,
		 z_i_sync_reset => z_i_sync_reset,
		 z_i_fcw => z_i_fcw,
		 z_i_start_phase => SYNTHESIZED_WIRE_2,
		 fpOut => SYNTHESIZED_WIRE_1);



END bdf_type;