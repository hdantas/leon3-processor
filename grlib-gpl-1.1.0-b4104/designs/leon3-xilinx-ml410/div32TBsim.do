restart -f
onerror {resume}
quietly WaveActivateNextPane {} 0

add wave -expand -group "interface signaling" rst clk holdn divi.signed divi.start divo.ready divo.nready

add wave -expand -format Literal -radix decimal -group "operands" divi.y divi.op1 divi.op2

#COMMENT BELOW IF ARCHITECTURE CHANGES
add wave -expand -format Literal -radix hexadecimal -group "internal signals" /div/r.state /div/r.cnt

add wave -noupdate -format Literal -radix binary -group "outputs" divo.icc
add wave -noupdate -format Literal -expand -radix decimal -group "outputs" divo.result



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
force -deposit divi.start 0 0
force -deposit divi.signed 1 0
force -deposit divi.flush 0 0

#OPERATION TEST 1 (350/100 = 3)	START @ 1000ns, RESULT @ 4600ns
force -deposit divi.y 000000000000000000000000000000000 900ns
force -deposit divi.op1 000000000000000000000000101011110 900ns
force -deposit divi.op2 000000000000000000000000001100100 900ns
force -deposit holdn 1 1000ns,0 4700ns
force -deposit divi.start 1 1000ns,0 1150ns

#OPERATION TEST 2 (-35/10 = -3)	START @ 5000ns, RESULT @ 8600ns
force -deposit divi.y 111111111111111111111111111111111 4900ns
force -deposit divi.op1 111111111111111111111111111011101 4900ns
force -deposit divi.op2 000000000000000000000000000001010 4900ns
force -deposit holdn 1 5000ns,0 8700ns
force -deposit divi.start 1 5000ns,0 5150ns

#OPERATION TEST 3 (-(2^33)/-(2^30) = 8)	START @ 9000ns, RESULT @ 12600ns
#explanation: -2^33 is a vector of 1s (where the last is the 33rd bit) and zeros,
#y MSPart is op[63..32] so is all 1s and one 0
#op1 is all zeros, but op1[32] is the sign bit wich is 1 because the operand is negative
force -deposit divi.y 111111111111111111111111111111110 8900ns
force -deposit divi.op1 100000000000000000000000000000000 8900ns
force -deposit divi.op2 111000000000000000000000000000000 8900ns
force -deposit holdn 1 9000ns,0 12700ns
force -deposit divi.start 1 9000ns,0 9150ns

wave cursor add -time 4600ns -name "OP1 result" -lock 1
wave cursor add -time 8600ns -name "OP2 result" -lock 1
wave cursor add -time 12600ns -name "OP3 result" -lock 1

run 13000ns

WaveRestoreZoom {0 ps} {13000ns}