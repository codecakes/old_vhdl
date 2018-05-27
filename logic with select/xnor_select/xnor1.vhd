----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:59:26 09/04/2011 
-- Design Name: 
-- Module Name:    xnor1 - Behavioral 
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

entity xnor1 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           y : out  STD_LOGIC);
end xnor1;

architecture Behavioral of xnor1 is

SIGNAL x: STD_LOGIC_VECTOR (1 downto 0);
	
	begin
	x<= a&b;
	
	WITH x SELECT
	y <= '1' when "00",
		'0' when "01",
		'0' when "10",
		'1' when OTHERS;

end Behavioral;

