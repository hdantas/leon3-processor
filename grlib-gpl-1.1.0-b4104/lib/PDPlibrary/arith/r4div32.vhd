------------------------------------------------------------------------------
--   
-----------------------------------------------------------------------------
-- Entity: 	r4s-div32
-- File:	r4s-div32.vhd
-- Authors:	Luca Feltrin - Henrique Dantas
-- Description:	This unit implements a divide unit to execute 64-bit by 32-bit
--		division. The divider leaves no remainder.
--		Overflow detection is performed according to the
--		SPARC V8 manual, method B (page 116)
--		Division is made using the radix-4 SRT algorithm with an all-positive p-d plot
--  using carry save format,	and takes ?? clocks. 
--  The operands must be stable during
--		the calculations. The result is available one clock after
--		the ready signal is asserted.
------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.stdlib.all;
library gaisler;
use gaisler.arith.all;

entity r4s_div32 is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end;

architecture rtl of r4s_div32 is

type div_regtype is record
  state: std_logic_vector(2 downto 0);
end record;

signal r, rin : div_regtype;

begin

  divcomb : process (r, rst, divi)
  variable v : div_regtype;
  begin
    v := r;
    case r.state is
    when "000" =>
      v.state := "001";
    when "001" =>
      v.state := "010";
    when "010" =>
      v.state := "011";
    when "011" =>
      v.state := "100";
    when "100" =>
      v.state := "101";
    when others =>
      v.state := "000";
    end case;

    rin <= v;
    divo.result(2 downto 0) <= v.state;

  end process;

  reg : process(clk)
  begin 
    if rising_edge(clk) then 
      if (holdn = '1') then r <= rin; end if;
      if (rst = '0') then r.state <= "000";end if;
    end if;
  end process;

end; 

