
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:24:06 09/10/2011
-- Design Name:   pri_encoder_using_if
-- Module Name:   F:/cdac padai materials/akul/All_Logic_types8sept/logicifelse/pri_enc/pri_encoder_using_if/pri_enc_test.vhd
-- Project Name:  pri_encoder_using_if
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pri_encoder_using_if
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

ENTITY pri_enc_test_vhd IS
END pri_enc_test_vhd;

ARCHITECTURE behavior OF pri_enc_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT pri_encoder_using_if
	PORT(
		enable : IN std_logic;
		encoder_in : IN std_logic_vector(15 downto 0);          
		binary_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL enable :  std_logic;
	SIGNAL encoder_in :  std_logic_vector(15 downto 0);

	--Outputs
	SIGNAL binary_out :  std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: pri_encoder_using_if PORT MAP(
		enable => enable,
		encoder_in => encoder_in,
		binary_out => binary_out
	);
	
	
		enable <= '0', '1' after 10 ns, '0' after 20 ns, '1' after 30 ns;
		encoder_in <= "XXXXXXXXXXXXXX10", "XXXXXXXXXXXXX100" after 5 ns, "XXXXXXXXXXXX1000" after 10 ns, "XXXXXXXXXXX10000" after 15 ns, "XXXXXXXXXX100000" after 20 ns, "XXXXXXXXX1000000" after 25 ns, "XXXXXXXX10000000" after 30 ns, "XXXXXXX100000000" after 35 ns;

	

END;
