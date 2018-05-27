library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity tri_state is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           en : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (7 downto 0));
end tri_state;

architecture Behavioral of tri_state is

begin
 
 y <= a when (en='0') else
      
		(others => 'Z');


end Behavioral;

