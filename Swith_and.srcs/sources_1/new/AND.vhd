----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/08/03 20:32:34
-- Design Name: 
-- Module Name: AND - Behavioral
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
Port ( 
       sw : in  std_logic_vector (1 downto 0);
       led   : out std_logic_vector (0 downto 0)
      );
end sMDT;

architecture behavior of sMDT is

begin
    and_proc: process(sw(0),sw(1)) is
    begin 

            led(0) <= sw(0) and sw(1);

    end process and_proc;
end behavior;

