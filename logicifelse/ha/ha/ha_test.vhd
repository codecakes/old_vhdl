
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:48:44 09/07/2011
-- Design Name:   ha
-- Module Name:   F:/cdac padai materials/akul/logic ifelse/ha/ha/ha_test.vhd
-- Project Name:  ha
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ha
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

ENTITY ha_test_vhd IS
END ha_test_vhd;

ARCHITECTURE behavior OF ha_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT ha
	PORT(
		a : IN std_logic_vector(1 downto 0);          
		s : OUT std_logic;
		cout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic_vector(1 downto 0);

	--Outputs
	SIGNAL s :  std_logic;
	SIGNAL cout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: ha PORT MAP(
		a => a,
		s => s,
		cout => cout
	);

	a(0)<='0','1' after 10 ns;
	a(1)<='0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns;



END;
