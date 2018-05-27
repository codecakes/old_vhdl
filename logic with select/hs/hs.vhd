library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity hs is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           d : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end hs;

architecture Behavioral of hs is

begin

d <= a xor b;

bout <= not a and b;


end Behavioral;

