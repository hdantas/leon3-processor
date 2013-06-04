LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY FA IS
	PORT (
		x		: in std_logic;
		y		: in std_logic;
		cin		: in std_logic;
		s		: out std_logic;
		cout	: out std_logic
	);
END;

ARCHITECTURE rtl OF FA IS
BEGIN
	s <= x XOR y XOR cin;
	cout <= (x AND y) OR (cin AND (x XOR y));
END;