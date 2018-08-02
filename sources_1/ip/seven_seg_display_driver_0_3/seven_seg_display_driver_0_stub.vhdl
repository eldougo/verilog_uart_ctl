-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Aug  2 11:25:48 2018
-- Host        : vivado running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/craig/vivado/uart_ctrl/uart_ctrl.srcs/sources_1/ip/seven_seg_display_driver_0_3/seven_seg_display_driver_0_stub.vhdl
-- Design      : seven_seg_display_driver_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seven_seg_display_driver_0 is
  Port ( 
    clk : in STD_LOGIC;
    disp_buf : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    lum : in STD_LOGIC_VECTOR ( 3 downto 0 );
    an_mux : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_mux : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp_mux : out STD_LOGIC
  );

end seven_seg_display_driver_0;

architecture stub of seven_seg_display_driver_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,disp_buf[15:0],dp[2:0],lum[3:0],an_mux[3:0],seg_mux[6:0],dp_mux";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "seven_seg_display_driver,Vivado 2018.2";
begin
end;
