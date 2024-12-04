library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ethernet_RX_CTRL is
    Port (
        CLK        : in  STD_LOGIC;                          -- Clock signal
        RESET      : in  STD_LOGIC;                          -- Reset signal
        ETH_RX_DV  : in  STD_LOGIC;                          -- Data valid signal from Ethernet PHY
        ETH_RXD    : in  STD_LOGIC_VECTOR(3 downto 0);       -- 4-bit Ethernet RX data lines
        DATA_READY : out STD_LOGIC;                          -- Indicates data is available
        DATA_OUT   : out STD_LOGIC_VECTOR(7 downto 0)        -- Received 8-bit data
    );
end Ethernet_RX_CTRL;

architecture Behavioral of Ethernet_RX_CTRL is

    type RX_STATE_TYPE is (IDLE, RECEIVE, DONE);
    signal rxState       : RX_STATE_TYPE := IDLE;
    signal rxPacket      : STD_LOGIC_VECTOR(7 downto 0) := (others => '0'); -- Received data buffer
    signal bitCounter    : integer range 0 to 7 := 0; -- Counter for bit assembly
    signal dataValid     : STD_LOGIC := '0';

begin

    process(CLK, RESET)
    begin
        if RESET = '1' then
            -- Reset all internal signals
            rxState <= IDLE;
            rxPacket <= (others => '0');
            bitCounter <= 0;
            dataValid <= '0';
        elsif rising_edge(CLK) then
            case rxState is
                when IDLE =>
                    dataValid <= '0'; -- Clear data ready signal
                    if ETH_RX_DV = '1' then
                        rxState <= RECEIVE; -- Transition to RECEIVE state
                        bitCounter <= 0; -- Reset bit counter
                        rxPacket <= (others => '0'); -- Clear receive buffer
                    end if;

                when RECEIVE =>
                    -- Assemble 8-bit data from 4-bit chunks
                    if bitCounter = 0 then
                        rxPacket(7 downto 4) <= ETH_RXD; -- Load high nibble
                    else
                        rxPacket(3 downto 0) <= ETH_RXD; -- Load low nibble
                        rxState <= DONE; -- Transition to DONE state after full byte is received
                    end if;
                    bitCounter <= bitCounter + 4; -- Increment bit counter by 4

                when DONE =>
                    dataValid <= '1'; -- Indicate data is ready
                    rxState <= IDLE; -- Return to IDLE state

                when others =>
                    rxState <= IDLE; -- Fallback to IDLE in case of unexpected state
            end case;
        end if;
    end process;

    -- Output assignments
    DATA_READY <= dataValid;
    DATA_OUT <= rxPacket;

end Behavioral;
