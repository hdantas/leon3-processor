library ieee;
use ieee.std_logic_1164.all;

entity HA is
	port (
		x		: in std_logic;
		y		: in std_logic;
		s		: out std_logic;
		cout	: out std_logic
	);
end;

architecture rtl of HA is
begin
	s <= x xor y;
	cout <= x and y;
end;