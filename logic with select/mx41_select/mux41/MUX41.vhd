
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity MUX41 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR (1 downto 0);
           Y : out  STD_LOGIC);
end MUX41;

architecture Behavioral of MUX41 is

begin
WITH S SELECT

Y <= A WHEN "00" ,
     B WHEN "01" ,
	  C WHEN "10" ,
	  D WHEN OTHERS;


end Behavioral;

