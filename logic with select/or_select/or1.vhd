LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY or1 IS
 PORT (a,b: in STD_LOGIC;
	y: out STD_LOGIC);
END or1;

ARCHITECTURE oring1 OF or1 IS
	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y<= '0' when "00",
		'1' when "01",
		'1' when "10",
		'1' when OTHERS;
END oring1;