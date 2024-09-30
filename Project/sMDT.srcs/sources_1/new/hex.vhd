---------------------------------------------------------------------------------
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
   clk, reset : in std_logic;
   JA         : in std_logic_vector(1 downto 0); --changed for two
   an         : out std_logic_vector (3 downto 0);
   sseg       : out std_logic_vector (6 downto 0);
   tx         : out std_logic
   );
end Top;
 
architecture Behavioral of Top is
    signal in0,in1,in2,in3 : std_logic_vector (6 downto 0);
    signal max_tick        : std_logic;
    signal uartData : std_logic_vector (7 downto 0):= "00000000";
    signal uartSend : std_logic := '0';
    signal uartTX : std_logic;
    signal uartRdy : std_logic;
    signal reach_cycle : std_logic := '0';
    signal counter_out : std_logic_vector (7 downto 0):= "00000000";
    --added
    signal timestamp : std_logic_vector(31 downto 0);
    signal byte_index : integer := 0; 

component UART_TX_CTRL
Port(
	SEND : in std_logic;
	DATA : in std_logic_vector(7 downto 0);
	CLK : in std_logic;          
	READY : out std_logic;
	UART_TX : out std_logic
	);
end component;

begin
    signal_generate_unit: entity work.counter(Behavioral) 
    port map(
    JA=>JA, clk=>clk, reset=>reset ,
    in0=>in0, in1=>in1, in2=>in2, in3=>in3,reach_cycle=>uartSend,counter_out=>counter_out,
    timestamp_out=>timestamp); -- added

    displayer_unit: entity work.displayer(arch) 
    port map(
    clk=>clk, reset=>reset , 
    in0=>in0, in1=>in1, in2=>in2, in3=>in3,
    an=>an,
    sseg=>sseg);
    
    --Component used to control readout rate.
    rate_generator_unit: entity work.rate_generator(arch) 
    port map(
    clk=>clk, reset=>reset, 
    --input_reg=>counter_out,
    -- added
    input_reg=>timestamp(7 downto 0),
    m_tick=>uartSend, output_reg=>uartData);

    
    --Component used to send a byte of data over a UART line.
    Inst_UART_TX_CTRL: UART_TX_CTRL port map(
            SEND => uartSend, 
            DATA => uartData,
            CLK => CLK,
            READY => uartRdy,
            UART_TX => uartTX
        );
        
  -- added  
    process(clk)
    begin
        if rising_edge(clk) then
            if uartSend = '1' and uartRdy = '1' then
                case byte_index is
                    when 0 => uartData <= timestamp(31 downto 24); 
                    when 1 => uartData <= timestamp(23 downto 16);
                    when 2 => uartData <= timestamp(15 downto 8);
                    when 3 => uartData <= timestamp(7 downto 0);
                end case;
                byte_index <= byte_index + 1
                if byte_index = 3 then
                    byte_index <= 0;
                end if;
            end if;
        end if;
    end process; 
    
    tx <= uartTX;
   

end Behavioral;