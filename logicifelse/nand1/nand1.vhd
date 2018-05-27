LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nand1 IS
 PORT (a,b: in STD_LOGIC;
	y: out STD_LOGIC);
END nand1;

ARCHITECTURE nanding OF nand1 IS
BEGIN	
	PROCESS(a,b)
	
	begin
	
	IF a='0' AND b='0' THEN y<= '1'; 
	ELSIF a='0' AND b='1' THEN y<='1';
	ELSIF a='1' AND b='0' THEN y<='1';
	ELSE y<='0';
	END IF;

	END PROCESS;
END nanding;