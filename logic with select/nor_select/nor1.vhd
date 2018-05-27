LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY nor1 IS
 PORT (a,b: in STD_LOGIC;
	y: out STD_LOGIC);
END nor1;

ARCHITECTURE noring1 OF nor1 IS
	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y<= '1' when "00",
		'0' when "01",
		'0' when "10",
		'0' when OTHERS;
END noring1;