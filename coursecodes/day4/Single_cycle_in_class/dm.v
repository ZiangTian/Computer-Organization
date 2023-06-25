`include "ctrl_encode_def.v"
// data memory
module dm(clk, DMWr, addr, din, PC, DMType, dout);
   input          clk;      
   input          DMWr;      // write en
   input  [31:2]  addr;      // address input (excl lowest 2 bits)
   input  [31:0]  din;       // data write input
   input  [31:0]  PC;        // program counter
   input  [2:0]   DMType;     // read/write type: how many bytes to read/write at a time
   output [31:0]  dout;      // data output
   
/* 
ctrl_encode_def.v define：
`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100
*/

   reg [31:0] dmem[4095:0];

   always @(posedge clk)     // write only when posedge 
      if (DMWr) begin
         case(DMType)         // only need to implement sw, but did all of sw, sb, sh anyway
            `dm_word: 
                  dmem[addr[31:2]]<= din[31:0];
            `dm_halfword: 
                  dmem[addr[31:2]][15:0] <= din[15:0];
            `dm_byte: 
                  dmem[addr[31:2]][7:0] <= din[7:0];
         endcase
         $display("pc = %h: dataaddr = %h, memdata = %h", PC, {addr [31:2],2'b00}, din);
      end

   reg [31:0] dout;

   always @(*) begin
   case (DMType)
      `dm_word:
            dout <= dmem[addr[31:2]];
      `dm_halfword: 
            dout[15:0] <= $signed(dmem[addr[31:2]][15:0]);
      `dm_halfword_unsigned:
            dout[15:0] <= $unsigned(dmem[addr[31:2]][15:0]);
      `dm_byte:
            dout[7:0] <= $signed(dmem[addr[31:2]][7:0]);
      `dm_byte_unsigned:
            dout[7:0] <= $unsigned(dmem[addr[31:2]][7:0]);       
   endcase
   end
   

    
endmodule    
