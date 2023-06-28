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
//    $readmemh("E:/imp/ld_sd.dat", xgriscv.U_imem.RAM);
    
    // $readmemb("E:/file1.txt",memory);
/*
      xgriscv.U_imem.RAM[0]=32'h00000293; // addi x5, x0, 0
      xgriscv.U_imem.RAM[1]=32'h00000313; // addi x6, x0, 0
      xgriscv.U_imem.RAM[2]=32'hFFFFF3B7; // lui, x7, fff...  // set all higher 20 bits of x7 to 1
      xgriscv.U_imem.RAM[3]=32'h00000013; // nop
      xgriscv.U_imem.RAM[4]=32'h00000013; // nop
      xgriscv.U_imem.RAM[5]=32'h00000013; // nop
      xgriscv.U_imem.RAM[6]=32'h16030A63; // beq x6, x0, 372  
      xgriscv.U_imem.RAM[7]=32'h00000013;
      xgriscv.U_imem.RAM[8]=32'h00000013;
      xgriscv.U_imem.RAM[9]=32'h00000013;
      xgriscv.U_imem.RAM[10]=32'h00000013;
      xgriscv.U_imem.RAM[11]=32'h02038263;
      xgriscv.U_imem.RAM[12]=32'h00000013;
      xgriscv.U_imem.RAM[13]=32'h00000013;
      xgriscv.U_imem.RAM[14]=32'h00000013;
      xgriscv.U_imem.RAM[15]=32'h00000013;
      xgriscv.U_imem.RAM[16]=32'h00128293;
      xgriscv.U_imem.RAM[17]=32'h00000013;
      xgriscv.U_imem.RAM[18]=32'h00000013;
      xgriscv.U_imem.RAM[19]=32'h00000013;
      xgriscv.U_imem.RAM[20]=32'h16039A63;
      xgriscv.U_imem.RAM[21]=32'h00000013;
      xgriscv.U_imem.RAM[22]=32'h00000013;
      xgriscv.U_imem.RAM[23]=32'h00000013;
      xgriscv.U_imem.RAM[24]=32'h00000013;
      xgriscv.U_imem.RAM[25]=32'h18031263;
      xgriscv.U_imem.RAM[26]=32'h00000013;
      xgriscv.U_imem.RAM[27]=32'h00000013;
      xgriscv.U_imem.RAM[28]=32'h00000013;
      xgriscv.U_imem.RAM[29]=32'h00000013;
      xgriscv.U_imem.RAM[30]=32'h00128293;
      xgriscv.U_imem.RAM[31]=32'h00000013;
      xgriscv.U_imem.RAM[32]=32'h00000013;
      xgriscv.U_imem.RAM[33]=32'h00000013;
      xgriscv.U_imem.RAM[34]=32'h1663CA63;
      xgriscv.U_imem.RAM[35]=32'h00000013;
      xgriscv.U_imem.RAM[36]=32'h00000013;
      xgriscv.U_imem.RAM[37]=32'h00000013;
      xgriscv.U_imem.RAM[38]=32'h00000013;
      xgriscv.U_imem.RAM[39]=32'h18734263;
      xgriscv.U_imem.RAM[40]=32'h00000013;
      xgriscv.U_imem.RAM[41]=32'h00000013;
      xgriscv.U_imem.RAM[42]=32'h00000013;
      xgriscv.U_imem.RAM[43]=32'h00000013;
      xgriscv.U_imem.RAM[44]=32'h00128293;
      xgriscv.U_imem.RAM[45]=32'h00000013;
      xgriscv.U_imem.RAM[46]=32'h00000013;
      xgriscv.U_imem.RAM[47]=32'h00000013;
      xgriscv.U_imem.RAM[48]=32'h16035A63;
      xgriscv.U_imem.RAM[49]=32'h00000013;
      xgriscv.U_imem.RAM[50]=32'h00000013;
      xgriscv.U_imem.RAM[51]=32'h00000013;
      xgriscv.U_imem.RAM[52]=32'h00000013;
      xgriscv.U_imem.RAM[53]=32'h18735263;
      xgriscv.U_imem.RAM[54]=32'h00000013;
      xgriscv.U_imem.RAM[55]=32'h00000013;
      xgriscv.U_imem.RAM[56]=32'h00000013;
      xgriscv.U_imem.RAM[57]=32'h00000013;
      xgriscv.U_imem.RAM[58]=32'h1803DA63;
      xgriscv.U_imem.RAM[59]=32'h00000013;
      xgriscv.U_imem.RAM[60]=32'h00000013;
      xgriscv.U_imem.RAM[61]=32'h00000013;
      xgriscv.U_imem.RAM[62]=32'h00000013;
      xgriscv.U_imem.RAM[63]=32'h00128293;
      xgriscv.U_imem.RAM[64]=32'h00000013;
      xgriscv.U_imem.RAM[65]=32'h00000013;
      xgriscv.U_imem.RAM[66]=32'h00000013;
      xgriscv.U_imem.RAM[67]=32'h18736263;
      xgriscv.U_imem.RAM[68]=32'h00000013;
      xgriscv.U_imem.RAM[69]=32'h00000013;
      xgriscv.U_imem.RAM[70]=32'h00000013;
      xgriscv.U_imem.RAM[71]=32'h00000013;
      xgriscv.U_imem.RAM[72]=32'h1863EA63;
      xgriscv.U_imem.RAM[73]=32'h00000013;
      xgriscv.U_imem.RAM[74]=32'h00000013;
      xgriscv.U_imem.RAM[75]=32'h00000013;
      xgriscv.U_imem.RAM[76]=32'h00000013;
      xgriscv.U_imem.RAM[77]=32'h00128293;
      xgriscv.U_imem.RAM[78]=32'h00000013;
      xgriscv.U_imem.RAM[79]=32'h00000013;
      xgriscv.U_imem.RAM[80]=32'h00000013;
      xgriscv.U_imem.RAM[81]=32'h1863F263;
      xgriscv.U_imem.RAM[82]=32'h00000013;
      xgriscv.U_imem.RAM[83]=32'h00000013;
      xgriscv.U_imem.RAM[84]=32'h00000013;
      xgriscv.U_imem.RAM[85]=32'h00000013;
      xgriscv.U_imem.RAM[86]=32'h18737A63;
      xgriscv.U_imem.RAM[87]=32'h00000013;
      xgriscv.U_imem.RAM[88]=32'h00000013;
      xgriscv.U_imem.RAM[89]=32'h00000013;
      xgriscv.U_imem.RAM[90]=32'h00000013;
      xgriscv.U_imem.RAM[91]=32'h00128293;
      xgriscv.U_imem.RAM[92]=32'h00000013;
      xgriscv.U_imem.RAM[93]=32'h00000013;
      xgriscv.U_imem.RAM[94]=32'h00000013;
      xgriscv.U_imem.RAM[95]=32'h00000067;
      xgriscv.U_imem.RAM[96]=32'h00000013;
      xgriscv.U_imem.RAM[97]=32'h00000013;
      xgriscv.U_imem.RAM[98]=32'h00000013;
      xgriscv.U_imem.RAM[99]=32'h00128293;
      xgriscv.U_imem.RAM[100]=32'h00000013;
       xgriscv.U_imem.RAM[101]=32'h00000013;
        xgriscv.U_imem.RAM[102]=32'h00000013;
         xgriscv.U_imem.RAM[103]=32'h02C00067;
          xgriscv.U_imem.RAM[104]=32'h00000013;
           xgriscv.U_imem.RAM[105]=32'h00000013;
            xgriscv.U_imem.RAM[106]=32'h00000013;
             xgriscv.U_imem.RAM[107]=32'h00000013;
              xgriscv.U_imem.RAM[108]=32'h05000067;
              xgriscv.U_imem.RAM[109]=32'h00000013;
               xgriscv.U_imem.RAM[110]=32'h00000013;
               xgriscv.U_imem.RAM[111]=32'h00000013;
               xgriscv.U_imem.RAM[112]=32'h00000013;
               xgriscv.U_imem.RAM[113]=32'h00128293;
               xgriscv.U_imem.RAM[114]=32'h00000013;
               xgriscv.U_imem.RAM[115]=32'h00000013;
               xgriscv.U_imem.RAM[116]=32'h00000013;
               xgriscv.U_imem.RAM[117]=32'h06400067;
               xgriscv.U_imem.RAM[118]=32'h00000013;
               xgriscv.U_imem.RAM[119]=32'h00000013;
               xgriscv.U_imem.RAM[120]=32'h00000013;
               xgriscv.U_imem.RAM[121]=32'h00000013;
               xgriscv.U_imem.RAM[122]=32'h08800067;
               xgriscv.U_imem.RAM[123]=32'h00000013;
               xgriscv.U_imem.RAM[124]=32'h00000013;
               xgriscv.U_imem.RAM[125]=32'h00000013;
               xgriscv.U_imem.RAM[126]=32'h00000013;
               xgriscv.U_imem.RAM[127]=32'h00128293;
               xgriscv.U_imem.RAM[128]=32'h00000013;
               xgriscv.U_imem.RAM[129]=32'h00000013;
               xgriscv.U_imem.RAM[130]=32'h00000013;
               xgriscv.U_imem.RAM[131]=32'h09C00067;
               xgriscv.U_imem.RAM[132]=32'h00000013;
               xgriscv.U_imem.RAM[133]=32'h00000013;
               xgriscv.U_imem.RAM[134]=32'h00000013;
               xgriscv.U_imem.RAM[135]=32'h00000013;
               xgriscv.U_imem.RAM[136]=32'h0C000067;
               xgriscv.U_imem.RAM[137]=32'h00000013;
               xgriscv.U_imem.RAM[138]=32'h00000013;
               xgriscv.U_imem.RAM[139]=32'h00000013;
               xgriscv.U_imem.RAM[140]=32'h00000013;
               xgriscv.U_imem.RAM[141]=32'h00128293;
               xgriscv.U_imem.RAM[142]=32'h00000013;
               xgriscv.U_imem.RAM[143]=32'h00000013;
               xgriscv.U_imem.RAM[144]=32'h00000013;
               xgriscv.U_imem.RAM[145]=32'h0D400067;
               xgriscv.U_imem.RAM[146]=32'h00000013;
               xgriscv.U_imem.RAM[147]=32'h00000013;
               xgriscv.U_imem.RAM[148]=32'h00000013;
               xgriscv.U_imem.RAM[149]=32'h00000013;
               xgriscv.U_imem.RAM[150]=32'h00128293;
               xgriscv.U_imem.RAM[151]=32'h00000013;
               xgriscv.U_imem.RAM[152]=32'h00000013;
               xgriscv.U_imem.RAM[153]=32'h00000013;
               xgriscv.U_imem.RAM[154]=32'h0E800067;
               xgriscv.U_imem.RAM[155]=32'h00000013;
               xgriscv.U_imem.RAM[156]=32'h00000013;
               xgriscv.U_imem.RAM[157]=32'h00000013;
               xgriscv.U_imem.RAM[158]=32'h00000013;
               xgriscv.U_imem.RAM[159]=32'h10C00067;
               xgriscv.U_imem.RAM[160]=32'h00000013;
                xgriscv.U_imem.RAM[161]=32'h00000013;
                 xgriscv.U_imem.RAM[162]=32'h00000013;
                  xgriscv.U_imem.RAM[163]=32'h00000013;
                   xgriscv.U_imem.RAM[164]=32'h00128293;
                    xgriscv.U_imem.RAM[165]=32'h00000013;
                     xgriscv.U_imem.RAM[166]=32'h00000013;
                      xgriscv.U_imem.RAM[167]=32'h00000013;
                       xgriscv.U_imem.RAM[168]=32'h12000067;
                        xgriscv.U_imem.RAM[169]=32'h00000013;
                          xgriscv.U_imem.RAM[170]=32'h00000013;
                           xgriscv.U_imem.RAM[171]=32'h00000013;
                            xgriscv.U_imem.RAM[172]=32'h00000013;
                             xgriscv.U_imem.RAM[173]=32'h00000013;
                              xgriscv.U_imem.RAM[174]=32'h14400067;
                               xgriscv.U_imem.RAM[175]=32'h00000013;
                                xgriscv.U_imem.RAM[176]=32'h00000013;
                                 xgriscv.U_imem.RAM[177]=32'h00000013;
                                  xgriscv.U_imem.RAM[178]=32'h00128293;
                                   xgriscv.U_imem.RAM[179]=32'h00000013;
                                    xgriscv.U_imem.RAM[180]=32'h00000013;
                                     xgriscv.U_imem.RAM[181]=32'h00000013;
                                      xgriscv.U_imem.RAM[182]=32'h15800067;
                                       xgriscv.U_imem.RAM[183]=32'h00000013;
                                        xgriscv.U_imem.RAM[184]=32'h00000013;
                                         xgriscv.U_imem.RAM[185]=32'h00000013;
                                          xgriscv.U_imem.RAM[186]=32'h00000013;
                                           xgriscv.U_imem.RAM[187]=32'h17C00067;
                                            xgriscv.U_imem.RAM[188]=32'h00000013;
                                             xgriscv.U_imem.RAM[189]=32'h00000013;
                                              xgriscv.U_imem.RAM[190]=32'h00000013;
                                               xgriscv.U_imem.RAM[191]=32'h00000013;
*/

    //  xgriscv.U_imem.RAM[0]=32'hF1F2F2B7; // lui 	x5, 0xF1F2F	
    //  xgriscv.U_imem.RAM[1]=32'h3F428293; // addi x6, x0, 0
    //  xgriscv.U_imem.RAM[2]=32'h00502223; // lui, x7, fff...  // set all higher 20 bits of x7 to 1
    //  xgriscv.U_imem.RAM[3]=32'h00402683; // nop
    //  xgriscv.U_imem.RAM[4]=32'h00000013; // nop
    //  xgriscv.U_imem.RAM[5]=32'h00000013; // nop
    //  xgriscv.U_imem.RAM[6]=32'h00000013; // beq x6, x0, 372  
    //  xgriscv.U_imem.RAM[7]=32'h00140413;
    //  xgriscv.U_imem.RAM[8]=32'h00138393;
    //  xgriscv.U_imem.RAM[9]=32'h00000067;
    //  xgriscv.U_imem.RAM[10]=32'h00140413;
    //  xgriscv.U_imem.RAM[11]=32'h70F36513;
    //  xgriscv.U_imem.RAM[12]=32'h70F37593;
    //  xgriscv.U_imem.RAM[13]=32'h40C35733;
    //  xgriscv.U_imem.RAM[14]=32'h00C297B3;
//      xgriscv.U_imem.RAM[15]=32'h00000013;
//      xgriscv.U_imem.RAM[16]=32'h00000013;
//      xgriscv.U_imem.RAM[17]=32'h00000013;
//      xgriscv.U_imem.RAM[18]=32'h00400383;
//      xgriscv.U_imem.RAM[19]=32'h00500403;
//      xgriscv.U_imem.RAM[20]=32'h00600483;
//      xgriscv.U_imem.RAM[21]=32'h00700503;
//      xgriscv.U_imem.RAM[22]=32'h00001583;
//      xgriscv.U_imem.RAM[23]=32'h00201603;
//      xgriscv.U_imem.RAM[24]=32'h00402683;
//        xgriscv.U_imem.RAM[25]=32'h00004703;
//        xgriscv.U_imem.RAM[26]=32'h00104783;
//        xgriscv.U_imem.RAM[27]=32'h00204803;
//        xgriscv.U_imem.RAM[28]=32'h00304883;
//        xgriscv.U_imem.RAM[29]=32'h00405903;
//        xgriscv.U_imem.RAM[29]=32'h00605983;

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
         $display("counter:\t%d, instr: \t%h", counter, xgriscv.instr);
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