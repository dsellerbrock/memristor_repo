library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;
entity Sine_testbench is
end entity Sine_testbench;

architecture Test of Sine_testbench is

signal i_clk, i_rstb,i_sync_reset: std_logic;
signal i_fcw,i_start_phase: std_logic_vector(31 downto 0);
signal o_sine: std_logic_vector(13 downto 0);


component dds_sine is
   port( 
  	i_clk, i_rstb,i_sync_reset: in std_logic;
	i_fcw,i_start_phase: in  std_logic_vector(31 downto 0);
	o_sine: out  std_logic_vector(13 downto 0)
  );
  end component;

begin

dds_proc: dds_sine
port map (i_clk, i_rstb,i_sync_reset,i_fcw,i_start_phase,o_sine);

i_rstb<='0', '1' after 10 ns; 
i_sync_reset<='1', '0' after 12 ns; 
i_fcw<=X"028F5C28";
i_start_phase<=X"00000000";
--
CLK_PROCESS: process
begin
	i_clk<='1';
	wait for 5 ns;
	i_clk<='0';
	wait for 5 ns;
end process;

end architecture Test;