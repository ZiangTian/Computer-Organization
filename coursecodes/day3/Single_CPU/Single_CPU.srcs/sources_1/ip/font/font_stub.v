// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Jul  2 21:16:33 2023
// Host        : Benjamin running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/One Drive/OneDrive -
//               whu.edu.cn/Learning/computerOrg/lab_related/Computer-Organization/coursecodes/day3/Single_CPU/Single_CPU.srcs/sources_1/ip/font/font_stub.v}
// Design      : font
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_12,Vivado 2018.3" *)
module font(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[9:0],spo[15:0]" */;
  input [9:0]a;
  output [15:0]spo;
endmodule
