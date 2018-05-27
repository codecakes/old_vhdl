LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY not1 IS
 PORT (a: in STD_LOGIC;
	y: out STD_LOGIC);
END not1;

ARCHITECTURE noting1 OF not1 IS

begin

	WITH a SELECT
	y<= '1' when '0',
		'0' when OTHERS;
END noting1;