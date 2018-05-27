

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY tri_state_test_vhd IS
END tri_state_test_vhd;

ARCHITECTURE behavior OF tri_state_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT tri_state
	PORT(
		a : IN std_logic_vector(7 downto 0);
		en : IN std_logic;          
		y : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL en :  std_logic ;
	SIGNAL a :  std_logic_vector(7 downto 0) ;

	--Outputs
	SIGNAL y :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: tri_state PORT MAP(
		a => a,
		en => en,
		y => y
	);

	en <= '0' ,'1' after 20 ns;
	
	a <= "00000000","00000011" after 10 ns;
	
	

END behavior;
