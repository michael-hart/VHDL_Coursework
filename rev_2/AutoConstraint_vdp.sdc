
#Begin clock constraint
define_clock -name {vdp|clk} {p:vdp|clk} -period 11.979 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 5.989 -route 0.000 
#End clock constraint

#Begin clock constraint
define_clock -name {ram_fsm|state_derived_clock[2]} {n:ram_fsm|state_derived_clock[2]} -period 11.979 -clockgroup Autoconstr_clkgroup_0 -rise 0.000 -fall 5.989 -route 0.000 
#End clock constraint
