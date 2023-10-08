-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Oct  8 10:08:39 2023
-- Host        : LAPTOP-SSK6ALTK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/R9000X/Desktop/jiekou_lab/lab1/RVfpga_Soc/RVfpga_Soc.gen/sources_1/bd/swerv_soc/ip/swerv_soc_bootrom_wrapper_0_0/swerv_soc_bootrom_wrapper_0_0_stub.vhdl
-- Design      : swerv_soc_bootrom_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity swerv_soc_bootrom_wrapper_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_wb_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_wb_dat : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_wb_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_wb_we : in STD_LOGIC;
    i_wb_cyc : in STD_LOGIC;
    i_wb_stb : in STD_LOGIC;
    o_wb_ack : out STD_LOGIC;
    o_wb_rdt : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end swerv_soc_bootrom_wrapper_0_0;

architecture stub of swerv_soc_bootrom_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rst,i_wb_adr[31:0],i_wb_dat[31:0],i_wb_sel[3:0],i_wb_we,i_wb_cyc,i_wb_stb,o_wb_ack,o_wb_rdt[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bootrom_wrapper,Vivado 2020.2";
begin
end;
