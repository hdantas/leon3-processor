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
	signed :in std_logic;
	start: in std_logic;
    op1	: in std_logic_vector(63 downto 0);
	op2: in std_logic_vector(31 downto 0);
	resOriginal: out div32_out_type;
	resRadix4: out div32_out_type
);
end;
architecture rtl of divTestBench is

type div_regtype is record
  state: std_logic_vector(2 downto 0);
end record;
  
component div32Original is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end component;

component div32 is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end component;

signal r, rin : div_regtype;
signal divi: div32_in_type;
signal holdnOr,holdn4: std_ulogic;
signal vresOr,vres4: div32_out_type;
begin
	divi.signed <= signed;
	divi.y <= op1(63) & op1(63 downto 32);
	divi.op1 <= op1(31) & op1(31 downto 0);
	divi.op2 <= op2(31) & op2;
	divi.start <= start;
	divi.flush <= '0';

	resOriginal <= vresOr;
	resRadix4 <= vres4;
	
  divOriginal: div32Original port map(rst,clk,holdnOr,divi,vresOr);
  divRadix4: div32 port map(rst,clk,holdn4,divi,vres4);
  
  divcomb : process (r, rst,start,vresOr,vres4)
  variable v : div_regtype;
  begin
	v := r;
	case r.state is
    when "000" =>	--IDLE
		holdnOr <= '0';
		holdn4 <= '0';
		if start='1' then
			v.state := "001";
		end if;
	when "001" =>	--Waiting for radix 4 divider
		holdnOr <= '1';
		holdn4 <= '1';
		if vres4.ready='1' then
			v.state := "010";
		end if;
	when "010" =>	--Waiting for original divider
		holdnOr <= '1';
		holdn4 <= '0';
		if vresOr.ready='1' then
			v.state := "000";
		end if;
	when others =>
		holdnOr <= '0';
		holdn4 <= '0';
	end case;
	rin <= v;
  end process;
  
  
	reg : process(clk)
	begin 
		if rising_edge(clk) then 
			r <= rin;
			if (rst = '0') then r.state <= "000"; end if;
		end if;
	end process;

end;