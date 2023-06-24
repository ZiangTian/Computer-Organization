`timescale 1ps/1ps
// testbench for simulation
module xgriscv_tb();
    
    reg  clk, rstn;
    wire[32-1:0]	 pcW;
  
// instantiation of xgriscv 
   xgriscv_sc xgriscvp(clk, rstn, pcW);

   integer counter = 0;
   
   initial begin
     $readmemh("E:\ModelSimProj\riscv32_sim1.hex", xgriscvp.U_imem.RAM);
//      xgriscvp.U_imem.RAM[0]=32'h00000293;
//      xgriscvp.U_imem.RAM[1]=32'h00000313;
//      xgriscvp.U_imem.RAM[2]=32'hFFFFF3B7;
//      xgriscvp.U_imem.RAM[3]=32'h00000013;
//      xgriscv.U_imem.RAM[4]=32'h00000013;
//      xgriscv.U_imem.RAM[5]=32'h00000013;
//      xgriscv.U_imem.RAM[6]=32'h16030A63;
//      xgriscv.U_imem.RAM[7]=32'h00000013;
//      xgriscv.U_imem.RAM[8]=32'h00000013;
//      xgriscv.U_imem.RAM[9]=32'h00000013;
//      xgriscv.U_imem.RAM[10]=32'h00000013;
//      xgriscv.U_imem.RAM[11]=32'h02038263;
//      xgriscv.U_imem.RAM[12]=32'h00000013;
//      xgriscv.U_imem.RAM[13]=32'h00000013;
//      xgriscv.U_imem.RAM[14]=32'h00000013;
//      xgriscv.U_imem.RAM[15]=32'h00000013;
//      xgriscv.U_imem.RAM[16]=32'h00128293;
//      xgriscv.U_imem.RAM[17]=32'h00000013;
//      xgriscv.U_imem.RAM[18]=32'h00000013;
//      xgriscv.U_imem.RAM[19]=32'h00000013;
//      xgriscv.U_imem.RAM[20]=32'h16039A63;
//      xgriscv.U_imem.RAM[21]=32'h00000013;
//      xgriscv.U_imem.RAM[22]=32'h00000013;
//      xgriscv.U_imem.RAM[23]=32'h00000013;
//      xgriscv.U_imem.RAM[24]=32'h00000013;
//      xgriscv.U_imem.RAM[25]=32'h18031263;
//      xgriscv.U_imem.RAM[26]=32'h00000013;
//      xgriscv.U_imem.RAM[27]=32'h00000013;
//      xgriscv.U_imem.RAM[28]=32'h00000013;
//      xgriscv.U_imem.RAM[29]=32'h00000013;
//      xgriscv.U_imem.RAM[30]=32'h00128293;
      
      clk = 1;
      rstn = 1;
      #5 ;
      rstn = 0;
   end
   
  always begin
    #(50) clk = ~clk;
     
    if (clk == 1'b1) 
      begin
         counter = counter + 1;
         //$display("clock: %d", counter);
         //$display("pc:\t\t%h", xgriscvp.pcF);  // pcF undeclared
         $display("instr:\t%h", xgriscvp.instr);
         $display("pcw:\t%h", pcW);
          if (pcW == 32'h000000ff) // set to the address of the last instruction
          begin
            //$display("pcW:\t\t%h", pcW);
            //$finish;
            $stop;
          end
      end
  end 
   
endmodule