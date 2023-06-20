`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/19/2023 03:43:24 PM
// Design Name: 
// Module Name: tmpfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module tmpfile(
input clk, // comes from the clock of the board 100MHz
input rstn, // implemented with button
input [15:0] sw_i, // ²¦Âë¿ª¹Ø
output [15:0] led_o
    );
    reg ledstate;
    always@(*)
        begin
            if(sw_i[4:1]==4'b1010) begin ledstate = 1'b1; end
            else begin ledstate = 1'b0; end
        end
    assign led_o[15] = ledstate;
endmodule
