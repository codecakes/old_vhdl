
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity NOT_GATE is
    Port ( a : in  STD_LOGIC;
           y : out  STD_LOGIC);
end NOT_GATE;

architecture Behavioral of NOT_GATE is

begin

process(a)

begin

case a is

when '0' => y <= '1';
when others => y <= '0';

end case;

end process;


end Behavioral;

