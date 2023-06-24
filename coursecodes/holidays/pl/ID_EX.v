module ID_EX (  // zero 不放在这里；直接把ALU的zero放在EX/MEM里面
    input clk,
    input rst,

    // info to be passed to EX
    input [31:0] PC_in,
    input [31:0] inst_in,
    input [63:0] imm_in,
    input [4:0] rs1_in,
    input [4:0] rs2_in, 
    input [4:0] rd_in,
    input [31:0] rs1_data_in,
    input [31:0] rs2_data_in,
      // corresponding outputs
    output reg[31:0] PC_out,
    output reg[31:0] inst_out,
    output reg[63:0] imm_out,
    output reg[4:0] rs1_out,
    output reg[4:0] rs2_out,
    output reg[4:0] rd_out,
    output reg[31:0] rs1_data_out,
    output reg[31:0] rs2_data_out,

    // control signals
      // control for ex
    input [4:0] ALUOp_in,
    input [1:0] ALUSrc_in,
    input [1:0] GPRSel_in,
    output reg[4:0] ALUOp_out,
    output reg[1:0] ALUSrc_out,
    output reg[1:0] GPRSel_out,


      // control for mem
    input [1:0] MemWrite_in,
    input [2:0] NPCOp_in,
    input [2:0] DMType_in,
    output reg[1:0] MemWrite_out,
    output reg[2:0] NPCOp_out,
    output reg[2:0] DMType_out,

      // control for wb
    input [1:0] RegWrite_in,
    input [2:0] WDSel_in,
    output reg[1:0] RegWrite_out,
    output reg[2:0] WDSel_out,

      // control for stall
    input stall,
    input flush,

      // added by me
    input sbtype_in,
    input i_jal_in,
    input i_jalr_in,
    output reg[1:0] sbtype_out,
    output reg[1:0] i_jal_out,
    output reg[1:0] i_jalr_out
);
    always @(posedge clk or negedge rst) begin
    if(!rst || flush) 
        begin 
            inst_out <= 0; 
            PC_out <= 0;
            imm_out <= 0;
            rs1_out <= 0;
            rs2_out <= 0;
            rd_out <= 0;
            rs1_data_out <= 0;
            rs2_data_out <= 0;
            ALUOp_out <= 0;
            ALUSrc_out <= 0;
            // MemRead_out <= 0;
            MemWrite_out <= 0;
            RegWrite_out <= 0;
            // MemtoReg_out <= 0; 
            GPRSel_out <= 0;
            MemWrite_out <= 0;
            NPCOp_out <= 0;
            DMType_out <= 0;
            RegWrite_out <= 0;
            WDSel_out <= 0;

            sbtype_out <= 0;
            i_jal_out <= 0;
            i_jalr_out <= 0;
        end
    else if(!stall)
        begin
            inst_out <= inst_in; 
            PC_out <= PC_in;
            imm_out <= imm_in;
            rs1_out <= rs1_in;
            rs2_out <= rs2_in;
            rd_out <= rd_in;
            rs1_data_out <= rs1_data_in;
            rs2_data_out <= rs2_data_in;
            ALUOp_out <= ALUOp_in;
            ALUSrc_out <= ALUSrc_in;
            // MemRead_out <= MemRead_in;
            MemWrite_out <= MemWrite_in;
            RegWrite_out <= RegWrite_in;
            // MemtoReg_out <= MemtoReg_in;
            GPRSel_out <= GPRSel_in;
            MemWrite_out <= MemWrite_in;
            NPCOp_out <= NPCOp_in;
            DMType_out <= DMType_in;
            RegWrite_out <= RegWrite_in;
            WDSel_out <= WDSel_in;        

            sbtype_out <= sbtype_in;
            i_jal_out <= i_jal_in;
            i_jalr_out <= i_jalr_in;    
        end

  end


endmodule