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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sMDT is
Port ( clk, reset, sw  : in  std_logic;
       an   : out std_logic_vector (3 downto 0);
       sseg   : out std_logic_vector (7 downto 0)
      );
end sMDT;
   type t_digial is array (3 downto 0) of integer(10 to 0);
   signal dig in integer (10 to 0);
   signal an_number: in integer(3 to 0)
   signal digit : t_digial;
   signal value : in integer(9999 to 0);
   signal counter in integer (100000 to 0) ;
   signal counter_clk in std_logic; - -modify display in 10e8/10e5 =1k Hz
begin
   process(clk,reset)
   begin
        if (clk¡¯event and clk=¡¯l¡¯) then
            counter <= counter + 1;
                if counter >= 10000
                    then counter <= 0;

            if sw = '1' then
                value = 0;
            end if 
        end if
   counter_tick <= '1' when counter=0  else '0';
   end process;
   
   process(counter_clk)
       if (counter_clk'event and counter_clk='l') then
                value <= value + 1;
                digit(0) <= value / 1000;
                digit(1) <= value - (digit(0)*1000 )/ 100;
                digit(2) <= value - (digit(0)*1000 - digit(0)*100)/ 10;
                digit(3) <= value mod 10;
                an_number <= an_number+1;
                if an_number >= 4 then
                     an_number <= 0;   
                end if
                dig <= digtal(an_number);
        end if
        
   ENCODER_PROC : process(dig)
   begin
        case dig is
         
            when 0 => sseg <= "0111111";
            when 1 => sseg <= "0000110";
            when 2 => sseg <= "1011011";
            when 3 => sseg <= "1001111";
            when 4 => sseg <= "1100110";
            when 5 => sseg <= "1101101";
            when 6 => sseg <= "1111101";
            when 7 => sseg <= "0000111";
            when 8 => sseg <= "1111111";
            when 9 => sseg <= "1101111";
       
            end case;
    end process;
   
   process(an_number)
        begin 
            case an is
                when 0 => an <= "1110";
                when 1 => an <= "1101";
                when 2 => an <= "1011";
                when 3 => an <= "0111";
            end case;
end behavior;
