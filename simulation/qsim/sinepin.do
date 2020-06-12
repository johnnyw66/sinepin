onerror {quit -f}
vlib work
vlog -work work sinepin.vo
vlog -work work sinepin.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sinepin_vlg_vec_tst
vcd file -direction sinepin.msim.vcd
vcd add -internal sinepin_vlg_vec_tst/*
vcd add -internal sinepin_vlg_vec_tst/i1/*
add wave /*
run -all
