LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

ENTITY nand_g IS
 PORT (a : IN std_logic;
		b : IN std_logic;          
		y : OUT std_logic);
END nand_g;

ARCHITECTURE nanding_arch OF nand_g IS
BEGIN		
		y <= a nand b;
END nanding_arch;