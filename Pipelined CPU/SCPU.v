`include "ctrl_encode_def.v"
module SCPU(
    input      clk,            // clock
    input      reset,          // reset
    input [31:0]  inst_in,     // instruction
    input [31:0]  Data_in,     // data from data memory
   
    output    mem_w,          // output: memory write signal
    output [31:0] PC_out,     // PC address
      // memory write
    output [31:0] Addr_out,   // ALU output
    output [31:0] Data_out,// data to data memory

    input  [4:0] reg_sel,    // register selection (for debug use)
    output [31:0] reg_data,  // selected register data (for debug use)
    output [31:0] pcW,
    output [2:0] DMType  
);


    wire        RegWrite;    // control signal to register write
    wire [5:0]       EXTOp;       // control signal to signed extension
    wire [4:0]  ALUOp;       // ALU operation
    wire [2:0]  NPCOp;       // next PC operation

    wire [2:0]  WDSel;       // (register) write data selection
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
assign Addr_out=aluout;
	assign B = (ALUSrc) ? immout : RD2;
	assign Data_out = RD2;
	
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

// wire [31:0] inst_out;
wire stall;
wire flush;

// instantiation of IF/ID reg
    IF_ID U_IF_ID(
        .clk(clk), .rst(reset),
        .inst_in(inst_in), .PC_in(PC_out),
        .inst_out(IF_ID_inst), .PC_out(IF_ID_PC), .stall(stall), .flush(flush)
    );  

wire sbtype;
wire i_jal;
wire i_jalr;

  assign NPCOp[0] = sbtype & Zero;
  assign NPCOp[1] = i_jal;
  assign NPCOp[2] = i_jalr;

// instantiation of control unit
	ctrl U_ctrl(
		.Op(Op), .Funct7(Funct7), .Funct3(Funct3), 
        // .Zero(Zero), 
		.RegWrite(RegWrite), .MemWrite(mem_w),
		.EXTOp(EXTOp), .ALUOp(ALUOp), 
        // .NPCOp(NPCOp), // implemented with assign above
		.ALUSrc(ALUSrc), .GPRSel(GPRSel), .WDSel(WDSel), .DMType(DMType),
        .sbtype(sbtype), .i_jal(i_jal), .i_jalr(i_jalr) // outputs added by myself
	);

// instantiation of register file
    // the RegWrite of RF comes from MEM/WB
	RF U_RF(
		.clk(clk), .rst(reset),
		.RFWr(MEM_WB_RegWrite), // from WB
		.A1(rs1), .A2(rs2), .A3(rd), 
		.WD(WD), 
		.RD1(RD1), .RD2(RD2)
		//.reg_sel(reg_sel),
		//.reg_data(reg_data)
	);

// instantiation of imm unit
	EXT U_EXT(
		.iimm_shamt(iimm_shamt), .iimm(iimm), .simm(simm), .bimm(bimm),
		.uimm(uimm), .jimm(jimm),
		.EXTOp(EXTOp), .immout(immout)
	);


// instantiation of pc unit
// in pc unit, the npc comes from EX/MEM and its control comes from EX/MEM
	PC U_PC(.clk(clk), .rst(reset), .NPC(EX_MEM_NPC), .PC(PC_out) );

	NPC U_NPC(.PC(PC_out), .NPCOp(NPCOp), .IMM(immout), .NPC(NPC), .aluout(aluout), .pcW(pcW));

// output wires of ID/EX
wire [31:0]ID_EX_PC;
wire [31:0]ID_EX_inst;
wire [64:0]ID_EX_imm;
wire [4:0]ID_EX_rs1;
wire [4:0]ID_EX_rs2;
wire [4:0]ID_EX_rd;
wire [31:0]ID_EX_rs1data;
wire [31:0]ID_EX_rs2data;

wire [31:0]EX_MEM_imm;
wire [31:0]EX_MEM_PC;

// instantiation of id/ex reg
    ID_EX U_ID_EX(
        // inputs
            // data
        .clk(clk), .rst(reset),
        .PC_in(IF_ID_PC), .inst_in(IF_ID_inst), .imm_in(immout),
        .rs1_in(ID_EX_rs1), .rs2_in(ID_EX_rs2), .rd_in(ID_EX_rd),
        .rs1_data_in(ID_EX_rs1data), .rs2_data_in(ID_EX_rs2data),
            // control (inputs)
        .ALUOp_in(ALUOp), .ALUSrc_in(ALUSrc), .GPRSel_in(GPRSel), .EXTop_in(EXTOp),

        
        .sbtype(sbtype), .i_jal(i_jal), .i_jalr(i_jalr) // outputs added by myself
    );


// instantiation of alu unit
	alu U_alu(.A(RD1), .B(B), .ALUOp(ALUOp), .C(aluout), .Zero(Zero), .PC(PC_out));



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
	case(WDSel)
		`WDSel_FromALU: WD<=aluout;
		`WDSel_FromMEMWord: WD<=Data_in; 
        `WDSel_FromMEMHW: WD<=$signed(Data_in[15:0]);
        `WDSel_FromMEMBT: WD<=$signed(Data_in[7:0]);
        `WDSel_FromMEMHWU: WD<=$unsigned(Data_in[15:0]);
        `WDSel_FromMEMBTU: WD<=$unsigned(Data_in[7:0]);
		`WDSel_FromPC: WD<=PC_out+4;
	endcase
end


endmodule