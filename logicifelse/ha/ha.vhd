library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity ha is
    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end ha;

architecture Behavioral of ha is
BEGIN
	P1:PROCESS(a)
		begin
		IF a="00" THEN s<='0';
		ELSIF a="01" THEN s<='1';
		ELSIF a="10" THEN s<='1';
		ELSE s<='0';
		END IF;
	END PROCESS;

	P2:PROCESS(a)
	BEGIN
		IF a="00" THEN cout<='0';
		ELSIF a="01" THEN cout<='0';
		ELSIF a="10" THEN cout<='0';
		ELSE cout<='1';
		END IF;

	END PROCESS;

end Behavioral;