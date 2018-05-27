library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity MUX41 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end MUX41;

architecture Behavioral of MUX41 is

BEGIN

PROCESS(A,S)

	begin

	IF S="00" THEN Y<= A(0);
	ELSIF S="01" THEN Y<= A(1);
	ELSIF S="10" THEN Y<= A(2);
	ELSE Y<= A(3);
	END IF;

END PROCESS;

end Behavioral;