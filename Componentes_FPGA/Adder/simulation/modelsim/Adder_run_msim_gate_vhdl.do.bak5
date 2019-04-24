transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Adder.vho}

vcom -93 -work work {E:/EE/Sistemas Digitais/Adder/testbench.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=Adder_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
