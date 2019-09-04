// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Thu Apr 25 16:35:47 2019"

module HysTest(
	Clock,
	InVoltage,
	memCurrent,
	memVoltage
);


input wire	Clock;
input wire	[31:0] InVoltage;
output wire	[31:0] memCurrent;
output wire	[31:0] memVoltage;

wire	[0:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[1:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[31:0] SYNTHESIZED_WIRE_4;
wire	[31:0] SYNTHESIZED_WIRE_5;

assign	memVoltage = InVoltage;




Memristor_Model	b2v_inst(
	.clock(Clock),
	.reset(SYNTHESIZED_WIRE_0),
	.Rinit(SYNTHESIZED_WIRE_1),
	.Valid_Vbe(SYNTHESIZED_WIRE_2),
	.Valid_Vte(SYNTHESIZED_WIRE_3),
	.Vbe(SYNTHESIZED_WIRE_4),
	.Vte(InVoltage),
	.G(SYNTHESIZED_WIRE_5));


ALTFP_MULT	b2v_inst2(
	.clock(Clock),
	.dataa(InVoltage),
	.datab(SYNTHESIZED_WIRE_5),
	.result(memCurrent));
	defparam	b2v_inst2.DEDICATED_MULTIPLIER_CIRCUITRY = "AUTO";
	defparam	b2v_inst2.PIPELINE = 5;
	defparam	b2v_inst2.REDUCED_FUNCTIONALITY = "YES";
	defparam	b2v_inst2.WIDTH_EXP = 8;
	defparam	b2v_inst2.WIDTH_MAN = 23;


lpm_constant_0	b2v_inst3(
	.result(SYNTHESIZED_WIRE_3));


lpm_constant_1	b2v_inst4(
	.result(SYNTHESIZED_WIRE_1));


lpm_constant_2	b2v_inst5(
	.result(SYNTHESIZED_WIRE_2));


lpm_constant_3	b2v_InstVBE(
	.result(SYNTHESIZED_WIRE_4));


lpm_constant_4	b2v_InstVBE4(
	.result(SYNTHESIZED_WIRE_0));


endmodule

module lpm_constant_0(result);
/* synthesis black_box */

output [1:0] result;

endmodule

module lpm_constant_1(result);
/* synthesis black_box */

output [31:0] result;

endmodule

module lpm_constant_2(result);
/* synthesis black_box */

output [1:0] result;

endmodule

module lpm_constant_3(result);
/* synthesis black_box */

output [31:0] result;

endmodule

module lpm_constant_4(result);
/* synthesis black_box */

output [0:0] result;

endmodule
