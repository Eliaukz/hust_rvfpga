-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Oct  8 10:08:42 2023
-- Host        : LAPTOP-SSK6ALTK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ swerv_soc_wb_gpio_wrapper_0_0_stub.vhdl
-- Design      : swerv_soc_wb_gpio_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    wb_clk_i : in STD_LOGIC;
    wb_rst_i : in STD_LOGIC;
    wb_cyc_i : in STD_LOGIC;
    wb_adr_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wb_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sel_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_we_i : in STD_LOGIC;
    wb_stb_i : in STD_LOGIC;
    wb_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ack_o : out STD_LOGIC;
    wb_err_o : out STD_LOGIC;
    wb_inta_o : out STD_LOGIC;
    bidir : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "wb_clk_i,wb_rst_i,wb_cyc_i,wb_adr_i[7:0],wb_dat_i[31:0],wb_sel_i[3:0],wb_we_i,wb_stb_i,wb_dat_o[31:0],wb_ack_o,wb_err_o,wb_inta_o,bidir[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "wb_gpio_wrapper,Vivado 2020.2";
begin
end;
