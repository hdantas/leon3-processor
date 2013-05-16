restart -f

add wave clk
add wave rst
add wave divi.start
add wave divi.signed
add wave -divider "INPUT"
add wave -radix decimal divi.y
add wave -radix decimal divi.op1
add wave -radix decimal divi.op2
add wave -divider "CURRENT STATUS"
add wave r.state
add wave r.cnt
add wave -divider "QUOTIENT SELECTION"
add wave r.d
add wave r.x
add wave qdigit
add wave a
add wave b
add wave -divider "3-2 compressor"
add wave a
add wave b
add wave r.x
add wave t
add wave compOut1
add wave compOut2
add wave -divider "x-CPA"
add wave addin1x
add wave addin2x
add wave addxCin
add wave addresx
add wave -divider "q-CPA"
add wave qdigit
add wave r.q
add wave addresq
add wave -divider "Final Result"
add wave -radix decimal divo.result
add wave divo.icc
add wave divo.ready
add wave divo.nready

force -freeze sim:/r4s_div32/clk 1 0, 0 {50 ns} -r 100

force -freeze sim:/r4s_div32/rst 0 0,1 100ns;
force -freeze sim:/r4s_div32/divi.start 0 0,1 950ns, 0 1500ns;
force -freeze sim:/r4s_div32/divi.signed 1 0;
force -freeze sim:/r4s_div32/holdn 0 0,1 950ns,0 5000ns;

force -freeze sim:/r4s_div32/divi.y 000000000000000000000001000000000 1000ns;
force -freeze sim:/r4s_div32/divi.op1 000000000000000000000000000000001 1000ns;
force -freeze sim:/r4s_div32/divi.op2 000000000000000000000001000000000 1000ns;


run 3500ns

WaveRestoreZoom {900 ns} {3500ns}