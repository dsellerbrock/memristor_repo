library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;
entity Sine_testbench is
end entity Sine_testbench;

architecture Test of Sine_testbench is

signal z_i_clk, z_i_rstb,z_i_sync_reset: std_logic;
signal z_i_fcw,z_i_start_phase: std_logic_vector(31 downto 0);
signal fpOut: std_logic_vector(31 downto 0);


component div_test is
   port( 
  	z_i_clk, z_i_rstb,z_i_sync_reset: in std_logic;
	z_i_fcw,z_i_start_phase: in  std_logic_vector(31 downto 0);
	fpOut: out  std_logic_vector(31 downto 0)
  );
  end component;

begin

dds_proc: div_test
port map (z_i_clk, z_i_rstb,z_i_sync_reset,z_i_fcw,z_i_start_phase,fpOut);

z_i_rstb<='0', '1' after 10 ns; 
z_i_sync_reset<='1', '0' after 12 ns; 
z_i_fcw<=X"028F5C28";
z_i_start_phase<=X"00000000";
--
CLK_PROCESS: process
begin
	z_i_clk<='1';
	wait for 5 ns;
	z_i_clk<='0';
	wait for 5 ns;
end process;

end architecture Test;