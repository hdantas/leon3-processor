LIBRARY ieee;
USE ieee.STD_LOGIC_1164.all;

ENTITY FA_array IS
	GENERIC (
		width	: INTEGER
	);
	PORT (
		x_array		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		y_array		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		cin_array	: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		s_array		: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		cout_array	: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0)
	);
END;

ARCHITECTURE rtl OF FA_array IS

	COMPONENT FA --full-adder
		PORT (
			x		: IN STD_LOGIC;
			y		: IN STD_LOGIC;
			cin		: IN STD_LOGIC;
			s		: OUT STD_LOGIC;
			cout	: OUT STD_LOGIC
		);
	END COMPONENT;

BEGIN

	GEN_FA: FOR i IN 0 TO width-1 GENERATE
		full_adder : FA
		PORT MAP(
			x => x_array(i),
			y => y_array(i),
			cin => cin_array(i),
			s => s_array(i),
			cout => cout_array(i)
		);
	END GENERATE GEN_FA;

END;