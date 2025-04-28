transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib de1_blinker
vmap de1_blinker de1_blinker
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/de1_blinker.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_avalon_st_adapter.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_sysid_1337.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_onchip_memory.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc_jtag_debug_module_tck.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc_oci_test_bench.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_nios2_proc_test_bench.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_jtag_uart_0.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_Seven_Seg_1.v}
vlog -vlog01compat -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_Centaines.v}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_irq_mapper.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_cmd_mux_002.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_router_004.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_router_002.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_router_001.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/de1_blinker_mm_interconnect_0_router.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_master_agent.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work de1_blinker +incdir+C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules {C:/FPGA_Proj/Blinker_NiosII/de1_blinker/synthesis/submodules/altera_merlin_master_translator.sv}
vcom -93 -work work {C:/FPGA_Proj/IP_Frequencemetre/Fenetre_Mesure.vhd}
vcom -93 -work work {C:/FPGA_Proj/IP_Frequencemetre/lpm_mux1.vhd}
vcom -93 -work work {C:/FPGA_Proj/IP_Frequencemetre/latch_data.vhd}
vcom -93 -work work {C:/FPGA_Proj/IP_Frequencemetre/diviseur.vhd}
vcom -93 -work work {C:/FPGA_Proj/IP_Frequencemetre/compteurN.vhd}

