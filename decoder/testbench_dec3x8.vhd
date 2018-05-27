
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:54 09/01/2011
-- Design Name:   dec_3x8
-- Module Name:   F:/cdac padai materials/akul/xilinxprojects/misc_gates/testbench_dec3x8.vhd
-- Project Name:  misc_gates
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dec_3x8
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

ENTITY testbench_dec3x8_vhd IS
END testbench_dec3x8_vhd;

ARCHITECTURE behavior OF testbench_dec3x8_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT dec_3x8
	PORT(
		A : IN std_logic;
		B : IN std_logic;
		C : IN std_logic;

		y : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic;
	SIGNAL B :  std_logic;
	SIGNAL C :  std_logic;

	--Outputs
	SIGNAL y :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: dec_3x8
	PORT MAP(
		A => A,
		B=>B,
		C=>C,
		y => y);
	
		A <= '0', '1' after 20 ns;
		B <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
		C <= '0', '1' after 5 ns, '0' after 10 ns, '1' after 15 ns, '0' after 20 ns, '1' after 25 ns, '0' after 30 ns, '1' after 35 ns;
END;