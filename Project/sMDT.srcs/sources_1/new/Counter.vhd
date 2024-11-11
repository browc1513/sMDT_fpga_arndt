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
    ( clk, reset : in std_logic;
      reach_cycle : in std_logic := '0';
      JA : in std_logic_vector(1 downto 0); 
      counter_out :  out std_logic_vector(7 downto 0):= (others => '0')
      );
end Counter;

architecture Behavioral of Counter is
    signal counter: integer:=0;
    signal counter_reg: integer:=0;
    signal counter_idle0: integer:=0;
    signal counter_idle1: integer:=0;
    signal idle0: std_logic:= '0';
    signal counter_out_reg: unsigned(7 downto 0) := (others => '0');
    signal edge_detect_0 : std_logic_vector(1 downto 0);
    signal edge_detect_1 : std_logic_vector(1 downto 0);
     
begin
    process(clk)
    begin
         if reach_cycle='1' then
               counter_out_reg<=(others=>'0');
               counter_out<=(others=>'0');

         end if;
        if reset='1' then
           counter<=0;
           edge_detect_0<=(others=>'0');
           edge_detect_1<=(others=>'0');
           counter_out_reg<=(others=>'0');
           counter_out<=(others=>'0');

        -- If scintillators detect particles, record count (to account for two)
        elsif rising_edge(clk) then
           edge_detect_0<=edge_detect_0(0) & JA(0);
           edge_detect_1<=edge_detect_1(0) & JA(1);
           if edge_detect_0="01" and  edge_detect_1="01" and idle0 = '0' then
                    counter <= counter+1;
                    counter_reg<= counter_reg+1;
                idle0 <= '1';
           end if;
             
            if idle0='1' then
                counter_idle0<= counter_idle0+1;
                if counter_idle0=100 then
                    counter_idle0 <=0;
                    idle0<='0';
                end if;
             end if; 
                                        
           
        if(counter = 1) then --CHANGE BEFORE REAL TEST: 10Hz for one layer, 1Hz for simulation , 100HZ for readout
            counter_out_reg<= ( counter_out_reg + 1 );
            counter_out <= std_logic_vector( counter_out_reg + 1 );
            counter <= 0;
           end if;
           end if;

       end process;

end Behavioral;
