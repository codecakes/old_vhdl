
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:30:09 09/03/2011
-- Design Name:   ROM_S
-- Module Name:   F:/cdac padai materials/akul/ROM_S/rom_test.vhd
-- Project Name:  ROM_S
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM_S
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY rom_test_vhd IS
END rom_test_vhd;

ARCHITECTURE behavior OF rom_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT ROM_S
	PORT(
		a : IN std_logic_vector(3 downto 0);          
		d : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL d :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: ROM_S PORT MAP(
		a => a,
		d => d
	);
	a<= "0000", "0001" after 5 ns, "0010" after 10 ns, "0011" after 15 ns, "0100" after 20 ns, "0101" after 25 ns, "0110" after 30 ns, "0111" after 35 ns, "1000" after 40 ns, "1001" after 45 ns, "1010" after 50 ns, "1011" after 55 ns, "1100" after 60 ns, "1101" after 65 ns, "1110" after 65 ns, "1111" after 70 ns;
END;
