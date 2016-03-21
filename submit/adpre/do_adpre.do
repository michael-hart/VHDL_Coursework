-- Delete library in case of old files
vdel -all
-- Create and map library
vlib work
vmap work work
-- Compile relative path files
vcom -93 -explicit -work work config_pack.vhd
vcom -93 -explicit -work work project_pack.vhd
vcom -93 -explicit -work work utility_pack.vhd
vcom -93 -explicit -work work vdp_pack.vhd
vcom -93 -explicit -work work exercises.vhd
vcom -93 -explicit -work work rcb.vhd
vcom -93 -explicit -work work db.vhd
vcom -93 -explicit -work work vdp.vhd
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
run -all
