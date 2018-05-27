
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:49:08 09/10/2011
-- Design Name:   decoder_using_case
-- Module Name:   F:/cdac padai materials/akul/All_Logic_types8sept/logic_case/dec/decoder_using_case/dectest.vhd
-- Project Name:  decoder_using_case
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder_using_case
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
	COMPONENT decoder_using_case
	PORT(
		enable : IN std_logic;
		binary_in : IN std_logic_vector(3 downto 0);          
		decoder_out : OUT std_logic_vector(15 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL enable :  std_logic := '0';
	SIGNAL binary_in :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL decoder_out :  std_logic_vector(15 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: decoder_using_case PORT MAP(
		enable => enable,
		binary_in => binary_in,
		decoder_out => decoder_out
	);

		binary_in <= "0000","0001" after 10 ns,"0010" after 20 ns,"0011" after 30 ns;
		enable <= '0','1' after 10 ns;

END;
