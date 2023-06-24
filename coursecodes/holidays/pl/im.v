
// instruction memory
module im(input  [8:2]  addr,
            output [31:0] dout );

  reg  [31:0] RAM[31:0];


  assign dout = RAM[addr]; // word aligned
endmodule  
