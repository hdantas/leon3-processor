onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Input
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_a
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_b
add wave -noupdate -divider Output
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_p
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_tmp_result
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_p_a
add wave -noupdate -radix decimal /wallace_multiplier_tb/t_p_b
add wave -noupdate -divider Others
add wave -noupdate /wallace_multiplier_tb/width
add wave -noupdate /wallace_multiplier_tb/t_clk
add wave -noupdate /wallace_multiplier_tb/t_icc
add wave -noupdate /wallace_multiplier_tb/t_number_bits_port
add wave -noupdate /wallace_multiplier_tb/t_ready
add wave -noupdate /wallace_multiplier_tb/t_reset
add wave -noupdate /wallace_multiplier_tb/t_result
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {103014 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 128
configure wave -valuecolwidth 111
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {0 ps} {48685 ps}
