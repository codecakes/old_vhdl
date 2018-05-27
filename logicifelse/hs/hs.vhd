library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity hs is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           d : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end hs;

architecture Behavioral of hs is
BEGIN
P1:PROCESS (a)
	begin
	IF a="00" THEN d<='0';
	ELSIF a="01" THEN d<='1';
	ELSIF a="10" THEN d<='1';
	ELSIF a="11" THEN d<='0';
	END IF;
END PROCESS;
	
P2:PROCESS (a)
	BEGIN
	
	IF a="00" THEN bout<='0';
	ELSIF a="00" THEN bout<='1';
	ELSIF a="10" THEN bout<='0';
	ELSE bout<='0';
	END IF;
END PROCESS;

end Behavioral;