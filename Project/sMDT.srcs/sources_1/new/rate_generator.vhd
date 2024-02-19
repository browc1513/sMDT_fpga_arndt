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

-- Generate the readout out rate in line 55. For each readout cycle, the m_tick will be 1 ,fix the number of signals ,trigger the uart and use fixed signals as input tp uart
entity rate_generator is
    Port 
    ( clk, reset : in std_logic;
      input_reg : in std_logic_vector(7 downto 0);
      m_tick : out std_logic;
      output_reg : out std_logic_vector(7 downto 0)
    );
end rate_generator;

architecture arch of rate_generator is
    signal counter: integer:=0;

    begin
    process(clk)
    begin
        if reset='1' then
           counter<=0;
           m_tick<='0';
        elsif rising_edge(clk) then
           counter<=counter+1;
           if counter=100 then-- 100000000 for 1s
               output_reg<=input_reg;
               m_tick<='1';
               counter <= 0;
           else 
               m_tick<='0';
           end if;
        end if;

    end process;


end arch;
