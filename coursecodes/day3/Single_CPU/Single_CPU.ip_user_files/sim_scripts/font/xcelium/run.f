-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../Single_CPU.srcs/sources_1/ip/font/sim/font.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

