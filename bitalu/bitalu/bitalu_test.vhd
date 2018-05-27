
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:20 09/02/2011
-- Design Name:   bitalu
-- Module Name:   F:/cdac padai materials/akul/xilinxprojects/bitalu/bitalu_test.vhd
-- Project Name:  bitalu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bitalu
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

ENTITY bitalu_test_vhd IS
END bitalu_test_vhd;

ARCHITECTURE behavior OF bitalu_test_vhd IS 

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT bitalu
	PORT(
		a : IN std_logic_vector(7 downto 0);
		b : IN std_logic_vector(7 downto 0);
		cin : IN std_logic;
		s : IN std_logic_vector(3 downto 0);          
		y : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	--Inputs
	SIGNAL cin :  std_logic;
	SIGNAL a :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL b :  std_logic_vector(7 downto 0) := (others=>'0');
	SIGNAL s :  std_logic_vector(3 downto 0) := (others=>'0');

	--Outputs
	SIGNAL y :  std_logic_vector(7 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: bitalu PORT MAP(
		a => a,
		b => b,
		cin => cin,
		s => s,
		y => y
	);
		a <= "00000000", "00000001" after 80 ns, "00000010" after 160 ns, "00000011" after 240 ns, "00000111" after 560 ns;
		b <= "00000000", "00000001" after 80 ns, "00000010" after 160 ns, "00000011" after 240 ns, "00000111" after 560 ns;
		cin <= '0' after 560 ns, '1' after 1060 ns;
		s<= "0000", "0001" after 5 ns, "0010" after 10 ns, "0011" after 15 ns, "0100" after 20 ns, "0101" after 25 ns, "0110" after 30 ns, "0111" after 35 ns, "1000" after 40 ns, "1001" after 45 ns, "1010" after 50 ns, "1011" after 55 ns, "1100" after 60 ns, "1101" after 65 ns, "1110" after 70 ns, "1111" after 75 ns, "0000" after 80 ns, "0001" after 85 ns, "0010" after 90 ns, "0011" after 95 ns, "0100" after 100 ns, "0101" after 105 ns, "0110" after 110 ns, "0111" after 115 ns, "1000" after 120 ns, "1001" after 125 ns, "1010" after 130 ns, "1011" after 135 ns, "1100" after 140 ns, "1101" after 145 ns, "1110" after 150 ns, "1111" after 155 ns, "0000" after 160 ns, "0001" after 165 ns, "0010" after 170 ns, "0011" after 175 ns, "0100" after 180 ns, "0101" after 185 ns, "0110" after 190 ns, "0111" after 195 ns, "1000" after 200 ns, "1001" after 205 ns, "1010" after 210 ns, "1011" after 215 ns, "1100" after 220 ns, "1101" after 225 ns, "1110" after 230 ns, "1111" after 235 ns;

	tb : PROCESS
	BEGIN

		-- Wait 2 ns for global reset to finish
		wait for 2 ns;

		-- Place stimulus here

		wait; -- will wait forever
	END PROCESS;

END;