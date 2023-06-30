module EX_MEM (
    input clk,
    input rst,
    
    // info to be passed to MEM
    input [31:0] PC_in,
    input [31:0] inst_in,
    input [4:0] rs1_in,
    input [4:0] rs2_in,
    input [4:0] rd_in,
    input [31:0] alures_in,
    input [31:0] rs2_data_in,
    // input Zero_in,
    input [31:0] imm_in,

    // corresponding outputs
    output reg[31:0] PC_out,
    output reg[31:0] inst_out,
    output reg[4:0] rs1_out,
    output reg[4:0] rs2_out,
    output reg[4:0] rd_out,
    output reg[31:0] alures_out,
    output reg[31:0] rs2_data_out, 
    // output reg Zero_out,
        // the supposed rs2. 
        // when forwarded, this value should be whatever that's passed to alu as rs2.

    // control signals for mem
    input MemWrite_in,
    input [2:0] NPCOp_in,
    input [2:0] DMType_in,
    output reg MemWrite_out,
    output reg[2:0] NPCOp_out,
    output reg[2:0] DMType_out,

    // control signals for wb
    input RegWrite_in,
    input [1:0] WDSel_in,
    output reg RegWrite_out,
    output reg[1:0] WDSel_out,
    output reg[31:0] imm_out,

    input load_in,
    output reg load_out,
    input INT

    // control for stall
    // input stall
    // input flush
);

always @(posedge clk, posedge rst) begin
    if(rst || INT) 
        begin 
            // Zero_out <= 0;
            inst_out <= 0; 
            PC_out <= 0;
            rs1_out <= 0;
            rs2_out <= 0;
            rd_out <= 0;
            alures_out <= 0;
            rs2_data_out <= 0;
            // MemRead_out <= 0;
            MemWrite_out <= 0;
            RegWrite_out <= 0;
            // MemtoReg_out <= 0; 
            NPCOp_out <= 0;
            DMType_out <= 0;
            WDSel_out <= 0;
            imm_out<=0;
            load_out<=0;
        end
    else 
        begin
            // Zero_out <= Zero_in;
            inst_out <= inst_in; 
            PC_out <= PC_in;
            rs1_out <= rs1_in;
            rs2_out <= rs2_in;
            rd_out <= rd_in;
            alures_out <= alures_in;
            rs2_data_out <= rs2_data_in;
            // MemRead_out <= MemRead_in;
            MemWrite_out <= MemWrite_in;
            RegWrite_out <= RegWrite_in;
            // MemtoReg_out <= MemtoReg_in;
            NPCOp_out <= NPCOp_in;
            DMType_out <= DMType_in;
            WDSel_out <= WDSel_in;
            imm_out<=imm_in;
            load_out<=load_in;
        end

  end

endmodule