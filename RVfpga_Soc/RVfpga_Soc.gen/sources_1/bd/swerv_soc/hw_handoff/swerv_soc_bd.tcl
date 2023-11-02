
################################################################
# This is a generated script based on design: swerv_soc
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source swerv_soc_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# bootrom_wrapper, ptc_wrapper, syscon_wrapper, wb_spi_wrapper, wb_uart_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name swerv_soc

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2030 -severity "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_gid_msg -ssname BD::TCL -id 2031 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_gid_msg -ssname BD::TCL -id 2032 -severity "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2033 -severity "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2034 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2035 -severity "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_gid_msg -ssname BD::TCL -id 2036 -severity "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_gid_msg -ssname BD::TCL -id 2037 -severity "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_gid_msg -ssname BD::TCL -id 2038 -severity "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 ram ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {32} \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.PROTOCOL {AXI4} \
   ] $ram

  set temp_sensor [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 temp_sensor ]


  # Create ports
  set AN_0 [ create_bd_port -dir O -from 7 -to 0 AN_0 ]
  set Digits_Bits_0 [ create_bd_port -dir O -from 6 -to 0 Digits_Bits_0 ]
  set PWMs [ create_bd_port -dir O -from 1 -to 0 PWMs ]
  set bidir [ create_bd_port -dir O -from 31 -to 0 bidir ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set dmi_hard_reset_0 [ create_bd_port -dir I -type rst dmi_hard_reset_0 ]
  set dmi_reg_addr_0 [ create_bd_port -dir I -from 6 -to 0 dmi_reg_addr_0 ]
  set dmi_reg_en_0 [ create_bd_port -dir I dmi_reg_en_0 ]
  set dmi_reg_rdata_0 [ create_bd_port -dir O -from 31 -to 0 dmi_reg_rdata_0 ]
  set dmi_reg_wdata_0 [ create_bd_port -dir I -from 31 -to 0 dmi_reg_wdata_0 ]
  set dmi_reg_wr_en_0 [ create_bd_port -dir I dmi_reg_wr_en_0 ]
  set i_accel_miso_0 [ create_bd_port -dir I i_accel_miso_0 ]
  set i_ram_init_done_0 [ create_bd_port -dir I i_ram_init_done_0 ]
  set i_ram_init_error_0 [ create_bd_port -dir I i_ram_init_error_0 ]
  set i_sw [ create_bd_port -dir I -from 15 -to 0 i_sw ]
  set i_uart_rx [ create_bd_port -dir I i_uart_rx ]
  set o_accel_cs_n_0 [ create_bd_port -dir O o_accel_cs_n_0 ]
  set o_accel_mosi_0 [ create_bd_port -dir O o_accel_mosi_0 ]
  set o_accel_sclk_0 [ create_bd_port -dir O o_accel_sclk_0 ]
  set o_led [ create_bd_port -dir O -from 15 -to 0 o_led ]
  set o_uart_tx [ create_bd_port -dir O o_uart_tx ]
  set rst_0 [ create_bd_port -dir I -type rst rst_0 ]
  set temp_sensor [ create_bd_port -dir IO -type data temp_sensor ]

  # Create instance: PWM_w_Int_0, and set properties
  set PWM_w_Int_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:PWM_w_Int:1.0 PWM_w_Int_0 ]

  # Create instance: axi2wb_intcon_wrapper_0, and set properties
  set axi2wb_intcon_wrapper_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:axi2wb_intcon_wrapper:1.0 axi2wb_intcon_wrapper_0 ]

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {16} \
   CONFIG.C_GPIO_WIDTH {16} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.IIC_BOARD_INTERFACE {temp_sensor} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_0

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {3} \
 ] $axi_interconnect_0

  # Create instance: bootrom_wrapper_0, and set properties
  set block_name bootrom_wrapper
  set block_cell_name bootrom_wrapper_0
  if { [catch {set bootrom_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $bootrom_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ptc_wrapper_0, and set properties
  set block_name ptc_wrapper
  set block_cell_name ptc_wrapper_0
  if { [catch {set ptc_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ptc_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: swerv_wrapper_verilog_0, and set properties
  set swerv_wrapper_verilog_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:swerv_wrapper_verilog:1.0 swerv_wrapper_verilog_0 ]

  # Create instance: syscon_wrapper_0, and set properties
  set block_name syscon_wrapper
  set block_cell_name syscon_wrapper_0
  if { [catch {set syscon_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $syscon_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wb_gpio_wrapper_0, and set properties
  set wb_gpio_wrapper_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:wb_gpio_wrapper:1.0 wb_gpio_wrapper_0 ]

  # Create instance: wb_spi_wrapper_0, and set properties
  set block_name wb_spi_wrapper
  set block_cell_name wb_spi_wrapper_0
  if { [catch {set wb_spi_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wb_spi_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: wb_uart_wrapper_0, and set properties
  set block_name wb_uart_wrapper
  set block_cell_name wb_uart_wrapper_0
  if { [catch {set wb_uart_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wb_uart_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {8} \
 ] $xlconcat_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi2wb_intcon_wrapper_0/o_user_axi4] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi2wb_intcon_wrapper_0_o_ram_axi4 [get_bd_intf_ports ram] [get_bd_intf_pins axi2wb_intcon_wrapper_0/o_ram_axi4]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports temp_sensor] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins PWM_w_Int_0/S00_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net swerv_wrapper_verilog_0_ifu_axi [get_bd_intf_pins axi2wb_intcon_wrapper_0/i_ifu_axi4] [get_bd_intf_pins swerv_wrapper_verilog_0/ifu_axi]
  connect_bd_intf_net -intf_net swerv_wrapper_verilog_0_lsu_axi [get_bd_intf_pins axi2wb_intcon_wrapper_0/i_lsu_axi4] [get_bd_intf_pins swerv_wrapper_verilog_0/lsu_axi]
  connect_bd_intf_net -intf_net swerv_wrapper_verilog_0_sb_axi [get_bd_intf_pins axi2wb_intcon_wrapper_0/i_sb_axi4] [get_bd_intf_pins swerv_wrapper_verilog_0/sb_axi]

  # Create port connections
  connect_bd_net -net PWM_w_Int_0_Interrupt_out [get_bd_pins PWM_w_Int_0/Interrupt_out] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net PWM_w_Int_0_LEDs [get_bd_ports PWMs] [get_bd_pins PWM_w_Int_0/LEDs]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_adr_o] [get_bd_pins wb_gpio_wrapper_0/wb_adr_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_cyc_o] [get_bd_pins wb_gpio_wrapper_0/wb_cyc_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_dat_o] [get_bd_pins wb_gpio_wrapper_0/wb_dat_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_sel_o] [get_bd_pins wb_gpio_wrapper_0/wb_sel_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_stb_o] [get_bd_pins wb_gpio_wrapper_0/wb_stb_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_gpio_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_we_o] [get_bd_pins wb_gpio_wrapper_0/wb_we_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_adr_o] [get_bd_pins ptc_wrapper_0/wb_adr_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_cyc_o] [get_bd_pins ptc_wrapper_0/wb_cyc_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_dat_o] [get_bd_pins ptc_wrapper_0/wb_dat_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_sel_o] [get_bd_pins ptc_wrapper_0/wb_sel_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_stb_o] [get_bd_pins ptc_wrapper_0/wb_stb_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_ptc_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_we_o] [get_bd_pins ptc_wrapper_0/wb_we_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_adr_o] [get_bd_pins bootrom_wrapper_0/i_wb_adr]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_cyc_o] [get_bd_pins bootrom_wrapper_0/i_wb_cyc]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_dat_o] [get_bd_pins bootrom_wrapper_0/i_wb_dat]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_sel_o] [get_bd_pins bootrom_wrapper_0/i_wb_sel]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_stb_o] [get_bd_pins bootrom_wrapper_0/i_wb_stb]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_rom_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_we_o] [get_bd_pins bootrom_wrapper_0/i_wb_we]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_adr_o] [get_bd_pins wb_spi_wrapper_0/wb_adr_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_cyc_o] [get_bd_pins wb_spi_wrapper_0/wb_cyc_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_dat_o] [get_bd_pins wb_spi_wrapper_0/wb_dat_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_sel_o] [get_bd_pins wb_spi_wrapper_0/wb_sel_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_stb_o] [get_bd_pins wb_spi_wrapper_0/wb_stb_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_spi_accel_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_we_o] [get_bd_pins wb_spi_wrapper_0/wb_we_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_adr_o] [get_bd_pins syscon_wrapper_0/i_wb_adr]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_cyc_o] [get_bd_pins syscon_wrapper_0/i_wb_cyc]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_dat_o] [get_bd_pins syscon_wrapper_0/i_wb_dat]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_sel_o] [get_bd_pins syscon_wrapper_0/i_wb_sel]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_stb_o] [get_bd_pins syscon_wrapper_0/i_wb_stb]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_sys_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_we_o] [get_bd_pins syscon_wrapper_0/i_wb_we]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_adr_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_adr_o] [get_bd_pins wb_uart_wrapper_0/wb_adr_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_cyc_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_cyc_o] [get_bd_pins wb_uart_wrapper_0/wb_cyc_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_dat_o] [get_bd_pins wb_uart_wrapper_0/wb_dat_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_sel_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_sel_o] [get_bd_pins wb_uart_wrapper_0/wb_sel_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_stb_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_stb_o] [get_bd_pins wb_uart_wrapper_0/wb_stb_i]
  connect_bd_net -net axi2wb_intcon_wrapper_0_wb_uart_we_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_we_o] [get_bd_pins wb_uart_wrapper_0/wb_we_i]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_ports o_led] [get_bd_pins axi_gpio_0/gpio2_io_o]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins syscon_wrapper_0/gpio_irq]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins xlconcat_0/In5]
  connect_bd_net -net bootrom_wrapper_0_o_wb_ack [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_ack_i] [get_bd_pins bootrom_wrapper_0/o_wb_ack]
  connect_bd_net -net bootrom_wrapper_0_o_wb_rdt [get_bd_pins axi2wb_intcon_wrapper_0/wb_rom_dat_i] [get_bd_pins bootrom_wrapper_0/o_wb_rdt]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins PWM_w_Int_0/s00_axi_aclk] [get_bd_pins axi2wb_intcon_wrapper_0/clk_i_wrapper] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins bootrom_wrapper_0/i_clk] [get_bd_pins ptc_wrapper_0/wb_clk_i] [get_bd_pins swerv_wrapper_verilog_0/clk] [get_bd_pins syscon_wrapper_0/i_clk] [get_bd_pins wb_gpio_wrapper_0/wb_clk_i] [get_bd_pins wb_spi_wrapper_0/wb_clk_i] [get_bd_pins wb_uart_wrapper_0/wb_clk_i]
  connect_bd_net -net dmi_hard_reset_0_1 [get_bd_ports dmi_hard_reset_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_hard_reset]
  connect_bd_net -net dmi_reg_addr_0_1 [get_bd_ports dmi_reg_addr_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_reg_addr]
  connect_bd_net -net dmi_reg_en_0_1 [get_bd_ports dmi_reg_en_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_reg_en]
  connect_bd_net -net dmi_reg_wdata_0_1 [get_bd_ports dmi_reg_wdata_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_reg_wdata]
  connect_bd_net -net dmi_reg_wr_en_0_1 [get_bd_ports dmi_reg_wr_en_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_reg_wr_en]
  connect_bd_net -net gpio_io_i_0_1 [get_bd_ports i_sw] [get_bd_pins axi_gpio_0/gpio_io_i]
  connect_bd_net -net i_accel_miso_0_1 [get_bd_ports i_accel_miso_0] [get_bd_pins wb_spi_wrapper_0/i_accel_miso]
  connect_bd_net -net i_ram_init_done_0_1 [get_bd_ports i_ram_init_done_0] [get_bd_pins syscon_wrapper_0/i_ram_init_done]
  connect_bd_net -net i_ram_init_error_0_1 [get_bd_ports i_ram_init_error_0] [get_bd_pins syscon_wrapper_0/i_ram_init_error]
  connect_bd_net -net i_uart_rx_0_1 [get_bd_ports i_uart_rx] [get_bd_pins wb_uart_wrapper_0/i_uart_rx]
  connect_bd_net -net ptc_wrapper_0_wb_ack_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_ack_i] [get_bd_pins ptc_wrapper_0/wb_ack_o]
  connect_bd_net -net ptc_wrapper_0_wb_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_dat_i] [get_bd_pins ptc_wrapper_0/wb_dat_o]
  connect_bd_net -net ptc_wrapper_0_wb_err_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_ptc_err_i] [get_bd_pins ptc_wrapper_0/wb_err_o]
  connect_bd_net -net ptc_wrapper_0_wb_inta_o [get_bd_pins ptc_wrapper_0/wb_inta_o] [get_bd_pins syscon_wrapper_0/ptc_irq]
  connect_bd_net -net rst_0_1 [get_bd_ports rst_0] [get_bd_pins PWM_w_Int_0/s00_axi_aresetn] [get_bd_pins axi2wb_intcon_wrapper_0/rst_ni_wrapper] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins bootrom_wrapper_0/i_rst] [get_bd_pins ptc_wrapper_0/wb_rst_i] [get_bd_pins swerv_wrapper_verilog_0/rst] [get_bd_pins syscon_wrapper_0/i_rst] [get_bd_pins wb_gpio_wrapper_0/wb_rst_i] [get_bd_pins wb_spi_wrapper_0/wb_rst_i] [get_bd_pins wb_uart_wrapper_0/wb_rst_i]
  connect_bd_net -net swerv_wrapper_verilog_0_dmi_reg_rdata [get_bd_ports dmi_reg_rdata_0] [get_bd_pins swerv_wrapper_verilog_0/dmi_reg_rdata]
  connect_bd_net -net syscon_wrapper_0_AN [get_bd_ports AN_0] [get_bd_pins syscon_wrapper_0/AN]
  connect_bd_net -net syscon_wrapper_0_Digits_Bits [get_bd_ports Digits_Bits_0] [get_bd_pins syscon_wrapper_0/Digits_Bits]
  connect_bd_net -net syscon_wrapper_0_o_nmi_int [get_bd_pins swerv_wrapper_verilog_0/nmi_int] [get_bd_pins syscon_wrapper_0/o_nmi_int]
  connect_bd_net -net syscon_wrapper_0_o_nmi_vec [get_bd_pins swerv_wrapper_verilog_0/nmi_vec] [get_bd_pins syscon_wrapper_0/o_nmi_vec]
  connect_bd_net -net syscon_wrapper_0_o_sw_irq3 [get_bd_pins syscon_wrapper_0/o_sw_irq3] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net syscon_wrapper_0_o_sw_irq4 [get_bd_pins syscon_wrapper_0/o_sw_irq4] [get_bd_pins xlconcat_0/In3]
  connect_bd_net -net syscon_wrapper_0_o_timer_irq [get_bd_pins swerv_wrapper_verilog_0/timer_int] [get_bd_pins syscon_wrapper_0/o_timer_irq]
  connect_bd_net -net syscon_wrapper_0_o_wb_ack [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_ack_i] [get_bd_pins syscon_wrapper_0/o_wb_ack]
  connect_bd_net -net syscon_wrapper_0_o_wb_rdt [get_bd_pins axi2wb_intcon_wrapper_0/wb_sys_dat_i] [get_bd_pins syscon_wrapper_0/o_wb_rdt]
  connect_bd_net -net wb_gpio_wrapper_0_bidir [get_bd_ports bidir] [get_bd_pins wb_gpio_wrapper_0/bidir]
  connect_bd_net -net wb_gpio_wrapper_0_wb_ack_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_ack_i] [get_bd_pins wb_gpio_wrapper_0/wb_ack_o]
  connect_bd_net -net wb_gpio_wrapper_0_wb_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_dat_i] [get_bd_pins wb_gpio_wrapper_0/wb_dat_o]
  connect_bd_net -net wb_gpio_wrapper_0_wb_err_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_gpio_err_i] [get_bd_pins wb_gpio_wrapper_0/wb_err_o]
  connect_bd_net -net wb_spi_wrapper_0_o_accel_cs_n [get_bd_ports o_accel_cs_n_0] [get_bd_pins wb_spi_wrapper_0/o_accel_cs_n]
  connect_bd_net -net wb_spi_wrapper_0_o_accel_mosi [get_bd_ports o_accel_mosi_0] [get_bd_pins wb_spi_wrapper_0/o_accel_mosi]
  connect_bd_net -net wb_spi_wrapper_0_o_accel_sclk [get_bd_ports o_accel_sclk_0] [get_bd_pins wb_spi_wrapper_0/o_accel_sclk]
  connect_bd_net -net wb_spi_wrapper_0_spi_irq [get_bd_pins wb_spi_wrapper_0/spi_irq] [get_bd_pins xlconcat_0/In4]
  connect_bd_net -net wb_spi_wrapper_0_wb_ack_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_ack_i] [get_bd_pins wb_spi_wrapper_0/wb_ack_o]
  connect_bd_net -net wb_spi_wrapper_0_wb_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_spi_accel_dat_i] [get_bd_pins wb_spi_wrapper_0/wb_dat_o]
  connect_bd_net -net wb_uart_wrapper_0_o_uart_tx [get_bd_ports o_uart_tx] [get_bd_pins wb_uart_wrapper_0/o_uart_tx]
  connect_bd_net -net wb_uart_wrapper_0_uart_irq [get_bd_pins wb_uart_wrapper_0/uart_irq] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net wb_uart_wrapper_0_wb_ack_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_ack_i] [get_bd_pins wb_uart_wrapper_0/wb_ack_o]
  connect_bd_net -net wb_uart_wrapper_0_wb_dat_o [get_bd_pins axi2wb_intcon_wrapper_0/wb_uart_dat_i] [get_bd_pins wb_uart_wrapper_0/wb_dat_o]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins swerv_wrapper_verilog_0/extintsrc_req] [get_bd_pins xlconcat_0/dout]

  # Create address segments
  assign_bd_address -offset 0x80120000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi2wb_intcon_wrapper_0/o_user_axi4] [get_bd_addr_segs PWM_w_Int_0/S00_AXI/S00_AXI_reg] -force
  assign_bd_address -offset 0x80100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi2wb_intcon_wrapper_0/o_user_axi4] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x80130000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi2wb_intcon_wrapper_0/o_user_axi4] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x08000000 -target_address_space [get_bd_addr_spaces axi2wb_intcon_wrapper_0/o_ram_axi4] [get_bd_addr_segs ram/Reg] -force
  assign_bd_address -offset 0x00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces swerv_wrapper_verilog_0/ifu_axi] [get_bd_addr_segs axi2wb_intcon_wrapper_0/i_ifu_axi4/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces swerv_wrapper_verilog_0/lsu_axi] [get_bd_addr_segs axi2wb_intcon_wrapper_0/i_lsu_axi4/reg0] -force
  assign_bd_address -offset 0x00000000 -range 0x000100000000 -target_address_space [get_bd_addr_spaces swerv_wrapper_verilog_0/sb_axi] [get_bd_addr_segs axi2wb_intcon_wrapper_0/i_sb_axi4/reg0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


