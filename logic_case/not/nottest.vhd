
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:20 09/08/2011
-- Design Name:   NOT_GATE
-- Module Name:   C:/Users/user/Desktop/CASE/Case_statement/nottest.vhd
-- Project Name:  Case_statement
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: NOT_GATE
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

ENTITY nottest_vhd IS
END nottest_vhd;

ARCHITECTURE behavior OF nottest_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT NOT_GATE
	PORT(
		a : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic := '0';

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: NOT_GATE PORT MAP(
		a => a,
		y => y
	);

	a<= '0' after 1 ns, '1' after 10 ns;

END;
