-------------------------------------------------------
-- Design Name : decoder_using_case
-- File Name   : decoder_using_case.vhd
-- Function    : decoder using case
-------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;

entity decoder_using_case is
    port (
        enable      :in  std_logic;                     --  Enable for the decoder
        binary_in   :in  std_logic_vector (3 downto 0); --  4-bit Input
        decoder_out :out std_logic_vector (15 downto 0) --  16-bit Output

    );
end entity;

architecture behavior of decoder_using_case is

begin
    process (enable, binary_in) begin
        decoder_out <= X"0000";
        if (enable = '1') then
            case (binary_in) is
                when X"0"   => decoder_out <= X"0001";
                when X"1"   => decoder_out <= X"0002";
                when X"2"   => decoder_out <= X"0004";
                when X"3"   => decoder_out <= X"0008";
                when X"4"   => decoder_out <= X"0010";
                when X"5"   => decoder_out <= X"0020";
                when X"6"   => decoder_out <= X"0040";
                when X"7"   => decoder_out <= X"0080";
                when X"8"   => decoder_out <= X"0100";
                when X"9"   => decoder_out <= X"0200";
                when X"A"   => decoder_out <= X"0400";
                when X"B"   => decoder_out <= X"0800";
                when X"C"   => decoder_out <= X"1000";
                when X"D"   => decoder_out <= X"2000";
                when X"E"   => decoder_out <= X"4000";
                when X"F"   => decoder_out <= X"8000";
                when others => decoder_out <= X"0000";
            end case;
        end if;
    end process;
end architecture;