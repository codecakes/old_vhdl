
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity ha is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cin : out  STD_LOGIC);
end ha;

architecture Behavioral of ha is

begin

s <= a xor b;

cin <= a and b;


end Behavioral;

