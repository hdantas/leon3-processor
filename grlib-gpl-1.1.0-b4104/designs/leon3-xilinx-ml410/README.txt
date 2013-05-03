
This leon3 design is tailored to the Xilinx Virtex4 ML410 board
---------------------------------------------------------------------

Design specifics:

* The AHB DSU UART is connected to the UART0 and the console UART 
  connected to UART1 on board

* The JTAG DSU interface is enabled and works well with
  GRMON and Xilinx parallel cables. Grmon-1.0.24 and later
  also work with the Xilinx Platform USB cable.

* The 100 Mbit version of GRETH is enabled. Ethernet debug link
  is also enabled, but will only work on a 100 Mbit connection.
  The 1000 Mbit version of GRETH is not enabled but works well on 
  the board. Note that this core is not available in the GPL version
  of GRLIB. 

* DDR is mapped at address 0x40000000, using the DDRSPA core.
  The DDR runs OK up to 120 MHz, higher frequencies can give
  data errors and is not recommended. The DDR memory size is 64MB.

* The LEON3 processor can run up to 70 - 80 MHz on the board
  in the typical configuration.

* The LEDs are mapped as following:
    leds(7) <= not dbgo(0).error;	--LEON3 Processor 0 status
	leds(6) <= dsuo.active;			--DSU active
	leds(5) <= u1o.txd;				--APB UART (stdout) activity
	
	others are not used.


* Sample output from GRMON is:

 GRMON LEON debug monitor v1.1.46 evaluation version

 Copyright (C) 2004,2005 Gaisler Research - all rights reserved.
 For latest updates, go to http://www.gaisler.com/
 Comments or bug-reports to support@gaisler.com

 This evaluation version will expire on 28/9/2011
 ethernet startup.
 Device ID: : 0x410
 GRLIB build version: 4104
 initialising 
 detected frequency:  80 MHz

 Component                            Vendor
 LEON3 SPARC V8 Processor             Gaisler Research
 AHB Debug UART                       Gaisler Research
 AHB Debug JTAG TAP                   Gaisler Research
 GR Ethernet MAC                      Gaisler Research
 DDR266 Controller                    Gaisler Research
 AHB/APB Bridge                       Gaisler Research
 LEON3 Debug Support Unit             Gaisler Research
 LEON2 Memory Controller              European Space Agency
 System ACE I/F Controller            Gaisler Research
 Generic APB UART                     Gaisler Research
 Multi-processor Interrupt Ctrl       Gaisler Research
 Modular Timer Unit                   Gaisler Research
 General purpose I/O port             Gaisler Research
 AHB status register                  Gaisler Research

 Use command 'info sys' to print a detailed report of attached cores

Grmon> info sys
00.01:003   Gaisler Research  LEON3 SPARC V8 Processor (ver 0x0)
             ahb master 0
01.01:007   Gaisler Research  AHB Debug UART (ver 0x0)
             ahb master 1
             apb: 80000700 - 80000800
             baud rate 115200, ahb frequency 80.00
02.01:01c   Gaisler Research  AHB Debug JTAG TAP (ver 0x1)
             ahb master 2
03.01:01d   Gaisler Research  GR Ethernet MAC (ver 0x0)
             ahb master 3, irq 4
             apb: 80000b00 - 80000c00
             Device index: dev0
             edcl ip 192.168.0.51, buffer 2 kbyte
00.01:025   Gaisler Research  DDR266 Controller (ver 0x0)
             ahb: 40000000 - 50000000
             ahb: fff00100 - fff00200
             32-bit DDR : 1 * 64 Mbyte @ 0x40000000
                          100 MHz, col 9, ref 7.8 us, trfc 80 ns
01.01:006   Gaisler Research  AHB/APB Bridge (ver 0x0)
             ahb: 80000000 - 80100000
02.01:004   Gaisler Research  LEON3 Debug Support Unit (ver 0x1)
             ahb: 90000000 - a0000000
             AHB trace 128 lines, 32-bit bus, stack pointer 0x43fffff0
             CPU#0 win 8, hwbp 1, itrace 128, V8 mul/div, lddel 1
                   icache 2 * 8 kbyte, 32 byte/line lrr
                   dcache 2 * 4 kbyte, 16 byte/line lrr
03.04:00f   European Space Agency  LEON2 Memory Controller (ver 0x1)
             ahb: 00000000 - 20000000
             ahb: 20000000 - 40000000
             ahb: c0000000 - c1000000
             apb: 80000000 - 80000100
             32-bit prom @ 0x00000000
05.01:067   Gaisler Research  System ACE I/F Controller (ver 0x0)
             irq 13
             ahb: fff00000 - fff00100
01.01:00c   Gaisler Research  Generic APB UART (ver 0x1)
             irq 2
             apb: 80000100 - 80000200
             baud rate 38461, DSU mode (FIFO debug)
02.01:00d   Gaisler Research  Multi-processor Interrupt Ctrl (ver 0x3)
             apb: 80000200 - 80000300
03.01:011   Gaisler Research  Modular Timer Unit (ver 0x0)
             irq 8
             apb: 80000300 - 80000400
             8-bit scaler, 2 * 32-bit timers, divisor 80
08.01:01a   Gaisler Research  General purpose I/O port (ver 0x1)
             apb: 80000800 - 80000900
0f.01:052   Gaisler Research  AHB status register (ver 0x0)
             irq 7
             apb: 80000f00 - 80001000

