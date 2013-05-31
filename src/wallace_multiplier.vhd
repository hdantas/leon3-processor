------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------
-- Entity: 	wallace_multiplier
-- File:	wallace_multiplier.vhd
-- Authors:	Luca Feltrin - Henrique Dantas
-- Description:	
------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE typespackage IS
	TYPE port_add_type IS ARRAY (2 DOWNTO 0, 7 DOWNTO 0 ) OF STD_LOGIC;
	TYPE number_bits_port_type IS ARRAY (7 DOWNTO 0) OF NATURAL;
END typespackage;


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
-- LIBRARY grlib;
-- USE grlib.stdlib.all;
-- LIBRARY gaisler;
-- USE gaisler.arith.all;
USE work.mypackage.all;
USE work.typespackage.all;


ENTITY wallace_multiplier IS
	GENERIC (
		multype				: INTEGER;
		pipe				: STD_ULOGIC
		-- width				: INTEGER
	);
	PORT (
		reset				: IN STD_ULOGIC;
		clock				: IN STD_ULOGIC;
		holdn				: IN STD_ULOGIC;

		-- muli related signals
		op1					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		op2					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		flush				: IN STD_LOGIC;
		is_signed			: IN STD_LOGIC;
		mac					: IN STD_LOGIC;
		acc					: IN STD_LOGIC_VECTOR(39 DOWNTO 0);

		-- mulo related signals
		ready				: OUT STD_LOGIC;
		icc					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		result				: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);

		-- debugging signals
		db_tmp_result		: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_a			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_b			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_number_bits_port	: OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
	);
END wallace_multiplier;

ARCHITECTURE behavioral OF wallace_multiplier IS
	TYPE layer_depth_type IS ARRAY(32 DOWNTO 3) OF INTEGER;
	TYPE operand_size_type IS ARRAY(3 DOWNTO 0) OF INTEGER;
	-- CONSTANT layer_depth: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	-- CONSTANT levels: INTEGER := layer_depth(width);


	CONSTANT op1_width_vector				: operand_size_type := (32,32,32,16);
	CONSTANT op2_width_vector				: operand_size_type := (32,16,8,16);
	CONSTANT width							: INTEGER := op1_width_vector(multype) + op2_width_vector(multype); -- result's width
	CONSTANT op1_width						: INTEGER := op1_width_vector(multype);
	CONSTANT op2_width						: INTEGER := op2_width_vector(multype);
	
	CONSTANT layer_depth					: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	CONSTANT levels							: INTEGER := layer_depth(op2_width);
	CONSTANT add_vector_baugh_wooley		: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := '1' & (width-2 DOWNTO op2_width+1 => '0') & '1' & (op2_width-1 DOWNTO 0 => '0');

	TYPE WallaceTree_type IS ARRAY(levels-1 DOWNTO 0,op2_width-1 DOWNTO 0, width-1 DOWNTO 0) OF STD_LOGIC;

	SIGNAL baugh_wooley_add					: STD_LOGIC_VECTOR((width-1) DOWNTO 0);
	SIGNAL WallaceTree						: WallaceTree_type := (OTHERS => (OTHERS => (OTHERS => '0'))); -- Wallace tree
	SIGNAL add_a, add_b, add_sum,add_cout	: STD_LOGIC_VECTOR(width-1 DOWNTO 0); --for final adder
	SIGNAL c_in								: STD_LOGIC := '0';
	SIGNAL tmp_x							: STD_LOGIC := '0';
	SIGNAL tmp_y							: STD_LOGIC := '0';
	SIGNAL tmp_cin							: STD_LOGIC := '0';
	SIGNAL tmp_cout							: STD_LOGIC := '0';
	SIGNAL tmp_s							: STD_LOGIC := '0';
	SIGNAL tmp_result						: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := (OTHERS => '0');

	TYPE number_bits_type IS ARRAY (width-1 DOWNTO 0) OF NATURAL;
 		

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
		
	-- COMPONENT FA_array --full-adder-array
	-- 	GENERIC (
	-- 		width : INTEGER := 7
	-- 	);
	-- 	PORT (
	-- 		x		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		y		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		cin		: IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		s		: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	-- 		cout	: OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0)
	-- 	);
	-- END COMPONENT;

BEGIN


	wallace_proc: PROCESS (clock,reset,WallaceTree)
		VARIABLE x: STD_LOGIC := '0';
		VARIABLE y: STD_LOGIC := '0';
		VARIABLE cin: STD_LOGIC := '0';
		VARIABLE remainder_bits: NATURAL := 0;
		VARIABLE num_full_adds: NATURAL := 0;
		VARIABLE num_half_adds: NATURAL := 0;
		VARIABLE current_row: NATURAL := 0;
		VARIABLE next_level_row: NATURAL := 0;
		VARIABLE next_level_column_row: NATURAL := 0;

		VARIABLE number_bits : number_bits_type := (OTHERS => 0);
		VARIABLE next_level_number_bits : number_bits_type := (OTHERS => 0);

	BEGIN
		IF(reset = '0') THEN
			WallaceTree <= (OTHERS => (OTHERS => (OTHERS => '0'))); -- Reset WallaceTree
		ELSE
		 	FOR i IN 0 TO op2_width-1 LOOP -- i: operand 2 index
				FOR j IN 0 TO op1_width-1 LOOP -- j: operand 1 index
					IF ((j+i) <= (op1_width-1)) THEN --make sure each column starts from row 0
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND ((op1(32) = '1') OR (op2(32) = '1')) AND (is_signed = '1') THEN
							WallaceTree(0,i,j+i) <= NOT(op1(j) AND op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0,i,j+i) <= op1(j) AND op2(i);
						END IF;

					ELSIF ((j+i)>(op1_width-1)) THEN
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND ((op1(32) = '1') OR (op2(32) = '1')) AND (is_signed = '1') THEN
							WallaceTree(0,op1_width-1-j,j+i) <= NOT(op1(j) AND op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0,op1_width-1-j,j+i) <= op1(j) AND op2(i);
						END IF;
					END IF;
				END LOOP;
			END LOOP;

			FOR j IN 0 TO width-2 LOOP -- initialize number_bits (ie how many bits each column has)
				IF (j <= (op2_width-1)) THEN
					number_bits(j) := j+1;
				ELSIF (j>=(width-op2_width-1)) THEN
					number_bits(j) := width-1-j;
				ELSE
					number_bits(j) := op2_width;
				END IF;
			END LOOP;
		 	
			FOR k IN 0 TO levels-2 LOOP -- k = level
				FOR j IN 0 TO width-2 LOOP -- j = column
					current_row := 0; --pointer for row of current level
					next_level_row := next_level_number_bits(j); -- pointer for row of next level (s from FA and HA and remainder bit go here)
					-- it may not be 0 because there maybe couts from previous column
					next_level_column_row := 0; -- pointer for row of next column of next level (carry outs go here)
					

					remainder_bits := num_remainder_bits(number_bits(j));
					num_full_adds := num_full_adders(number_bits(j));
					num_half_adds := num_half_adders(number_bits(j));
					
					
					FOR i IN 0 to (num_full_adds-1) LOOP
						
						x := WallaceTree(k,current_row,j);
						y := WallaceTree(k,current_row+1,j);
						cin := WallaceTree(k,current_row+2,j);
						
						WallaceTree(k+1,next_level_row,j) <= compute_sum(x,y,cin); -- save s
						WallaceTree(k+1,next_level_column_row,j+1) <= compute_cout(x,y,cin); -- save cout
						
						current_row := current_row + 3; -- processed 3 inputs
						next_level_row := next_level_row + 1; -- wrote one s to next level
						next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
					END LOOP;
						

					FOR i IN 0 to (num_half_adds-1) LOOP -- TODO: use half adder implementation (no cin)
						
						x := WallaceTree(k,current_row,j);
						y := WallaceTree(k,current_row+1,j);
						cin := '0';
						
						WallaceTree(k+1,next_level_row,j) <= compute_sum(x,y,cin); -- save s
						WallaceTree(k+1,next_level_column_row,j+1) <= compute_cout(x,y,cin); -- save cout
						
						-- number_bits_port(7) <= compute_cout(x,y,cin);


						current_row := current_row + 2; -- processed 2 inputs
						next_level_row := next_level_row + 1; -- wrote one s to next level
						next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
					END LOOP;

					FOR i IN 0 to remainder_bits-1 LOOP
						
						WallaceTree(k+1,next_level_row,j) <= WallaceTree(k,current_row,j); -- transfer bit to next level
						
						current_row := current_row + 1; -- processed 1 input
						next_level_row := next_level_row + 1; -- wrote one s to next level
					END LOOP;

						-- number_bits_port(j) <= CONV_INTEGER(WallaceTree(k+1,0,j));
						-- number_bits_port(7) <= CONV_INTEGER(WallaceTree(k+1,0,7));
						
						next_level_number_bits(j) := next_level_number_bits(j) + num_full_adds + num_half_adds + remainder_bits; -- update array with the number of bits written to next level
						-- be careful as it might have carry outs from previous columns
						next_level_number_bits(j+1) := num_full_adds + num_half_adds; -- update array with the number of couts generated (before this it should be 0)

				END LOOP;
				number_bits := next_level_number_bits;
				next_level_number_bits := (OTHERS => 0);
			END LOOP;
		END IF;
	END PROCESS;

	signal_vect_proc: PROCESS(WallaceTree)
	BEGIN
		FOR k IN 0 TO levels-1 LOOP
			FOR j IN 0 TO width-1 LOOP
				add_a(j) <= WallaceTree(levels-1,0,j);
				add_b(j) <= WallaceTree(levels-1,1,j);
			END LOOP;
		END LOOP;
	END PROCESS;
	
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
	
	-- the extra operands at the end come from the modified baugh wooley (check slide 63 of Part 3 Multiplication)
	-- tmp_result <= std_logic_vector(signed(add_a) + signed(add_b) + ('1' SLL (2*width-1)) + ('1' SLL width));
	-- tmp_result <= std_logic_vector(signed(add_a) + signed(add_b) + (2**(2*width-1)) + (2**width));
	-- result <= (63 DOWNTO (2*width) => tmp_result(2*width-1)) & tmp_result;


	-- Final output register
	out_proc: PROCESS(clock,reset,holdn)
	BEGIN
		IF(clock'EVENT AND clock = '1') THEN
			IF(reset = '0') THEN
				tmp_result <= (OTHERS => '0');
			ELSIF (holdn = '1') THEN
				IF ((is_signed = '1') AND (op1(32) = '1' OR op2(32) = '1')) THEN
					tmp_result <= std_logic_vector(signed(add_a) + signed(add_b)+ signed(add_vector_baugh_wooley));
				ELSE
					tmp_result <= std_logic_vector(unsigned(add_a) + unsigned(add_b));
				END IF;
			END IF;
		END IF;
	END PROCESS;
	

	
	result <= (63 DOWNTO width => tmp_result(width-1)) & tmp_result;
	-- prod <= (OTHERS => '0');
	db_tmp_result <= (63 DOWNTO width => '0') & baugh_wooley_add;
	db_number_bits_port <= (63 DOWNTO width => '0') & add_vector_baugh_wooley;
	db_prod_a <= (63 DOWNTO width => '0') & add_a;
	db_prod_b <= (63 DOWNTO width => '0') & add_b;
	
END behavioral;
	
	