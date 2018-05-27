
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fs is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           d : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end fs;

architecture Behavioral of fs is

begin

d <= a xor b xor bin;

bout <= ((not a) and b) or ((not a) and bin) or (b and bin);


end Behavioral;

