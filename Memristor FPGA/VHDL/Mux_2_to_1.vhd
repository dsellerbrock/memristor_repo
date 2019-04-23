library ieee;
use ieee.std_logic_1164.all;
 
entity Mux_2_To_1 is
  port (
    i_Select : in  std_logic;
    i_Data1  : in  std_logic_vector(31 downto 0);
    i_Data2  : in  std_logic_vector (31 downto 0);
    o_Data   : out std_logic_vector (31 downto 0)
    );
end entity Mux_2_To_1;
 
architecture RTL of Mux_2_To_1 is
begin
  o_Data <= i_Data1 when i_Select = '0' else i_Data2;
end architecture RTL;
