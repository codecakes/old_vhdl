LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nand1 IS
 PORT (a,b: in STD_LOGIC;
	y: out STD_LOGIC);
END nand1;

ARCHITECTURE nanding1 OF nand1 IS
	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y<= '1' when "00",
		'1' when "01",
		'1' when "10",
		'0' when OTHERS;
END nanding1;