

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY ha_test_vhd IS
END ha_test_vhd;

ARCHITECTURE behavior OF ha_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT ha
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		s : OUT std_logic;
		cin : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';

	--Outputs
	SIGNAL s :  std_logic;
	SIGNAL cin :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: ha PORT MAP(
		a => a,
		b => b,
		s => s,
		cin => cin
	);

	a<='0','1' after 10 ns;
	b<='0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns;

END behavior ;
