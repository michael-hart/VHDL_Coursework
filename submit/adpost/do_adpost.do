-- Delete library in case of old files
vdel -all
-- Create and map libraries
vlib work
vmap work work
vlib synplify
vmap synplify synplify

-- Compile relative path files

vcom -93 -explicit -work synplify synplify.vhd
vcom -93 -explicit -work work cycloneii_atoms.vhd
vcom -93 -explicit -work work cycloneii_components.vhd
vcom -93 -explicit -work work utility_pack.vhd
vcom -93 -explicit -work work vdp.vhd
vcom -93 -explicit -work work config_pack.vhd
vcom -93 -explicit -work work vdp_pack.vhd
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
