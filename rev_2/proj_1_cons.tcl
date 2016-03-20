
proc syn_dump_io {} {
	execute_module -tool cdb -args "--back_annotate=pin_device"
}

source "C:/EEE/Synopsys/fpga_I-2013.09-SP1/lib/altera/quartus_cons.tcl"
syn_create_and_open_prj proj_1
source $::quartus(binpath)/prj_asd_import.tcl
syn_create_and_open_csf proj_1
syn_handle_cons proj_1
syn_compile_quartus
syn_dump_io
