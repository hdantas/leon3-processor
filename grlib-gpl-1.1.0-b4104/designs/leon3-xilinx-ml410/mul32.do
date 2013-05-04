onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/tech
add wave -noupdate -format Literal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/multype
add wave -noupdate -format Literal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/pipe
add wave -noupdate -format Literal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/mac
add wave -noupdate -format Logic /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/rst
add wave -noupdate -format Logic /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/clk
add wave -noupdate -format Logic /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/holdn
add wave -noupdate -format Literal -expand /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/muli
add wave -noupdate -format Literal -expand /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/mulo
add wave -noupdate -format Literal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/currentstate
add wave -noupdate -format Literal -radix hexadecimal /testbench/cpu/l3/cpu__0/u0/p0/mgen/mul0/result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {139173500 ps} 0}
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
WaveRestoreZoom {139007603 ps} {139325417 ps}
