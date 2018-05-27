

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY hs_test_vhd IS
END hs_test_vhd;

ARCHITECTURE behavior OF hs_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT hs
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		d : OUT std_logic;
		bout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';

	--Outputs
	SIGNAL d :  std_logic;
	SIGNAL bout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: hs PORT MAP(
		a => a,
		b => b,
		d => d,
		bout => bout
	);

	a<='0','1' after 10 ns;
	b<='0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns;

END behavior;
