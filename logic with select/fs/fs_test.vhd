
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY fs_test_vhd IS
END fs_test_vhd;

ARCHITECTURE behavior OF fs_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT fs
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		bin : IN std_logic;          
		d : OUT std_logic;
		bout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';
	SIGNAL b :  std_logic := '0';
	SIGNAL bin :  std_logic := '0';

	--Outputs
	SIGNAL d :  std_logic;
	SIGNAL bout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: fs PORT MAP(
		a => a,
		b => b,
		bin => bin,
		d => d,
		bout => bout
	);

	a <= '0','1' after 20 ns;
	b <= '0','1' after 10 ns,'0' after 20 ns,'1' after 30 ns;
	c <= '0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns,'0' after 20 ns,'1' after 25 ns,'0' after 30 ns,'1' after 35 ns;


END behavior;
