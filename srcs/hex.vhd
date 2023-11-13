----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/10/29 18:29:58
-- Design Name: 
-- Module Name: Top - Behavioral
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

entity Top is
  generic(
    DVSR: integer:=4; --number of bit calcuted by [log2M]
    DVSR_BIT: integer:=10
  );
  Port (
   clk, reset, JA :in std_logic;
   an         : out std_logic_vector (3 downto 0);
   sseg       : out std_logic_vector (6 downto 0)
   );
end Top;

architecture Behavioral of Top is
    signal in0,in1,in2,in3 : std_logic_vector (6 downto 0);
    signal max_tick        : std_logic;
    
begin
    signal_generate_unit: entity work.counter(Behavioral) 
    port map(
    JA=>JA, clk=>clk, reset=>reset , 
    in0=>in0, in1=>in1, in2=>in2, in3=>in3);

    displayer_unit: entity work.displayer(arch) 
    port map(
    clk=>clk, reset=>reset , 
    in0=>in0, in1=>in1, in2=>in2, in3=>in3,
    an=>an,
    sseg=>sseg);

end Behavioral;