----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2024/01/17 00:55:50
-- Design Name: 
-- Module Name: tb_top - Behavioral
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
------------------------------------------------------------------------ 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_top is
end entity tb_top;

architecture Behavioral of tb_top is
  signal clk   : std_logic := '0';
  signal reset : std_logic := '0';
  signal JA    : std_logic_vector (1 downto 0):= (others =>'0'); --changed for two
  signal tx     : std_logic := '0';
  signal edge_detect_0 : std_logic_vector(1 downto 0) := (others => '0');
  signal edge_detect_1: std_logic_vector(1 downto 0) := (others => '0');
  signal edge_detect_2: std_logic_vector(1 downto 0) := (others => '0');
  
begin
    clk <= not clk after 5 ns;

dut : entity work.top(Behavioral) 
    port map(   
    clk=>clk, 
    reset=>reset, 
    JA=>JA,
    tx=>tx
    );
  stimulus:
process begin

     wait for 16ns;
    JA(0) <= '1';
    JA(1) <= '1';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --edge_detect_2(0) <= '0';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
     wait for 16ns;
    JA(0) <= '1';
    JA(1) <= '0';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --edge_detect_2(0) <= '0';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    
     wait for 116ns;
    JA(0) <= '1';
    JA(1) <= '0';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --tx <= '1';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
     wait for 66ns;
    JA(0) <= '1';
    JA(1) <= '1';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --tx <= '1';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
     wait for 56ns;
    JA(0) <= '1';
    JA(1) <= '1';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --tx <= '1';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
      wait for 100000ns;
    JA(0) <= '1';
    JA(1) <= '1';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --tx <= '1';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
    --    wait for 56ns;
    --JA(0) <= '1';
    --JA(1) <= '1';
    --JA(2) <= '1';
    --edge_detect_0(0) <= '1';
    --edge_detect_1(0) <= '1';
    --tx <= '1';
    -- wait for 10ns;
    --JA(0) <= '0';
    --JA(1) <= '0';
    --JA(2) <= '0';
    --edge_detect_0(0) <= '0';
    --edge_detect_1(0) <= '0';
    --tx <= '0';
    
    wait for 2000000ns;
    JA(0) <= '1';
    JA(1) <= '1';
    --JA(2) <= '1';
    edge_detect_0(0) <= '1';
    edge_detect_1(0) <= '1';
    --tx <= '1';
     wait for 10ns;
    JA(0) <= '0';
    JA(1) <= '0';
    --JA(2) <= '0';
    edge_detect_0(0) <= '0';
    edge_detect_1(0) <= '0';
    --tx <= '0';
    
    -- wait for 116ns; 
    --JA(0) <= '1';
    --JA(1) <= '1';
    --JA(2) <= '1';
    --edge_detect_0(0) <= '1';
    --edge_detect_1(0) <= '1';
    --tx <= '1';
    -- wait for 10ns;
    --JA(0) <= '0';
    --JA(1) <= '0';
    --JA(2) <= '0';
    --edge_detect_0(0) <= '0';
    --edge_detect_1(0) <= '0';
    --tx <= '0';
    wait;

end process stimulus;


end Behavioral;
