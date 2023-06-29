module xgriscv_sc(clk, rstn, pcW);
   input          clk;
   input          rstn;
   // input [4:0]    reg_sel;
   // output [31:0]  reg_data;
   output [31:0]   pcW;  // addr of current instruction
   // output regw;  // sent to rf from mem/wb
   wire [31:0]    instr;
   
   wire           MemWrite;
   wire [31:0]    dm_addr, dm_din, dm_dout;
   wire [2:0]     DMType;
   
   wire rst = rstn;
   wire [4:0] rd_from_EX_MEM;

   wire [31:0]    PC;
   // instantiation of intruction memory (used for simulation)

   // instantiation of single-cycle CPU   
   SCPU U_SCPU(
         .clk(clk),                 // input:  cpu clock
         .reset(rst),                 // input:  reset
         .inst_in(instr),             // input:  instruction
         .Data_in(dm_dout),        // input:  data to cpu  

         .mem_w(MemWrite),       // output: memory write signal
         .PC_out(PC),                   // output: PC
         .Addr_out(dm_addr),          // output: address from cpu to memory
         .Data_out(dm_din),        // output: data from cpu to memory
         //.reg_sel(reg_sel),         // input:  register selection
         //.reg_data(reg_data),        // output: register data
         .pcW(pcW),
         .DMType(DMType)
         );
   
   im    U_imem ( 
         .addr(PC[31:2]),     // input:  rom address
         .dout(instr)        // output: instruction
         );
         
   // instantiation of data memory  
   dm    U_DM(
         .clk(clk),           // input:  cpu clock
         .DMWr(MemWrite),     // input:  ram write
         .addr(dm_addr[31:2]), // input:  ram address
         .din(dm_din),        // input:  data to ram
         .PC(PC),            // input:  PC
         .DMType(DMType),
         .dout(dm_dout)    // output: data from ram
         );


        
endmodule

