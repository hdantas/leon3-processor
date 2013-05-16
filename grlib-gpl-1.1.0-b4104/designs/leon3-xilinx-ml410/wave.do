onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/tech
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/multype
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/pipe
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/mac
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/rst
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/clk
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/holdn
add wave -noupdate -expand /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/muli
add wave -noupdate -expand /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/mulo
add wave -noupdate /testbench/cpu/l3/cpu(0)/u0/p0/mgen/mul0/rm.state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {435823500 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 110
configure wave -valuecolwidth 109
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1236986309 ps} {2401132919 ps}
