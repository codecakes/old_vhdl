library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity fs is
    Port (a : in  STD_LOGIC_VECTOR (2 downto 0);
           d : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end fs;

architecture Behavioral of fs is
BEGIN
	P1:PROCESS(a)
	begin
	IF a="000" THEN d<='0';
	ELSIF a="001" THEN d<='1';	
	ELSIF a="010" THEN d<='1';
	ELSIF a="011" THEN d<='0';
	ELSIF a="100" THEN d<='1';
	ELSIF a="101" THEN d<='0';
	ELSIF a="110" THEN d<='0';
	ELSE d<='1';
	END IF;
	END PROCESS;

	P2:PROCESS(a)
	BEGIN
	IF a="000" THEN bout<='0';
	ELSIF a="001" THEN bout<='1';
	ELSIF a="010" THEN bout<='1';
	ELSIF a="011" THEN bout<='1';
	ELSIF a="100" THEN bout<='0';
	ELSIF a="101" THEN bout<='0';
	ELSIF a="110" THEN bout<='0';
	ELSE bout<='1';
	END IF;
	END PROCESS;

end Behavioral;