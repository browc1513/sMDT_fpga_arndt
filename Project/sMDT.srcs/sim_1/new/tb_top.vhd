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

entity tb_top is
end entity tb_top;

architecture Behavioral of tb_top is
  signal clk   : std_logic := '0';
  signal reset : std_logic := '0';
  signal JA    : std_logic := '0';
  signal an    : std_logic_vector (3 downto 0):= (others => '0');
  signal sseg    : std_logic_vector (6 downto 0):= (others => '0');
  signal tx     : std_logic := '0';
begin
    clk <= not clk after 5 ns;

dut : entity work.top(Behavioral) 
    port map(   
    clk=>clk, 
    reset=>reset, 
    JA=>JA,
    an=>an,
    sseg=>sseg,
    tx=>tx
    );
  stimulus:
process begin
     wait for 16ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
     wait for 116ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
     wait for 66ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
     wait for 56ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
      wait for 1000ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
        wait for 56ns;
    JA <= '1';
     wait for 10ns;
    JA <= '0';
      wait;

end process stimulus;


end Behavioral;
