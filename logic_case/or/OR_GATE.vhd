
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity OR_GATE is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end OR_GATE;

architecture Behavioral of OR_GATE is

begin

process(a)

begin

case a is

when "00" => y <= '0';
when "01" => y <= '1';
when "10" => y <= '1';
when others => y <= '1';

end case;

end process;

end Behavioral;

