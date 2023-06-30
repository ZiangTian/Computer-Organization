// NPC control signal
`define NPC_PLUS4   3'b000
`define NPC_BRANCH  3'b001
`define NPC_JUMP    3'b010
`define NPC_JALR 3'b100

// ALU control signal
`define ALU_NOP   3'b000 
`define ALU_ADD   3'b001
`define ALU_SUB   3'b010 
`define ALU_AND   3'b011
`define ALU_OR    3'b100

//EXT CTRL itype, stype, btype, utype, jtype
`define EXT_CTRL_ITYPE_SHAMT 6'b100000
`define EXT_CTRL_ITYPE	6'b010000
`define EXT_CTRL_STYPE	6'b001000
`define EXT_CTRL_BTYPE	6'b000100
`define EXT_CTRL_UTYPE	6'b000010
`define EXT_CTRL_JTYPE	6'b000001

`define GPRSel_RD 2'b00      // : r_type, i_type, i_jalr
`define GPRSel_RT 2'b01     // : i_lw, i_lh, i_lb, i_lhu, i_lbu
`define GPRSel_31 2'b10         // : i_jal, i_jalr  

// `define WDSel_FromALU 3'b000 // : itype_l, r_type
// `define WDSel_FromPC  3'b001 // : i_jal, i_jalr
// `define WDSel_FromMEMWord 3'b010 // : i_lw
// `define WDSel_FromMEMHW 3'b011 // : i_lh
// `define WDSel_FromMEMBT 3'b100 // : i_lb
// // WDSel_FromMEMWordU non-existent
// `define WDSel_FromMEMHWU 3'b101 // : i_lhu
// `define WDSel_FromMEMBTU 3'b110 // : i_lbu
`define WDSel_FromALU 2'b00 // : itype_l, r_type
`define WDSel_FromPC  2'b10 // : i_jal, i_jalr
`define WDSel_FromMEM 2'b01
// `define WDSel_auipc   2'b11

`define ALUOp_nop 5'b00000
`define ALUOp_lui 5'b00001
`define ALUOp_auipc 5'b00010
`define ALUOp_add  5'b00011
`define ALUOp_sub  5'b00100
`define ALUOp_bne  5'b00101
`define ALUOp_blt  5'b00110
`define ALUOp_bge  5'b00111
`define ALUOp_bltu 5'b01000
`define ALUOp_bgeu 5'b01001
`define ALUOp_slt  5'b01010
`define ALUOp_sltu 5'b01011
`define ALUOp_xor  5'b01100
`define ALUOp_or   5'b01101
`define ALUOp_and  5'b01110
`define ALUOp_sll  5'b01111
`define ALUOp_srl  5'b10000
`define ALUOp_sra  5'b10001

`define dm_word 3'b000
`define dm_halfword 3'b001
`define dm_halfword_unsigned 3'b010
`define dm_byte 3'b011
`define dm_byte_unsigned 3'b100

`define system 7'b1110011


