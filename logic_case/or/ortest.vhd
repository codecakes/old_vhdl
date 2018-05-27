
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:29:10 09/08/2011
-- Design Name:   OR_GATE
-- Module Name:   C:/Users/user/Desktop/CASE/Case_statement/ortest.vhd
-- Project Name:  Case_statement
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OR_GATE
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

ENTITY ortest_vhd IS
END ortest_vhd;

ARCHITECTURE behavior OF ortest_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT OR_GATE
	PORT(
		a : IN std_logic_vector(1 downto 0);          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic_vector(1 downto 0) := (others=>'0');

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: OR_GATE PORT MAP(
		a => a,
		y => y
	);

	a(0)<= '0' after 1 ns, '1' after 10 ns;
	a(1)<= '0' after 1 ns, '1' after 5 ns, '0' after 10 ns, '1' after 15 ns;


END;
