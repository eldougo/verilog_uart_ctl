// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Aug  2 11:25:48 2018
// Host        : vivado running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/craig/vivado/uart_ctrl/uart_ctrl.srcs/sources_1/ip/seven_seg_display_driver_0_3/seven_seg_display_driver_0_stub.v
// Design      : seven_seg_display_driver_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seven_seg_display_driver,Vivado 2018.2" *)
module seven_seg_display_driver_0(clk, disp_buf, dp, lum, an_mux, seg_mux, dp_mux)
/* synthesis syn_black_box black_box_pad_pin="clk,disp_buf[15:0],dp[2:0],lum[3:0],an_mux[3:0],seg_mux[6:0],dp_mux" */;
  input clk;
  input [15:0]disp_buf;
  input [2:0]dp;
  input [3:0]lum;
  output [3:0]an_mux;
  output [6:0]seg_mux;
  output dp_mux;
endmodule
