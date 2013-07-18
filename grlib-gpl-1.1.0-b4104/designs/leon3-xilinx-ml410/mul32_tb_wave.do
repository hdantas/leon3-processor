onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Input
add wave -noupdate -radix decimal -childformat {{/mul32_tb/t_muli.op1 -radix decimal} {/mul32_tb/t_muli.op2 -radix decimal} {/mul32_tb/t_muli.flush -radix decimal} {/mul32_tb/t_muli.signed -radix decimal} {/mul32_tb/t_muli.start -radix decimal} {/mul32_tb/t_muli.mac -radix decimal} {/mul32_tb/t_muli.acc -radix decimal}} -expand -subitemconfig {/mul32_tb/t_muli.op1 {-height 16 -radix decimal} /mul32_tb/t_muli.op2 {-height 16 -radix decimal} /mul32_tb/t_muli.flush {-height 16 -radix decimal} /mul32_tb/t_muli.signed {-height 16 -radix decimal} /mul32_tb/t_muli.start {-height 16 -radix decimal} /mul32_tb/t_muli.mac {-height 16 -radix decimal} /mul32_tb/t_muli.acc {-height 16 -radix decimal}} /mul32_tb/t_muli
add wave -noupdate -divider Output
add wave -noupdate -radix decimal -childformat {{/mul32_tb/t_mulo.ready -radix decimal} {/mul32_tb/t_mulo.nready -radix decimal} {/mul32_tb/t_mulo.icc -radix decimal} {/mul32_tb/t_mulo.result -radix decimal}} -expand -subitemconfig {/mul32_tb/t_mulo.ready {-height 16 -radix decimal} /mul32_tb/t_mulo.nready {-height 16 -radix decimal} /mul32_tb/t_mulo.icc {-height 16 -radix decimal} /mul32_tb/t_mulo.result {-height 16 -radix decimal}} /mul32_tb/t_mulo
add wave -noupdate -radix decimal -childformat {{/mul32_tb/O_t_mulo.ready -radix decimal} {/mul32_tb/O_t_mulo.nready -radix decimal} {/mul32_tb/O_t_mulo.icc -radix decimal} {/mul32_tb/O_t_mulo.result -radix decimal}} -expand -subitemconfig {/mul32_tb/O_t_mulo.ready {-radix decimal} /mul32_tb/O_t_mulo.nready {-radix decimal} /mul32_tb/O_t_mulo.icc {-radix decimal} /mul32_tb/O_t_mulo.result {-radix decimal}} /mul32_tb/O_t_mulo
add wave -noupdate -divider Others
add wave -noupdate -radix decimal /mul32_tb/t_clk
add wave -noupdate -radix decimal /mul32_tb/t_rst
add wave -noupdate -radix decimal /mul32_tb/t_holdn
add wave -noupdate -divider Debugging
add wave -noupdate -radix decimal /mul32_tb/t_db_tmp_result
add wave -noupdate -radix decimal /mul32_tb/t_db_started
add wave -noupdate -radix decimal /mul32_tb/t_db_prod_a
add wave -noupdate -radix decimal /mul32_tb/t_db_prod_b
add wave -noupdate -radix decimal /mul32_tb/t_db_number_bits_port
add wave -noupdate -radix decimal /mul32_tb/t_db_op1
add wave -noupdate -radix decimal /mul32_tb/t_db_op2
add wave -noupdate -radix decimal /mul32_tb/t_db_is_signed
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {40108 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 242
configure wave -valuecolwidth 146
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
WaveRestoreZoom {19108 ps} {209521 ps}
