library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_ARITH.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;




entity SUBTRACTOR_SOURCE is

Port ( A, B, C : in  STD_LOGIC_VECTOR(31 downto 0);

DIFFERENCE, BORROW : out  STD_LOGIC_VECTOR (31 downto 0));

end SUBTRACTOR_SOURCE;



architecture dataflow of SUBTRACTOR_SOURCE is


begin


---full subtractor


DIFFERENCE <= A xor B xor C;





end dataflow;
