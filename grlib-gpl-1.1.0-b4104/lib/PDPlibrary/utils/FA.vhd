library ieee;
use ieee.std_logic_1164.all;

entity FA is
	port (
		x     	: in  std_logic;
		y     	: in  std_logic;
		cin   	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
end;

architecture rtl of FA is
begin
	s <= x xor y xor cin;
	cout <= (x and y) or (cin and (x xor y));
end;