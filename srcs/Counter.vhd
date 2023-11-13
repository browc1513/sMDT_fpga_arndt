----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.10.2023 14:57:42
-- Design Name: 
-- Module Name: Counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter is
    Port 
    ( clk, reset, JA : in std_logic;
      in0,in1,in2,in3 : out std_logic_vector(6 downto 0)
    );
end Counter;

architecture Behavioral of Counter is
    signal counter: integer:=0;
    signal in0_reg,in1_reg,in2_reg,in3_reg: unsigned (3 downto 0);
    signal edge_detect : std_logic_vector(1 downto 0);
    function four_bits_to_sseg
    ( 
    bits : unsigned(3 downto 0)
    )
     return std_logic_vector is 
     variable sseg_tem: std_logic_vector(6 downto 0);
     begin
            case bits is
            when "0000" => sseg_tem := "1000000"; -- "0"     
            when "0001" => sseg_tem := "1111001"; -- "1" 
            when "0010" => sseg_tem := "0100100"; -- "2" 
            when "0011" => sseg_tem := "0110000"; -- "3" 
            when "0100" => sseg_tem := "0011001"; -- "4" 
            when "0101" => sseg_tem := "0010010"; -- "5" 
            when "0110" => sseg_tem := "0000010"; -- "6" 
            when "0111" => sseg_tem := "1111000"; -- "7" 
            when "1000" => sseg_tem := "0000000"; -- "8"     
            when "1001" => sseg_tem := "0010000"; -- "9" 
            when "1010" => sseg_tem := "1111111"; -- a
            when "1011" => sseg_tem := "1111111"; -- b
            when "1100" => sseg_tem := "1111111"; -- C
            when "1101" => sseg_tem := "1111111"; -- d
            when "1110" => sseg_tem := "1111111"; -- E
            when "1111" => sseg_tem := "1111111"; -- F
            end case;
            return sseg_tem;
     end function;
     
    begin
    process(clk)
    begin
        if reset='1' then
           counter<=0;
           in0_reg<=(others=>'0');
           in1_reg<=(others=>'0');
           in2_reg<=(others=>'0');
           in3_reg<=(others=>'0');
           edge_detect<=(others=>'0');

        elsif rising_edge(clk) then
           edge_detect<=edge_detect(0) & JA;
           if edge_detect="01" then
                counter <= counter+1;
           end if;
        if(counter = 10) then --10Hz
            counter <= 0;
            in0_reg<=in0_reg+1;
            if in0_reg="1001" then
                in0_reg<=(others=>'0');
                in1_reg<=in1_reg+1;
                if in1_reg="1001" then
                    in1_reg<=(others=>'0');
                    in2_reg<=in2_reg+1;
                    if in2_reg="1001" then
                        in2_reg<=(others=>'0');
                        in3_reg<=in3_reg+1;
                    if in3_reg="1001" and in2_reg="1001" and in1_reg="1001" and in0_reg="1001" then
                        in0_reg<=(others=>'0');
                        in1_reg<=(others=>'0');
                        in2_reg<=(others=>'0');
                        in3_reg<=(others=>'0');
                    end if;
                    end if;
                 end if;
              end if;
           end if;
           end if;

       end process;
       in0<=four_bits_to_sseg(in0_reg);
       in1<=four_bits_to_sseg(in1_reg);
       in2<=four_bits_to_sseg(in2_reg);
       in3<=four_bits_to_sseg(in3_reg);

end Behavioral;