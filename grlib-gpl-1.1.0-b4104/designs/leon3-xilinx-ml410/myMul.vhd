library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.stdlib.all;
use grlib.multlib.all;
library gaisler;
use gaisler.arith.all;
library techmap;
use techmap.gencomp.all;

entity mulTest is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    muli    : in  mul32_in_type;
    mulo    : out mul32_out_type
);
end;
architecture rtl of mulTest is
  
component mul32 generic (
    tech    : integer := 0;
    multype : integer range 0 to 3 := 0;
    pipe    : integer range 0 to 1 := 0;
    mac     : integer range 0 to 1 := 0
);
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    muli    : in  mul32_in_type;
    mulo    : out mul32_out_type
);
end component;

begin
  mult: mul32 generic map(14,0,0,0) port map(rst,clk,holdn,muli,mulo);

end;