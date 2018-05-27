LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--START--
ENTITY bitalu IS
END bitalu;

ARCHITECTURE mix OF bitalu_test IS
COMPONENT bitalu
		PORT
		(a: IN STD_LOGIC_VECTOR (7 downto 0);
		 b: IN STD_LOGIC_VECTOR (7 downto 0);
		 cin: IN STD_LOGIC;
		 s: IN STD_LOGIC_VECTOR (3 downto 0);
		 y: OUT STD_LOGIC_VECTOR (7 downto 0)
		 );
--i/ps
	SIGNAL a: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL b: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL s: STD_LOGIC_VECTOR(3 downto 0);
	SIGNAL cin: STD_LOGIC;
--o/ps
	SIGNAL y: STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
--uut instantiate--
uut: bitalu
PORT MAP (a =>a,
		b=>b,
		s=>s,
		cin=>cin,
		y=>y);
a<= "00000000"; "00000001" after 80 ns, "00000010" after 160 ns, "00000011" after 240 ns;  
b<= "00000000"; "00000001" after 80 ns, "00000010" after 160 ns, "00000011" after 240 ns;
s<= "0000", "0001" after 5 ns, "0010" after 10 ns; "0011" after 15 ns, "0100" after 20 ns, "0101" after 25 ns, "0110" after 30 ns, "0111" after 35 ns, "1000" after 40 ns, "1001" after 45 ns, "1010" after 50 ns, "1011" after 55 ns, "1100" after 60 ns, "1101" after 65 ns, "1110" after 70 ns, "1111" after 75 ns, "0000" after 80 ns, "0001" after 85 ns, "0010" after 90 ns, "0011" after 95 ns, "0100" after 100 ns, "0101" after 105 ns, "0110" after 110 ns, "0111" after 115 ns, "1000" after 120 ns, "1001" after 125 ns, "1010" after 130 ns, "1011" after 135 ns, "1100" after 140 ns, "1101" after 145 ns, "1110" after 150 ns, "1111" after 155 ns, "0000" after 160 ns, "0001" after 165 ns, "0010" after 170 ns, "0011" after 175 ns, "0100" after 180 ns, "0101" after 185 ns, "0110" after 190 ns, "0111" after 195 ns, "1000" after 200 ns, "1001" after 205 ns, "1010" after 210 ns, "1011" after 215 ns, "1100" after 220 ns, "1101" after 225 ns, "1110" after 230 ns, "1111" after 235 ns;
END mix;