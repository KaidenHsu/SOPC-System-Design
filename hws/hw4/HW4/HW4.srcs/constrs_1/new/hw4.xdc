# System Clock
set_property IOSTANDARD LVCMOS33 [get_ports FIXED_IO_mio[0]]

create_clock -period 16.000 [get_pins HW4_system_i/processing_system7_0/inst/PS7_i/FCLKCLK[0]]
