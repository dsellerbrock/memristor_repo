library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.fixed_pkg.all;
use IEEE.STD_LOGIC_ARITH.ALL;



entity shift_register_top is
    Port ( CLK : in  STD_LOGIC;
           D   : in  SFIXED;
           
    
architecture Behavioral of shift_register_top is
    signal clock_div : STD_LOGIC_VECTOR(4 downto 0);
    signal shift_reg : SFIXED(31 downto 0) := X"00000000";
begin

    -- clock divider
    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            clock_div <= clock_div + '1';
        end if;
    end process;
    
    -- shift register
    process (clock_div(4))
    begin
        if (clock_div(4)'event and clock_div(4) = '1') then
            shift_reg(7) <= D;
            shift_reg(6) <= shift_reg(7);
            shift_reg(5) <= shift_reg(6);
            shift_reg(4) <= shift_reg(5);
            shift_reg(3) <= shift_reg(4);
            shift_reg(2) <= shift_reg(3);
            shift_reg(1) <= shift_reg(2);
            shift_reg(0) <= shift_reg(1);
        end if;
    end process;

end Behavioral;

library IEEE;


entity SUBTRACTOR_SOURCE is

Port ( A, B, C : in  SFIXED;

DIFFERENCE, BORROW : out  SFIXED(31 downto 0));

end SUBTRACTOR_SOURCE;



architecture dataflow of SUBTRACTOR_SOURCE is


begin


---full subtractor


DIFFERENCE(0) <= A xor B xor C;

BORROW(0) <= ((not A) and (B or C)) or (B and C);



end dataflow;


entity differentiator is

Port(In_1, In_2: in SFIXED;

deriviative : out SFIXED;)

end differentiator












