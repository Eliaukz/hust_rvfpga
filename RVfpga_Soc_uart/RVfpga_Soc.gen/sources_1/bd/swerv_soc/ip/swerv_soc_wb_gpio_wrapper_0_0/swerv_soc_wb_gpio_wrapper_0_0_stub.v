// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Oct  8 10:08:43 2023
// Host        : LAPTOP-SSK6ALTK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/R9000X/Desktop/jiekou_lab/lab1/RVfpga_Soc/RVfpga_Soc.gen/sources_1/bd/swerv_soc/ip/swerv_soc_wb_gpio_wrapper_0_0/swerv_soc_wb_gpio_wrapper_0_0_stub.v
// Design      : swerv_soc_wb_gpio_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "wb_gpio_wrapper,Vivado 2020.2" *)
module swerv_soc_wb_gpio_wrapper_0_0(wb_clk_i, wb_rst_i, wb_cyc_i, wb_adr_i, wb_dat_i, 
  wb_sel_i, wb_we_i, wb_stb_i, wb_dat_o, wb_ack_o, wb_err_o, wb_inta_o, bidir)
/* synthesis syn_black_box black_box_pad_pin="wb_clk_i,wb_rst_i,wb_cyc_i,wb_adr_i[7:0],wb_dat_i[31:0],wb_sel_i[3:0],wb_we_i,wb_stb_i,wb_dat_o[31:0],wb_ack_o,wb_err_o,wb_inta_o,bidir[31:0]" */;
  input wb_clk_i;
  input wb_rst_i;
  input wb_cyc_i;
  input [7:0]wb_adr_i;
  input [31:0]wb_dat_i;
  input [3:0]wb_sel_i;
  input wb_we_i;
  input wb_stb_i;
  output [31:0]wb_dat_o;
  output wb_ack_o;
  output wb_err_o;
  output wb_inta_o;
  output [31:0]bidir;
endmodule
