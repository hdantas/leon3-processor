-----------------------------------------------------------------------------
--  LEON3 Demonstration design
--  Copyright (C) 2004 Jiri Gaisler, Gaisler Research
------------------------------------------------------------------------------
--  This file is a part of the GRLIB VHDL IP LIBRARY
--  Copyright (C) 2003 - 2008, Gaisler Research
--  Copyright (C) 2008 - 2010, Aeroflex Gaisler
--
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program; if not, write to the Free Software
--  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 
------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;
library grlib, techmap;
use grlib.amba.all;
use grlib.devices.all;
use grlib.stdlib.all;
use techmap.gencomp.all;
use techmap.allclkgen.all;
library gaisler;
use gaisler.memctrl.all;
use gaisler.leon3.all;
use gaisler.uart.all;
use gaisler.misc.all;
use gaisler.net.all;
use gaisler.jtag.all;
use gaisler.spacewire.all;

library esa;
use esa.memoryctrl.all;
use work.config.all;

entity leon3mp is
  generic (
    fabtech   : integer := CFG_FABTECH;
    memtech   : integer := CFG_MEMTECH;
    padtech   : integer := CFG_PADTECH;
    ncpu      : integer := CFG_NCPU;
    disas     : integer := CFG_DISAS;	-- Enable disassembly to console
    dbguart   : integer := CFG_DUART;	-- Print UART on console
    pclow     : integer := CFG_PCLOW
  );
  port (
  	--clk and reset
    sys_rst_in       : in  std_ulogic;
    sys_clk	         : in  std_ulogic; 	-- 100 MHz main clock
	sysace_fpga_clk  : in  std_ulogic;  -- 33 MHz
    
--pragma translate_off
    plb_error       : out std_logic;    -- ERRORn
--pragma translate_on
    opb_error	    : out std_logic;	-- DSU active
    
    --flash controller
    sram_flash_addr : out std_logic_vector(20 downto 0);
    sram_flash_data : inout std_logic_vector(31 downto 0);
    sram_cen        : out std_logic;
    sram_bw         : out std_logic_vector (0 to 3);
    sram_flash_oe_n : out std_ulogic;
    sram_flash_we_n : out std_ulogic;
    flash_ce        : out std_logic;
    sram_clk        : out std_ulogic;
    sram_clk_fb     : in  std_ulogic; 
    sram_adv_ld_n   : out std_ulogic;
--pragma translate_off
    iosn            : out std_ulogic;
--pragma translate_on

    --DDR Controller
    ddr_clk         : out std_logic;
    ddr_clkb        : out std_logic;
    ddr_clk_fb      : in std_logic;
    ddr_cke         : out std_logic;
    ddr_csb         : out std_logic;
    ddr_web         : out std_ulogic;                       -- ddr write enable
    ddr_rasb        : out std_ulogic;                       -- ddr ras
    ddr_casb        : out std_ulogic;                       -- ddr cas
    ddr_dm          : out std_logic_vector (3 downto 0);    -- ddr dm
    ddr_dqs         : inout std_logic_vector (3 downto 0);    -- ddr dqs
    ddr_ad          : out std_logic_vector (12 downto 0);   -- ddr address
    ddr_ba          : out std_logic_vector (1 downto 0);    -- ddr bank address
    ddr_dq          : inout std_logic_vector (31 downto 0); -- ddr data

    --AHB Debug UART
    uart0_txd       : out std_ulogic;
    uart0_rxd       : in  std_ulogic;
    uart0_rts_b     : out std_ulogic;
    
    --APB General Puporse UART, used as stdin/stdout
    uart1_txd      : out std_ulogic; 			-- UART1 tx data
    uart1_rxd      : in  std_ulogic;  			-- UART1 rx data

    --GPIO
    gpio            : inout std_logic_vector(13 downto 0); 	-- I/O port
	fpga_leds		: out std_logic_vector(7 downto 0);		-- green LEDs

    -- Ethernet PHY
    phy0_txer        : out std_ulogic;
    phy0_txd         : out std_logic_vector(3 downto 0);
    phy0_txctl_txen  : out std_ulogic;
    phy0_txclk       : in  std_ulogic;
    phy0_rxer        : in  std_ulogic;
    phy0_rxd         : in  std_logic_vector(3 downto 0);
    phy0_rxctl_rxdv  : in  std_ulogic;
    phy0_rxclk       : in  std_ulogic;
    phy0_reset       : out std_ulogic;
    phy0_mdio        : inout std_logic;
    phy0_mdc         : out std_ulogic;
    
    -- System ACE MPU
    sysace_mpa       : out std_logic_vector(6 downto 0);
    sysace_mpce      : out std_ulogic;
    sysace_mpirq     : in  std_ulogic;
    sysace_mpoe      : out std_ulogic;
    sysace_mpwe      : out std_ulogic;
    sysace_mpd       : inout std_logic_vector(15 downto 0);

    --PS/2
    ps2_keyb_clk    : inout std_logic;
    ps2_keyb_data   : inout std_logic;
    ps2_mouse_clk   : inout std_logic;
    ps2_mouse_data  : inout std_logic;

    --LCD/VGA
    tft_lcd_clk     : out std_ulogic;
    vid_hsync       : out std_ulogic;
    vid_vsync       : out std_ulogic;
    vid_r           : out std_logic_vector(7 downto 3);
    vid_g           : out std_logic_vector(7 downto 3);
    vid_b           : out std_logic_vector(7 downto 3);

    --USB
    usb_csn         : out std_logic;

    --I2C controller
    iic_scl         : inout std_ulogic;
    iic_sda         : inout std_ulogic
   );
end;

architecture rtl of leon3mp is

constant blength : integer := 12;
constant fifodepth : integer := 8;
constant maxahbm : integer := NCPU+CFG_AHB_UART
	+CFG_GRETH+CFG_AHB_JTAG+CFG_SVGA_ENABLE;

signal vcc, gnd   : std_logic_vector(4 downto 0);
signal memi  : memory_in_type;
signal memo  : memory_out_type;
signal wpo   : wprot_out_type;
signal sdi   : sdctrl_in_type;
signal sdo   : sdctrl_out_type;
signal sdo2, sdo3 : sdctrl_out_type;

signal apbi  : apb_slv_in_type;
signal apbo  : apb_slv_out_vector := (others => apb_none);
signal ahbsi : ahb_slv_in_type;
signal ahbso : ahb_slv_out_vector := (others => ahbs_none);
signal ahbmi : ahb_mst_in_type;
signal ahbmo : ahb_mst_out_vector := (others => ahbm_none);

signal clkm, rstn, rstraw, srclkl : std_ulogic;
signal clkm_90, clkm_180, clkm_270 : std_ulogic;

signal cgi, cgi2   : clkgen_in_type;
signal cgo, cgo2   : clkgen_out_type;
signal u1i, u2i, dui : uart_in_type;
signal u1o, u2o, duo : uart_out_type;

signal irqi : irq_in_vector(0 to NCPU-1);
signal irqo : irq_out_vector(0 to NCPU-1);

signal dbgi : l3_debug_in_vector(0 to NCPU-1);
signal dbgo : l3_debug_out_vector(0 to NCPU-1);

signal dsui : dsu_in_type;
signal dsuo : dsu_out_type; 

signal clkace : std_ulogic;
signal acei   : gracectrl_in_type;
signal aceo   : gracectrl_out_type;

signal ethi, ethi1, ethi2 : eth_in_type;
signal etho, etho1, etho2 : eth_out_type;

signal gpti : gptimer_in_type;

signal gpioi : gpio_in_type;
signal gpioo : gpio_out_type;
signal leds: std_logic_vector(7 downto 0);

signal clklock, lock, lclk, clkml, rst, ndsuact : std_ulogic;
signal tck, tckn, tms, tdi, tdo : std_ulogic;
signal ddrclk, ddrrst : std_ulogic;


signal ethclk, egtx_clk_fb : std_ulogic;
signal egtx_clk, legtx_clk, l2egtx_clk : std_ulogic;

signal kbdi  : ps2_in_type;
signal kbdo  : ps2_out_type;
signal moui  : ps2_in_type;
signal mouo  : ps2_out_type; 
signal vgao  : apbvga_out_type;
signal clk_sel : std_logic_vector(1 downto 0);
signal clkval : std_logic_vector(1 downto 0);
signal clkvga, clk1x, video_clk, dac_clk : std_ulogic;

signal i2ci : i2c_in_type;
signal i2co : i2c_out_type;

constant BOARD_FREQ : integer := 100000;   -- input frequency in KHz
constant CPU_FREQ : integer := BOARD_FREQ * CFG_CLKMUL / CFG_CLKDIV;  -- cpu frequency in KHz
constant I2C_FILTER : integer := (CPU_FREQ*5+50000)/100000+1;
constant IOAEN : integer := CFG_DDRSP;

signal stati : ahbstat_in_type;

signal ddsi  : ddrmem_in_type;
signal ddso  : ddrmem_out_type;

signal ddrclkfb, ssrclkfb, ddr_clkl, ddr_clk90l, ddr_clknl, ddr_clk270l : std_ulogic;
signal ddr_clkv 	: std_logic_vector(2 downto 0);
signal ddr_clkbv	: std_logic_vector(2 downto 0);
signal ddr_ckev  	: std_logic_vector(1 downto 0);
signal ddr_csbv  	: std_logic_vector(1 downto 0);
signal ddr_adl      : std_logic_vector (13 downto 0);

attribute syn_keep : boolean;
attribute syn_preserve : boolean;
attribute syn_keep of clkml : signal is true;
attribute syn_preserve of clkml : signal is true;
attribute syn_keep of egtx_clk : signal is true;
attribute syn_preserve of egtx_clk : signal is true;
attribute keep : boolean;
attribute keep of lock : signal is true;
attribute keep of clkml : signal is true;
attribute keep of clkm : signal is true;
attribute keep of egtx_clk : signal is true;

signal romsn   : std_ulogic;
constant SPW_LOOP_BACK : integer := 0;

begin

  usb_csn <= '1';
----------------------------------------------------------------------
---  Reset and Clock generation  -------------------------------------
----------------------------------------------------------------------
  
  vcc <= (others => '1'); gnd <= (others => '0');
  
  -- system clock generator
  clkgen0 : clkgen  		
    generic map (CFG_FABTECH, CFG_CLKMUL, CFG_CLKDIV, 1, 0, 0, 0, 0, BOARD_FREQ, 0)
    port map (lclk, gnd(0), clkm, open, open, srclkl, open, cgi, cgo, open, clk1x);
	cgi.pllctrl <= "00"; cgi.pllrst <= rstraw; cgi.pllref <= ssrclkfb;
  
  clk_pad : clkpad generic map (tech => padtech, arch => 2) 
    port map (sys_clk, lclk); 
	
  --ACE controller clock
  sysace_fpga_clk_pad : clkpad generic map (tech => padtech) 
    port map (sysace_fpga_clk, clkace);
	
  --SRAM clock feedback
  ssrref_pad : clkpad generic map (tech => padtech) 
    	port map (sram_clk_fb, ssrclkfb); 

  --SRAM clk
  srclk_pad : outpad generic map (tech => padtech, slew => 1, strength => 24) 
	port map (sram_clk, srclkl);

  -- Ethernet 1G PHY clock generator	
  g1clk : if CFG_GRETH1G /= 0 generate
    clkgen1 : clkgen  		
      generic map (CFG_FABTECH, 5, 4, 0, 0, 0, 0, 0, BOARD_FREQ, 0)
      port map (lclk, gnd(0), egtx_clk, open, open, open, open, cgi2, cgo2);
    cgi2.pllctrl <= "00"; cgi2.pllrst <= rstraw; --cgi2.pllref <= egtx_clk_fb;
    -- egtx_clk_pad : outpad generic map (tech => padtech)
      -- port map (phy_gtx_clk, egtx_clk);
    clklock <= lock and cgo2.clklock;
  end generate;
  nog1clk : if CFG_GRETH1G = 0 generate
    clklock <= lock;
  end generate;
  -- reset generator
  resetn_pad : inpad generic map (tech => padtech) 
	port map (sys_rst_in, rst); 
  rst0 : rstgen			
	port map (rst, clkm, clklock, rstn, rstraw);

----------------------------------------------------------------------
---  AHB CONTROLLER --------------------------------------------------
----------------------------------------------------------------------

  -- AHB arbiter/multiplexer
  ahb0 : ahbctrl 		
  generic map (defmast => CFG_DEFMST, split => CFG_SPLIT, 
	rrobin => CFG_RROBIN, ioaddr => CFG_AHBIO, devid => XILINX_ML410,
	ioen => IOAEN, nahbm => maxahbm, nahbs => 8)
  port map (rstn, clkm, ahbmi, ahbmo, ahbsi, ahbso);

----------------------------------------------------------------------
---  LEON3 processor and DSU -----------------------------------------
----------------------------------------------------------------------

  --LEON3 (Multi-)Processor
  l3 : if CFG_LEON3 = 1 generate
    cpu : for i in 0 to NCPU-1 generate
      u0 : leon3s			-- LEON3 processor      
      generic map (i, fabtech, memtech, CFG_NWIN, CFG_DSU, CFG_FPU, CFG_V8, 
	0, CFG_MAC, pclow, 0, CFG_NWP, CFG_ICEN, CFG_IREPL, CFG_ISETS, CFG_ILINE, 
	CFG_ISETSZ, CFG_ILOCK, CFG_DCEN, CFG_DREPL, CFG_DSETS, CFG_DLINE, CFG_DSETSZ,
	CFG_DLOCK, CFG_DSNOOP, CFG_ILRAMEN, CFG_ILRAMSZ, CFG_ILRAMADDR, CFG_DLRAMEN,
        CFG_DLRAMSZ, CFG_DLRAMADDR, CFG_MMUEN, CFG_ITLBNUM, CFG_DTLBNUM, CFG_TLB_TYPE, CFG_TLB_REP, 
        CFG_LDDEL, disas, CFG_ITBSZ, CFG_PWD, CFG_SVT, CFG_RSTADDR, NCPU-1)
      port map (clkm, rstn, ahbmi, ahbmo(i), ahbsi, ahbso, 
    		irqi(i), irqo(i), dbgi(i), dbgo(i));
    end generate;
--pragma translate_off
    errorn_pad : odpad generic map (tech => padtech) port map (plb_error, dbgo(0).error);
--pragma translate_on
    
    -- LEON3 Debug Support Unit
    dsugen : if CFG_DSU = 1 generate
      dsu0 : dsu3			
      generic map (hindex => 2, haddr => 16#900#, hmask => 16#F00#, 
         ncpu => NCPU, tbits => 30, tech => memtech, irq => 0, kbytes => CFG_ATBSZ)
      port map (rstn, clkm, ahbmi, ahbsi, ahbso(2), dbgo, dbgi, dsui, dsuo);
--    dsuen_pad : inpad generic map (tech => padtech) port map (dsuen, dsui.enable); 
      dsui.enable <= '1';
--    dsubre_pad : inpad generic map (tech => padtech) port map (dsubre, dsui.break); 
      dsui.break <= gpioo.val(11); --  South Button
--    dsuact_pad : outpad generic map (tech => padtech) port map (dsuact, ndsuact);
      dsuact_pad : outpad generic map (tech => padtech) port map (opb_error, ndsuact);
      ndsuact <= not dsuo.active;
    end generate;
  end generate;

  nodsu : if CFG_DSU = 0 generate 
    dsuo.tstop <= '0'; dsuo.active <= '0';
  end generate;

  -- AHB Debug UART
  dcomgen : if CFG_AHB_UART = 1 generate
    dcom0: ahbuart		
    generic map (hindex => NCPU, pindex => 7, paddr => 7)
     port map (rstn, clkm, dui, duo, apbi, apbo(7), ahbmi, ahbmo(NCPU));
  end generate;

  dsurx_pad : inpad generic map (tech => padtech)
     port map (uart0_rxd, dui.rxd); 
  dsutx_pad : outpad generic map (tech => padtech)
     port map (uart0_txd, duo.txd);
--  dsucts_pad : inpad generic map (tech => padtech, level => cmos, voltage => x33v)
--    port map (uart0_cts_b, dui.ctsn);
  dsurts_pad : outpad generic map (tech => padtech)
     port map (uart0_rts_b, duo.rtsn);

  --AHB JTAG Debug Interface
  ahbjtaggen0 :if CFG_AHB_JTAG = 1 generate
    ahbjtag0 : ahbjtag generic map(tech => fabtech, hindex => NCPU+CFG_AHB_UART)
     port map(rstn, clkm, tck, tms, tdi, tdo, ahbmi, ahbmo(NCPU+CFG_AHB_UART),
               open, open, open, open, open, open, open, gnd(0));
  end generate;
  
----------------------------------------------------------------------
---  Memory controllers ----------------------------------------------
----------------------------------------------------------------------

  memi.writen <= '1'; memi.wrn <= "1111"; memi.bwidth <= "10";
  memi.brdyn <= '1'; memi.bexcn <= '1';

  --FLASH SRAM controller
  ssr0 : if CFG_SSCTRL = 1 generate
    ssrctrl0 : ssrctrl generic map (hindex => 3, pindex => 0, ramaddr => 16#600#)
    port map (rstn, clkm, ahbsi, ahbso(3), apbi, apbo(0), memi, memo);
  end generate;

  --LEON3 memory controller
  mctrl0 : if CFG_MCTRL_LEON2 = 1 generate
    mctrl0 : mctrl generic map (hindex => 3, pindex => 0, 
	ramaddr => 16#C00#, rammask => 16#FF0#,
	paddr => 0, srbanks => 1, ram8 => CFG_MCTRL_RAM8BIT, 
	ram16 => CFG_MCTRL_RAM16BIT, sden => CFG_MCTRL_SDEN, 
	invclk => CFG_MCTRL_INVCLK, sepbus => CFG_MCTRL_SEPBUS)
    port map (rstn, clkm, memi, memo, ahbsi, ahbso(3), apbi, apbo(0), wpo, open);
  end generate;

  romsn <= not memo.romsn(0);

  sram_adv_ld_n_pad : outpad generic map (tech => padtech) 
	port map (sram_adv_ld_n, gnd(0)); 
  addr_pad : outpadv generic map (width => 21, tech => padtech) 
	port map (sram_flash_addr, memo.address(22 downto 2)); 
  rams_pad : outpad generic map ( tech => padtech) 
	port map (sram_cen, memo.ramsn(0)); 
  roms_pad : outpad generic map (tech => padtech) 
	port map (flash_ce, romsn); 
  oen_pad  : outpad generic map (tech => padtech) 
	port map (sram_flash_oe_n, memo.oen);
--pragma translate_off
  iosn_pad  : outpad generic map (tech => padtech) 
	port map (iosn, memo.iosn);
--pragma translate_on
  rwen_pad : outpadv generic map (width => 4, tech => padtech) 
	port map (sram_bw, memo.wrn); 
  wri_pad  : outpad generic map (tech => padtech) 
	port map (sram_flash_we_n, memo.writen);
  data_pads : iopadvv generic map (tech => padtech, width => 32)
      port map (sram_flash_data, memo.data, memo.vbdrive, memi.data);
 
  --DDR Controller
  ddrsp0 : if (CFG_DDRSP /= 0) generate 
    ddrc0 : ddrspa generic map ( fabtech => CFG_FABTECH, memtech => memtech, 
	hindex => 0, haddr => 16#400#, hmask => 16#F00#, ioaddr => 1, 
	pwron => CFG_DDRSP_INIT, MHz => BOARD_FREQ/1000, 
	clkmul => CFG_DDRSP_FREQ/10, clkdiv => 10, ahbfreq => CPU_FREQ/1000,
	col => CFG_DDRSP_COL, Mbyte => CFG_DDRSP_SIZE, ddrbits => 32)
     port map (
	rst, rstn, lclk, clkm, lock, clkml, clkml, ahbsi, ahbso(0),
	ddr_clkv, ddr_clkbv, open, ddr_clk_fb,
	ddr_ckev, ddr_csbv, ddr_web, ddr_rasb, ddr_casb, 
	ddr_dm, ddr_dqs, ddr_adl, ddr_ba, ddr_dq);
        ddr_ad <= ddr_adl(12 downto 0);
        ddr_clk <= ddr_clkv(0); ddr_clkb <= ddr_clkbv(0);
        ddr_cke <= ddr_ckev(0); ddr_csb <= ddr_csbv(0);
  end generate;

  noddr :  if (CFG_DDRSP = 0) generate lock <= '1'; end generate;
  	
-----------------------------------------------------------------------
---  ETHERNET ---------------------------------------------------------
-----------------------------------------------------------------------

    eth1 : if CFG_GRETH = 1 generate -- Gaisler ethernet MAC
      e1 : grethm generic map(hindex => NCPU+CFG_AHB_UART+CFG_AHB_JTAG+CFG_SVGA_ENABLE, 
	       pindex => 11, paddr => 11, pirq => 4, memtech => memtech,
           mdcscaler => CPU_FREQ/1000, enable_mdio => 1, fifosize => CFG_ETH_FIFO,
           nsync => 1, edcl => CFG_DSU_ETH, edclbufsz => CFG_ETH_BUF,
           macaddrh => CFG_ETH_ENM, macaddrl => CFG_ETH_ENL, phyrstadr => 7,
	       ipaddrh => CFG_ETH_IPM, ipaddrl => CFG_ETH_IPL, giga => CFG_GRETH1G)
         port map( rst => rstn, clk => clkm, ahbmi => ahbmi,
           ahbmo => ahbmo(NCPU+CFG_AHB_UART+CFG_AHB_JTAG+CFG_SVGA_ENABLE), 
	       apbi => apbi, apbo => apbo(11), ethi => ethi, etho => etho); 

      emdio_pad : iopad generic map (tech => padtech) 
         port map (phy0_mdio, etho.mdio_o, etho.mdio_oe, ethi.mdio_i);
		
      etxc_pad : clkpad generic map (tech => padtech, arch => 2) 
	     port map (phy0_txclk, ethi.tx_clk);
	
      erxc_pad : clkpad generic map (tech => padtech, arch => 2) 
	     port map (phy0_rxclk, ethi.rx_clk);
	
	-- erxc_pad : clkpad generic map (tech => padtech, arch => 2) 
	-- port map (phy0_rxclk, ethi.rx_clk);
	
      erxd_pad : inpadv generic map (tech => padtech, width => 4) 
	     port map (phy0_rxd, ethi.rxd(3 downto 0));
	
      erxdv_pad : inpad generic map (tech => padtech) 
	     port map (phy0_rxctl_rxdv, ethi.rx_dv);
	
      erxer_pad : inpad generic map (tech => padtech) 
	     port map (phy0_rxer, ethi.rx_er);

      -- Collision detect and carrier sense are not connected on the
      -- board.
      ethi.rx_col <= '0';
      ethi.rx_crs <= ethi.rx_dv;
      
      etxd_pad : outpadv generic map (tech => padtech, width => 4) 
	     port map (phy0_txd, etho.txd(3 downto 0));
	
      etxen_pad : outpad generic map (tech => padtech) 
	     port map (phy0_txctl_txen, etho.tx_en);
	
      etxer_pad : outpad generic map (tech => padtech) 
	     port map (phy0_txer, etho.tx_er);
	
      emdc_pad : outpad generic map (tech => padtech) 
	     port map (phy0_mdc, etho.mdc);
	
      erst_pad : outpad generic map (tech => padtech) 
	   port map (phy0_reset, rstn);

    end generate;
  
-----------------------------------------------------------------------
---  AHB RAM ----------------------------------------------------------
-----------------------------------------------------------------------

  ocram : if CFG_AHBRAMEN = 1 generate 
    ahbram0 : ahbram generic map (hindex => 7, haddr => CFG_AHBRADDR, 
	tech => CFG_MEMTECH, kbytes => CFG_AHBRSZ)
    port map ( rstn, clkm, ahbsi, ahbso(7));
  end generate;
  	
----------------------------------------------------------------------
---  System ACE I/F Controller ---------------------------------------
----------------------------------------------------------------------
  
  grace: if CFG_GRACECTRL = 1 generate
    grace0 : gracectrl generic map (hindex => 5, hirq => 13,
        haddr => 16#000#, hmask => 16#fff#, split => CFG_SPLIT)
      port map (rstn, clkm, clkace, ahbsi, ahbso(5), acei, aceo);
  end generate;

  nograce: if CFG_GRACECTRL = 0 generate
    aceo <= gracectrl_none;
  end generate nograce;
  
  sysace_mpa_pads : outpadv generic map (width => 7, tech => padtech) 
    port map (sysace_mpa, aceo.addr); 
  sysace_mpce_pad : outpad generic map (tech => padtech)
    port map (sysace_mpce, aceo.cen); 
  sysace_mpd_pads : iopadv generic map (tech => padtech, width => 16)
    port map (sysace_mpd, aceo.do, aceo.doen, acei.di); 
  sysace_mpoe_pad : outpad generic map (tech => padtech)
    port map (sysace_mpoe, aceo.oen);
  sysace_mpwe_pad : outpad generic map (tech => padtech)
    port map (sysace_mpwe, aceo.wen); 
  sysace_mpirq_pad : inpad generic map (tech => padtech)
    port map (sysace_mpirq, acei.irq); 

----------------------------------------------------------------------
---  APB Bridge and various periherals -------------------------------
----------------------------------------------------------------------

  --APB ROM
  bpromgen : if CFG_AHBROMEN /= 0 generate
    brom : entity work.ahbrom
      generic map (hindex => 6, haddr => CFG_AHBRODDR, pipe => CFG_AHBROPIP)
      port map ( rstn, clkm, ahbsi, ahbso(6));
  end generate;

  -- AHB/APB bridge
  apb0 : apbctrl				
  generic map (hindex => 1, haddr => CFG_APBADDR, nslaves => 16)
  port map (rstn, clkm, ahbsi, ahbso(1), apbi, apbo );
  
  
  --UART
  ua1 : if CFG_UART1_ENABLE /= 0 generate
    uart1 : apbuart			-- UART 1
      generic map (pindex => 1, paddr => 1,  pirq => 2, console => dbguart,
                   fifosize => CFG_UART1_FIFO)
      port map (rstn, clkm, apbi, apbo(1), u1i, u1o);
    u1i.extclk <= '0';
  end generate;

  noua1: if CFG_UART1_ENABLE = 0 generate u1o.txd <= '0'; u1o.rtsn <= '1'; end generate;

  ua1rx_pad : inpad generic map (tech => padtech) port map (uart1_rxd, u1i.rxd); 
  ua1tx_pad : outpad generic map (tech => padtech) port map (uart1_txd, u1o.txd);

  --IRQ controller
  irqctrl : if CFG_IRQ3_ENABLE /= 0 generate
    irqctrl0 : irqmp			-- interrupt controller
    generic map (pindex => 2, paddr => 2, ncpu => NCPU)
    port map (rstn, clkm, apbi, apbo(2), irqo, irqi);
  end generate;
  irq3 : if CFG_IRQ3_ENABLE = 0 generate
    x : for i in 0 to NCPU-1 generate
      irqi(i).irl <= "0000";
    end generate;
    apbo(2) <= apb_none;
  end generate;

  --Timer
  gpt : if CFG_GPT_ENABLE /= 0 generate
    timer0 : gptimer 			-- timer unit
    generic map (pindex => 3, paddr => 3, pirq => CFG_GPT_IRQ, 
	sepirq => CFG_GPT_SEPIRQ, sbits => CFG_GPT_SW, ntimers => CFG_GPT_NTIM, 
	nbits => CFG_GPT_TW)
    port map (rstn, clkm, apbi, apbo(3), gpti, open);
    gpti.dhalt <= dsuo.tstop; gpti.extclk <= '0';
  end generate;
  
  nogpt : if CFG_GPT_ENABLE = 0 generate apbo(3) <= apb_none; end generate;

  --PS/2 Keyboard
  kbd : if CFG_KBD_ENABLE /= 0 generate
    ps21 : apbps2 generic map(pindex => 4, paddr => 4, pirq => 4)
      port map(rstn, clkm, apbi, apbo(4), moui, mouo);
    ps20 : apbps2 generic map(pindex => 5, paddr => 5, pirq => 5)
      port map(rstn, clkm, apbi, apbo(5), kbdi, kbdo);
  end generate;
  nokbd : if CFG_KBD_ENABLE = 0 generate apbo(5) <= apb_none; kbdo <= ps2o_none; end generate;
  kbdclk_pad : iopad generic map (tech => padtech)
      port map (ps2_keyb_clk,kbdo.ps2_clk_o, kbdo.ps2_clk_oe, kbdi.ps2_clk_i);
  kbdata_pad : iopad generic map (tech => padtech)
        port map (ps2_keyb_data, kbdo.ps2_data_o, kbdo.ps2_data_oe, kbdi.ps2_data_i);
  mouclk_pad : iopad generic map (tech => padtech)
      port map (ps2_mouse_clk, mouo.ps2_clk_o, mouo.ps2_clk_oe, moui.ps2_clk_i);
  mouata_pad : iopad generic map (tech => padtech)
        port map (ps2_mouse_data, mouo.ps2_data_o, mouo.ps2_data_oe, moui.ps2_data_i);

  --VGA
  vga : if CFG_VGA_ENABLE /= 0 generate
    vga0 : apbvga generic map(memtech => memtech, pindex => 6, paddr => 6)
      port map(rstn, clkm, ethclk, apbi, apbo(6), vgao);
      clk_sel <= "00";
  end generate;

  --SVGA
  svga : if CFG_SVGA_ENABLE /= 0 generate
    svga0 : svgactrl generic map(memtech => memtech, pindex => 6, paddr => 6,
        hindex => CFG_NCPU+CFG_AHB_UART+CFG_AHB_JTAG, 
	clk0 => 4*(1000000000/BOARD_FREQ), clk1 => 2*(1000000000/BOARD_FREQ),
	clk2 => 1000000000/CPU_FREQ, burstlen => 6)
       port map(rstn, clkm, clkvga, apbi, apbo(6), vgao, ahbmi, 
		ahbmo(CFG_NCPU+CFG_AHB_UART+CFG_AHB_JTAG), clk_sel);
  end generate;

  --VGA/SVGA clock divider
  vgadiv : if (CFG_VGA_ENABLE + CFG_SVGA_ENABLE) /= 0 generate 
    clkdiv : process(clk1x, rstn)
    begin
	if rstn = '0' then clkval <= "00";
        elsif rising_edge(clk1x) then
	  clkval <= clkval + 1;
	end if;
    end process;
    video_clk <= clkval(1) when clk_sel = "00" else clkval(0) when clk_sel = "01" else clkm;
    b1 : techbuf generic map (2, CFG_FABTECH) port map (video_clk, clkvga);
    dac_clk <= not clkvga;
  end generate;

  novga : if (CFG_VGA_ENABLE + CFG_SVGA_ENABLE) = 0 generate 
     apbo(6) <= apb_none; vgao <= vgao_none; 
  end generate;

  vert_sync_pad : outpad generic map (tech => padtech)
        port map (vid_vsync, vgao.vsync);
  horiz_sync_pad : outpad generic map (tech => padtech)
        port map (vid_hsync, vgao.hsync);
  video_out_r_pad : outpadv generic map (width => 5, tech => padtech)
        port map (vid_r(7 downto 3), vgao.video_out_r(7 downto 3));
  video_out_g_pad : outpadv generic map (width => 5, tech => padtech)
        port map (vid_g(7 downto 3), vgao.video_out_g(7 downto 3));
  video_out_b_pad : outpadv generic map (width => 5, tech => padtech)
        port map (vid_b(7 downto 3), vgao.video_out_b(7 downto 3));
  video_clock_pad : outpad generic map ( tech => padtech)
        port map (tft_lcd_clk, dac_clk);

  --GPIO
  gpio0 : if CFG_GRGPIO_ENABLE /= 0 generate     -- GPIO unit
    grgpio0: grgpio
    generic map(pindex => 8, paddr => 8, imask => 16#00F0#, nbits => 14)
    port map(rst => rstn, clk => clkm, apbi => apbi, apbo => apbo(8),
    gpioi => gpioi, gpioo => gpioo);
    gpio_pads : iopadvv generic map (tech => padtech, width => 14)
      port map (gpio, gpioo.dout(13 downto 0), gpioo.oen(13 downto 0), 
		gpioi.din(13 downto 0));	
  end generate;
  
  --LEDs
	led_pads: outpadv generic map(tech => padtech, width => 8)
	  port map(fpga_leds, leds(7 downto 0));
	--associate signals with these LEDs
	leds(7) <= not dbgo(0).error;	--LEON3 Processor 0 status
	leds(6) <= dsuo.active;			--DSU active
	leds(5) <= u1o.txd;				--APB UART (stdout) activity
	leds(4 downto 0) <= (others => '0');

  -- AHB status register
  ahbs : if CFG_AHBSTAT = 1 generate	
    ahbstat0 : ahbstat generic map (pindex => 15, paddr => 15, pirq => 7,
	nftslv => CFG_AHBSTATN)
      port map (rstn, clkm, ahbmi, ahbsi, stati, apbi, apbo(15));
  end generate;

  --I2C master
  i2cm: if CFG_I2C_ENABLE = 1 generate  -- I2C master
    i2c0 : i2cmst
      generic map (pindex => 12, paddr => 12, pmask => 16#FFF#,
                   pirq => 11, filter => I2C_FILTER)
      port map (rstn, clkm, apbi, apbo(12), i2ci, i2co);
    i2c_scl_pad : iopad generic map (tech => padtech)
      port map (iic_scl, i2co.scl, i2co.scloen, i2ci.scl);
    i2c_sda_pad : iopad generic map (tech => padtech)
      port map (iic_sda, i2co.sda, i2co.sdaoen, i2ci.sda);
  end generate i2cm;

-----------------------------------------------------------------------
---  AHB DEBUG --------------------------------------------------------
-----------------------------------------------------------------------

--  dma0 : ahbdma
--    generic map (hindex => CFG_NCPU+CFG_AHB_UART+CFG_GRETH+CFG_AHB_JTAG,
--	pindex => 13, paddr => 13, dbuf => 6)
--    port map (rstn, clkm, apbi, apbo(13), ahbmi, 
--	ahbmo(CFG_NCPU+CFG_AHB_UART+CFG_GRETH+CFG_AHB_JTAG));

--  at0 : ahbtrace
--  generic map ( hindex  => 7, ioaddr => 16#200#, iomask => 16#E00#,
--    tech    => memtech, irq     => 0, kbytes  => 8) 
--  port map ( rstn, clkm, ahbmi, ahbsi, ahbso(7));

-----------------------------------------------------------------------
---  Drive unused bus elements  ---------------------------------------
-----------------------------------------------------------------------

--  nam1 : for i in (NCPU+CFG_AHB_UART+CFG_ETH+CFG_AHB_ETH+CFG_AHB_JTAG) to NAHBMST-1 generate
--    ahbmo(i) <= ahbm_none;
--  end generate;
--  nap0 : for i in 11 to NAPBSLV-1 generate apbo(i) <= apb_none; end generate;
--  nah0 : for i in 8 to NAHBSLV-1 generate ahbso(i) <= ahbs_none; end generate;

-----------------------------------------------------------------------
---  Boot message  ----------------------------------------------------
-----------------------------------------------------------------------

-- pragma translate_off
  x : report_version 
  generic map (
   msg1 => system_table(XILINX_ML410),
   msg2 => "GRLIB Version " & tost(LIBVHDL_VERSION/1000) & "." & tost((LIBVHDL_VERSION mod 1000)/100)
      & "." & tost(LIBVHDL_VERSION mod 100) & ", build " & tost(LIBVHDL_BUILD),
   msg3 => "Target technology: " & tech_table(fabtech) & ",  memory library: " & tech_table(memtech),
   mdel => 1
  );
-- pragma translate_on
end;
