
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:55:50 09/07/2011
-- Design Name:   nand1
-- Module Name:   F:/cdac padai materials/akul/logic ifelse/nand1/nand1/nandtest.vhd
-- Project Name:  nand1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nand1
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

ENTITY nandtest_vhd IS
END nandtest_vhd;

ARCHITECTURE behavior OF nandtest_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT nand1
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic;
	SIGNAL b :  std_logic;

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: nand1 PORT MAP(
		a => a,
		b => b,
		y => y
	);

	a<= '0' after 1 ns, '1' after 10 ns;
	b<= '0' after 1 ns, '1' after 5 ns, '0' after 10 ns, '1' after 15 ns;


END;
