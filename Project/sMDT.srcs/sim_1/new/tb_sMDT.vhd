-------------------------------------------------------------------------------
-- TB_UART
-- This testbench instantiates the top level UART loopback example
-- (referred to as the 'remote' UART) and a separate instance of the UART core, 
-- which is referred to as the 'local' UART.
-- The local UART is given data to send from the input text file 'input.txt' 
-- which it then sends to the remote UART via a serial interface. 
-- The remote UART is configured in loopback mode so it 
-- will retransmit any data that it receives back to the local UART. 
-- The testbench will store any data received by the local UART into the output
-- file 'output.txt'.
-- Stimulus input and output checking is performed by the external Python
-- unit test 'uart_unit_tests.py', which is designed to work with the ChipTools
-- framework. This testbench allows the clock frequencies of the local and 
-- remote UARTs to be configured separately as well as their phase relationship
-- and baud rates. A full suite of tests covering various configurations is 
-- provided in the unit test suite.
-------------------------------------------------------------------------------

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;

library std;
    use std.textio.all; --vhdlguide.com/2017/09/22/textio/

library lib_uart;
    use lib_uart.all; --xmos.com/download/lib_uart-readme(3_0_03rc1).pdf

entity tb_uart is
    generic (
        -- Phase delay between local and remote comms links
        delay_ns            : real := 0.75;
        -- Local and remote baud rates
        baud                : positive := 115200;
        -- Remote clock frequency
        remote_clock_hz     : positive := 100000000;
        -- Local clock frequency
        local_clock_hz      : positive := 99999334
    );
end entity;

architecture beh of tb_uart is
    component uart is
        generic (
            baud                : positive;
            clock_frequency     : positive
        );
        port (  
            -- general
            clock               :   in      std_logic;
            reset               :   in      std_logic;    
            data_stream_in      :   in      std_logic_vector(7 downto 0);
            data_stream_in_stb  :   in      std_logic;
            data_stream_in_ack  :   out     std_logic := '0';
            data_stream_out     :   out     std_logic_vector(7 downto 0);
            data_stream_out_stb :   out     std_logic;
            tx                  :   out     std_logic;
            rx                  :   in      std_logic
        );
    end component;
    component top is
        generic (
            baud                : positive;
            clock_frequency     : positive
        );
        port (  
            clock_y3                :   in      std_logic;
            user_reset              :   in      std_logic;    
            usb_rs232_rxd           :   in      std_logic;
            usb_rs232_txd           :   out     std_logic
        );
    end component;
    signal remote_clock         : std_logic := '0';
    signal remote_clock_int     : std_logic := '0';
    signal remote_data          : std_logic_vector(7 downto 0);
    signal remote_data_in_stb   : std_logic := '0';
    signal remote_data_in_ack   : std_logic := '0';
    signal remote_data_out      : std_logic_vector(7 downto 0);
    signal remote_data_out_stb  : std_logic := '1'; --
    signal remote_data_out_ack  : std_logic := '1'; --
    signal remote_tx            : std_logic := '1'; --
    signal remote_rx            : std_logic := '1'; --
    signal local_clock          : std_logic := '1'; --
    signal local_data           : std_logic_vector(7 downto 0);
    signal local_data_in_stb    : std_logic := '1'; --
    signal local_data_in_ack    : std_logic := '1'; --
    signal local_data_out       : std_logic_vector(7 downto 0);
    signal local_data_out_stb   : std_logic := '1'; --
    signal local_data_out_ack   : std_logic := '1'; --
    signal local_tx             : std_logic := '1'; --
    signal local_rx             : std_logic := '1'; --
    signal rx_count             : integer := 0; 
    signal tx_count             : integer := 0;
    signal done                 : boolean := False;
begin
    ---------------------------------------------------------------------------
    -- GENERATE LOCAL AND REMOTE CLOCKS
    ---------------------------------------------------------------------------
    local_clock_gen : process(local_clock) --process starts when local_clock changes
    begin
        if not done then
            local_clock <= not local_clock after ( -- changes the signal from 1 to 0 or 0 to 1
                (1.0 / (2.0 * real(local_clock_hz))) * real(1e9) 
            ) * 1 ns; --adds a delay to the signal change
        end if;
    end process;
    remote_clock_gen : process(remote_clock_int) --same as above 
    begin
        if not done then
            remote_clock_int <= not remote_clock_int after (
                (1.0 / (2.0 * real(remote_clock_hz))) * real(1e9)
            ) * 1 ns; 
            remote_clock <= transport remote_clock_int after delay_ns * 1 ns;
        end if;
    end process;
    ---------------------------------------------------------------------------
    -- READ/WRITE STIMULUS DATA FILES
    ---------------------------------------------------------------------------
    stim_parser : process
        constant input_path     : string := "input.txt";
        constant output_path    : string := "output.txt";
        file     input_file     : text;
        file     output_file    : text;
        variable data_line      : line;
        variable output_line    : line;
        variable status         : file_open_status := status_error;
        variable data           : bit_vector(7 downto 0);
        variable read_ok        : boolean;
        variable first_call     : boolean := false;
    begin
        if status /= open_ok then --if status is not open_ok
            file_open(status, input_file, input_path, read_mode); --tries to open file in read mode
            assert (status = open_ok) --checks if status is open_ok
                report "Failed to open " & input_path --of not, print failed message
                severity failure;
            file_open(status, output_file, output_path, write_mode); --tries to open file in write mode
            assert (status = open_ok) 
                report "Failed to open " & output_path --if not, print failed message
                severity failure;
        end if;

        if local_data_out_stb = '1' then
            write(output_line, to_bitvector(local_data_out)); --changes local_data_out to a bit vector and adds it to the output file
            writeline(output_file, output_line); --adds to output file
            rx_count <= rx_count + 1; --increases received count
        end if;

        if not endfile(input_file) then --check if end of input file is reached
            if local_data_in_stb = '0' or local_data_in_ack = '1' then 
                -- Get Data
                readline(input_file, data_line); --reads line from input file to data line
                read(data_line, data, read_ok); --reads from data line to data and read_ok changes based on if it was successful or not
                local_data          <= to_stdlogicvector(data); --changes data to logic vector and assigns to local_data
                local_data_in_stb   <= '1'; --data is available
                tx_count            <= tx_count + 1; --increases transmission count
            end if;
            wait until rising_edge(local_clock); --wait for another rising edge
        else
            if local_data_in_ack = '1' then 
                local_data_in_stb   <= '0'; --no more data is available
            end if;
            if rx_count = tx_count then --if transmit and receive are the same...
                report "Test complete, transmit " & integer'image(tx_count) &
                " byte(s) and received " & integer'image(rx_count) &
                " byte(s)"; --reports complete message and displays bytes transmitted and received
                done <= true; --complete process
            end if;
            wait until rising_edge(local_clock);
        end if;
    end process;
    -- If the test does not return data within a time limit then the system may
    -- not be functioning. Abort the test and report an error instead of 
    -- continuing.
    watchdog : process(local_clock) -- if changes are made to local_clock
        constant timeout_reset : integer := 10e6; --a million clock cycles
        variable timeout : integer := timeout_reset;  --time remaining
    begin
        if rising_edge(local_clock) then
            if local_data_out_stb = '1' then
                timeout := timeout_reset; --timer is reset if data is being transmitted
            else --if data is not being transmitted
                timeout := timeout - 1;
                if timeout = 0 then
                    report "Automatically aborting testbench because data" &
                    " was not received for " & integer'image(timeout_reset) &
                    " local clock cycles." severity failure; --aborts and sends message if no data is received in timout period
                end if;
            end if;
        end if;
    end process;

    ---------------------------------------------------------------------------
    -- REMOTE UART
    ---------------------------------------------------------------------------
    remote_uart : top
    generic map(
        baud                => baud,
        clock_frequency     => remote_clock_hz
    )
    port map(  
        clock_y3            => remote_clock,
        user_reset          => '0',
        usb_rs232_rxd       => remote_rx,
        usb_rs232_txd       => remote_tx
    );
    ---------------------------------------------------------------------------
    -- LOCAL UART
    ---------------------------------------------------------------------------
    local_uart : uart
    generic map(
        baud                => baud,
        clock_frequency     => local_clock_hz
    )
    port map(
        -- general
        clock               => local_clock,
        reset               => '0',
        data_stream_in      => local_data,
        data_stream_in_stb  => local_data_in_stb,
        data_stream_in_ack  => local_data_in_ack,
        data_stream_out     => local_data_out,
        data_stream_out_stb => local_data_out_stb,
        tx                  => local_tx,
        rx                  => local_rx
    );
    -- Connect local and remote UART interfaces
    remote_rx   <= local_tx;
    local_rx    <= remote_tx;
end beh;