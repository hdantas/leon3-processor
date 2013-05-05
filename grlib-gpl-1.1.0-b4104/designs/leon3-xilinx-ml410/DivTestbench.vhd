library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.stdlib.all;
library gaisler;
use gaisler.arith.all;

entity divTestBench is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end;
architecture rtl of divTestBench is
  
component div32 is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end component;

begin
  div: div32 port map(rst,clk,holdn,divi,divo);

end;