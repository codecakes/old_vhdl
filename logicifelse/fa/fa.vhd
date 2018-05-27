library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity fa is
    Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end fa;

architecture Behavioral of fa is
BEGIN
	P1:PROCESS(a)
	begin
	IF a="000" THEN s<='0';
	ELSIF a="001" THEN s<='1';
	ELSIF a="010" THEN s<='1';
	ELSIF a="011" THEN s<='0';
	ELSIF a="100" THEN s<='1';
	ELSIF a="101" THEN s<='0';
	ELSIF a="110" THEN s<='0';
	ELSE s<='1';
	END IF;
	END PROCESS;

	P2: PROCESS(a)
	BEGIN
	IF a="000" THEN cout<='0';
	ELSIF a="001" THEN cout<='0';
	ELSIF a="010" THEN cout<='0';
	ELSIF a="011" THEN cout<='1';
	ELSIF a="100" THEN cout<='0';
	ELSIF a="101" THEN cout<='1';
	ELSIF a="110" THEN cout<='1';
	ELSE cout<='1';
	END IF;
	END PROCESS;

end Behavioral;