----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/07/28 14:35:54
-- Design Name: 
-- Module Name: tb_sMDT - Behavioral
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

entity tb_sMDT is
end tb_sMDT;

architecture Behavioral of tb_sMDT is

    component sMDT is
        Port ( 
        sw : in  std_logic_vector (1 downto 0);
       led   : out std_logic_vector (0 downto 0)
       );
    end component;   
    signal   sw :  std_logic_vector (1 downto 0);
    signal   led   :  std_logic_vector (0 downto 0);


begin

    DUT:sMDT port map (sw=>sw,led=>led);
    
    tb:process
    begin
        sw(0)<='1';
        sw(1)<='1';
        wait for 12 ns;
        sw(0)<='0';
        wait for 10 ns;
        sw(1)<='0';
        wait for 10 ns;
        sw(0)<='1';
        sw(1)<='1';

        wait;
    end process;
    
    
end Behavioral;