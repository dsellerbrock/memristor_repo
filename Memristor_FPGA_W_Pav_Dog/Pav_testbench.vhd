library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;
entity Pav_testbench is
end entity Pav_testbench;

architecture Test of Pav_testbench is

signal z_i_clk, Reset, sel, Clock1_in, Clock2_in: std_logic;
signal agb,Clock0,Clock1: std_logic;	


component pavDOGSIM is
   port( 
  	z_i_clk, Reset, sel, Clock1_in, Clock2_in: in std_logic;
	agb,Clock0,Clock1: out std_logic	
);
end component;

begin

pav_proc: pavDOGSIM
port map (z_i_clk, Reset, sel, Clock1_in, Clock2_in,agb,Clock0,Clock1);
sel<='1', '0' after 243 us;
Reset<='0', '1' after 1300 ns;
--
CLK_PROCESS: process
begin
	z_i_clk<='1';
	wait for 10 ns;
	z_i_clk<='0';
	wait for 10 ns;
end process;
--
CLK1_PROCESS: process
begin
	Clock1_in<='1';
	wait for 2500 ns;
	Clock1_in<='0';
	wait for 7500 ns;
end process;
--
CLK2_PROCESS: process
begin
	Clock2_in<='1';
	wait for 5000 ns;
	Clock2_in<='0';
	wait for 5000 ns;
end process;

end architecture Test;