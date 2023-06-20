////top module for seg7.v
`timescale 1ns / 1ps


module top_module (
   input clk,
   input rstn,
   output [7:0] disp_an_o,
   output [7:0] disp_seg_o
);
wire [31:0] nums = 32'h012345AB;
   simple seg7_inst (
       .clk(clk),
       .rstn(rstn),
       .i_data(nums),
       .o_seg(disp_seg_o),
       .o_sel(disp_an_o)
   );

endmodule
