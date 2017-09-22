onerror {quit -f}
vlib work
vlog -work work g03_addr.vo
vlog -work work g03_addr.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.g03_addr_vlg_vec_tst
vcd file -direction g03_addr.msim.vcd
vcd add -internal g03_addr_vlg_vec_tst/*
vcd add -internal g03_addr_vlg_vec_tst/i1/*
add wave /*
run -all
