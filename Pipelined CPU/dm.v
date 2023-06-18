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
      // in pipelined CPU, we should differentiate the lower 2 bits of the address to better avoid the data hazard
      // low2 means the last two bits of the address
      // so low2 == 2'b00 means the address is 4 bytes aligned, in this case, we just write the data into the memory
      // low2 == 2'b01 means the address is 2 bytes aligned. 
      // in this case, we need to write the data into the memory in two times, one is the lower 2 bytes
      // dd == 2'b10 means the address is 2 bytes aligned
      // dd == 2'b11 means the address is 1 byte aligned
   reg [31:0] dmem[4095:0];

//    always @(posedge clk)     // write only when posedge 
//       if (DMWr) begin
//          case(DMType)         // only need to implement sw, but did all of sw, sb, sh anyway
//             `dm_word: 
//                   if(addr[1:0]==2'b00) begin dmem[addr[31:2]]<= din[31:0]; end
//                   else if(addr[1:0]==2'b01) begin
//                         dmem[addr[31:2]][7:0] <= din[7:0]; // little endian: least significant bits in lower address
//                         dmem[addr[31:2]+1][31:8] <= din[31:8];
//                   end
//                   else if(addr[1:0]==2'b10) begin
//                         dmem[addr[31:2]][15:0] <= din[15:0];
//                         dmem[addr[31:2]+1][31:16] <= din[31:16];
//                   end
//                   else if(addr[1:0]==2'b11) begin
//                         dmem[addr[31:2]][7:0] <= din[7:0];
//                         dmem[addr[31:2]+1][23:8] <= din[23:8];
//                         dmem[addr[31:2]+2][31:24] <= din[31:24];
//                   end
//             `dm_halfword: // 2 bytes
//                   if(addr[1:0]==2'b00)dmem[addr[31:2]][15:0] <= din[15:0];
//                   else if (addr[1:0]==2'b01) begin
//                         dmem[addr[31:2]][7:0] <= din[7:0];
                        
//                   end
//             `dm_byte: 
//                   dmem[addr[31:2]][7:0] <= din[7:0];
//          endcase
//          $display("pc = %h: dataaddr = %h, memdata = %h", PC, {addr [31:2],2'b00}, din);
//       end

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
   case (DMType)        // read at any time
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
