transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/EE/Sistemas Digitais/Adder/Adder.vhd}
vcom -93 -work work {E:/EE/Sistemas Digitais/Adder/full_adder.vhd}
vcom -93 -work work {E:/EE/Sistemas Digitais/Adder/ripple_carry_adder_sub.vhd}

vcom -93 -work work {E:/EE/Sistemas Digitais/Adder/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
