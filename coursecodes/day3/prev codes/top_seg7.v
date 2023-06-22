`timescale 1ns/1ps

module seg_top (
    input clk,
    input rstn,
    input [15:0] sw_i,
    output [7:0] disp_an_o, 
    output [7:0] disp_seg_o
);
reg[31:0] clkdiv;
wire Clk_CPU;

always @(posedge clk or negedge rstn) begin
    if(!rstn) clkdiv <= 0;
    else clkdiv <= clkdiv + 1'b1;
end

assign Clk_CPU = (sw_i[15])?clkdiv[27]:clkdiv[25];  // based on the choices, determine the frequency

// wire [31:0] nums = 32'h012345AB;



reg[5:0] led_data_addr;
reg [63:0] led_disp_data;

parameter  LED_DATA_NUM = 19;

reg [63:0] LED_DATA[18:0];

    seg7 seg7_inst (
        .clk(clk),
        .rstn(rstn),
        .i_data(led_disp_data),
        .disp_mode(sw_i[0]),
        .disp_seg_o(disp_seg_o),
        .disp_an_o(disp_an_o)
    );

initial begin  // initialize the data array. on each cycle, led_disp_data will be set to one of the data in the array
    LED_DATA[0]= 64'hc6f6f6f0c6f6f6f0;
    LED_DATA[1]= 64'hf9f6f6cff9f6f6cf;
    LED_DATA[2]= 64'hffc6f0ffffc6f0ff;
    LED_DATA[3]= 64'hffc0ffffffc0ffff;
    LED_DATA[4]= 64'hffa3ffffffa3ffff;
    LED_DATA[5]= 64'hffffa3ffffffa3ff;
    LED_DATA[6]= 64'hffff9cffffff9cff;
    LED_DATA[7]= 64'hff9ebcffff9ebcff;
    LED_DATA[8]= 64'hff9cffffff9cffff;
    LED_DATA[9]= 64'hffc0ffffffc0ffff;
    LED_DATA[10]= 64'hffa3ffffffa3ffff;
    LED_DATA[11]= 64'hffa7b3ffffa7b3ff;
    LED_DATA[12]= 64'hffc6f0ffffc6f0ff;
    LED_DATA[13]= 64'hf9f6f6cff9f6f6cf;
    LED_DATA[14]= 64'h9ebebebc9ebebebc;
    LED_DATA[15]= 64'h2737373327373733;
    LED_DATA[16]= 64'h505454ec505454ec;
    LED_DATA[17]= 64'h744454f8744454f8;
    LED_DATA[18]= 64'h0062080000620800;
end

always @(posedge Clk_CPU or negedge rstn) begin
    if(!rstn) begin
        led_data_addr = 6'd0; led_disp_data = 64'b1;
    end
    else if(sw_i[0]==1'b1) begin
        if(led_data_addr == LED_DATA_NUM) begin   // reach the max, then reset
            led_data_addr = 6'd0;
            led_disp_data = 64'b1;
        end 
        led_disp_data = LED_DATA[led_data_addr];
        led_data_addr = led_data_addr + 1'b1;
    end
    else led_data_addr = led_data_addr;
end

// reg [63:0] display_data;
// always @(sw_i) begin
//     if(sw_i[0]==0) begin
//         case(sw_i[14:11])
//         4'b1000: display_data = instr;
//         4'b0100: display_data = reg_data;
//         4'b0010: display_data = alu_disp_data;
//         4'b0001: display_data = dmem_data;
//         default: display_data = instr;        
//         endcase
//     end
//     else begin
//         display_data = led_disp_data;
//     end
// end

endmodule