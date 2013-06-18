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
--		Division is made using the radix-4 SRT algorithm 
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


entity div32 is
port (
    rst     : in  std_ulogic;
    clk     : in  std_ulogic;
    holdn   : in  std_ulogic;
    divi    : in  div32_in_type;
    divo    : out div32_out_type
);
end;

architecture rtl of div32 is

constant Zero65: std_logic_vector(64 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000";
constant Zero35: std_logic_vector(34 downto 0) := "00000000000000000000000000000000000";
constant Zero34: std_logic_vector(33 downto 0) := "0000000000000000000000000000000000";
constant Zero33: std_logic_vector(32 downto 0) := "000000000000000000000000000000000";
constant Zero29: std_logic_vector(28 downto 0) := "00000000000000000000000000000";
constant One32: std_logic_vector(31 downto 0) := "11111111111111111111111111111111";
constant One29: std_logic_vector(28 downto 0) := "11111111111111111111111111111";



component qSelector is
	port (		
		signed	: in std_logic;
		x     	: in  std_logic_vector(64 downto 0);
		d     	: in  std_logic_vector(31 downto 0);
		q    	: out std_logic_vector(2 downto 0)
	);
end component;

component t3to2compressor is
	generic(
		k: integer
	);
	port (
		x     	: in  std_logic_vector(k-1 downto 0);
		y     	: in  std_logic_vector(k-1 downto 0);
		z     	: in  std_logic_vector(k-1 downto 0);
		t   	: in  std_logic;
		s     	: out  std_logic_vector(k downto 0);
		c     	: out  std_logic_vector(k downto 0)
	);
end component;

type div_regtype is record
  state: std_logic_vector(2 downto 0);
  x: std_logic_vector(64 downto 0);
  cnt: std_logic_vector(3 downto 0);
  q: std_logic_vector(31 downto 0);
  d: std_logic_vector(31 downto 0);
  ovf: std_logic;
  neg: std_logic;
end record;

signal r, rin : div_regtype;
signal compOut1,compOut2: std_logic_vector(35 downto 0);
signal addin1x,addin2x,addresx,a,b: std_logic_vector(34 downto 0);
signal addresq: std_logic_vector(31 downto 0);
signal qdigit: std_logic_vector(2 downto 0);
signal t,addxCin: std_logic;

begin  
	Qsel: qSelector port map(signed=>divi.signed,x=>r.x,d=>r.d,q=>qdigit);	
	
	qCPA: process(qdigit,r.q)
	begin
		if (qdigit(2)='0') then
			addresq <= (r.q(29 downto 0) & "00") + (Zero29 & qdigit);
		else
			addresq <= (r.q(29 downto 0) & "00") + (One29 & qdigit);
		end if;
	end process;
	
	Comp: t3to2compressor generic map(35) port map(a,b,r.x(64 downto 30),t,compOut1,compOut2);
	
	SubGen: process(qdigit,r.d,divi.signed)
	variable ext: std_logic;
	begin
		ext := r.d(31) and divi.signed;
		case qdigit is
		when "101" =>	--	-3	3d
			a <= ext & ext & ext & r.d;
			b <= ext & ext & r.d & '0';
			t <= '0';
		when "110" =>	--	-2	2d
			a <= Zero35;
			b <=  ext & ext & r.d & '0';
			t <= '0';
		when "111" =>	--	-1	d
			a <=  ext & ext & ext & r.d;
			b <= Zero35;
			t <= '0';
		when "000" =>	--	0	0d
			a <= Zero35;
			b <= Zero35;
			t <= '0';
		when "001" =>	--	1	-d
			a <= not( ext & ext & ext & r.d);
			b <= Zero34 & '1';
			t <= '0';
		when "010" =>	--	2	-2d
			a <= Zero35;
			b <= not( ext & ext & r.d) & '0';
			t <= '1';
		when "011" =>	--	3	-3d
			a <= not( ext & ext & ext & r.d);
			b <= not( ext & ext & r.d) & '1';
			t <= '1';
		when others =>
			a <= Zero35;
			b <= Zero35;
			t <= '0';
		end case;		
	end process;
	
	divo.icc(0) <= '0';

  divcomb : process (r, rst, divi,addresx,addresq,compOut1,compOut2)
  variable v : div_regtype;
  variable vnready,vready: std_logic;
  variable shifts: integer;
  begin
    v := r;
	vready:='0';
	vnready:='0';
    case r.state is
    when "000" =>	
		v.cnt := "0000";
		if(divi.start = '1') then		
			v.state := "001";
		end if;
	when "001" =>
		--Overflow detection
		if divi.signed='0' then
			v.ovf := not(addresx(34));
			addin1x <= divi.y(32) & divi.y(32) & divi.y;
			addin2x <= not(divi.op2(32) & divi.op2(32) & divi.op2);
			addxCin <= '1';
		else
			if (divi.op2(32) xor divi.y(32))='0' then --do sub
				addin1x <= divi.y(32) & divi.y & divi.op1(31);
				addin2x <= not(divi.op2(32) & divi.op2(32) & divi.op2);
				addxCin <= '1';
			else	--do add
				addin1x <= divi.y(32) & divi.y & divi.op1(31);
				addin2x <= divi.op2(32) & divi.op2(32) & divi.op2;
				addxCin <= '0';

			end if;
			v.ovf := not (addresx(34) xor divi.y(32));
		end if;
		
		v.neg := divi.op2(32) xor divi.y(32);
	
	
		--DO THE PRE SHIFT
		shifts:=0;
		if divi.signed='1' then
			shifter: for I in 0 to 30 loop
				if divi.op2(32)='1' then	--look for first zero
					if divi.op2(I)='0' then shifts := 30-I; end if;
				else	--look for first one
					if divi.op2(I)='1' then shifts := 30-I; end if;
				end if;
			end loop shifter;
		else
			ushifter: for I in 0 to 31 loop
				if divi.op2(I)='1' then shifts := 31-I; end if;
			end loop ushifter;
		end if;
		
		--shifts => # of shifts to apply
		
		v.x := Zero65;
		v.x(63 downto shifts) := divi.y(31-shifts downto 0) & divi.op1(31 downto 0);
		v.x(64) := divi.y(32) and divi.signed;
		
		v.d := Zero32;
		v.d(31 downto shifts) := divi.op2(31-shifts downto 0);
		
		v.q := Zero32;
		v.state := "010";
    when "010" =>	--DO THE CALCULATION
		addin1x <= compOut1(34 downto 0);
		addin2x <= compOut2(34 downto 0);
		addxCin <= t;
		v.x := addresx(32 downto 0) & r.x(29 downto 0) & "00";	--shift x4
		v.q := addresq;
		if r.cnt="1110" then
			vnready:='1';
		end if;
		if r.cnt="1111" then
		v.state := "011";
			-- if addresx(34)=divi.y(32) then	--no correction required
				-- v.state := "000";
			-- else	--correction required
				-- v.state := "010";
			-- end if;
		else              
			v.cnt := r.cnt + "0001";  
		end if;
	when "011" =>	--RESULT CORRECTION & Finalization
		v.state := "000";
		vready:='1';
		if r.x(64)=not divi.y(32) then	--correction required
			v.q := addresx(31 downto 0);			
			if r.q(31)='0' then -- q>=0 => q--
				addin1x <= "000" & r.q;
				addin2x <= "000" & One32;
				addxCin <= '0';
			else				-- q<0 => q++
				addin1x <= "000" & r.q;
				addin2x <= Zero35;
				addxCin <= '1';
			end if;
		end if;
    when others =>
		v.state := "000";
    end case;

	if r.q=Zero32 then
		divo.icc(2)<='1';
	else
		divo.icc(2)<='0';
	end if;
	
	divo.icc(3) <= r.neg;
	divo.ready <= vready; divo.nready <= vnready;
    rin <= v;
    divo.result <= r.q;
	divo.icc(1) <= r.ovf;

  end process;

  CPAx: addresx <= addin1x + addin2x + addxCin;
  
  
  reg : process(clk)
  begin 
    if rising_edge(clk) then 
      if (holdn = '1') then r <= rin; end if;
      if (rst = '0') then r.state <= "000";end if;
    end if;
  end process;

end; 

