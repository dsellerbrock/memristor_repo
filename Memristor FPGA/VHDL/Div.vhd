 library IEEE;
    use IEEE.STD_LOGIC_1164.ALL;
    use IEEE.STD_LOGIC_ARITH.ALL;
    use IEEE.STD_LOGIC_UNSIGNED.ALL;


    entity Div is
    Port ( Ain   : in  STD_LOGIC_VECTOR (31 downto 0);
       Bin   : in  STD_LOGIC_VECTOR (31 downto 0);
       Q   : out  STD_LOGIC_VECTOR (31 downto 0);
       R   : out  STD_LOGIC_VECTOR (31 downto 0));
    end Div;

architecture Behavioral of Div is
Signal Atemp : Std_Logic_Vector (31 downto 0);
begin


Proc1: Process (Ain,Bin, Atemp)
variable cnt : STD_LOGIC_Vector(31 downto 0);
begin


if (Ain < Bin) then
        cnt := "00000000000000000000000000000000";
        Atemp <= Ain;
elsif (Ain = Bin) then
        cnt := "00000000000000000000000000000001";
elsif (Ain > Bin) then
        cnt := "00000000000000000000000000000001";
        Atemp <= (Ain - Bin);
        while (Atemp >= Bin) loop
            if(Atemp >=Bin) then
                Atemp <= (Atemp - Bin);
                cnt := cnt + "00000000000000000000000000000001";
            end if;
        end loop;
end if;
Q <= cnt;
R <= Atemp;
end process Proc1;
end Behavioral;
