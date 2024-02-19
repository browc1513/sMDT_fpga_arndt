-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Fri Jul 28 15:50:52 2023
-- Host        : DESKTOP-I1FLNJP running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/research/Vivado/sMDT/sMDT.sim/sim_1/synth/func/xsim/tb_sMDT_func_synth.vhd
-- Design      : sMDT
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sMDT is
  port (
    clk : in STD_LOGIC;
    JA : in STD_LOGIC_VECTOR ( 0 to 0 );
    JB : in STD_LOGIC_VECTOR ( 0 to 0 );
    led : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of sMDT : entity is true;
end sMDT;

architecture STRUCTURE of sMDT is
  signal JA_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal JB_IBUF : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal \led[0]_i_1_n_0\ : STD_LOGIC;
  signal led_OBUF : STD_LOGIC_VECTOR ( 0 to 0 );
begin
\JA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JA(0),
      O => JA_IBUF(0)
    );
\JB_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => JB(0),
      O => JB_IBUF(0)
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\led[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => JA_IBUF(0),
      I1 => JB_IBUF(0),
      O => \led[0]_i_1_n_0\
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \led[0]_i_1_n_0\,
      Q => led_OBUF(0),
      R => '0'
    );
end STRUCTURE;
