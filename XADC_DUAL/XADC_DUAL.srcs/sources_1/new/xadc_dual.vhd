---------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 2023/09/07 00:38:30
-- Design Name: 
-- Module Name: myADC - Behavioral
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

entity myADC is
    Port ( clk : in STD_LOGIC;
            sw : in STD_LOGIC;
           led : out std_logic_vector(15  downto 0);
           JA : in std_logic_vector(7 downto 0));
end myADC;

architecture Behavioral of myADC is
      signal daddr_in  : std_logic_vector(6 downto 0);
      signal channel_out : std_logic_vector(4 downto 0);
      signal daddr  : std_logic_vector(6 downto 0);
      signal eoc_out : std_logic;
      signal do_out  : std_logic_vector(15 downto 0);  
      signal data  : std_logic_vector(15 downto 0);  
      signal data1  : std_logic_vector(15 downto 0);  
      signal data2  : std_logic_vector(15 downto 0);  
      signal anal1_P, anal1_N, anal2_P,anal2_N  : std_logic; 
      signal count : integer range 0 to 999;
      signal convst : std_logic;
      signal den_in : std_logic;
      signal drdy_out : std_logic;
      signal eos_out : std_logic;
      type states is (idle,read1,tempo,read2);
      signal state : states;
COMPONENT xadc_wiz_0
  PORT (
    di_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    daddr_in : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    den_in : IN STD_LOGIC;
    dwe_in : IN STD_LOGIC;
    drdy_out : OUT STD_LOGIC;
    do_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    dclk_in : IN STD_LOGIC;
    reset_in : IN STD_LOGIC;
    convst_in : IN STD_LOGIC;
    vp_in : IN STD_LOGIC;
    vn_in : IN STD_LOGIC;
    vauxp4 : IN STD_LOGIC;
    vauxn4 : IN STD_LOGIC;
    vauxp12 : IN STD_LOGIC;
    vauxn12 : IN STD_LOGIC;
    channel_out : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    eoc_out : OUT STD_LOGIC;
    alarm_out : OUT STD_LOGIC;
    eos_out : OUT STD_LOGIC;
    busy_out : OUT STD_LOGIC 
  );
END COMPONENT;

begin

      daddr_in <= "00" & channel_out;
      anal1_P <= JA(7);
      anal1_N <= JA(3);
      anal2_P <= JA(6);
      anal2_N <= JA(2);
      led(15 downto 8)<=data1(15 downto 8);
      led(7 downto 0)<=data2(15 downto 8);
      inst_xadc   : xadc_wiz_0
      PORT MAP (
        di_in => "0000000000000000",
        daddr_in => daddr_in,
        den_in => den_in,
        dwe_in => '0',
        drdy_out => drdy_out,
        do_out => data,
        dclk_in => clk,
        reset_in => sw, 
        convst_in => convst,
        vp_in => '0',
        vn_in => '0',
        vauxp4 => anal1_P,
        vauxn4 => anal1_N,
        vauxp12 => anal2_P,
        vauxn12 => anal2_N,
        channel_out => channel_out,
        eoc_out => eoc_out,
        alarm_out => open,
        eos_out => eos_out,
        busy_out => open
      );
  
      -- for a sampling freq of 100 kHz, with a clk freq of 100 MHz
      process(clk)
      begin
          if clk'event and clk='1' then
              case state is
              when idle =>  -- waiting for eoc
                  den_in <= '0';
                  daddr <= "0010100"; -- Vaux4
                  if eoc_out = '1' then
                      state <= read1; -- read the first data
                      den_in <= '1';
                  end if;
              when read1 =>
                  den_in <= '0';
                  if drdy_out = '1' then
                      data1 <= data;
                      daddr <= "0011100"; -- vaux12
                      state <= tempo;
                  end if;
                  if eoc_out = '1' then  -- normally it never happens
                      state <= idle; -- but better to put it
                  end if;
              when tempo =>
                  den_in <= '1';
                  state <= read2;
              when read2 =>
                  if drdy_out = '1' then
                      data2 <= data;
                      state <= idle;
                  end if;
              end case;
          end if;

      end process;
      
      
    process(clk)
      begin
          if clk'event and clk='1' then
              count <= count + 1;
              convst <= '0';
              if count = 999 then
                  count <= 0;
                  convst <= '1';
              end if;
          end if;
      end process;
end Behavioral;