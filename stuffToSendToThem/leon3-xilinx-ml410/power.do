vsim work.testbench
vcd file power.vcd
vcd add -r testbench/cpu/*
run 2.5ms
quit -sim
