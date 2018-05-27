----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:54 09/04/2011 
-- Design Name: 
-- Module Name:    dec2x4 - Behavioral 
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

entity dec2x4 is
    Port ( x : in  STD_LOGIC;
           en : in  STD_LOGIC;
           y : out  STD_LOGIC);
end dec2x4;

architecture Behavioral of dec2x4 is
SIGNAL a : STD_LOGIC_VECTOR(2 DOWNTO 0) ;

begin

	a <= en & x ;
	
	WITH a SELECT
		y <= 	"1000" WHEN "100",
				"0100" WHEN "101",
				"0010" WHEN "110",
				"0001" WHEN "111",
				"0000" WHEN OTHERS ;
end Behavioral;

