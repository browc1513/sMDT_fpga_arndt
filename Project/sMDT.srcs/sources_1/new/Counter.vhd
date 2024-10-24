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
      in0,in1,in2,in3 : out std_logic_vector(6 downto 0);
      counter_out :  out std_logic_vector(7 downto 0):= (others => '0');
      timestamp_out : out std_logic_vector(31 downto 0) := (others => '0')
      );
end Counter;

architecture Behavioral of Counter is
    signal counter: integer:=0;
    signal counter_reg: integer:=0;
    signal counter_idle0: integer:=0;
    signal counter_idle1: integer:=0;
    signal idle0: std_logic:= '0';
    signal counter_out_reg: unsigned(7 downto 0) := (others => '0');
    signal in0_reg,in1_reg,in2_reg,in3_reg: unsigned (3 downto 0);
    signal edge_detect_0 : std_logic_vector(1 downto 0);
    signal edge_detect_1 : std_logic_vector(1 downto 0);
    signal timestamp : std_logic_vector(31 downto 0) := (others => '0');
    signal timestamp_counter : std_logic_vector(31 downto 0) := (others => '0');

    function four_bits_to_sseg 
    ( 
    bits : unsigned(3 downto 0)
    )
     return std_logic_vector is 
     variable sseg_tem: std_logic_vector(6 downto 0);
    begin
            case bits is -- Key for displaying counts on the seven segment display [four-bit character key in comments below]
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
         if reach_cycle='1' then
               counter_out_reg<=(others=>'0');
               counter_out<=(others=>'0');

         end if;
        if reset='1' then
           counter<=0;
           in0_reg<=(others=>'0');
           in1_reg<=(others=>'0');
           in2_reg<=(others=>'0');
           in3_reg<=(others=>'0');
           edge_detect_0<=(others=>'0');
           edge_detect_1<=(others=>'0');
           counter_out_reg<=(others=>'0');
           counter_out<=(others=>'0');
           timestamp_counter <= (others => '0'); --added
           timestamp <= (others => '0'); --added

        -- If scintillators detect particles, record count (to account for two)
        elsif rising_edge(clk) then
           timestamp_counter <= std_logic_vector(unsigned(timestamp_counter) + 1);
           edge_detect_0<=edge_detect_0(0) & JA(0);
           edge_detect_1<=edge_detect_1(0) & JA(1);
           if edge_detect_0="01" and  edge_detect_1="01" and idle0 = '0' then
                    counter <= counter+1;
                    counter_reg<= counter_reg+1;
                    timestamp <= timestamp_counter; 
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
            
            
            --mEnsures single digit values for each digit of the display [doesn't display past 9]
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
       
       -- Converting the four bit characters to the display
       in0<=four_bits_to_sseg(in0_reg);
       in1<=four_bits_to_sseg(in1_reg);
       in2<=four_bits_to_sseg(in2_reg);
       in3<=four_bits_to_sseg(in3_reg);
       
-- assign timestamp to output
       timestamp_out <= timestamp;

end Behavioral;
