
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:04:00 09/01/2011
-- Design Name:   nand_g
-- Module Name:   F:/cdac padai materials/akul/xilinxprojects/misc_gates/nand_g_test.vhd
-- Project Name:  misc_gates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nand_g
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

ENTITY nand_g_test_vhd IS
END nand_g_test_vhd;

ARCHITECTURE nanding_arch OF nand_g_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT nand_g
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a : std_logic;
	SIGNAL b : std_logic;

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: nand_g 
	PORT MAP(a => a,
		b => b,
		y => y);
		
	a <= '0','1' after 10 ns;
	b <= '0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns;
END;