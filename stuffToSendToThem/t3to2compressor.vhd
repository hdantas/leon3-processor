-- 4to2 compresso with additional transfer digit
--		k-1 ... 76543210
--		               *	t
--		*** ... ********	x[k-1..0]
--		*** ... ********	y[k-1..0]
--		*** ... ********	z[k-1..0]
--------------------------------
--	   0*** ... ********	s[k..0]
--	   **** ... *******t	c[k..0]



library ieee;
use ieee.std_logic_1164.all;

entity t3to2compressor is
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
end;

architecture rtl of t3to2compressor is
	component  FA is
	port (
		x     	: in  std_logic;
		y     	: in  std_logic;
		cin   	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
	end component;
	
begin

	level1: for I in 0 to k-1 generate
		FA0: FA port map(x=>x(I),y=>y(I),cin=>z(I),s=>s(I),cout=>c(I+1));
	end generate;
	
	c(0) <= t;
	s(k) <= '0';
end;