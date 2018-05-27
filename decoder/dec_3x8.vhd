LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
	
ENTITY dec_3x8 IS
	PORT (
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		y: OUT STD_LOGIC_VECTOR (7 downto 0)
			);
END dec_3x8;

Architecture behaviour OF dec_3x8 IS
	SIGNAL X: std_logic_vector(2 downto 0);
BEGIN
	X<= A & B & C;
y<= "10000000" when X= "000" else
	"01000000" when X= "001" else
	"00100000" when X= "010" else
	"00010000" when X= "011" else
	"00001000" when X= "100" else
	"00000100" when X= "101" else
	"00000010" when X= "110" else
	"00000001";
	
End behaviour;