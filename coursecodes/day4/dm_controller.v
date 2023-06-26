// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Tue Jun 20 11:12:44 2023
// Host        : LAPTOP-E4IJ843E running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub C:/Users/user/Desktop/projects/edf_file/dm_controller.v
// Design      : dm_controller
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
// `include "ctrl_encode_def.v"

module dm_controller(mem_w, Addr_in, Data_write, dm_ctrl, 
  Data_read_from_dm, Data_read, Data_write_to_dm, wea_mem);
  input mem_w;                    // memory write
  input [31:0]Addr_in;            // memory address to be read
  input [31:0]Data_write;         // data to be written to memory from SCPU
  input [2:0]dm_ctrl;             // DMType
  input [31:0]Data_read_from_dm;  // data read from memory

  output reg [31:0]Data_read;         // aligned data read from memory sent to CPU
  output reg [31:0]Data_write_to_dm;  // data to memory
  output reg [3:0]wea_mem;            // BITs to control which bytes to write to memory


  `define dm_word 3'b000
  `define dm_halfword 3'b001
  `define dm_halfword_unsigned 3'b010
  `define dm_byte 3'b011
  `define dm_byte_unsigned 3'b100

  // always @(*) Data_write_to_dm = Data_write;

  // write ctrl: regardless of the signs
  // write contents are always the lower bits!!!!
  always @(*) begin
    if(mem_w) begin
      case (dm_ctrl)
        `dm_word: begin
          wea_mem <= 4'b1111;
          Data_write_to_dm <= Data_write;
        end
        `dm_halfword: begin
          Data_write_to_dm <= {(2){Data_write[15:0]}};
          if(Addr_in[1]==1'b0) wea_mem <= 4'b0011;
          else wea_mem <= 4'b1100;
        end
        `dm_halfword_unsigned:begin
          Data_write_to_dm <= {(2){Data_write[15:0]}};
          if(Addr_in[1]==1'b0) wea_mem <= 4'b0011;
          else wea_mem <= 4'b1100;
        end
        `dm_byte: begin
          Data_write_to_dm <= {(4){Data_write[7:0]}};
          case(Addr_in[1:0])
            2'b00: wea_mem <= 4'b0001;
            2'b01: wea_mem <= 4'b0010;
            2'b10: wea_mem <= 4'b0100;
            2'b11: wea_mem <= 4'b1000;
            default: wea_mem <= 4'b0000;
          endcase
        end
        `dm_byte_unsigned: begin
          Data_write_to_dm <= {(4){Data_write[7:0]}};
          case(Addr_in[1:0])
            2'b00: wea_mem <= 4'b0001;
            2'b01: wea_mem <= 4'b0010;
            2'b10: wea_mem <= 4'b0100;
            2'b11: wea_mem <= 4'b1000;
            default: wea_mem <= 4'b0000;
          endcase          
        end
      endcase
    end
    else wea_mem <= 4'b0000;
  end

  // read ctrl: signs matter
  always @(*) begin
    case (dm_ctrl)
      `dm_word: Data_read <= Data_read_from_dm;
      `dm_halfword:
      // if read halfword, let the address decide which half to read
        if(Addr_in[1]==0) Data_read <= {{(16){Data_read_from_dm[15]}}, Data_read_from_dm[15:0]};
        else Data_read <= {{(16){Data_read_from_dm[31]}}, Data_read_from_dm[31:16]};
      `dm_halfword_unsigned:
        if(Addr_in[1]==0) Data_read <= {16'b0, Data_read_from_dm[15:0]};
        else Data_read <= {16'b0, Data_read_from_dm[31:16]};
      `dm_byte:
        case(Addr_in[1:0])
          2'b00: Data_read <= {{(24){Data_read_from_dm[7]}}, Data_read_from_dm[7:0]};
          2'b01: Data_read <= {{(24){Data_read_from_dm[15]}}, Data_read_from_dm[15:8]};
          2'b10: Data_read <= {{(24){Data_read_from_dm[23]}}, Data_read_from_dm[23:16]};
          2'b11: Data_read <= {{(24){Data_read_from_dm[31]}}, Data_read_from_dm[31:24]};
          default: Data_read <= 32'b0;
        endcase
      `dm_byte_unsigned:
        case(Addr_in[1:0])
          2'b00: Data_read <= {24'b0, Data_read_from_dm[7:0]};
          2'b01: Data_read <= {24'b0, Data_read_from_dm[15:8]};
          2'b10: Data_read <= {24'b0, Data_read_from_dm[23:16]};
          2'b11: Data_read <= {24'b0, Data_read_from_dm[31:24]};
          default: Data_read <= 32'b0;
        endcase
      //default: 
    endcase
  end
endmodule
