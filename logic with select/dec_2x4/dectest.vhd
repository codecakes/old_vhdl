
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:16 09/04/2011
-- Design Name:   dec2x4
-- Module Name:   F:/cdac padai materials/akul/logic with select/dec_2x4/dectest.vhd
-- Project Name:  dec_2x4
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec2x4
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

ENTITY dectest_vhd IS
END dectest_vhd;

ARCHITECTURE behavior OF dectest_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT dec2x4
	PORT(
		x : IN std_logic;
		en : IN std_logic;          
		y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL x :  std_logic;
	SIGNAL en :  std_logic;

	--Outputs
	SIGNAL y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: dec2x4 PORT MAP(
		x => x,
		en => en,
		y => y
	);
		x <= "00","01" after 10 ns,"10" after 20 ns,"11" after 30 ns;
		en <= '0','1' after 10 ns;
END;
