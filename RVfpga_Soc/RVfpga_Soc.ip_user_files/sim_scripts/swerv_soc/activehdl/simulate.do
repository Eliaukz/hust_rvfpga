onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+swerv_soc -L xpm -L xil_defaultlib -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_22 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_21 -L axi_crossbar_v2_1_23 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_24 -L xlconcat_v2_1_4 -L lib_pkg_v1_0_2 -L axi_iic_v2_0_25 -L axi_protocol_converter_v2_1_22 -L axi_clock_converter_v2_1_21 -L blk_mem_gen_v8_4_4 -L axi_dwidth_converter_v2_1_22 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.swerv_soc xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {swerv_soc.udo}

run -all

endsim

quit -force
