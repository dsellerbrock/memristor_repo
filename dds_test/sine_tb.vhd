library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;
entity Sine_testbench is
end entity Sine_testbench;

architecture Test of Sine_testbench is

signal i_clk, i_rstb: std_logic;


component dds_sine is
   port( 
  	i_clk, i_rstb: in std_logic
  );
  end component;

begin

dds_proc: dds_sine
port map (i_clk, i_rstb);

i_rstb<='1', '0' after 10 ns; 

--
CLK_PROCESS: process
begin
	i_clk<='1';
	wait for 5 ns;
	i_clk<='0';
	wait for 5 ns;
end process;

end architecture Test;