onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /wallace_multiplier_tb/stages
add wave -noupdate /wallace_multiplier_tb/t_a
add wave -noupdate /wallace_multiplier_tb/t_b
add wave -noupdate /wallace_multiplier_tb/t_clk
add wave -noupdate /wallace_multiplier_tb/t_p
add wave -noupdate /wallace_multiplier_tb/t_p_a
add wave -noupdate /wallace_multiplier_tb/t_p_b
add wave -noupdate /wallace_multiplier_tb/t_p_cout
add wave -noupdate /wallace_multiplier_tb/t_reset
add wave -noupdate /wallace_multiplier_tb/width
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 85
configure wave -valuecolwidth 40
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
WaveRestoreZoom {0 ps} {105 ns}
