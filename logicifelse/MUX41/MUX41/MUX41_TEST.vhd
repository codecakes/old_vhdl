
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:52:39 09/07/2011
-- Design Name:   MUX41
-- Module Name:   F:/cdac padai materials/akul/logic ifelse/MUX41/MUX41/MUX41_TEST.vhd
-- Project Name:  MUX41
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX41
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

ENTITY MUX41_TEST_vhd IS
END MUX41_TEST_vhd;

ARCHITECTURE behavior OF MUX41_TEST_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT MUX41
	PORT(
		A : IN std_logic_vector(3 downto 0);
		S : IN std_logic_vector(1 downto 0);          
		Y : OUT std_logic
		);
	END COMPONENT;

	--Inputs
	SIGNAL A :  std_logic_vector(3 downto 0);
	SIGNAL S :  std_logic_vector(1 downto 0);

	--Outputs
	SIGNAL Y :  std_logic;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: MUX41 PORT MAP(
		A => A,
		S => S,
		Y => Y
	);
	A(0) <= '0','1' AFTER 40 NS;
	A(1) <= '0','1' AFTER 20 NS,'0' AFTER 40 NS,'1' AFTER 60 NS;
	A(2) <= '0','1' AFTER 10 NS,'0' AFTER 20 NS,'1' AFTER 30 NS,'0' AFTER 40 NS,'1' AFTER 50 NS,'0' AFTER 60 NS,'1' AFTER 70 NS;
	A(3) <= '0','1' AFTER 5 NS,'0' AFTER 10 NS,'1' AFTER 15 NS,'0' AFTER 20 NS,'1' AFTER 25 NS,'0' AFTER 30 NS,'1' AFTER 35 NS,'0' AFTER 40 NS,'1' AFTER 45 NS,'0' AFTER 50 NS,'1' AFTER 55 NS,'0' AFTER 60 NS,'1' AFTER 65 NS,'0' AFTER 70 NS,'1' AFTER 75 NS;
	S <= "00","01" AFTER 20 NS,"10" AFTER 40 NS,"11" AFTER 60 NS;

END;
