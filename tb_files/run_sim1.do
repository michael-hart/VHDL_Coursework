-- Delete library in case of old files
vdel -all
-- Create and map library
vlib work
vmap work work
-- Compile relative path files
vcom -93 -explicit -work work ../hardware_files/config_pack.vhd
vcom -93 -explicit -work work ../hardware_files/project_pack.vhd
vcom -93 -explicit -work work utility_pack.vhd
vcom -93 -explicit -work work vdp_pack.vhd
vcom -93 -explicit -work work ../hardware_files/exercises.vhd
vcom -93 -explicit -work work ../hardware_files/rcb.vhd
vcom -93 -explicit -work work ../hardware_files/db.vhd
vcom -93 -explicit -work work ../hardware_files/vdp.vhd
vcom -93 -explicit -work work vram.vhd
vcom -93 -explicit -work work vdp_testbench.vhd
-- Start the simulation
vsim vdp_testbench
radix unsigned
view *
-- Add waveforms
add wave sim:/vdp_testbench/*
add wave sim:/vdp_testbench/dut/*
-- Run test
run 15us
