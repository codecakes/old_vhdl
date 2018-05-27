-------------------------------------------------------
-- Design Name : Priority Encoder
-- File Name   : pri_encoder_using_if.vhd
-- Function    : Pri Encoder using If
-------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    
entity pri_encoder_using_if is
    port (
        enable     :in  std_logic;                      --  Enable for the encoder
        encoder_in :in  std_logic_vector (15 downto 0); --  16-bit Input
        binary_out :out std_logic_vector (3 downto 0)   --  4 bit binary Output

    );
end entity;

architecture behavior of pri_encoder_using_if is

begin
    process (enable, encoder_in) begin
        binary_out <= "0000";
        if (enable = '1') then
            if (encoder_in = "XXXXXXXXXXXXXX10") then
                binary_out <= "0001";
            elsif (encoder_in = "XXXXXXXXXXXXX100") then
                binary_out <= "0010";
            elsif (encoder_in = "XXXXXXXXXXXX1000") then
                binary_out <= "0011";
            elsif (encoder_in = "XXXXXXXXXXX10000") then
                binary_out <= "0100";
            elsif (encoder_in = "XXXXXXXXXX100000") then
                binary_out <= "0101";
            elsif (encoder_in = "XXXXXXXXX1000000") then
                binary_out <= "0110";
            elsif (encoder_in = "XXXXXXXX10000000") then
                binary_out <= "0111";
            elsif (encoder_in = "XXXXXXX100000000") then
                binary_out <= "1000";
            elsif (encoder_in = "XXXXXX1000000000") then
                binary_out <= "1001";
            elsif (encoder_in = "XXXXX10000000000") then
                binary_out <= "1010";
            elsif (encoder_in = "XXXX100000000000") then
                binary_out <= "1011";
            elsif (encoder_in = "XXX1000000000000") then
                binary_out <= "1100";
            elsif (encoder_in = "XX10000000000000") then
                binary_out <= "1101";
            elsif (encoder_in = "X100000000000000") then
                binary_out <= "1110";
            else
                binary_out <= "1111";
            end if;
        end if;
    end process;
end architecture;