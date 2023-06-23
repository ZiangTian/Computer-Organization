`timescale 1ns/1ps
module seg7 (
    input clk,
    input rstn,
    input disp_mode, // 0 for txt and 1 for graph
    input [63:0] i_data,
    output [7:0] disp_seg_o,
    output [7:0] disp_an_o
);
    reg [14:0] cnt;
    wire seg7_clk;

    // frequency divider
    always @(posedge clk, negedge rstn) 
        if(!rstn) cnt<=0;
        else cnt<= cnt + 1'b1;
            
    assign seg7_clk = cnt[14];

    reg [2:0] seg7_addr;  // choose which digit to display, in an addable way

    always @(posedge seg7_clk, negedge rstn)
        if(!rstn) seg7_addr<=0;
        else seg7_addr<= seg7_addr + 1'b1;
    

    reg [7:0] o_sel_r;

    always @(*) begin // enable
        case (seg7_addr)  // use the addable way to choose which digit to display bitwisely
            7: o_sel_r = 8'b01111111;
            6: o_sel_r = 8'b10111111;
            5: o_sel_r = 8'b11011111;
            4: o_sel_r = 8'b11101111;
            3: o_sel_r = 8'b11110111;
            2: o_sel_r = 8'b11111011;
            1: o_sel_r = 8'b11111101;
            0: o_sel_r = 8'b11111110;
            // default: 
        endcase
    end

    reg [63:0] i_data_store;
    always @(posedge clk, negedge rstn) 
        if(!rstn) 
            i_data_store <=0;
        else 
            i_data_store <= i_data;
    

    reg [7:0] seg_data_r;

    always @(*) 
        if(disp_mode==1'b0) begin
        case(seg7_addr)
            0: seg_data_r = i_data_store[3:0]; // 0
            1: seg_data_r = i_data_store[7:4]; // 1
            2: seg_data_r = i_data_store[11:8]; // 2
            3: seg_data_r = i_data_store[15:12]; // 3
            4: seg_data_r = i_data_store[19:16]; // 4
            5: seg_data_r = i_data_store[23:20]; // 5
            6: seg_data_r = i_data_store[27:24]; // 6
            7: seg_data_r = i_data_store[31:28]; // 7
        endcase
        end
        else begin // graph
        case(seg7_addr)
            0: seg_data_r = i_data_store[7:0]; // 0
            1: seg_data_r = i_data_store[15:8]; // 1
            2: seg_data_r = i_data_store[23:16]; // 2
            3: seg_data_r = i_data_store[31:24]; // 3
            4: seg_data_r = i_data_store[39:32]; // 4
            5: seg_data_r = i_data_store[47:40]; // 5
            6: seg_data_r = i_data_store[55:48]; // 6
            7: seg_data_r = i_data_store[63:56]; // 7   
        endcase
        end

    reg [7:0] o_seg_r;
    always @(posedge clk, negedge rstn) 
        if(!rstn) o_seg_r <= 8'hff;
        else if(disp_mode==1'b0) begin
            case (seg_data_r)
                4'h0: o_seg_r <= 8'hC0;
                4'h1: o_seg_r <= 8'hF9;
                4'h2: o_seg_r <= 8'hA4;
                4'h3: o_seg_r <= 8'hB0;
                4'h4: o_seg_r <= 8'h99;
                4'h5: o_seg_r <= 8'h92;
                4'h6: o_seg_r <= 8'h82;
                4'h7: o_seg_r <= 8'hF8;
                4'h8: o_seg_r <= 8'h80;
                4'h9: o_seg_r <= 8'h90;
                4'ha: o_seg_r <= 8'h88;
                4'hb: o_seg_r <= 8'h83;
                4'hc: o_seg_r <= 8'hC6;
                4'hd: o_seg_r <= 8'hA1;
                4'he: o_seg_r <= 8'h86;
                4'hf: o_seg_r <= 8'h8e; 
                default: o_seg_r <= 8'hff; 
            endcase 
            end
            else begin 
                o_seg_r <= seg_data_r; 
            end
    

    assign disp_seg_o = o_seg_r;
    assign disp_an_o = o_sel_r;


endmodule