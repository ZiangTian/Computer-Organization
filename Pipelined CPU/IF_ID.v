module IF_ID (
    input clk,
    input rst,
    input [31:0]inst_in,
    input [31:0]PC_in,

    output reg [31:0]inst_out,
    output reg [31:0]PC_out,

    // do what used to be done in ID
    // output reg[6:0] Op,
    // output reg[4:0] rs1,
    // output reg[4:0] rs2,
    // output reg[4:0] rd,
    // output reg[6:0] Funct7,
    // output reg[2:0] Funct3,
    // output reg[11:0] Imm12,
    // output reg[19:0] IMM,



    input stall,
    input flush
);

// to resolve data hazard, flush and stalls still needs to be added

  always @(posedge clk or negedge rst) begin
    if(!rst || flush) begin inst_out <= 0; PC_out <= 0; end
    else if(!stall) begin inst_out <= inst_in; PC_out <= PC_in; end
    // if stall, let the stall unit handle it
  end
    
endmodule