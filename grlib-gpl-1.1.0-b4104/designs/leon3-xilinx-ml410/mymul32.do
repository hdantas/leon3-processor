restart -f
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Literal /multest/mult/INFER
add wave -noupdate -format Logic rst
add wave -noupdate -format Logic clk
add wave -noupdate -format Logic holdn
add wave -noupdate -format Literal -radix decimal /multest/muli.op1
add wave -noupdate -format Literal -radix decimal /multest/muli.op2
add wave -noupdate -format Logic /multest/muli.flush
add wave -noupdate -format Logic /multest/muli.signed
add wave -noupdate -format Logic /multest/muli.start
add wave -noupdate -format Logic /multest/muli.mac
add wave -noupdate -format Literal -radix decimal /multest/muli.acc

add wave -noupdate -format Literal /multest/mult/rm.state

add wave -noupdate -format Logic /multest/mulo.ready
add wave -noupdate -format Logic /multest/mulo.nready
add wave -noupdate -format Literal /multest/mulo.icc
add wave -noupdate -format Literal -radix decimal /multest/mulo.result
add wave -noupdate -format Literal -radix hexadecimal /multest/mulo.result

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
WaveRestoreZoom {0 ps} {10000ns}


#NOTE ON TIMING:
#if start=1 on 900ns it means the next clock cycle (1000ns) it starts
#with no mac it takes 4 cycles (1400ns) with mac 5 cycles (1500ns)
#holdn must set to 0 after finish (e.g. 1450ns or 1550ns)


set tech 14
set multype 0
set pipe 1
set mac 0

force -freeze sim:clk 1 0, 0 {50 ns} -r 100
force -deposit sim:rst 0 0,1 {150ns}
force -deposit sim:holdn 0 0, 1 1000ns,0 1450ns,1 2000ns, 0 2450ns,1 3000ns, 0 3450ns,1 4000ns, 0 4550ns
force -drive sim:muli.op1 000000000000000000000000000000010 0,111111111111111111111111111111110 1800ns, 111111111111111111111111111111011 2800ns, 111111111111111111111111111111110 3800ns
force -drive sim:muli.op2 000000000000000000000000000000110 0,000000000000000000000000000000110 1800ns, 111111111111111111111111111111011 2800ns, 000000000000000000000000000000110 3800ns
force -drive sim:muli.acc 0000000000000000000000000000000000000000 0,0000000000000000000000000000000011001000 3800ns
force -drive sim:muli.flush 0 0
force -drive sim:muli.signed 0 0,1 1800ns
force -drive sim:muli.start 0 0,1 900ns,0 1100ns,1 1900ns,0 2100ns,1 2900ns,0 3100ns,1 3900ns,0 4100ns
force -drive sim:muli.mac 0 0,1 3800ns

run 10000ns