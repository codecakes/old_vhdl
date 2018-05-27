LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--START--
ENTITY bitalu IS
	PORT
	(a: IN STD_LOGIC_VECTOR (7 downto 0);
	 b: IN STD_LOGIC_VECTOR (7 downto 0);
	 cin: IN STD_LOGIC;
	 s: IN STD_LOGIC_VECTOR (3 downto 0);
	 y: OUT STD_LOGIC_VECTOR (7 downto 0)
	 );
END bitalu;

ARCHITECTURE mix OF bitalu IS
	SIGNAL arith: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL logic: STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
--logic for arithmentic--
	WITH s(2 downto 0) SELECT
	arith<= a when "000",
			a+1 when "001",
			a-1 when "010",
			b when "011",
			b+1 when "100",
			b-1 when "101",
			a+b when "110",
			a+b+cin when "111",
			"ZZZZZZZZ" when OTHERS;
--logic for logical--
WITH s(2 downto 0) SELECT
	logic<= NOT a when "000",
			NOT b when "001",
			a AND b when "010",
			a OR b when "011",
			a NAND b when "100",
			a NOR b when "101",
			a XOR b when "110",
			NOT (a XOR b) when "111",
			"ZZZZZZZZ" when OTHERS;
--logic to select anyone off these logics through mux--
	WITH s(3) SELECT
	y<= arith when '0',
		logic when OTHERS;
END mix;