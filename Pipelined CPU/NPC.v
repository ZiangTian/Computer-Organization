`include "ctrl_encode_def.v"

module NPC(PC, NPCOp, IMM, NPC,aluout, pcW, ID_EX_PC);  // next pc module
    
   input  [31:0] PC;        // pc, from current instruction
   input  [2:0]  NPCOp;     // next pc operation, from EX_MEM
   input  [31:0] IMM;       // immediate, 
	input  [31:0] aluout;
   input  [31:0] ID_EX_PC; // earlier PC, from EX_MEM
   // input Zero;              // from ex/mem  // uncecessary bc NPCOp has taken this into consideration
   output reg [31:0] NPC;   // next pc
   output [31:0] pcW;
   
   wire [31:0] PCPLUS4;
   assign pcW = PC;
   assign PCPLUS4 = PC + 4; // pc + 4
   
   always @(*) begin
      case (NPCOp)
          `NPC_PLUS4:  NPC = PCPLUS4;
          `NPC_BRANCH: NPC = ID_EX_PC+IMM;
          `NPC_JUMP:   NPC = ID_EX_PC+IMM;
		    `NPC_JALR:	  NPC = aluout;
          default:     NPC = PCPLUS4;
      endcase 
   end // end always
   
endmodule
