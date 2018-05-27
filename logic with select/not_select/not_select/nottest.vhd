
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:13:42 09/04/2011
-- Design Name:   not1
-- Module Name:   F:/cdac padai materials/akul/logic with select/not_select/not_select/nottest.vhd
-- Project Name:  not_select
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: not1
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
	COMPONENT not1
	PORT(
		a : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic;

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: not1 PORT MAP(
		a => a,
		y => y
	);
		a<= '0' after 1 ns, '1' after 10 ns;
END;
