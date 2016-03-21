To run this simulation, use Modelsim to open adpost.mpf
Execute the command do do_adpost.do

Note that the Cyclone II library is missing; cycloneii_components is compiled into the WORK library instead.
This is because compilation into the correct library fails with files from Synplify.

For newly synthesised files, make sure to find and replace all instances of "cycloneii." with "work." in both vdp.vhd and cycloneii_components.vhd
Also, the output proj_1.vhm file from Synplify must overwrite vdp.vhd for an update.

To simulate the test sets, modify config_pack.vhd with the relevant test file name.

Numeric Std warnings have been disabled for a clearer view of the test output.
