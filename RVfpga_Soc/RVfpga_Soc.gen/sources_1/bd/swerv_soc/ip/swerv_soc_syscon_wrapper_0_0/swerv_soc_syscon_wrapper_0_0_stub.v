// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Oct  9 17:38:02 2023
// Host        : LAPTOP-SSK6ALTK running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/R9000X/Desktop/jiekou_lab/lab2/RVfpga_Soc/RVfpga_Soc.gen/sources_1/bd/swerv_soc/ip/swerv_soc_syscon_wrapper_0_0/swerv_soc_syscon_wrapper_0_0_stub.v
// Design      : swerv_soc_syscon_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "syscon_wrapper,Vivado 2020.2" *)
module swerv_soc_syscon_wrapper_0_0(i_clk, i_rst, gpio_irq, ptc_irq, o_timer_irq, 
  i_ram_init_done, i_ram_init_error, o_nmi_vec, o_nmi_int, i_wb_adr, i_wb_dat, i_wb_sel, i_wb_we, 
  i_wb_cyc, i_wb_stb, o_wb_rdt, o_wb_ack, AN, Digits_Bits)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_rst,gpio_irq,ptc_irq,o_timer_irq,i_ram_init_done,i_ram_init_error,o_nmi_vec[31:0],o_nmi_int,i_wb_adr[31:0],i_wb_dat[31:0],i_wb_sel[3:0],i_wb_we,i_wb_cyc,i_wb_stb,o_wb_rdt[31:0],o_wb_ack,AN[7:0],Digits_Bits[6:0]" */;
  input i_clk;
  input i_rst;
  input gpio_irq;
  input ptc_irq;
  output o_timer_irq;
  input i_ram_init_done;
  input i_ram_init_error;
  output [31:0]o_nmi_vec;
  output o_nmi_int;
  input [31:0]i_wb_adr;
  input [31:0]i_wb_dat;
  input [3:0]i_wb_sel;
  input i_wb_we;
  input i_wb_cyc;
  input i_wb_stb;
  output [31:0]o_wb_rdt;
  output o_wb_ack;
  output [7:0]AN;
  output [6:0]Digits_Bits;
endmodule
