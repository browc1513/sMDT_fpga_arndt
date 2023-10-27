----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.10.2023 16:33:37
-- Design Name: 
-- Module Name: mod_m_counter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- Generate clock.m_tick is the clk which has the freqency of 100MHz/M 
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

entity mod_m_counter is
  generic 
  (
    N: integer:=4; --number of bit calcuted by [log2M]
    M: integer:=10
     --mod M
   );
  Port 
  ( clk,reset: in std_logic;
    max_tick: out std_logic
   );
end mod_m_counter;
architecture arch of mod_m_counter is
    signal r_reg   : unsigned(N-1 downto 0);
    signal r_next  : unsigned(N-1 downto 0);
begin
    process (clk)
    begin
        if (reset='1') then
            r_reg <= (others =>'0');
        elsif (clk'event and clk='1') then
            r_reg<=r_next;
        end if;
    end process;
    r_next<= (others=>'0') when r_reg=(M-1) else 
                                            r_reg + 1;
    max_tick <= '1' when r_reg=(M-1)else '0';

end arch;
