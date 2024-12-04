library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Ethernet_UDP_TX_CTRL is
    Port (
        UDP_SEND  : in  std_logic;                           -- Trigger for UDP transmission
        DATA      : in  std_logic_vector(7 downto 0);        -- Data payload
        CLK       : in  std_logic;                           -- Clock signal
        READY     : out std_logic;                           -- Ready signal
        ETH_TX_EN : out std_logic;                           -- Ethernet TX enable
        ETH_TXD   : out std_logic_vector(3 downto 0)         -- Ethernet TX data bus
    );
end Ethernet_UDP_TX_CTRL;

architecture Behavioral of Ethernet_UDP_TX_CTRL is
    -- State machine states
    type state_type is (IDLE, HEADER, PAYLOAD, SEND_STATE);
    signal state : state_type := IDLE;

    -- Packet construction
    signal udp_header : std_logic_vector(47 downto 0) := "110101011010101001010101001010101010101010101010";
    signal packet     : std_logic_vector(95 downto 0);
    signal packet_index : integer range 0 to 95 := 0;

begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            case state is
                when IDLE =>
                    READY <= '1';
                    if UDP_SEND = '1' then
                        -- Combine header, data, and padding to form a 96-bit packet
                        packet <= udp_header & DATA & (39 downto 0 => '0'); -- Add 40 bits of padding
                        packet_index <= 0;
                        state <= HEADER;
                        READY <= '0';
                    end if;

                when HEADER =>
                    -- Extract 4-bit chunks for transmission
                    ETH_TXD <= packet(packet_index + 3 downto packet_index); -- Transmit 4 bits
                    packet_index <= packet_index + 4;
                    if packet_index = 47 then
                        state <= PAYLOAD; -- Transition to payload state after header
                    end if;

                when PAYLOAD =>
                    -- Continue extracting 4-bit chunks for the payload
                    ETH_TXD <= packet(packet_index + 3 downto packet_index); -- Transmit 4 bits
                    packet_index <= packet_index + 4;
                    if packet_index = 95 then
                        state <= SEND_STATE; -- Transition to send state after payload
                    end if;

                when SEND_STATE =>
                    ETH_TX_EN <= '1'; -- Enable Ethernet TX
                    state <= IDLE; -- Return to IDLE state
            end case;
        end if;
    end process;

end Behavioral;
