LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nor1 IS
 PORT (a: in STD_LOGIC_VECTOR (1 downto 0);
	y: out STD_LOGIC);
END nor1;

ARCHITECTURE noring1 OF nor1 IS
	

BEGIN
	
	PROCESS (a)
	begin
	
	IF a= "00" THEN y<='1';
	ELSIF a="01" THEN y<='0';
	ELSIF a="01" THEN y<='0';
	ELSE y<='0';
	END IF;

	END PROCESS;

END noring1;