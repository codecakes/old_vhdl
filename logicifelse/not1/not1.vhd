LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY not1 IS
 PORT (a: in STD_LOGIC;
	y: out STD_LOGIC);
END not1;

ARCHITECTURE noting1 OF not1 IS

BEGIN
	
PROCESS(a)
	begin

	IF a= '0' THEN y<='1';
	ELSE y<='0';
	END IF;

END PROCESS;

END noting1;