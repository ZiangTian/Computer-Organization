`include "ctrl_encode_def.v"
module SCPU( 
    input      clk,            // clock
    input      reset,          // reset
    input [31:0]  inst_in,     // instruction
    input [31:0]  Data_in,     // data from data memory
    input INT,                 // interrupt signal  // counter0_out

    output [31:0] PC_out,      // PC address to instruction memory

    output [31:0] Addr_out,    // ALU output to data memory
    output [31:0] Data_out,    // data to data memory

                // input  [4:0] reg_sel,    // register selection (for debug use)
                // output [31:0] reg_data,  // selected register data (for debug use)
    output [31:0] pcW,
    // control signals for dm
    output [2:0] DMType,
    output    mem_w          // output: memory write signal
);
`define WDSel_FromALU 2'b00 // : itype_l, r_type
`define WDSel_FromPC  2'b10 // : i_jal, i_jalr
`define WDSel_FromMEM 2'b01
// `define WDSel_auipc   2'b11 // : i_auipc

    wire        RegWrite;    // control signal to register write
    wire [5:0]  EXTOp;       // control signal to signed extension
    wire [4:0]  ALUOp;       // ALU operation
    wire [2:0]  NPCOp;       // next PC operation

    wire [1:0]  WDSel;       // (register) write data selection pattern : from alu, memory or in words/bytes
    wire [1:0]  GPRSel;      // general purpose register selection
   
    wire        ALUSrc;      // ALU source for A
    wire        Zero;        // ALU ouput zero

    wire [31:0] NPC;         // next PC

    wire [4:0]  rs1;          // rs
    wire [4:0]  rs2;          // rt
    wire [4:0]  rd;          // rd
    wire [6:0]  Op;          // opcode
    wire [6:0]  Funct7;       // funct7
    wire [2:0]  Funct3;       // funct3
    wire [11:0] Imm12;       // 12-bit immediate
    wire [31:0] Imm32;       // 32-bit immediate
    wire [19:0] IMM;         // 20-bit immediate (address)
    wire [4:0]  A3;          // register address for write
    reg [31:0] WD;          // register write data
    wire [31:0] RD1,RD2;         // register data specified by rs
    wire [31:0] B;           // operator for ALU B
	
	wire [4:0] iimm_shamt;
	wire [11:0] iimm,simm,bimm;
	wire [19:0] uimm,jimm;
	wire [31:0] immout;
    wire[31:0] aluout;

    // wire [31:0] inst_out;
    wire stall;
    wire flush;

    wire MemWrite_out;

    wire eret;
	
	// assign iimm_shamt=inst_in[24:20];
	// assign iimm=inst_in[31:20];
	// assign simm={inst_in[31:25],inst_in[11:7]};
	// assign bimm={inst_in[31],inst_in[7],inst_in[30:25],inst_in[11:8]};
	// assign uimm=inst_in[31:12];
	// assign jimm={inst_in[31],inst_in[19:12],inst_in[20],inst_in[30:21]};
   
    // assign Op = inst_in[6:0];  // instruction
    // assign Funct7 = inst_in[31:25]; // funct7
    // assign Funct3 = inst_in[14:12]; // funct3
    // assign rs1 = inst_in[19:15];  // rs1
    // assign rs2 = inst_in[24:20];  // rs2
    // assign rd = inst_in[11:7];  // rd
    // assign Imm12 = inst_in[31:20];// 12-bit immediate
    // assign IMM = inst_in[31:12];  // 20-bit immediate

// output wires of IF/ID
// decoding
    wire [31:0]IF_ID_inst;
    wire [31:0]IF_ID_PC;

// instantiation of IF/ID reg
    IF_ID U_IF_ID(
        .clk(clk), .rst(reset),
        .inst_in(inst_in), .PC_in(PC_out),
        .inst_out(IF_ID_inst), .PC_out(IF_ID_PC), .stall(stall), .flush(flush)
    );  

    assign iimm_shamt=IF_ID_inst[24:20];
	assign iimm=IF_ID_inst[31:20];
	assign simm={IF_ID_inst[31:25],IF_ID_inst[11:7]};
	assign bimm={IF_ID_inst[31],IF_ID_inst[7],IF_ID_inst[30:25],IF_ID_inst[11:8]};
	assign uimm=IF_ID_inst[31:12];
	assign jimm={IF_ID_inst[31],IF_ID_inst[19:12],IF_ID_inst[20],IF_ID_inst[30:21]};
   
    assign Op = IF_ID_inst[6:0];  // instruction
    assign Funct7 = IF_ID_inst[31:25]; // funct7
    assign Funct3 = IF_ID_inst[14:12]; // funct3
    assign rs1 = IF_ID_inst[19:15];  // rs1
    assign rs2 = IF_ID_inst[24:20];  // rs2
    assign rd = IF_ID_inst[11:7];  // rd
    assign Imm12 =IF_ID_inst[31:20];// 12-bit immediate
    assign IMM = IF_ID_inst[31:12];  // 20-bit immediate
    assign eret = (IF_ID_inst == 32'h00200073);

// output wires of ID/EX
wire [31:0]ID_EX_PC;
wire [31:0]ID_EX_inst;
wire [31:0]ID_EX_imm;
wire [4:0]ID_EX_rs1;
wire [4:0]ID_EX_rs2;
wire [4:0]ID_EX_rd;
wire [31:0]ID_EX_rs1data;
wire [31:0]ID_EX_rs2data;

wire [4:0] ID_EX_ALUOp;
wire ID_EX_ALUSrc;
wire [1:0] ID_EX_GPRSel;

wire ID_EX_MemWrite;
wire ID_EX_MemRead;

wire [2:0] ID_EX_DMType;

wire ID_EX_RegWrite;
wire [1:0] ID_EX_WDSel;

wire ID_EX_sbtype;
wire ID_EX_i_jal;
wire ID_EX_i_jalr;
wire ID_EX_load;
wire ID_EX_eret;

    wire [31:0] EX_MEM_PC;
    wire [31:0] EX_MEM_inst;
    wire [4:0] EX_MEM_rs1;
    wire [4:0] EX_MEM_rs2;
    wire [4:0] EX_MEM_rd;
    wire [31:0] EX_MEM_alures;
    wire [31:0] EX_MEM_rs2data;
    // wire EX_MEM_Zero;
    wire EX_MEM_MemWrite;
    wire [2:0] EX_MEM_DMType;
    wire [2:0] EX_MEM_NPCOp;
    wire EX_MEM_RegWrite;
    wire [1:0] EX_MEM_WDSel;
    wire [31:0] EX_MEM_imm;
    wire EX_MEM_load;

// wires of MEM_WB delcared here because RF will be needing them
   wire [4:0] MEM_WB_rd;
   wire [31:0] MEM_WB_alures;
   wire MEM_WB_RegWrite;
   wire [31:0] MEM_WB_Datain;
   wire [1:0] MEM_WB_WDSel;
   wire [31:0] MEM_WB_PC;

   wire load;

    Stall U_stall(
        .IF_IDrs1_in(rs1), .IF_IDrs2_in(rs2), 
        .ID_EXmemread_in(ID_EX_MemRead),
        .ID_EXrd_in(ID_EX_rd),
        .ID_EXregwrite_in(ID_EX_RegWrite),
        .load(ID_EX_load),
        .INT(INT),
        .eret(ID_EX_eret),
        .NPCOp(NPCOp),
        .stallout(stall),
        .flushout(flush)
    );
    // assign stall = 0;

// take NPCOp out of control and put it here
    wire sbtype;
    wire i_jal;
    wire i_jalr;
    wire Memread;
    wire [2:0] ctrl_dm_type;

// instantiation of control unit
	ctrl U_ctrl(
		.Op(Op), .Funct7(Funct7), .Funct3(Funct3), 
        // .Zero(Zero), 
		.RegWrite(RegWrite), .MemWrite(MemWrite_out), .MemRead(MemRead),
		.EXTOp(EXTOp), .ALUOp(ALUOp), 
        // .NPCOp(NPCOp), // implemented with assign above
		.ALUSrc(ALUSrc), .GPRSel(GPRSel), .WDSel(WDSel), .DMType(ctrl_dm_type),
        .sbtype(sbtype), .i_jal(i_jal), .i_jalr(i_jalr), .itype_l(load) // outputs added by myself
	);

    // instantiation of imm unit
	EXT U_EXT(
		.iimm_shamt(iimm_shamt), .iimm(iimm), .simm(simm), .bimm(bimm),
		.uimm(uimm), .jimm(jimm),
		.EXTOp(EXTOp), .immout(immout)
	);


wire [31:0] write_back_data;  // assign write_back_data = (Memtoreg)? MEM_WB_read_dm_data : MEM_WB_ALUres;
// instantiation of register file
    // the RegWrite of RF comes from MEM/WB
	RF U_RF(
		.clk(clk), .rst(reset),
		.RFWr(MEM_WB_RegWrite), // whether to write regs
		.A1(rs1), .A2(rs2), .A3(MEM_WB_rd), 
		.WD(WD),  // write back data
		.RD1(RD1), .RD2(RD2)  // data read from the regs
		//.reg_sel(reg_sel),
		//.reg_data(reg_data)
	);


// instantiation of pc unit
// in pc unit, the npc comes from EX/MEM and its control comes from EX/MEM
	PC U_PC(.clk(clk), .rst(reset), .NPC(NPC), .PC(PC_out), .stall(stall) );  // PC_out already set
    // NPC singal does not go over any regsiter; it goes directly back.



// instantiation of id/ex reg
    ID_EX U_ID_EX(
        // inputs
            // data
        .clk(clk), .rst(reset),

        .PC_in(IF_ID_PC), .inst_in(IF_ID_inst), .imm_in(immout),
        .rs1_in(rs1), .rs2_in(rs2), .rd_in(rd),
        .rs1_data_in(RD1), .rs2_data_in(RD2),

        .PC_out(ID_EX_PC), .inst_out(ID_EX_inst), .imm_out(ID_EX_imm),
        .rs1_out(ID_EX_rs1), .rs2_out(ID_EX_rs2), .rd_out(ID_EX_rd),
        .rs1_data_out(ID_EX_rs1data), .rs2_data_out(ID_EX_rs2data),

        // control for ex
        .ALUOp_in(ALUOp), .ALUSrc_in(ALUSrc), .GPRSel_in(GPRSel), 
        .ALUOp_out(ID_EX_ALUOp), .ALUSrc_out(ID_EX_ALUSrc), .GPRSel_out(ID_EX_GPRSel), 

        // control for mem
        .MemWrite_in(MemWrite_out), .DMType_in(ctrl_dm_type),
        .MemWrite_out(ID_EX_MemWrite), .DMType_out(ID_EX_DMType),
        .MemRead_in(MemRead), .MemRead_out(ID_EX_MemRead),

        // control for wb
        .RegWrite_in(RegWrite), .WDSel_in(WDSel),
        .RegWrite_out(ID_EX_RegWrite), .WDSel_out(ID_EX_WDSel),

        .stall(stall), .flush(flush),

        .eret_in(eret), .eret_out(ID_EX_eret),

        .sbtype_in(sbtype), .i_jal_in(i_jal), .i_jalr_in(i_jalr), .load_in(load),// outputs added by myself
        .sbtype_out(ID_EX_sbtype), .i_jal_out(ID_EX_i_jal), .i_jalr_out(ID_EX_i_jalr), .load_out(ID_EX_load)  // outputs added by myself
    );

    wire [1:0] forwardA;
    wire [1:0] forwardB;

    Forward U_forward(
        .EX_MEM_RegWrite(EX_MEM_RegWrite),
        .EX_MEM_rd(EX_MEM_rd),
        .ID_EX_rs1(ID_EX_rs1),
        .ID_EX_rs2(ID_EX_rs2),

        .MEM_WB_RegWrite(MEM_WB_RegWrite),
        .MEM_WB_rd(MEM_WB_rd),

        .forwardA(forwardA),
        .forwardB(forwardB)
    );
    wire [31:0] A;
    // wire [31:0] ori_B;
    wire [31:0] real_RD2;
    wire [31:0] MEM_WB_forwarded_data;
    wire MEM_WB_load;

    assign MEM_WB_forwarded_data = (MEM_WB_load==1) ? MEM_WB_Datain : MEM_WB_alures;  // in two cases we use the MEM forwarding: 1. add with 2 instrs separated; 2. load
    assign A = (forwardA[0]==1) ? MEM_WB_forwarded_data : (forwardA[1]==1) ? EX_MEM_alures : ID_EX_rs1data;
    //assign A = (forwardA[0]==1) ? MEM_WB_alures : (forwardA[1]==1) ? EX_MEM_alures : ID_EX_rs1data;
    

    // note that, sometimes the forwarded data (rs2) is not used for alu computing, but for memory access
    // in whatever case, the forwarded data replaces RD2
    assign real_RD2 = (forwardB[0]==1) ? MEM_WB_forwarded_data : (forwardB[1]==1) ? EX_MEM_alures : ID_EX_rs2data;
    //assign real_RD2 = (forwardB[0]==1) ? MEM_WB_alures : (forwardB[1]==1) ? EX_MEM_alures : ID_EX_rs2data;
    
    assign B = (ID_EX_ALUSrc) ? ID_EX_imm : real_RD2; // what current B should be. In sw case, B is imm.
    
    // assign ori_B = (ID_EX_ALUSrc) ? ID_EX_imm : ID_EX_rs2data; // what current B should be. In sw case, B is imm.
    // assign B = (forwardB[0]==1) ? MEM_WB_alures : (forwardB[1]==1) ? EX_MEM_alures : ori_B;
	
    
// instantiation of alu unit
	alu U_alu(.A(A), .B(B), .ALUOp(ID_EX_ALUOp), .C(aluout), .Zero(Zero), .PC(ID_EX_PC));

    assign NPCOp[0] = ID_EX_sbtype & Zero;   // branch taken, stall
    assign NPCOp[1] = ID_EX_i_jal;
    assign NPCOp[2] = ID_EX_i_jalr;

// instantiation of branch unit

// instantiation of INT_SAVER
    // inputs
    wire [31:0] cause;
    // outputs
    wire [31:0] int_saver_cause;
    wire [31:0] SEPC;

    INT_SAVER U_int_saver(INT, ID_EX_PC, cause, SEPC, int_saver_cause);


// instantiation of ex/mem reg

    EX_MEM U_EX_MEM(
        .clk(clk), 
        .rst(reset),
        .PC_in(ID_EX_PC),
        .inst_in(ID_EX_inst),
        .rs1_in(ID_EX_rs1), 
        .rs2_in(ID_EX_rs2), 
        .rd_in(ID_EX_rd),
        .alures_in(aluout), 
        .rs2_data_in(real_RD2), /////////////// !!!!!!!!!!!!!!
        // .Zero_in(Zero),
        .imm_in(ID_EX_imm),
        .load_in(ID_EX_load),
        .load_out(EX_MEM_load),

        .PC_out(EX_MEM_PC), 
        .inst_out(EX_MEM_inst),
        .rs1_out(EX_MEM_rs1), 
        .rs2_out(EX_MEM_rs2), 
        .rd_out(EX_MEM_rd),
        .alures_out(EX_MEM_alures), 
        .rs2_data_out(EX_MEM_rs2data),
        // .Zero_out(EX_MEM_Zero),

        .MemWrite_in(ID_EX_MemWrite), 
        .NPCOp_in(NPCOp), 
        .DMType_in(ID_EX_DMType),
        .MemWrite_out(EX_MEM_MemWrite), 
        .NPCOp_out(EX_MEM_NPCOp), 
        .DMType_out(EX_MEM_DMType),
        .imm_out(EX_MEM_imm),

        .RegWrite_in(ID_EX_RegWrite), 
        .WDSel_in(ID_EX_WDSel),
        .RegWrite_out(EX_MEM_RegWrite), 
        .WDSel_out(EX_MEM_WDSel),

        .INT(INT)

        // .stall(stall) // .flush(flush)
    );

    // changed to ID_EX
	NPC U_NPC(.PC(PC_out), .NPCOp(NPCOp), .IMM(ID_EX_imm), .aluout(aluout), 
            .NPC(NPC), .pcW(pcW), .ID_EX_PC(ID_EX_PC),
            .INT(INT), .eret(ID_EX_eret), .SEPC(SEPC));



assign mem_w = EX_MEM_MemWrite;          // output: memory write signal
// assign PC_out = ;     // PC address to instruction memory
assign Addr_out = EX_MEM_alures; // ALU output to dm
      // memory write
assign Data_out = EX_MEM_rs2data; // data to data memory
assign DMType = EX_MEM_DMType;

// instantiation of MEM/WB
   
   MEM_WB U_MEM_WB(
      .clk(clk),
      .rst(reset),

      .PC_in(EX_MEM_PC), // share the same PC as DM
      .rd_in(EX_MEM_rd),
      .alures_in(EX_MEM_alures),
      .read_data_in(Data_in), // data from data memory
      .WDSel_in(EX_MEM_WDSel),
      .RegWrite_in(EX_MEM_RegWrite),
      .load_in(EX_MEM_load),
      
      .load_out(MEM_WB_load),
      .PC_out(MEM_WB_PC),
      .rd_out(MEM_WB_rd),
      .alures_out(MEM_WB_alures),
      .read_data_out(MEM_WB_Datain),
      .WDSel_out(MEM_WB_WDSel),
      .RegWrite_out(MEM_WB_RegWrite)
   );

//please connnect the CPU by yourself

// `define WDSel_FromALU 3'b000 // : itype_l, r_type
// `define WDSel_FromPC  3'b001 // : i_jal, i_jalr
// `define WDSel_FromMEMWord 3'b010 // : i_lw
// `define WDSel_FromMEMHW 3'b011 // : i_lh
// `define WDSel_FromMEMBT 3'b100 // : i_lb
// // WDSel_FromMEMWordU non-existent
// `define WDSel_FromMEMHWU 3'b101 // : i_lhu
// `define WDSel_FromMEMBTU 3'b110 // : i_lbu

always @*
begin
	case(MEM_WB_WDSel)
		`WDSel_FromALU: WD<=MEM_WB_alures;
		//`WDSel_FromMEMWord: WD<=MEM_WB_Datain; 
        //`WDSel_FromMEMHW: WD<=$signed(MEM_WB_Datain[15:0]);
        //`WDSel_FromMEMBT: WD<=$signed(MEM_WB_Datain[7:0]);
        //`WDSel_FromMEMHWU: WD<=$unsigned(MEM_WB_Datain[15:0]);
        //`WDSel_FromMEMBTU: WD<=$unsigned(MEM_WB_Datain[7:0]);
		`WDSel_FromPC: WD<=MEM_WB_PC+4;
        `WDSel_FromMEM: WD<=MEM_WB_Datain; 
        
	endcase
end

endmodule