library ieee;
use ieee.std_logic_1164.all;

entity adder is
    port (  
        a:      in      std_logic;
        b:      in      std_logic;
        cin:    in      std_logic;
        sum:    out     std_logic;
        cout:   out     std_logic
     );     
end adder; 

architecture Behavioral of adder is 
begin 
    sum  <= (a xor cin) xor b; 
    cout <= (a and b) or (cin and a) or (cin and b); 
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.STD_LOGIC_ARITH.ALL; 
-- use IEEE.NUMERIC_STD.ALL;
-- use UNISIM.VComponents.all;

entity mult is
    port (
    --     op1:    in  std_logic_vector(4 downto 0);--a
    --     op2:    in  std_logic_vector(4 downto 0);--x
    --     out:   out std_logic_vector(9 downto 0)  --pp
        a:  in  std_logic_vector(31 downto 0);
        b:  in  std_logic_vector(31 downto 0);
        pp: out std_logic_vector(63 downto 0) -- not apparrent
     );
end mult;

architecture Behavioral of mult is
    type t_matrix is array (0 to 33, 66 downto 0) of std_logic;
    signal c, sum, mul : t_matrix ;
    signal sum_ini : std_logic_vector(66 downto 0) ;

    component adder is
        port (  
            a:      in      std_logic;
            b:      in      std_logic;
            cin:    in      std_logic;
            sum:    out     std_logic;
            cout:   out     std_logic
         );     
    end component; 


begin
   rows  :  for i in 0 to 31 generate
       columns  : for j in 0 to 63 generate
           i_u : adder port map(
                           a    => sum_ini(j),
                           b    => c(i,j),
                           cin  => std_logic_vector(resize(mul(i, j),a'length)),
                           sum  => sum(i+1, j),
                           cout => c(i+1, j+1)
                      );
        end generate columns;
    end generate rows;

   p_multiplications : process (a, b)
   --variable v_producto : t_pp := ((others => (others => '0')));
   begin -- process multiplications
   for i in 0 to 31 loop
      for j in 0 to 31 loop
          if i = 0 then
            sum_ini(j) <= a(0) and b(j);
         else
            mul(i-1, j+i) <= a(i) and b(j);
         end if;
      end loop; -- j
   end loop; -- i
   end process p_multiplications;

end Behavioral;