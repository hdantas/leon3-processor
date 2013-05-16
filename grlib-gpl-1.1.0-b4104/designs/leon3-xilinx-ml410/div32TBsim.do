restart -f
onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -divider "SIGNALS"
add wave clk
add wave rst
add wave start
add wave -divider "INPUT OPERANDS"
add wave signed
add wave -radix decimal op1
add wave -radix decimal op2
add wave -divider "OUTPUTS"
add wave -group "Original Divider" resOriginal.ready
add wave -group "Original Divider" resOriginal.nready
add wave -group "Original Divider" resOriginal.icc
add wave -group "Original Divider" -radix decimal resOriginal.result
#add wave -group "Radix-4 Divider" resRadix4.ready
#add wave -group "Radix-4 Divider" resRadix4.nready
#add wave -group "Radix-4 Divider" resRadix4.icc
#add wave -group "Radix-4 Divider" -radix decimal resRadix4.result


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
force -deposit start 0 0
force -deposit signed 1 0

#OPERATION TEST 1 (350/100 = 3)	START @ 1000ns, RESULT @ 4600ns
force -deposit op1 0000000000000000000000000000000000000000000000000000000101011110 900ns
force -deposit op2 00000000000000000000000001100100 900ns
force -deposit signed 0 900ns
force -deposit start 1 1000ns,0 1250ns

run 13000ns

WaveRestoreZoom {0 ps} {13000ns}