
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity NOR_GATE is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           y : out  STD_LOGIC);
end NOR_GATE;

architecture Behavioral of NOR_GATE is

begin

process(a)

begin

case a is

when "00" => y <= '1';
when "01" => y <= '0';
when "10" => y <= '0';
when others => y <= '0';

end case;

end process;


end Behavioral;

