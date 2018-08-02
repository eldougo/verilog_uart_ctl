// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Thu Aug  2 11:25:48 2018
// Host        : vivado running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/craig/vivado/uart_ctrl/uart_ctrl.srcs/sources_1/ip/seven_seg_display_driver_0_3/seven_seg_display_driver_0_sim_netlist.v
// Design      : seven_seg_display_driver_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "seven_seg_display_driver_0,seven_seg_display_driver,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "seven_seg_display_driver,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module seven_seg_display_driver_0
   (clk,
    disp_buf,
    dp,
    lum,
    an_mux,
    seg_mux,
    dp_mux);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [15:0]disp_buf;
  input [2:0]dp;
  input [3:0]lum;
  output [3:0]an_mux;
  output [6:0]seg_mux;
  output dp_mux;

  wire [3:0]an_mux;
  wire clk;
  wire [15:0]disp_buf;
  wire [2:0]dp;
  wire dp_mux;
  wire [3:0]lum;
  wire [6:0]seg_mux;

  seven_seg_display_driver_0_seven_seg_display_driver inst
       (.an_mux(an_mux),
        .clk(clk),
        .disp_buf(disp_buf),
        .dp(dp),
        .dp_mux(dp_mux),
        .lum(lum),
        .seg_mux(seg_mux));
endmodule

(* ORIG_REF_NAME = "pwm" *) 
module seven_seg_display_driver_0_pwm
   (SS,
    lum_2_sp_1,
    lum,
    clk);
  output [0:0]SS;
  input lum_2_sp_1;
  input [3:0]lum;
  input clk;

  wire [0:0]SS;
  wire \an_mux[3]_i_3_n_0 ;
  wire \an_mux[3]_i_4_n_0 ;
  wire \an_mux[3]_i_6_n_0 ;
  wire clk;
  wire [3:0]lum;
  wire lum_2_sn_1;
  wire [3:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire \r_pwm_cntr[7]_i_2_n_0 ;
  wire \r_pwm_cntr_reg_n_0_[0] ;
  wire \r_pwm_cntr_reg_n_0_[1] ;
  wire \r_pwm_cntr_reg_n_0_[2] ;
  wire \r_pwm_cntr_reg_n_0_[3] ;

  assign lum_2_sn_1 = lum_2_sp_1;
  LUT6 #(
    .INIT(64'h70707F707F707F7F)) 
    \an_mux[3]_i_1 
       (.I0(\an_mux[3]_i_3_n_0 ),
        .I1(\an_mux[3]_i_4_n_0 ),
        .I2(lum_2_sn_1),
        .I3(p_0_in[3]),
        .I4(lum[3]),
        .I5(\an_mux[3]_i_6_n_0 ),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \an_mux[3]_i_3 
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(\an_mux[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \an_mux[3]_i_4 
       (.I0(\r_pwm_cntr_reg_n_0_[3] ),
        .I1(\r_pwm_cntr_reg_n_0_[2] ),
        .I2(\r_pwm_cntr_reg_n_0_[1] ),
        .O(\an_mux[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD4D4D44DD4DDD4D)) 
    \an_mux[3]_i_6 
       (.I0(p_0_in[2]),
        .I1(lum[2]),
        .I2(p_0_in[1]),
        .I3(lum[1]),
        .I4(lum[0]),
        .I5(p_0_in[0]),
        .O(\an_mux[3]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_pwm_cntr[0]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[0] ),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_pwm_cntr[1]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[0] ),
        .I1(\r_pwm_cntr_reg_n_0_[1] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_pwm_cntr[2]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[0] ),
        .I1(\r_pwm_cntr_reg_n_0_[1] ),
        .I2(\r_pwm_cntr_reg_n_0_[2] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \r_pwm_cntr[3]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[1] ),
        .I1(\r_pwm_cntr_reg_n_0_[0] ),
        .I2(\r_pwm_cntr_reg_n_0_[2] ),
        .I3(\r_pwm_cntr_reg_n_0_[3] ),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \r_pwm_cntr[4]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[2] ),
        .I1(\r_pwm_cntr_reg_n_0_[0] ),
        .I2(\r_pwm_cntr_reg_n_0_[1] ),
        .I3(\r_pwm_cntr_reg_n_0_[3] ),
        .I4(p_0_in[0]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \r_pwm_cntr[5]_i_1 
       (.I0(\r_pwm_cntr_reg_n_0_[3] ),
        .I1(\r_pwm_cntr_reg_n_0_[1] ),
        .I2(\r_pwm_cntr_reg_n_0_[0] ),
        .I3(\r_pwm_cntr_reg_n_0_[2] ),
        .I4(p_0_in[0]),
        .I5(p_0_in[1]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \r_pwm_cntr[6]_i_1 
       (.I0(\r_pwm_cntr[7]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \r_pwm_cntr[7]_i_1 
       (.I0(\r_pwm_cntr[7]_i_2_n_0 ),
        .I1(p_0_in[2]),
        .I2(p_0_in[3]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \r_pwm_cntr[7]_i_2 
       (.I0(p_0_in[1]),
        .I1(\r_pwm_cntr_reg_n_0_[3] ),
        .I2(\r_pwm_cntr_reg_n_0_[1] ),
        .I3(\r_pwm_cntr_reg_n_0_[0] ),
        .I4(\r_pwm_cntr_reg_n_0_[2] ),
        .I5(p_0_in[0]),
        .O(\r_pwm_cntr[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\r_pwm_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\r_pwm_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\r_pwm_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\r_pwm_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_pwm_cntr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(p_0_in[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "seven_seg_display_driver" *) 
module seven_seg_display_driver_0_seven_seg_display_driver
   (an_mux,
    seg_mux,
    dp_mux,
    lum,
    clk,
    dp,
    disp_buf);
  output [3:0]an_mux;
  output [6:0]seg_mux;
  output dp_mux;
  input [3:0]lum;
  input clk;
  input [2:0]dp;
  input [15:0]disp_buf;

  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry_i_1__0_n_0;
  wire _carry_i_1__1_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2__0_n_0;
  wire _carry_i_2__1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3__0_n_0;
  wire _carry_i_3__1_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4__0_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire [3:0]an_mux;
  wire \an_mux[3]_i_5_n_0 ;
  wire clk;
  wire [15:0]disp_buf;
  wire [2:0]dp;
  wire dp_mux;
  wire dp_mux0;
  wire [3:0]get_display_digit_return;
  wire [3:0]lum;
  wire [3:0]p_1_in;
  wire pwm_n_0;
  wire \r_refresh_cntr[0]_i_2_n_0 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_0 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_1 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_2 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_3 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_4 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_5 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_6 ;
  wire \r_refresh_cntr_reg[0]_i_1_n_7 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_0 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_1 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_2 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_3 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_4 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_5 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_6 ;
  wire \r_refresh_cntr_reg[12]_i_1_n_7 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_0 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_1 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_2 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_3 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_4 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_5 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_6 ;
  wire \r_refresh_cntr_reg[16]_i_1_n_7 ;
  wire \r_refresh_cntr_reg[20]_i_1_n_7 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_0 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_1 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_2 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_3 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_4 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_5 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_6 ;
  wire \r_refresh_cntr_reg[4]_i_1_n_7 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_0 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_1 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_2 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_3 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_4 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_5 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_6 ;
  wire \r_refresh_cntr_reg[8]_i_1_n_7 ;
  wire \r_refresh_cntr_reg_n_0_[0] ;
  wire \r_refresh_cntr_reg_n_0_[10] ;
  wire \r_refresh_cntr_reg_n_0_[11] ;
  wire \r_refresh_cntr_reg_n_0_[12] ;
  wire \r_refresh_cntr_reg_n_0_[13] ;
  wire \r_refresh_cntr_reg_n_0_[14] ;
  wire \r_refresh_cntr_reg_n_0_[15] ;
  wire \r_refresh_cntr_reg_n_0_[16] ;
  wire \r_refresh_cntr_reg_n_0_[17] ;
  wire \r_refresh_cntr_reg_n_0_[18] ;
  wire \r_refresh_cntr_reg_n_0_[1] ;
  wire \r_refresh_cntr_reg_n_0_[2] ;
  wire \r_refresh_cntr_reg_n_0_[3] ;
  wire \r_refresh_cntr_reg_n_0_[4] ;
  wire \r_refresh_cntr_reg_n_0_[5] ;
  wire \r_refresh_cntr_reg_n_0_[6] ;
  wire \r_refresh_cntr_reg_n_0_[7] ;
  wire \r_refresh_cntr_reg_n_0_[8] ;
  wire \r_refresh_cntr_reg_n_0_[9] ;
  wire [6:0]seg_mux;
  wire \seg_mux[0]_i_1_n_0 ;
  wire \seg_mux[1]_i_1_n_0 ;
  wire \seg_mux[2]_i_1_n_0 ;
  wire \seg_mux[3]_i_1_n_0 ;
  wire \seg_mux[4]_i_1_n_0 ;
  wire \seg_mux[5]_i_1_n_0 ;
  wire \seg_mux[6]_i_1_n_0 ;
  wire [1:0]selector;
  wire [3:0]NLW__carry_O_UNCONNECTED;
  wire [3:0]NLW__carry__0_O_UNCONNECTED;
  wire [3:3]NLW__carry__1_CO_UNCONNECTED;
  wire [3:0]NLW__carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_r_refresh_cntr_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_r_refresh_cntr_reg[20]_i_1_O_UNCONNECTED ;

  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry_O_UNCONNECTED[3:0]),
        .S({_carry_i_1__0_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW__carry__0_O_UNCONNECTED[3:0]),
        .S({_carry_i_1__1_n_0,_carry_i_2__0_n_0,_carry_i_3__0_n_0,_carry_i_4__0_n_0}));
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({NLW__carry__1_CO_UNCONNECTED[3],dp_mux0,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O(NLW__carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,_carry_i_1_n_0,_carry_i_2__1_n_0,_carry_i_3__1_n_0}));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_1
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_1__0
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_1__0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_1__1
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_1__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_2
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_2__0
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_2__1
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_2__1_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_3
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_3__0
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_3__1
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h04020180)) 
    _carry_i_4
       (.I0(selector[0]),
        .I1(selector[1]),
        .I2(dp[2]),
        .I3(dp[0]),
        .I4(dp[1]),
        .O(_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    _carry_i_4__0
       (.I0(dp[1]),
        .I1(dp[0]),
        .I2(dp[2]),
        .O(_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \an_mux[0]_i_1 
       (.I0(selector[1]),
        .I1(selector[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_mux[1]_i_1 
       (.I0(selector[1]),
        .I1(selector[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \an_mux[2]_i_1 
       (.I0(selector[0]),
        .I1(selector[1]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \an_mux[3]_i_2 
       (.I0(selector[1]),
        .I1(selector[0]),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h0001)) 
    \an_mux[3]_i_5 
       (.I0(lum[1]),
        .I1(lum[0]),
        .I2(lum[3]),
        .I3(lum[2]),
        .O(\an_mux[3]_i_5_n_0 ));
  FDSE \an_mux_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(an_mux[0]),
        .S(pwm_n_0));
  FDSE \an_mux_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(an_mux[1]),
        .S(pwm_n_0));
  FDSE \an_mux_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(an_mux[2]),
        .S(pwm_n_0));
  FDSE \an_mux_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(an_mux[3]),
        .S(pwm_n_0));
  FDRE dp_mux_reg
       (.C(clk),
        .CE(1'b1),
        .D(dp_mux0),
        .Q(dp_mux),
        .R(1'b0));
  seven_seg_display_driver_0_pwm pwm
       (.SS(pwm_n_0),
        .clk(clk),
        .lum(lum),
        .lum_2_sp_1(\an_mux[3]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r_refresh_cntr[0]_i_2 
       (.I0(\r_refresh_cntr_reg_n_0_[0] ),
        .O(\r_refresh_cntr[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[0]_i_1_n_7 ),
        .Q(\r_refresh_cntr_reg_n_0_[0] ),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\r_refresh_cntr_reg[0]_i_1_n_0 ,\r_refresh_cntr_reg[0]_i_1_n_1 ,\r_refresh_cntr_reg[0]_i_1_n_2 ,\r_refresh_cntr_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_refresh_cntr_reg[0]_i_1_n_4 ,\r_refresh_cntr_reg[0]_i_1_n_5 ,\r_refresh_cntr_reg[0]_i_1_n_6 ,\r_refresh_cntr_reg[0]_i_1_n_7 }),
        .S({\r_refresh_cntr_reg_n_0_[3] ,\r_refresh_cntr_reg_n_0_[2] ,\r_refresh_cntr_reg_n_0_[1] ,\r_refresh_cntr[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[8]_i_1_n_5 ),
        .Q(\r_refresh_cntr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[8]_i_1_n_4 ),
        .Q(\r_refresh_cntr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[12]_i_1_n_7 ),
        .Q(\r_refresh_cntr_reg_n_0_[12] ),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[12]_i_1 
       (.CI(\r_refresh_cntr_reg[8]_i_1_n_0 ),
        .CO({\r_refresh_cntr_reg[12]_i_1_n_0 ,\r_refresh_cntr_reg[12]_i_1_n_1 ,\r_refresh_cntr_reg[12]_i_1_n_2 ,\r_refresh_cntr_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_refresh_cntr_reg[12]_i_1_n_4 ,\r_refresh_cntr_reg[12]_i_1_n_5 ,\r_refresh_cntr_reg[12]_i_1_n_6 ,\r_refresh_cntr_reg[12]_i_1_n_7 }),
        .S({\r_refresh_cntr_reg_n_0_[15] ,\r_refresh_cntr_reg_n_0_[14] ,\r_refresh_cntr_reg_n_0_[13] ,\r_refresh_cntr_reg_n_0_[12] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[12]_i_1_n_6 ),
        .Q(\r_refresh_cntr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[12]_i_1_n_5 ),
        .Q(\r_refresh_cntr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[12]_i_1_n_4 ),
        .Q(\r_refresh_cntr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[16]_i_1_n_7 ),
        .Q(\r_refresh_cntr_reg_n_0_[16] ),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[16]_i_1 
       (.CI(\r_refresh_cntr_reg[12]_i_1_n_0 ),
        .CO({\r_refresh_cntr_reg[16]_i_1_n_0 ,\r_refresh_cntr_reg[16]_i_1_n_1 ,\r_refresh_cntr_reg[16]_i_1_n_2 ,\r_refresh_cntr_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_refresh_cntr_reg[16]_i_1_n_4 ,\r_refresh_cntr_reg[16]_i_1_n_5 ,\r_refresh_cntr_reg[16]_i_1_n_6 ,\r_refresh_cntr_reg[16]_i_1_n_7 }),
        .S({selector[0],\r_refresh_cntr_reg_n_0_[18] ,\r_refresh_cntr_reg_n_0_[17] ,\r_refresh_cntr_reg_n_0_[16] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[16]_i_1_n_6 ),
        .Q(\r_refresh_cntr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[16]_i_1_n_5 ),
        .Q(\r_refresh_cntr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[16]_i_1_n_4 ),
        .Q(selector[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[0]_i_1_n_6 ),
        .Q(\r_refresh_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[20]_i_1_n_7 ),
        .Q(selector[1]),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[20]_i_1 
       (.CI(\r_refresh_cntr_reg[16]_i_1_n_0 ),
        .CO(\NLW_r_refresh_cntr_reg[20]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_r_refresh_cntr_reg[20]_i_1_O_UNCONNECTED [3:1],\r_refresh_cntr_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,selector[1]}));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[0]_i_1_n_5 ),
        .Q(\r_refresh_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[0]_i_1_n_4 ),
        .Q(\r_refresh_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[4]_i_1_n_7 ),
        .Q(\r_refresh_cntr_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[4]_i_1 
       (.CI(\r_refresh_cntr_reg[0]_i_1_n_0 ),
        .CO({\r_refresh_cntr_reg[4]_i_1_n_0 ,\r_refresh_cntr_reg[4]_i_1_n_1 ,\r_refresh_cntr_reg[4]_i_1_n_2 ,\r_refresh_cntr_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_refresh_cntr_reg[4]_i_1_n_4 ,\r_refresh_cntr_reg[4]_i_1_n_5 ,\r_refresh_cntr_reg[4]_i_1_n_6 ,\r_refresh_cntr_reg[4]_i_1_n_7 }),
        .S({\r_refresh_cntr_reg_n_0_[7] ,\r_refresh_cntr_reg_n_0_[6] ,\r_refresh_cntr_reg_n_0_[5] ,\r_refresh_cntr_reg_n_0_[4] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[4]_i_1_n_6 ),
        .Q(\r_refresh_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[4]_i_1_n_5 ),
        .Q(\r_refresh_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[4]_i_1_n_4 ),
        .Q(\r_refresh_cntr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[8]_i_1_n_7 ),
        .Q(\r_refresh_cntr_reg_n_0_[8] ),
        .R(1'b0));
  CARRY4 \r_refresh_cntr_reg[8]_i_1 
       (.CI(\r_refresh_cntr_reg[4]_i_1_n_0 ),
        .CO({\r_refresh_cntr_reg[8]_i_1_n_0 ,\r_refresh_cntr_reg[8]_i_1_n_1 ,\r_refresh_cntr_reg[8]_i_1_n_2 ,\r_refresh_cntr_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_refresh_cntr_reg[8]_i_1_n_4 ,\r_refresh_cntr_reg[8]_i_1_n_5 ,\r_refresh_cntr_reg[8]_i_1_n_6 ,\r_refresh_cntr_reg[8]_i_1_n_7 }),
        .S({\r_refresh_cntr_reg_n_0_[11] ,\r_refresh_cntr_reg_n_0_[10] ,\r_refresh_cntr_reg_n_0_[9] ,\r_refresh_cntr_reg_n_0_[8] }));
  FDRE #(
    .INIT(1'b0)) 
    \r_refresh_cntr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_refresh_cntr_reg[8]_i_1_n_6 ),
        .Q(\r_refresh_cntr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4092)) 
    \seg_mux[0]_i_1 
       (.I0(get_display_digit_return[2]),
        .I1(get_display_digit_return[3]),
        .I2(get_display_digit_return[0]),
        .I3(get_display_digit_return[1]),
        .O(\seg_mux[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hB680)) 
    \seg_mux[1]_i_1 
       (.I0(get_display_digit_return[1]),
        .I1(get_display_digit_return[0]),
        .I2(get_display_digit_return[3]),
        .I3(get_display_digit_return[2]),
        .O(\seg_mux[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h80C2)) 
    \seg_mux[2]_i_1 
       (.I0(get_display_digit_return[1]),
        .I1(get_display_digit_return[2]),
        .I2(get_display_digit_return[3]),
        .I3(get_display_digit_return[0]),
        .O(\seg_mux[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8942)) 
    \seg_mux[3]_i_1 
       (.I0(get_display_digit_return[0]),
        .I1(get_display_digit_return[1]),
        .I2(get_display_digit_return[3]),
        .I3(get_display_digit_return[2]),
        .O(\seg_mux[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0D4C)) 
    \seg_mux[4]_i_1 
       (.I0(get_display_digit_return[1]),
        .I1(get_display_digit_return[0]),
        .I2(get_display_digit_return[3]),
        .I3(get_display_digit_return[2]),
        .O(\seg_mux[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5910)) 
    \seg_mux[5]_i_1 
       (.I0(get_display_digit_return[3]),
        .I1(get_display_digit_return[2]),
        .I2(get_display_digit_return[1]),
        .I3(get_display_digit_return[0]),
        .O(\seg_mux[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4019)) 
    \seg_mux[6]_i_1 
       (.I0(get_display_digit_return[3]),
        .I1(get_display_digit_return[2]),
        .I2(get_display_digit_return[0]),
        .I3(get_display_digit_return[1]),
        .O(\seg_mux[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_mux[6]_i_2 
       (.I0(disp_buf[7]),
        .I1(disp_buf[3]),
        .I2(disp_buf[15]),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(disp_buf[11]),
        .O(get_display_digit_return[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_mux[6]_i_3 
       (.I0(disp_buf[6]),
        .I1(disp_buf[2]),
        .I2(disp_buf[14]),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(disp_buf[10]),
        .O(get_display_digit_return[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_mux[6]_i_4 
       (.I0(disp_buf[4]),
        .I1(disp_buf[0]),
        .I2(disp_buf[12]),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(disp_buf[8]),
        .O(get_display_digit_return[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \seg_mux[6]_i_5 
       (.I0(disp_buf[5]),
        .I1(disp_buf[1]),
        .I2(disp_buf[13]),
        .I3(selector[1]),
        .I4(selector[0]),
        .I5(disp_buf[9]),
        .O(get_display_digit_return[1]));
  FDRE \seg_mux_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[0]_i_1_n_0 ),
        .Q(seg_mux[0]),
        .R(1'b0));
  FDRE \seg_mux_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[1]_i_1_n_0 ),
        .Q(seg_mux[1]),
        .R(1'b0));
  FDRE \seg_mux_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[2]_i_1_n_0 ),
        .Q(seg_mux[2]),
        .R(1'b0));
  FDRE \seg_mux_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[3]_i_1_n_0 ),
        .Q(seg_mux[3]),
        .R(1'b0));
  FDRE \seg_mux_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[4]_i_1_n_0 ),
        .Q(seg_mux[4]),
        .R(1'b0));
  FDRE \seg_mux_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[5]_i_1_n_0 ),
        .Q(seg_mux[5]),
        .R(1'b0));
  FDRE \seg_mux_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\seg_mux[6]_i_1_n_0 ),
        .Q(seg_mux[6]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
