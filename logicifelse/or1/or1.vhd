LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY or1 IS
 PORT (a: in STD_LOGIC_VECTOR (1 downto 0);
	y: out STD_LOGIC);
END or1;

ARCHITECTURE oring1 OF or1 IS
	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
BEGIN
	
	
PROCESS (a)
	
	BEGIN

	
	IF a="00" THEN y<='0';
	ELSIF a="00" THEN y<='1';
	ELSIF a="00" THEN y<='1';
	ELSE y<='1';
	END IF;
END PROCESS;

END oring1;