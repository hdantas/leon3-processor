new_project -name leon3mp -folder . -createimpl_name precision
setup_design -manufacturer Xilinx -family VIRTEX-4 -part xc4vfx60ff1152 -package ff1152 -speed -11
set_input_dir .
add_input_file -format VHDL -work grlib ../../lib/grlib/stdlib/version.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/stdlib/config.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/stdlib/stdlib.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/sparc/sparc.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/modgen/multlib.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/modgen/leaves.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/amba.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/devices.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/defmst.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/apbctrl.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/ahbctrl.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/dma2ahb_pkg.vhd
add_input_file -format VHDL -work grlib ../../lib/grlib/amba/dma2ahb.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/gencomp/gencomp.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/gencomp/netcomp.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/inferred/memory_inferred.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/inferred/ddr_inferred.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/inferred/mul_inferred.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/inferred/ddr_phy_inferred.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/dw02/mul_dw_gen.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/memory_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/buffer_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/pads_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/clkgen_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/tap_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/ddr_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/ddr_phy_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/grspwc_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/grspwc2_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/grusbhc_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/ssrctrl_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/sysmon_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/unisim/mul_unisim.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/allclkgen.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/allddr.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/allmem.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/allpads.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/alltap.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/clkgen.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/clkmux.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/clkand.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/ddr_ireg.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/ddr_oreg.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/ddrphy.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram64.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram_2p.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram_dp.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncfifo.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/regfile_3p.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/tap.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/techbuf.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/nandtree.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/clkpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/clkpad_ds.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/inpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/inpad_ds.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/iodpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/iopad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/iopad_ds.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/lvds_combo.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/odpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/outpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/outpad_ds.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/toutpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/skew_outpad.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/grspwc_net.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/grspwc2_net.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/grlfpw_net.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/grfpw_net.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/mul_61x61.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/cpu_disas_net.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/ringosc.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/system_monitor.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/grgates.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/inpad_ddr.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/outpad_ddr.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/iopad_ddr.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram128bw.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram128.vhd
add_input_file -format VHDL -work techmap ../../lib/techmap/maps/syncram156bw.vhd
add_input_file -format VHDL -work spw ../../lib/spw/comp/spwcomp.vhd
add_input_file -format VHDL -work spw ../../lib/spw/wrapper/grspw_gen.vhd
add_input_file -format VHDL -work spw ../../lib/spw/wrapper/grspw2_gen.vhd
add_input_file -format VHDL -work eth ../../lib/eth/comp/ethcomp.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/greth_pkg.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/eth_rstgen.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/eth_ahb_mst.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/greth_tx.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/greth_rx.vhd
add_input_file -format VHDL -work eth ../../lib/eth/core/grethc.vhd
add_input_file -format VHDL -work eth ../../lib/eth/wrapper/greth_gen.vhd
add_input_file -format VHDL -work eth ../../lib/eth/wrapper/greth_gbit_gen.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/occomp/occomp.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/i2c/i2c_master_bit_ctrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/i2c/i2c_master_byte_ctrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/i2c/i2coc.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/ud_cnt.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/ro_cnt.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_dma_fifo.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_dma_actrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_dma_tctrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_pio_tctrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_pio_actrl.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_controller.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/atahost_pio_controller.vhd
add_input_file -format VHDL -work opencores ../../lib/opencores/ata/ocidec2_controller.vhd
add_input_file -format VERILOG -work opencores ../../lib/opencores/ac97/ac97_top.v
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/arith.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/HA.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/FA.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/mul32.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/qSelector.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/t3to2compressor.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/arith/div32.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/memctrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/sdctrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/sdctrl64.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/sdmctrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/srctrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/memctrl/spimctrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/leon3.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmuconfig.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmuiface.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/libmmu.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/libiu.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/libcache.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/libproc3.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/cachemem.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmu_icache.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmu_dcache.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmu_acache.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmutlbcam.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmulrue.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmulru.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmutlb.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmutw.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmu.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mmu_cache.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/cpu_disasx.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/iu3.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/grfpwx.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/mfpwx.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/grlfpwx.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/tbufmem.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/dsu3x.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/dsu3.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/proc3.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/leon3s.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/leon3cg.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/irqmp.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/grfpwxsh.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/grfpushwx.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/leon3/leon3sh.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/misc.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/rstgen.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/gptimer.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbram.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbdpram.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbtrace.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbtrace_mb.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbmst.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/grgpio.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbstat.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/logan.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/apbps2.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/charrom_package.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/charrom.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/apbvga.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/svgactrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/i2cmst.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/i2cmst_gen.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/spictrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/i2cslv.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/wild.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/wild2ahb.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/grsysmon.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/gracectrl.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/grgpreg.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahbmst2.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/misc/ahb_mst_iface.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/net/net.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/uart.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/libdcom.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/apbuart.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/dcom.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/dcom_uart.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/uart/ahbuart.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/jtag/jtag.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/jtag/libjtagcom.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/jtag/jtagcom.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/jtag/ahbjtag.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/jtag/ahbjtag_bsd.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/greth/ethernet_mac.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/greth/greth.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/greth/greth_gbit.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/greth/grethm.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/spacewire/spacewire.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/spacewire/grspw.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/spacewire/grspw2.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/spacewire/grspwm.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr_phy.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddrsp16a.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddrsp32a.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddrsp64a.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddrspa.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr2spa.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr2buf.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr2spax.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr2spax_ahb.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ddr/ddr2spax_ddr.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/ata.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/ata_inf.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/atahost_amba_slave.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/atahost_ahbmst.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/ocidec2_amba_slave.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/atactrl_nodma.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/atactrl_dma.vhd
add_input_file -format VHDL -work gaisler ../../lib/gaisler/ata/atactrl.vhd
add_input_file -format VHDL -work esa ../../lib/esa/memoryctrl/memoryctrl.vhd
add_input_file -format VHDL -work esa ../../lib/esa/memoryctrl/mctrl.vhd
add_input_file -format VHDL -work work config.vhd
add_input_file -format VHDL -work work ahbrom.vhd
add_input_file -format VHDL -work work leon3mp.vhd
setup_design -design leon3mp
setup_design -retiming
setup_design -vhdl
setup_design -transformations=false
setup_design -compile_for_timing=true
setup_design -frequency="100"

save_impl
