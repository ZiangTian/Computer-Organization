-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Jun 25 16:13:47 2023
-- Host        : Benjamin running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.vhdl
-- Design      : ROM_D
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal ram_reg_0_255_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_0_0_n_0 : STD_LOGIC;
  signal ram_reg_0_255_10_10_n_0 : STD_LOGIC;
  signal ram_reg_0_255_11_11_n_0 : STD_LOGIC;
  signal ram_reg_0_255_12_12_n_0 : STD_LOGIC;
  signal ram_reg_0_255_13_13_n_0 : STD_LOGIC;
  signal ram_reg_0_255_14_14_n_0 : STD_LOGIC;
  signal ram_reg_0_255_15_15_n_0 : STD_LOGIC;
  signal ram_reg_0_255_16_16_n_0 : STD_LOGIC;
  signal ram_reg_0_255_17_17_n_0 : STD_LOGIC;
  signal ram_reg_0_255_18_18_n_0 : STD_LOGIC;
  signal ram_reg_0_255_19_19_n_0 : STD_LOGIC;
  signal ram_reg_0_255_1_1_n_0 : STD_LOGIC;
  signal ram_reg_0_255_20_20_n_0 : STD_LOGIC;
  signal ram_reg_0_255_21_21_n_0 : STD_LOGIC;
  signal ram_reg_0_255_22_22_n_0 : STD_LOGIC;
  signal ram_reg_0_255_23_23_n_0 : STD_LOGIC;
  signal ram_reg_0_255_24_24_n_0 : STD_LOGIC;
  signal ram_reg_0_255_25_25_n_0 : STD_LOGIC;
  signal ram_reg_0_255_26_26_n_0 : STD_LOGIC;
  signal ram_reg_0_255_27_27_n_0 : STD_LOGIC;
  signal ram_reg_0_255_28_28_n_0 : STD_LOGIC;
  signal ram_reg_0_255_29_29_n_0 : STD_LOGIC;
  signal ram_reg_0_255_2_2_n_0 : STD_LOGIC;
  signal ram_reg_0_255_30_30_n_0 : STD_LOGIC;
  signal ram_reg_0_255_31_31_n_0 : STD_LOGIC;
  signal ram_reg_0_255_3_3_n_0 : STD_LOGIC;
  signal ram_reg_0_255_4_4_n_0 : STD_LOGIC;
  signal ram_reg_0_255_5_5_n_0 : STD_LOGIC;
  signal ram_reg_0_255_6_6_n_0 : STD_LOGIC;
  signal ram_reg_0_255_7_7_n_0 : STD_LOGIC;
  signal ram_reg_0_255_8_8_n_0 : STD_LOGIC;
  signal ram_reg_0_255_9_9_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_0_0_n_0 : STD_LOGIC;
  signal ram_reg_256_511_10_10_n_0 : STD_LOGIC;
  signal ram_reg_256_511_11_11_n_0 : STD_LOGIC;
  signal ram_reg_256_511_12_12_n_0 : STD_LOGIC;
  signal ram_reg_256_511_13_13_n_0 : STD_LOGIC;
  signal ram_reg_256_511_14_14_n_0 : STD_LOGIC;
  signal ram_reg_256_511_15_15_n_0 : STD_LOGIC;
  signal ram_reg_256_511_16_16_n_0 : STD_LOGIC;
  signal ram_reg_256_511_17_17_n_0 : STD_LOGIC;
  signal ram_reg_256_511_18_18_n_0 : STD_LOGIC;
  signal ram_reg_256_511_19_19_n_0 : STD_LOGIC;
  signal ram_reg_256_511_1_1_n_0 : STD_LOGIC;
  signal ram_reg_256_511_20_20_n_0 : STD_LOGIC;
  signal ram_reg_256_511_21_21_n_0 : STD_LOGIC;
  signal ram_reg_256_511_22_22_n_0 : STD_LOGIC;
  signal ram_reg_256_511_23_23_n_0 : STD_LOGIC;
  signal ram_reg_256_511_24_24_n_0 : STD_LOGIC;
  signal ram_reg_256_511_25_25_n_0 : STD_LOGIC;
  signal ram_reg_256_511_26_26_n_0 : STD_LOGIC;
  signal ram_reg_256_511_27_27_n_0 : STD_LOGIC;
  signal ram_reg_256_511_28_28_n_0 : STD_LOGIC;
  signal ram_reg_256_511_29_29_n_0 : STD_LOGIC;
  signal ram_reg_256_511_2_2_n_0 : STD_LOGIC;
  signal ram_reg_256_511_30_30_n_0 : STD_LOGIC;
  signal ram_reg_256_511_31_31_n_0 : STD_LOGIC;
  signal ram_reg_256_511_3_3_n_0 : STD_LOGIC;
  signal ram_reg_256_511_4_4_n_0 : STD_LOGIC;
  signal ram_reg_256_511_5_5_n_0 : STD_LOGIC;
  signal ram_reg_256_511_6_6_n_0 : STD_LOGIC;
  signal ram_reg_256_511_7_7_n_0 : STD_LOGIC;
  signal ram_reg_256_511_8_8_n_0 : STD_LOGIC;
  signal ram_reg_256_511_9_9_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_0_0_n_0 : STD_LOGIC;
  signal ram_reg_512_767_10_10_n_0 : STD_LOGIC;
  signal ram_reg_512_767_11_11_n_0 : STD_LOGIC;
  signal ram_reg_512_767_12_12_n_0 : STD_LOGIC;
  signal ram_reg_512_767_13_13_n_0 : STD_LOGIC;
  signal ram_reg_512_767_14_14_n_0 : STD_LOGIC;
  signal ram_reg_512_767_15_15_n_0 : STD_LOGIC;
  signal ram_reg_512_767_16_16_n_0 : STD_LOGIC;
  signal ram_reg_512_767_17_17_n_0 : STD_LOGIC;
  signal ram_reg_512_767_18_18_n_0 : STD_LOGIC;
  signal ram_reg_512_767_19_19_n_0 : STD_LOGIC;
  signal ram_reg_512_767_1_1_n_0 : STD_LOGIC;
  signal ram_reg_512_767_20_20_n_0 : STD_LOGIC;
  signal ram_reg_512_767_21_21_n_0 : STD_LOGIC;
  signal ram_reg_512_767_22_22_n_0 : STD_LOGIC;
  signal ram_reg_512_767_23_23_n_0 : STD_LOGIC;
  signal ram_reg_512_767_24_24_n_0 : STD_LOGIC;
  signal ram_reg_512_767_25_25_n_0 : STD_LOGIC;
  signal ram_reg_512_767_26_26_n_0 : STD_LOGIC;
  signal ram_reg_512_767_27_27_n_0 : STD_LOGIC;
  signal ram_reg_512_767_28_28_n_0 : STD_LOGIC;
  signal ram_reg_512_767_29_29_n_0 : STD_LOGIC;
  signal ram_reg_512_767_2_2_n_0 : STD_LOGIC;
  signal ram_reg_512_767_30_30_n_0 : STD_LOGIC;
  signal ram_reg_512_767_31_31_n_0 : STD_LOGIC;
  signal ram_reg_512_767_3_3_n_0 : STD_LOGIC;
  signal ram_reg_512_767_4_4_n_0 : STD_LOGIC;
  signal ram_reg_512_767_5_5_n_0 : STD_LOGIC;
  signal ram_reg_512_767_6_6_n_0 : STD_LOGIC;
  signal ram_reg_512_767_7_7_n_0 : STD_LOGIC;
  signal ram_reg_512_767_8_8_n_0 : STD_LOGIC;
  signal ram_reg_512_767_9_9_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_i_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_0_0_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_10_10_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_11_11_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_12_12_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_13_13_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_14_14_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_15_15_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_16_16_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_17_17_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_18_18_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_19_19_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_1_1_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_20_20_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_21_21_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_22_22_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_23_23_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_24_24_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_25_25_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_26_26_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_27_27_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_28_28_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_29_29_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_2_2_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_30_30_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_31_31_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_3_3_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_4_4_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_5_5_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_6_6_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_7_7_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_8_8_n_0 : STD_LOGIC;
  signal ram_reg_768_1023_9_9_n_0 : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute KEEP of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute KEEP of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute KEEP of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute KEEP of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute KEEP of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute KEEP of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute KEEP of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute KEEP of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute KEEP of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute KEEP of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute KEEP of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute KEEP of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute KEEP of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_255_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_255_0_0 : label is 255;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_255_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_255_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_10_10 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_255_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_11_11 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_255_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_12_12 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_255_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_13_13 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_255_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_14_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_14_14 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_0_255_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_15_15 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_255_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_16_16 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_16_16 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_0_255_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_17_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_17_17 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_0_255_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_18_18 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_18_18 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_0_255_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_19_19 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_19_19 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_0_255_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_1_1 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_255_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_20_20 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_20_20 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_0_255_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_21_21 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_21_21 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_0_255_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_22_22 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_22_22 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_0_255_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_23_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_23_23 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_0_255_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_24_24 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_24_24 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_0_255_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_25_25 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_25_25 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_0_255_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_26_26 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_26_26 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_0_255_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_27_27 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_27_27 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_0_255_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_28_28 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_28_28 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_0_255_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_29_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_29_29 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_0_255_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_2_2 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_255_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_30_30 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_30_30 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_0_255_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_31_31 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_31_31 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_0_255_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_3_3 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_255_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_4_4 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_255_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_5_5 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_255_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_6_6 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_255_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_7_7 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_8_8 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_255_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_0_255_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_0_255_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_255_9_9 : label is 255;
  attribute ram_slice_begin of ram_reg_0_255_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_255_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_0_0 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_0_0 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_256_511_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_10_10 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_10_10 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_256_511_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_11_11 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_11_11 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_256_511_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_12_12 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_12_12 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_256_511_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_13_13 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_13_13 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_256_511_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_14_14 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_14_14 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_256_511_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_15_15 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_15_15 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_256_511_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_16_16 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_16_16 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_256_511_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_17_17 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_17_17 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_256_511_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_18_18 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_18_18 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_256_511_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_19_19 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_19_19 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_256_511_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_1_1 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_1_1 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_256_511_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_20_20 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_20_20 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_256_511_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_21_21 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_21_21 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_256_511_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_22_22 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_22_22 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_256_511_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_23_23 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_23_23 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_256_511_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_24_24 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_24_24 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_256_511_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_25_25 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_25_25 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_256_511_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_26_26 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_26_26 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_256_511_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_27_27 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_27_27 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_256_511_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_28_28 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_28_28 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_256_511_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_29_29 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_29_29 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_256_511_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_2_2 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_2_2 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_256_511_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_30_30 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_30_30 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_256_511_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_31_31 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_31_31 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_256_511_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_3_3 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_3_3 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_256_511_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_4_4 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_4_4 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_256_511_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_5_5 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_5_5 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_256_511_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_6_6 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_6_6 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_256_511_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_7_7 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_7_7 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_256_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_8_8 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_8_8 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_256_511_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_256_511_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_256_511_9_9 : label is 256;
  attribute ram_addr_end of ram_reg_256_511_9_9 : label is 511;
  attribute ram_slice_begin of ram_reg_256_511_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_256_511_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_0_0 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_0_0 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_512_767_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_10_10 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_10_10 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_512_767_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_11_11 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_11_11 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_512_767_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_12_12 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_12_12 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_512_767_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_13_13 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_13_13 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_512_767_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_14_14 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_14_14 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_512_767_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_15_15 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_15_15 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_512_767_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_16_16 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_16_16 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_512_767_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_17_17 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_17_17 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_512_767_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_18_18 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_18_18 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_512_767_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_19_19 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_19_19 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_512_767_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_1_1 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_1_1 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_512_767_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_20_20 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_20_20 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_512_767_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_21_21 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_21_21 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_512_767_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_22_22 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_22_22 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_512_767_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_23_23 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_23_23 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_512_767_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_24_24 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_24_24 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_512_767_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_25_25 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_25_25 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_512_767_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_26_26 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_26_26 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_512_767_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_27_27 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_27_27 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_512_767_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_28_28 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_28_28 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_512_767_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_29_29 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_29_29 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_512_767_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_2_2 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_2_2 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_512_767_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_30_30 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_30_30 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_512_767_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_31_31 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_31_31 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_512_767_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_3_3 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_3_3 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_512_767_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_4_4 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_4_4 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_512_767_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_5_5 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_5_5 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_512_767_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_6_6 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_6_6 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_512_767_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_7_7 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_7_7 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_512_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_8_8 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_8_8 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_512_767_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_512_767_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_512_767_9_9 : label is 512;
  attribute ram_addr_end of ram_reg_512_767_9_9 : label is 767;
  attribute ram_slice_begin of ram_reg_512_767_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_512_767_9_9 : label is 9;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_0_0 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_0_0 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_0_0 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_0_0 : label is 0;
  attribute ram_slice_end of ram_reg_768_1023_0_0 : label is 0;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_10_10 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_10_10 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_10_10 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_768_1023_10_10 : label is 10;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_11_11 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_11_11 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_11_11 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_768_1023_11_11 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_12_12 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_12_12 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_12_12 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_768_1023_12_12 : label is 12;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_13_13 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_13_13 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_13_13 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_768_1023_13_13 : label is 13;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_14_14 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_14_14 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_14_14 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_768_1023_14_14 : label is 14;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_15_15 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_15_15 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_15_15 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_768_1023_15_15 : label is 15;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_16_16 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_16_16 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_16_16 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_768_1023_16_16 : label is 16;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_17_17 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_17_17 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_17_17 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_768_1023_17_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_18_18 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_18_18 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_18_18 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_768_1023_18_18 : label is 18;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_19_19 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_19_19 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_19_19 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_768_1023_19_19 : label is 19;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_1_1 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_1_1 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_1_1 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_768_1023_1_1 : label is 1;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_20_20 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_20_20 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_20_20 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_768_1023_20_20 : label is 20;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_21_21 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_21_21 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_21_21 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_768_1023_21_21 : label is 21;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_22_22 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_22_22 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_22_22 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_768_1023_22_22 : label is 22;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_23_23 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_23_23 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_23_23 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_768_1023_23_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_24_24 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_24_24 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_24_24 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_768_1023_24_24 : label is 24;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_25_25 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_25_25 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_25_25 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_768_1023_25_25 : label is 25;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_26_26 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_26_26 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_26_26 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_768_1023_26_26 : label is 26;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_27_27 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_27_27 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_27_27 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_768_1023_27_27 : label is 27;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_28_28 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_28_28 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_28_28 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_768_1023_28_28 : label is 28;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_29_29 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_29_29 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_29_29 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_768_1023_29_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_2_2 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_2_2 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_2_2 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_768_1023_2_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_30_30 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_30_30 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_30_30 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_768_1023_30_30 : label is 30;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_31_31 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_31_31 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_31_31 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_768_1023_31_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_3_3 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_3_3 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_3_3 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_768_1023_3_3 : label is 3;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_4_4 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_4_4 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_4_4 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_768_1023_4_4 : label is 4;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_5_5 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_5_5 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_5_5 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_768_1023_5_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_6_6 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_6_6 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_6_6 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_768_1023_6_6 : label is 6;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_7_7 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_7_7 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_7_7 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_768_1023_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_8_8 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_8_8 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_8_8 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_768_1023_8_8 : label is 8;
  attribute METHODOLOGY_DRC_VIOS of ram_reg_768_1023_9_9 : label is "{SYNTH-5 {cell *THIS*}}";
  attribute ram_addr_begin of ram_reg_768_1023_9_9 : label is 768;
  attribute ram_addr_end of ram_reg_768_1023_9_9 : label is 1023;
  attribute ram_slice_begin of ram_reg_768_1023_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_768_1023_9_9 : label is 9;
begin
  spo(31 downto 0) <= \^spo\(31 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(10),
      Q => qspo_int(10),
      R => '0'
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(11),
      Q => qspo_int(11),
      R => '0'
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(12),
      Q => qspo_int(12),
      R => '0'
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(13),
      Q => qspo_int(13),
      R => '0'
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(14),
      Q => qspo_int(14),
      R => '0'
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(15),
      Q => qspo_int(15),
      R => '0'
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(16),
      Q => qspo_int(16),
      R => '0'
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(17),
      Q => qspo_int(17),
      R => '0'
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(18),
      Q => qspo_int(18),
      R => '0'
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(19),
      Q => qspo_int(19),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(20),
      Q => qspo_int(20),
      R => '0'
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(21),
      Q => qspo_int(21),
      R => '0'
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(22),
      Q => qspo_int(22),
      R => '0'
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(23),
      Q => qspo_int(23),
      R => '0'
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(24),
      Q => qspo_int(24),
      R => '0'
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(25),
      Q => qspo_int(25),
      R => '0'
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(26),
      Q => qspo_int(26),
      R => '0'
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(27),
      Q => qspo_int(27),
      R => '0'
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(28),
      Q => qspo_int(28),
      R => '0'
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(29),
      Q => qspo_int(29),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(30),
      Q => qspo_int(30),
      R => '0'
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(31),
      Q => qspo_int(31),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(8),
      Q => qspo_int(8),
      R => '0'
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(9),
      Q => qspo_int(9),
      R => '0'
    );
ram_reg_0_255_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_0_255_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"C0B9A60992B70BDDFDBDF1EF7C1B6F3FF3CD7BE47B6DB6DB6DB68B311DF8B00E"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_0_255_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"071411D78140020000000000002000000000000BC4924924924970F020080000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_0_255_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0012490004B0C22A001000E0AE2D2414A0307BA0424924924924000020800000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_0_255_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"47C2480F8480CCC6006AB291024CB10045B6AD2000000000000007F11568C006"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_0_255_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0012490004A0C082002000EA7A0D0014C130AD20000000000000000000800000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_0_255_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"101A6C003CF2E11E023104EA431D685EC13EB5C85A4924924924000428822000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_0_255_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"6FD3F86FD7F3DF32007B3BFFFEF65DBFF53E63A05000000000000FFB289DE00F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(16),
      O => ram_reg_0_255_16_16_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"002648000510C332007B81EC721D781FC53E7BC9500000000000000028802000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(17),
      O => ram_reg_0_255_17_17_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000ADC6017F3C336027B03FDFE37583F753E63805A492492492400003DE02000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(18),
      O => ram_reg_0_255_18_18_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"003768000400C00A000000000204200080301869000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(19),
      O => ram_reg_0_255_19_19_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_0_255_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"401A6E1586B0C232EF423390B23ED535A432DEEA3679EFBEFBA7455009800402"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(20),
      O => ram_reg_0_255_20_20_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0004050602000238EA62839CD823B02B7500DEA24759B49FD9B4418019200000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(21),
      O => ram_reg_0_255_21_21_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"05420C0802008662EA560398D263903F0580C602477D249F6D2446011D404040"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(22),
      O => ram_reg_0_255_22_22_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"04D62D0106008E69FEC22398D066B02AD510E702477DFED2492440611D68C3A4"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(23),
      O => ram_reg_0_255_23_23_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"23C2040E00089010500008E4029A0081803029222410400492484781080104C9"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(24),
      O => ram_reg_0_255_24_24_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"280205004502403A15000880021E608080380002041049049240480A3D740801"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(25),
      O => ram_reg_0_255_25_25_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"20124C204500000251000884020A00800030000204100004800040083D640D81"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(26),
      O => ram_reg_0_255_26_26_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"20104C004500C00000000880000660818020000204100000000040083D6404C1"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(27),
      O => ram_reg_0_255_27_27_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"20124C004500000200000804021408808048000000000000000000083D640481"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(28),
      O => ram_reg_0_255_28_28_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A0124C004500C11A00014804021462818271000000000000000000083D6402E1"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(29),
      O => ram_reg_0_255_29_29_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"900248002C08E08A0000C402030D26408A750000000000000000000400020FE0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_0_255_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A0126C004520C01A000049242216028D8271000000000000000000083DE40311"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(30),
      O => ram_reg_0_255_30_30_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A0124C004500C00200004804020662818271000000000000000000083D640001"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(31),
      O => ram_reg_0_255_31_31_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000248000408C002000000000204000008300000000000000000000000000FE0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_0_255_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A82DB6D052B5119955B5C9EE709B6EBFF34DFFFFBDB6DB6DB6DBF80ACA953019"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_0_255_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"D016692FAF4AE2AAAA42F71AD32DB76ACF77CE2042492492492407F4312A0FE6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_0_255_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"101249202D4AE222000004000324004008300000424924924924000420020FE0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_0_255_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"02DACA400131CD9ADDB981C95A5C6C0A6195F7DE1DB692492493C00024C05FE0"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_0_255_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"AB21B44052B511DDF53DC9EFFC9B6EBFF3CD7BE32DB6924DB6DA500A0CC53011"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_0_255_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_0_255_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"C404019A80D301FC553DD3EF7C18EF0FE3C57BE8A924DB69249325503DE81002"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_0_255_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_0_255_0_0_i_1_n_0
    );
ram_reg_256_511_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_256_511_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(9),
      I1 => a(8),
      I2 => we,
      O => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"77EF6F25E035FFFDFFF4CC07FB5EF0813F0BF037BA965965D6042F7998DD057B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_256_511_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"801140FC8DF80000001BC00A040000FE4074084840C10410017BE00780280800"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_256_511_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"300701000008C0108500018A0408440050B23E3AB228A28A2820040001508A21"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_256_511_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"4208010001F315832807FD90003514FF809115111228A28A28281A8FF90092D5"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_256_511_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"60CC01480001AA017A800180E01044001FBBBFBBBA28A28A2820082001308240"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_256_511_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"45A80FC85401EA01AD0801CAE59886003F8D6C15C638E3AE3A700C40034CC262"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_256_511_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"772F29881BFEFFFF7BFFFFB805BDDDFFFEBE956B4C6FB6FBED601ECFFDFCBAF7"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(16),
      O => ram_reg_256_511_16_16_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"47E924581E0FFFFBAD40018AE43D84003EF287E0343AEB8E38701EC0012C82F7"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(17),
      O => ram_reg_256_511_17_17_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"77EF2A00620FFFFFFFC8018AE5BDC4007F816C1487EDB6DB6E201EE001FC8AF6"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(18),
      O => ram_reg_256_511_18_18_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"821001987FF00060004001800000040010FE97EB79BAEBAEB970000001008200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(19),
      O => ram_reg_256_511_19_19_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_256_511_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F59F6B28000AEA033A055580E2F1540072D225966AEBAEBAEA70108559758BC5"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(20),
      O => ram_reg_256_511_20_20_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"A05500E4000880025001980FFE6100007B6AEB7350C104104034908660F50CC5"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(21),
      O => ram_reg_256_511_21_21_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"554B11D200A7AA9F2801E09AE43B40AAFC05180D90EBAEBAEB747DA780D79BAC"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(22),
      O => ram_reg_256_511_22_22_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"E50D0D1000CBAE13A906059AE4210099D090048028A0220220A5908811F79C84"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(23),
      O => ram_reg_256_511_23_23_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"28B5989A010080800507FBA408000D781F2BBF3B90CB0E3ACA73400FE405A200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(24),
      O => ram_reg_256_511_24_24_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"080007480000018000003D840C000D07F000040000A8008A0064A00079240400"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(25),
      O => ram_reg_256_511_25_25_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00010198020A00100027FC04080008003000038004A800002865200005240200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(26),
      O => ram_reg_256_511_26_26_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00009FD8000800100000020000000C003000000001A8000000A6000005248000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(27),
      O => ram_reg_256_511_27_27_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000E80020800300007FD8000008C0010B00780008882082032000005248202"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(28),
      O => ram_reg_256_511_28_28_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000300000800100000038110002C0010B0078000A0A28A2832001005240202"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(29),
      O => ram_reg_256_511_29_29_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0800954800000000000001C000006600108004000028A28A28A800300302C201"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_256_511_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000055000080010000002000000A80010B0078000A8A28A2870405005B48200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(30),
      O => ram_reg_256_511_30_30_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000A58000800100000038000002C0010B0078000A8A28A2860001005248200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(31),
      O => ram_reg_256_511_31_31_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"08009000000000000000018000000400008004000028A28A2880000001028200"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_256_511_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"F5FE6FFFFE05EA6DAD780225FBDAE9003F44404442D75D75D77FED7004D5256B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_256_511_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"CDF99548000B2A132807FDCAE52176005FBBBFBBBD6BAEBAEAA810BFFBFACA85"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_256_511_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0801900000080010000001CA0400060040BBBFBBBD28A28A28800000032ACA00"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_256_511_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"77EE0FE60B597FB1FF800190F95CC455B7344384423CF7CF7C7D0E6000259673"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_256_511_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"552A2CE152C42AED29D80225535EE9663F04004042565D7597634F7004D5257B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_256_511_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_256_511_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"77EF603FB3C5FFD9FFF5540FFF1EF078375890D01E4100000078CF7AA875047B"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_256_511_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_256_511_0_0_i_1_n_0
    );
ram_reg_512_767_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_512_767_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => a(8),
      I1 => a(9),
      I2 => we,
      O => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000036F787FFDEFC7D7FDBF181295BEEFDED0F7F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_512_767_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000040000000042010092401FED50410023E5480"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_512_767_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000045A400377A402240041000000260700C00190"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_512_767_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000499AA8ECC6002A00B2DB1FFAAAF4941100212"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_512_767_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000040A8206EEA002A402480000002F0D199002B8"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_512_767_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000628C421C127031A069B4400447AA9B5119275"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_512_767_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000005EDECDFFFFFEB7F3DB7FBFFBEF5EFE5E96C4F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(16),
      O => ram_reg_512_767_16_16_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000439EE01DD2703CB06DA4000547FE9FD3FE7FF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(17),
      O => ram_reg_512_767_17_17_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000046FEE07FFA703FF04936000017AEFFDFFAFF7"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(18),
      O => ram_reg_512_767_18_18_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000040800000020020000090000FFA05142163402"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(19),
      O => ram_reg_512_767_19_19_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_512_767_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000004B08864C22EBB94B6ED000CCF58FB3CE206C"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(20),
      O => ram_reg_512_767_20_20_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000738A06CC04A83B09FC800039800408902180"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(21),
      O => ram_reg_512_767_21_21_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000C1DA0ECC4CABBF0BB5A155BC929BA95A2554"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(22),
      O => ram_reg_512_767_22_22_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000C5080FFDCCE9BADB3F813307F28DA3980154"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(23),
      O => ram_reg_512_767_23_23_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000524005246A08049D6912AF0EA4D3514880329"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(24),
      O => ram_reg_512_767_24_24_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000002E005A44344AC86691320F002000001A0000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(25),
      O => ram_reg_512_767_25_25_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000001C005A4424B289049133FF00200000120000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(26),
      O => ram_reg_512_767_26_26_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000438004244240688041B080000000100202000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(27),
      O => ram_reg_512_767_27_27_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000432004000040688044A4BFF00200100320000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(28),
      O => ram_reg_512_767_28_28_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000043C0540000406880003680000200100320000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(29),
      O => ram_reg_512_767_29_29_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000061A0320002002008249240000200100000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_512_767_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000043C0540002406880291280000200100320000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(30),
      O => ram_reg_512_767_30_30_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000428014000240688021B080000200100320000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(31),
      O => ram_reg_512_767_31_31_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000004080000002002008000000000200100000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_512_767_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000136D757FF9AD46D76DB6A00555FBEBFC5DFFD"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_512_767_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000065B0BA488252B928B6DB400FFFFB9BF3A227D"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_512_767_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"00000000000000000000000000064800200024029080000400002001003A2000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_512_767_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000004B8E609E1AE75CA36DB6155445BEEFDF2437F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_512_767_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000136F757FFDAF52F36DB6A661450AAA5418445"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_512_767_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_512_767_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"000000000000000000000000000030F781FF82F5EB6EFBF078765BEEFDE4AF7F"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_512_767_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_512_767_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(0),
      O => ram_reg_768_1023_0_0_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_0_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => we,
      I1 => a(8),
      I2 => a(9),
      O => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_10_10: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(10),
      O => ram_reg_768_1023_10_10_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_11_11: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(11),
      O => ram_reg_768_1023_11_11_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_12_12: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(12),
      O => ram_reg_768_1023_12_12_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_13_13: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(13),
      O => ram_reg_768_1023_13_13_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_14_14: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(14),
      O => ram_reg_768_1023_14_14_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_15_15: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(15),
      O => ram_reg_768_1023_15_15_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_16_16: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(16),
      O => ram_reg_768_1023_16_16_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_17_17: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(17),
      O => ram_reg_768_1023_17_17_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_18_18: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(18),
      O => ram_reg_768_1023_18_18_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_19_19: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(19),
      O => ram_reg_768_1023_19_19_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_1_1: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(1),
      O => ram_reg_768_1023_1_1_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_20_20: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(20),
      O => ram_reg_768_1023_20_20_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_21_21: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(21),
      O => ram_reg_768_1023_21_21_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_22_22: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(22),
      O => ram_reg_768_1023_22_22_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_23_23: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(23),
      O => ram_reg_768_1023_23_23_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_24_24: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(24),
      O => ram_reg_768_1023_24_24_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_25_25: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(25),
      O => ram_reg_768_1023_25_25_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_26_26: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(26),
      O => ram_reg_768_1023_26_26_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_27_27: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(27),
      O => ram_reg_768_1023_27_27_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_28_28: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(28),
      O => ram_reg_768_1023_28_28_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_29_29: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(29),
      O => ram_reg_768_1023_29_29_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_2_2: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(2),
      O => ram_reg_768_1023_2_2_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_30_30: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(30),
      O => ram_reg_768_1023_30_30_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_31_31: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(31),
      O => ram_reg_768_1023_31_31_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_3_3: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(3),
      O => ram_reg_768_1023_3_3_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_4_4: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(4),
      O => ram_reg_768_1023_4_4_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_5_5: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(5),
      O => ram_reg_768_1023_5_5_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_6_6: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(6),
      O => ram_reg_768_1023_6_6_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_7_7: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(7),
      O => ram_reg_768_1023_7_7_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_8_8: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(8),
      O => ram_reg_768_1023_8_8_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
ram_reg_768_1023_9_9: unisim.vcomponents.RAM256X1S
    generic map(
      INIT => X"0000000000000000000000000000000000000000000000000000000000000000"
    )
        port map (
      A(7 downto 0) => a(7 downto 0),
      D => d(9),
      O => ram_reg_768_1023_9_9_n_0,
      WCLK => clk,
      WE => ram_reg_768_1023_0_0_i_1_n_0
    );
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_0_0_n_0,
      I1 => ram_reg_512_767_0_0_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_0_0_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_0_0_n_0,
      O => \^spo\(0)
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_10_10_n_0,
      I1 => ram_reg_512_767_10_10_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_10_10_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_10_10_n_0,
      O => \^spo\(10)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_11_11_n_0,
      I1 => ram_reg_512_767_11_11_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_11_11_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_11_11_n_0,
      O => \^spo\(11)
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_12_12_n_0,
      I1 => ram_reg_512_767_12_12_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_12_12_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_12_12_n_0,
      O => \^spo\(12)
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_13_13_n_0,
      I1 => ram_reg_512_767_13_13_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_13_13_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_13_13_n_0,
      O => \^spo\(13)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_14_14_n_0,
      I1 => ram_reg_512_767_14_14_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_14_14_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_14_14_n_0,
      O => \^spo\(14)
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_15_15_n_0,
      I1 => ram_reg_512_767_15_15_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_15_15_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_15_15_n_0,
      O => \^spo\(15)
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_16_16_n_0,
      I1 => ram_reg_512_767_16_16_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_16_16_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_16_16_n_0,
      O => \^spo\(16)
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_17_17_n_0,
      I1 => ram_reg_512_767_17_17_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_17_17_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_17_17_n_0,
      O => \^spo\(17)
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_18_18_n_0,
      I1 => ram_reg_512_767_18_18_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_18_18_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_18_18_n_0,
      O => \^spo\(18)
    );
\spo[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_19_19_n_0,
      I1 => ram_reg_512_767_19_19_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_19_19_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_19_19_n_0,
      O => \^spo\(19)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_1_1_n_0,
      I1 => ram_reg_512_767_1_1_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_1_1_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_1_1_n_0,
      O => \^spo\(1)
    );
\spo[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_20_20_n_0,
      I1 => ram_reg_512_767_20_20_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_20_20_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_20_20_n_0,
      O => \^spo\(20)
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_21_21_n_0,
      I1 => ram_reg_512_767_21_21_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_21_21_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_21_21_n_0,
      O => \^spo\(21)
    );
\spo[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_22_22_n_0,
      I1 => ram_reg_512_767_22_22_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_22_22_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_22_22_n_0,
      O => \^spo\(22)
    );
\spo[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_23_23_n_0,
      I1 => ram_reg_512_767_23_23_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_23_23_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_23_23_n_0,
      O => \^spo\(23)
    );
\spo[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_24_24_n_0,
      I1 => ram_reg_512_767_24_24_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_24_24_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_24_24_n_0,
      O => \^spo\(24)
    );
\spo[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_25_25_n_0,
      I1 => ram_reg_512_767_25_25_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_25_25_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_25_25_n_0,
      O => \^spo\(25)
    );
\spo[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_26_26_n_0,
      I1 => ram_reg_512_767_26_26_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_26_26_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_26_26_n_0,
      O => \^spo\(26)
    );
\spo[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_27_27_n_0,
      I1 => ram_reg_512_767_27_27_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_27_27_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_27_27_n_0,
      O => \^spo\(27)
    );
\spo[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_28_28_n_0,
      I1 => ram_reg_512_767_28_28_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_28_28_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_28_28_n_0,
      O => \^spo\(28)
    );
\spo[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_29_29_n_0,
      I1 => ram_reg_512_767_29_29_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_29_29_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_29_29_n_0,
      O => \^spo\(29)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_2_2_n_0,
      I1 => ram_reg_512_767_2_2_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_2_2_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_2_2_n_0,
      O => \^spo\(2)
    );
\spo[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_30_30_n_0,
      I1 => ram_reg_512_767_30_30_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_30_30_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_30_30_n_0,
      O => \^spo\(30)
    );
\spo[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_31_31_n_0,
      I1 => ram_reg_512_767_31_31_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_31_31_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_31_31_n_0,
      O => \^spo\(31)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_3_3_n_0,
      I1 => ram_reg_512_767_3_3_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_3_3_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_3_3_n_0,
      O => \^spo\(3)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_4_4_n_0,
      I1 => ram_reg_512_767_4_4_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_4_4_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_4_4_n_0,
      O => \^spo\(4)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_5_5_n_0,
      I1 => ram_reg_512_767_5_5_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_5_5_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_5_5_n_0,
      O => \^spo\(5)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_6_6_n_0,
      I1 => ram_reg_512_767_6_6_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_6_6_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_6_6_n_0,
      O => \^spo\(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_7_7_n_0,
      I1 => ram_reg_512_767_7_7_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_7_7_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_7_7_n_0,
      O => \^spo\(7)
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_8_8_n_0,
      I1 => ram_reg_512_767_8_8_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_8_8_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_8_8_n_0,
      O => \^spo\(8)
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ram_reg_768_1023_9_9_n_0,
      I1 => ram_reg_512_767_9_9_n_0,
      I2 => a(9),
      I3 => ram_reg_256_511_9_9_n_0,
      I4 => a(8),
      I5 => ram_reg_0_255_9_9_n_0,
      O => \^spo\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    we : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth is
begin
\gen_sp_ram.spram_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 10;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1024;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is "ROM_D.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12_synth
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 9 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ROM_D,dist_mem_gen_v8_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_12,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 10;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 1024;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "ROM_D.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_12
     port map (
      a(9 downto 0) => a(9 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(9 downto 0) => B"0000000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;