`timescale 1ps/1ps
// testbench for simulation
module xgriscv_tb();
    
    reg  clk, rstn;
    wire[32-1:0]	 pcW;
  
// instantiation of xgriscv 
   xgriscv_sc xgriscv(clk, rstn, pcW);

   integer counter = 0;
   
   initial begin
    
     $readmemh("E:/imp/Test_37_Instr.dat", xgriscv.U_imem.RAM);
    //$readmemh("E:/imp/set2/riscv32_forwarding_sim2.dat", xgriscv.U_imem.RAM);
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
         //$display("counter:\t%d, instr: \t%h", counter, xgriscv.instr);
//         $display("instr:\t%h", xgriscv.instr);
//         $display("pcw:\t%h", pcW);
          if (pcW == 32'h000000ff) // set to the address of the last instruction
          begin
            //$display("pcW:\t\t%h", pcW);
            //$finish;
            $stop;
          end
      end
  end 
   
endmodule