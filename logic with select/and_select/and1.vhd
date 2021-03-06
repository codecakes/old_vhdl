LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY and1 IS
 PORT (a,b: in STD_LOGIC;
	y: out STD_LOGIC);
END and1;

ARCHITECTURE anding OF and1 IS
	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y<= '0' when "00",
		'0' when "01",
		'0' when "10",
		'1' when OTHERS;
END anding;