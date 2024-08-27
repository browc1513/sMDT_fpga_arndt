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
    signal counter_idle: integer:=0;
    signal counter_data: integer:=0;

    constant DATA_LEN : natural := 10; -- the data bus will always be 10 bits (8 data bits and a start and stop bit)
    type readout_states is (DATA, IDLE);
    signal readout_state : readout_states:= IDLE ;
    
    begin
    
    next_readout_state_process : process(clk)
    begin
        if reset='1' then -- is reset is logic high, all signals are set to logic low
           counter_idle<=0;
           counter_data<=0;
           m_tick<='0';
        end if;
        
        if rising_edge(clk) then
              counter_idle<=counter_idle+1;

              if (readout_state = IDLE) then	
 	      
                   if counter_idle=100000000 then-- 100000000 clk cycles for 1s, 200000 clk cycles for 2ms
                       readout_state<= DATA; -- if readout is IDLE and counter_idle is 200000 redout updated to DATA
                       output_reg<=input_reg; -- loads input_reg into output_reg
                       m_tick<='1'; -- m_tick set to logic high
                       counter_idle <= 0; -- reset counter_idle
                   end if;
              else 
                       counter_data<=counter_data+1;
                       if counter_data = DATA_LEN then -- if counter_data is equal to 10 (DATA_LEN)
                            m_tick<='0'; -- resets m_tick to 0
                            counter_data <= 0;
                                 readout_state<= IDLE; -- readout set back to IDLE
                        end if;
               end if;
         end if;
    end process;
end arch;
