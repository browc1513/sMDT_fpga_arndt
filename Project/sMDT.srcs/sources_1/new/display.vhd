----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/07/26 20:20:51
-- Design Name: 
-- Module Name: sMDT - Coincidence
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity displayer is
Port ( clk,reset  : in  std_logic;
       in0,in1,in2,in3    : in std_logic_vector (6 downto 0);
       an                 : out std_logic_vector (3 downto 0);
       sseg               : out std_logic_vector (6 downto 0)
      );
end displayer;

architecture arch of displayer is
   --q control the refresh rate to be 1MHz/2^16 which is around 1600Hz
   signal q_reg :unsigned(17 downto 0);
   signal q_next :unsigned(17 downto 0);
   signal an_number: std_logic_vector(1 downto 0);
   signal sel : std_logic_vector(1 downto 0);
begin
   process(clk,reset)
   begin
       if reset='1' then
               q_reg <=(others=>'0');   
       elsif (clk'event and clk='1') then
               q_reg<=q_next;
       end if;       
   end process;
   
   q_next<=q_reg+1;
   sel<=std_logic_vector(q_reg(17 downto 16));
   
   process(sel,in0,in1,in2,in3)
   begin
        case sel is
            when"00"=> 
                sseg <= in0;
                an<="1110"; --14
            when"01"=> 
                sseg <= in1;
                an<="1101"; -- 13
            when "10"=> 
                sseg <= in2;
                an<="1011"; -- 11
            when "11"=> 
                sseg <= in3;
                an<="0111"; -- 7
            when others => 
                sseg <= in0;
                an<="1110"; -- 14
        end case;
    end process;

end arch;