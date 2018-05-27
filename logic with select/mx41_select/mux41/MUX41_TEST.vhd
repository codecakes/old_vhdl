

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY MUX41_TEST_vhd IS
END MUX41_TEST_vhd;

ARCHITECTURE behavior OF MUX41_TEST_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT MUX41
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;
		D : IN std_logic;
		S : IN std_logic_vector(1 downto 0);          
		Y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic ;
	SIGNAL B :  std_logic ;
	SIGNAL C :  std_logic;
	SIGNAL D :  std_logic;
	SIGNAL S :  std_logic_vector(1 downto 0);

	--Outputs
	SIGNAL Y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: MUX41 PORT MAP(
		A => A,
		B => B,
		C => C,
		D => D,
		S => S,
		Y => Y
	);

	A <= '0','1' AFTER 40 NS;
	B <= '0','1' AFTER 20 NS,'0' AFTER 40 NS,'1' AFTER 60 NS;
	C <= '0','1' AFTER 10 NS,'0' AFTER 20 NS,'1' AFTER 30 NS,'0' AFTER 40 NS,'1' AFTER 50 NS,'0' AFTER 60 NS,'1' AFTER 70 NS;
	D <= '0','1' AFTER 5 NS,'0' AFTER 10 NS,'1' AFTER 15 NS,'0' AFTER 20 NS,'1' AFTER 25 NS,'0' AFTER 30 NS,'1' AFTER 35 NS,'0' AFTER 40 NS,'1' AFTER 45 NS,'0' AFTER 50 NS,'1' AFTER 55 NS,'0' AFTER 60 NS,'1' AFTER 65 NS,'0' AFTER 70 NS,'1' AFTER 75 NS;
	S <= "00","01" AFTER 20 NS,"10" AFTER 40 NS,"11" AFTER 60 NS;

END;
