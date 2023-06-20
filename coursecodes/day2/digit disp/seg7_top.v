//top module for seg7.v

module top_module (
    input clk,
    input rstn,
    input [31:0] i_data,
    output [7:0] o_seg,
    output [7:0] o_sel
);
wire [31:0] nums = 32'h012345AB;
    seg7 seg7_inst (
        .clk(clk),
        .rstn(rstn),
        .i_data(i_data),
        .o_seg(o_seg),
        .o_sel(o_sel)
    );

endmodule