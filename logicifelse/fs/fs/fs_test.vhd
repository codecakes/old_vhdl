
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:45:34 09/07/2011
-- Design Name:   fs
-- Module Name:   F:/cdac padai materials/akul/logic ifelse/fs/fs/fs_test.vhd
-- Project Name:  fs
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fs
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

ENTITY fs_test_vhd IS
END fs_test_vhd;

ARCHITECTURE behavior OF fs_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT fs
	PORT(
		a : IN std_logic_vector(2 downto 0);          
		d : OUT std_logic;
		bout : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL a :  std_logic_vector(2 downto 0) := (others=>'0');

	--Outputs
	SIGNAL d :  std_logic;
	SIGNAL bout :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: fs PORT MAP(
		a => a,
		d => d,
		bout => bout
	);
	a(0) <= '0','1' after 20 ns;
	a(1) <= '0','1' after 10 ns,'0' after 20 ns,'1' after 30 ns;
	a(2) <= '0','1' after 5 ns,'0' after 10 ns,'1' after 15 ns,'0' after 20 ns,'1' after 25 ns,'0' after 30 ns,'1' after 35 ns;

END;
