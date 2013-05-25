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
--		The operands must be stable during
--		the calculations. The result is available one clock after
--		the ready signal is asserted.
------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
-- LIBRARY grlib;
-- USE grlib.stdlib.all;
-- LIBRARY gaisler;
-- USE gaisler.arith.all;
USE work.mypackage.all;

ENTITY wallace_multiplier IS
	GENERIC (
		width	: INTEGER := 4;
		stages	: INTEGER := 3
	);
	PORT (
		a			: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		b			: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		clk			: IN STD_ULOGIC;
		reset		: IN STD_ULOGIC;
		prod		: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
		prod_cout	: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
		prod_a		: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
		prod_b		: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0)
	);		
END wallace_multiplier;

ARCHITECTURE behavioral OF wallace_multiplier IS
	-- TYPE layer_depth_type IS ARRAY(32 DOWNTO 3) OF INTEGER;
	-- CONSTANT layer_depth: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	-- CONSTANT stages: INTEGER := layer_depth(width);

	TYPE WallaceTree_type IS ARRAY(stages-1 DOWNTO 0,width-1 DOWNTO 0, 2*width-1 DOWNTO 0) OF STD_LOGIC;
	TYPE InitTree_type IS ARRAY(width-1 DOWNTO 0, 2*width-1 DOWNTO 0) OF STD_LOGIC;
	
	SIGNAL InitTree							: InitTree_type; -- Initial product tree
	SIGNAL WallaceTree						: WallaceTree_type := (OTHERS => (OTHERS => (OTHERS => '0'))); -- Wallace tree
	SIGNAL add_a, add_b, add_sum,add_cout	: STD_LOGIC_VECTOR(2*width-1 DOWNTO 0); --for final adder
	SIGNAL c_in								: STD_LOGIC := '0';
	SIGNAL tmp_x							: STD_LOGIC := '0';
	SIGNAL tmp_y							: STD_LOGIC := '0';
	SIGNAL tmp_cin							: STD_LOGIC := '0';
	SIGNAL tmp_cout							: STD_LOGIC := '0';
	SIGNAL tmp_s							: STD_LOGIC := '0';
	
	-- COMPONENT bk_adder --brent kung adder
	-- 	GENERIC (
	-- 		width : 	INTEGER := 4
	-- 	);
	-- 	PORT (
	-- 		a		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		b		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		c_in	: IN STD_LOGIC;
	-- 		sum		: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		c_out	: OUT STD_LOGIC
	-- 	);
	-- END COMPONENT;	
		
	COMPONENT FA_array --full-adder-array
		GENERIC (
			width : INTEGER := 7
		);
		PORT (
			x		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			y		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			cin		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			s		: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			cout	: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0)
		);
	END COMPONENT;

BEGIN --fill multiplier matrix
	

	partial_proc: PROCESS(a,b,clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			FOR i IN 0 TO width-1 LOOP
				FOR j IN 0 TO width-1 LOOP
					InitTree(i,j+i) <= a(i) AND b(j);
				END LOOP;
			END LOOP;
		END IF;
	END PROCESS;
	
	wallace_proc: PROCESS (WallaceTree,InitTree,clk)
	BEGIN --work on the next stages
		IF (rising_edge(clk)) THEN
			FOR k IN 0 TO stages-1 LOOP
				FOR j IN 0 TO 2*width-1 LOOP
					IF (k = 0) THEN
						IF (j = 0) THEN
							WallaceTree(1,0,j) <= InitTree(0,j);
						
						ELSIF (j = 1) THEN
							WallaceTree(1,0,j) <= InitTree(0,j);
							WallaceTree(1,1,j) <= InitTree(1,j);
						
						ELSIF (j = 2) THEN
							WallaceTree(1,0,2) <= compute_sum(InitTree(0,2),InitTree(1,2),InitTree(2,2)); -- s
							WallaceTree(1,0,3) <= compute_cout(InitTree(0,2),InitTree(1,2),InitTree(2,2)); -- cout
						
						ELSIF (j = 3) THEN
							WallaceTree(1,1,3) <= compute_sum(InitTree(0,3),InitTree(1,3),InitTree(2,3)); -- s
							WallaceTree(1,1,4) <= compute_cout(InitTree(0,3),InitTree(1,3),InitTree(2,3)); -- cout	

							WallaceTree(1,2,3) <= InitTree(3,3);
						
						ELSIF (j = 4) THEN
							WallaceTree(1,0,4) <= compute_sum(InitTree(1,4),InitTree(2,4),InitTree(3,4)); -- s
							WallaceTree(1,0,5) <= compute_cout(InitTree(1,4),InitTree(2,4),InitTree(3,4)); -- cout	
						
						ELSIF (j = 5) THEN
							WallaceTree(1,1,5) <= InitTree(2,5);
							WallaceTree(1,2,5) <= InitTree(3,5);
						
						ELSIF (j = 6) THEN
							WallaceTree(1,2,6) <= InitTree(3,6);
						END IF;

					ELSIF (k = 1) THEN
						IF (j = 0) THEN
							WallaceTree(2,0,0) <= WallaceTree(1,0,0);
						
						ELSIF (j = 1) THEN
							WallaceTree(2,1,0) <= WallaceTree(1,1,0);
							WallaceTree(2,1,1) <= WallaceTree(1,1,1);
						
						ELSIF (j = 2) THEN
							WallaceTree(2,0,2) <= WallaceTree(1,0,2);
						
						ELSIF (j = 3) THEN
							WallaceTree(2,0,3) <= compute_sum(WallaceTree(1,0,3),WallaceTree(1,1,3),WallaceTree(1,2,3)); -- s
							WallaceTree(2,0,4) <= compute_cout(WallaceTree(1,0,3),WallaceTree(1,1,3),WallaceTree(1,2,3)); -- cout
						
						ELSIF (j = 4) THEN
							WallaceTree(2,1,4) <= compute_sum(WallaceTree(1,0,4),WallaceTree(1,1,4),'0'); -- s
							WallaceTree(2,1,5) <= compute_cout(WallaceTree(1,0,4),WallaceTree(1,1,4),'0'); -- cout
						
						ELSIF (j = 5) THEN
							WallaceTree(2,0,5) <= compute_sum(WallaceTree(1,0,5),WallaceTree(1,1,5),WallaceTree(1,2,5)); -- s
							WallaceTree(2,0,6) <= compute_cout(WallaceTree(1,0,5),WallaceTree(1,1,5),WallaceTree(1,2,5)); -- cout
						
						ELSIF (j = 6) THEN
							WallaceTree(2,1,6) <= WallaceTree(2,2,6);
						END IF;
					END IF;
				END LOOP;
			END LOOP;
		END IF;
	END PROCESS;

	-- Final Adder (Using a Brent Kung Adder)
	signal_vect_proc: PROCESS(WallaceTree)
	BEGIN
		FOR j IN 0 TO 2*width-1 LOOP
			add_a(j) <= WallaceTree(2,0,j);
			add_b(j) <= WallaceTree(2,1,j);
		END LOOP;
		add_a(7) <= add_a(6);
		add_b(7) <= add_b(6);
	END PROCESS;
		
	-- determineresult: FA_array
	-- PORT MAP(
	-- 	x => add_a,
	-- 	y => add_b,
	-- 	cin => (others => '0'),
	-- 	s => add_sum,
	-- 	cout => add_cout
	-- ); --x,y,cin,s,cout
	
	-- U_bk_add: bk_adder
	-- GENERIC MAP (
	-- 	width => 2*width
	-- )
	-- PORT MAP (
	-- 	a => add_a,
	-- 	b => add_b,
	-- 	c_in => c_in,
	-- 	sum => add_sum
	-- );
	
	
	prod <= std_logic_vector(unsigned(add_a) + unsigned(add_b));
	-- prod_cout <= add_cout;

	prod_a <= add_a;
	prod_b <= add_b;
	
END behavioral;
	
	