`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2023 02:56:18 PM
// Design Name: 
// Module Name: top_SCPU
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


module top_SCPU(
    input rstn,
    input [4:0] btn_i,
    input [15:0] sw_i,
    input clk,

    output [7:0] disp_an_o,
    output [7:0] disp_seg_o,

    output [15:0] led_o
    );

// U10_Enter
    // outputs of U10_Enter
    wire[4:0] BTN_out;
    wire[15:0] SW_out;

    // reverse [7:5] inputs of sw_i
    wire[15:0] SW;
    wire[4:0]  BTN;
    assign BTN = btn_i;
    // assign SW = {sw_i[15:8], ~sw_i[7:5], sw_i[4:0]};
    Enter U10_Enter(
        .clk(clk),
        .BTN(BTN),  // 5 buttons
        .SW(sw_i),    // 16 switches

        .BTN_out(BTN_out),
        .SW_out(SW_out)
    );

    wire mem_w;
    wire[31:0] PC_out;
    wire[31:0] Data_out;
    wire[31:0] Addr_out;
    wire[2:0] dm_ctrl;
    wire CPU_MIO;

    wire [31:0]Cpu_data4bus;
    wire [31:0]ram_data_in;
    wire [9:0]ram_addr;
    wire data_ram_we;
    wire GPIOf0000000_we;
    wire GPIOe0000000_we;
    wire counter_we;
    wire [31:0]Peripheral_in;
// U8_clk_div
    // outputs of U8_clk_div
    wire rst_i;
    assign rst_i = ~rstn;

    wire[31:0] clkdiv;
    wire Clk_CPU;
    clk_div U8_clk_div(
        .clk(clk),
        .rst(rst_i),
        .SW2(SW_out[2]),

        .clkdiv(clkdiv),
        .Clk_CPU(Clk_CPU)
    );

// U7_SPIO

    wire IO_clk_i;
    assign IO_clk_i = ~Clk_CPU;
    
    wire[15:0] LED_out;
    wire[1:0] counter_set;
    wire[15:0] led;
    wire[13:0] GPIOf0;
    SPIO U7_SPIO(
        .clk(IO_clk_i),
        .rst(rst_i),
        .EN(GPIOf0000000_we), ////////////////////// ????MIO_BUS???????? 0000_we
        .P_Data(Peripheral_in), /////////////////// ????MIO_BUS???????? peripheral

        .counter_set(counter_set),
        .LED_out(LED_out),
        .led(led),
        .GPIOf0(GPIOf0) ///// ??
    );

// U9_Counter
    wire counter0_OUT;
    wire counter1_OUT;
    wire counter2_OUT;
    wire[31:0] counter_out;

    Counter_x U9_Counter(
        .clk(IO_clk_i),
        .rst(rst_i),
        .clk0(clkdiv[6]),
        .clk1(clkdiv[9]),
        .clk2(clkdiv[11]),
        .counter_val(Peripheral_in), ///////////////////// ????MIO_BUS???????? counter_val
        .counter_ch(counter_set),
        .counter_we(counter_we), ///////////////////// ????MIO_BUS???????? counter_we

        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT),
        .counter_out(counter_out)
    );

// U2 ROMD

    wire [31:0] spo;
    ROM_D U2_ROMD(
        .a(PC_out[11:2]),  /////////////////////// ????SCPU??PC out
        .spo(spo)
    );

// U3_dm_controller

    wire[31:0] Data_read;
    wire[31:0] Data_write_to_dm;
    wire[3:0]  wea_mem;

    dm_controller U3_dm_controller(
        .Addr_in(Addr_out), ////////////// SCPU addr out
        .Data_read_from_dm(Cpu_data4bus),  ///////////// miobus cpudata
        .Data_write(ram_data_in),  //////////  miosbus ramdata
        .dm_ctrl(dm_ctrl),   ////////////////// SCPU dm ctrl
        .mem_w(mem_w),       ////////////   SCPU mem_w

        .Data_read(Data_read),
        .Data_write_to_dm(Data_write_to_dm),
        .wea_mem(wea_mem)
    );

// U4_RAM_B

    wire clka0_i;
    assign clka0_i = ~clk;
    wire[31:0] douta;
    
    RAM_B U4_RAM_B(
        .clka(clka0_i),  
        .wea(wea_mem),
        .addra(ram_addr),  //////////////////// MIObus  ram addr
        .dina(Data_write_to_dm),

        .douta(douta)
    );


// U1_SCPU


//    SCPU U1_SCPU(
//        .clk(Clk_CPU),
//        .reset(rst_i),
//        .MIO_ready(CPU_MIO),  // self connected to CPU_MIO
//        .inst_in(spo),
//        .Data_in(Data_read),
//        .INT(counter0_OUT),

//        .mem_w(mem_w),
//        .PC_out(PC_out),
//        .Data_out(Data_out),
//        .Addr_out(Addr_out),
//        .dm_ctrl(dm_ctrl),
//        .CPU_MIO(CPU_MIO)
//    );
wire  [31:0] pcW;
    SCPU U1_SCPU(
        .clk(Clk_CPU),
        .reset(rst_i),
        .MIO_ready(CPU_MIO),  // self connected to CPU_MIO
        .inst_in(spo),
        .Data_in(Data_read),
        .INT(counter0_OUT),

        .mem_w(mem_w),
        .PC_out(PC_out),
        .Data_out(Data_out),
        .Addr_out(Addr_out),
        .DMType(dm_ctrl),
        // .pcW(pcW)
        .CPU_MIO(CPU_MIO)
    );

// U4_MIO


    MIO_BUS U4_MIO_BUS(
        .clk(clk),
        .rst(rst_i),
        .BTN(BTN_out),
        .SW(SW_out),
        .mem_w(mem_w),
        .Cpu_data2bus(Data_out),
        .addr_bus(Addr_out),
        .ram_data_out(douta),
        .led_out(LED_out),
        .counter_out(counter_out),
        .counter0_out(counter0_OUT),
        .counter1_out(counter1_OUT),
        .counter2_out(counter2_OUT),

        .Cpu_data4bus(Cpu_data4bus),
        .ram_data_in(ram_data_in),
        .ram_addr(ram_addr),
        .data_ram_we(data_ram_we),
        .GPIOf0000000_we(GPIOf0000000_we),
        .GPIOe0000000_we(GPIOe0000000_we),
        .counter_we(counter_we),
        .Peripheral_in(Peripheral_in)
    );

// U5_Multi_8CH32

    wire [63:0] point_in;
//    assign point_in = {32'b0, clkdiv};
    assign point_in = {clkdiv, clkdiv};

    wire[31:0] Disp_num;
    wire[7:0] LE_out;
    wire[7:0] point_out;
    
    Multi_8CH32 U5_Multi_8CH32(
        .clk(IO_clk_i),
        .rst(rst_i),
        .EN(GPIOe0000000_we),
        .LES(64'hffffffffffffffff),
        .Switch(SW_out[7:5]),
        .point_in(point_in),
        .data0(Peripheral_in),
        .data1(PC_out&32'h3fffffff),
        .data7(PC_out),
        .data2(spo),
        .data3(counter_out),
        .data4(Addr_out),
        .data5(Data_out),    // modified
        .data6(Cpu_data4bus),

        .Disp_num(Disp_num),
        .LE_out(LE_out),
        .point_out(point_out)
    );

// U6_SSeg7

  wire [7:0]seg_an;
  wire [7:0]seg_sout;

    SSeg7 U6_SSeg7(
        .clk(clk),
        .rst(rst_i),
        .SW0(SW_out[0]),
        .flash(clkdiv[10]),
        .Hexs(Disp_num),
        .point(point_out),
        .LES(LE_out),
        
        .seg_an(seg_an),
        .seg_sout(seg_sout)
    );

assign disp_an_o = seg_an;
assign disp_seg_o = seg_sout;

assign led_o = led;

endmodule