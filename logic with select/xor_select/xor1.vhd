----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:11 09/04/2011 
-- Design Name: 
-- Module Name:    xor1 - xoring1 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity xor1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end xor1;

architecture xoring1 of xor1 is

	SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y <= '0' when "00",
		'1' when "01",
		'1' when "10",
		'0' when OTHERS;

end xoring1;