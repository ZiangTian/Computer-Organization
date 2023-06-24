module PC( clk, rst, NPC, PC, stall );

  input              clk;
  input              rst;
  input       [31:0] NPC;
  output reg  [31:0] PC;
  input              stall;
  

  always @(posedge clk, posedge rst)
    if (rst) 
      PC <= 32'h0000_0000;
//      PC <= 32'h0000_3000;
    else
      if (!stall) PC <= NPC;
      
endmodule

