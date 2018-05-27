
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:50:37 09/07/2011
-- Design Name:   hs
-- Module Name:   F:/cdac padai materials/akul/logic ifelse/hs/hs/hs_test.vhd
-- Project Name:  hs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hs
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

ENTITY hs_test_vhd IS
END hs_test_vhd;

ARCHITECTURE behavior OF hs_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT hs
	PORT(
		a : IN std_logic_vector(1 downto 0);          
		d : OUT std_logic;
		bout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic_vector(1 downto 0);

	--Outputs
	SIGNAL d :  std_logic;
	SIGNAL bout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: hs PORT MAP(
		a => a,
		d => d,
		bout => bout
	);
	a(0)<='0','1' after 10 ns;
	a(1)<='0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns;


END;
