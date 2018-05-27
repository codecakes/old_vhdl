
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY fa_test_vhd IS
END fa_test_vhd;

ARCHITECTURE behavior OF fa_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT fa
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		c : IN std_logic;          
		s : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic;
	SIGNAL b :  std_logic;
	SIGNAL c :  std_logic;

	--Outputs
	SIGNAL s :  std_logic;
	SIGNAL cout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: fa PORT MAP(
		a => a,
		b => b,
		c => c,
		s => s,
		cout => cout
	);

	a <= '0','1' after 20 ns;
	b <= '0','1' after 10 ns,'0' after 20 ns,'1' after 30 ns;
	c <= '0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns,'0' after 20 ns,'1' after 25 ns,'0' after 30 ns,'1' after 35 ns;

END behavior;
