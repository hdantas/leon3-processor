restart -f
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -expand -format Literal -group "Generic Input" /mult/INFER
add wave -expand -format Logic -group "Interface Signals" rst clk holdn muli.flush muli.signed muli.start muli.mac mulo.ready mulo.nready
add wave -expand -format Literal -radix decimal -group "Operands" muli.op1 muli.op2 muli.acc
add wave -expand -format Logic -group "Internal Signals" /mult/rm.state
add wave -radix binary -format Logic -group "Outputs" mulo.icc
add wave -expand -radix decimal -format Logic -group "Outputs" mulo.result

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

#INITIALIZATION
force -freeze clk 1 0, 0 50 ns -r 100
force -deposit rst 0 0,1 150ns
force -deposit holdn 0 0
force -drive muli.flush 0 0
force -drive muli.signed 1 0
force -drive muli.start 0 0

#OPERATION 1 (2x6 = 12)	START @ 1000ns
force -deposit holdn 1 1000ns,0 1550ns
force -drive muli.op1 000000000000000000000000000000010 800ns
force -drive muli.op2 000000000000000000000000000000110 800ns
force -drive muli.acc 0000000000000000000000000000000000000000 800ns
force -drive muli.mac 0 800ns
force -drive muli.start 1 1000ns,0 1100ns

#OPERATION 2 (-2x7 = -14)	START @ 2000ns
force -deposit holdn 1 2000ns,0 2550ns
force -drive muli.op1 111111111111111111111111111111110 1800ns
force -drive muli.op2 000000000000000000000000000000111 1800ns
force -drive muli.acc 0000000000000000000000000000000000000000 800ns
force -drive muli.mac 0 1800ns
force -drive muli.start 1 2000ns,0 2100ns

#OPERATION 3 (-5x-5 = 25)	START @ 3000ns
force -deposit holdn 1 3000ns,0 3550ns
force -drive muli.op1 111111111111111111111111111111011 2800ns
force -drive muli.op2 111111111111111111111111111111011 2800ns
force -drive muli.acc 0000000000000000000000000000000000000000 800ns
force -drive muli.mac 0 2800ns
force -drive muli.start 1 3000ns,0 3100ns

#OPERATION 3 (-2x6 + 200 = 188)	START @ 4000ns (it takes one more cycle: holdn goes to 0 100ns later)
force -deposit holdn 1 4000ns,0 4650ns
force -drive muli.op1 111111111111111111111111111111110 3800ns
force -drive muli.op2 000000000000000000000000000000110 3800ns
force -drive muli.acc 0000000000000000000000000000000011001000 3800ns
force -drive muli.mac 1 3800ns
force -drive muli.start 1 4000ns,0 4100ns


run 10000ns

WaveRestoreZoom {0 ps} {10000ns}