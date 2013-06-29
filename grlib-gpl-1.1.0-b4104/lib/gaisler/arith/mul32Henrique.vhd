------------------------------------------------------------------------------
--
-----------------------------------------------------------------------------
-- Entity: 	mul32
-- File:	mul32.vhd
-- Authors:	Luca Feltrin - Henrique Dantas
-- Description:	
------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

PACKAGE mypackage is

	FUNCTION compute_FA_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_FA_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_HA_sum (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_HA_cout (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;  
	FUNCTION this_level_bits (previous_level_bits:NATURAL;previous_column_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_full_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_half_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_remainder_bits (num_bits:NATURAL) RETURN NATURAL;
END mypackage;

PACKAGE BODY mypackage IS
	FUNCTION compute_FA_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC IS
	BEGIN
    	RETURN (x XOR y XOR c_in);
  	END compute_FA_sum;

	FUNCTION compute_FA_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC IS
	BEGIN
    	RETURN ((x AND y) OR (c_in AND (x XOR y)));
  	END compute_FA_cout;

  FUNCTION compute_HA_sum (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC IS
  BEGIN
      RETURN (x XOR y);
    END compute_HA_sum;

  FUNCTION compute_HA_cout (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC IS
  BEGIN
      RETURN (x AND y);
    END compute_HA_cout;


  	FUNCTION this_level_bits (previous_level_bits:NATURAL;previous_column_bits:NATURAL) RETURN NATURAL IS
  		VARIABLE result: NATURAL := 0;
  		VARIABLE this_level: NATURAL := 0;
  		VARIABLE previous_column: NATURAL := 0;
  		VARIABLE num_FA: NATURAL := 0;
  		VARIABLE num_HA: NATURAL := 0;
  	BEGIN
  		previous_column := num_half_adders(previous_column_bits) + num_full_adders(previous_column_bits); --couts from previous column

  		num_HA := num_half_adders(previous_level_bits);
  		num_FA := num_full_adders(previous_level_bits);
  		this_level := num_FA + num_HA; -- s from FA and HA from previous level
  		result := previous_column + this_level + previous_level_bits - num_FA*3 - num_HA*2; -- add remainder bit if one exists

  		RETURN result;
  	END this_level_bits;

	FUNCTION num_remainder_bits (num_bits:NATURAL) RETURN NATURAL IS
		VARIABLE result: NATURAL := 0;
  	BEGIN
		CASE num_bits IS
			WHEN 1 => result := 1;
			WHEN 4 => result := 1;
			WHEN 7 => result := 1;
			WHEN 10 => result := 1;
			WHEN 13 => result := 1;
			WHEN 16 => result := 1;
			WHEN 19 => result := 1;
			WHEN 22 => result := 1;
			WHEN 25 => result := 1;
			WHEN 28 => result := 1;
			WHEN 31 => result := 1;
			WHEN OTHERS => result := 0;
		END CASE;

		RETURN result;
  	END num_remainder_bits;

	FUNCTION num_full_adders (num_bits:NATURAL) RETURN NATURAL IS
		VARIABLE result: NATURAL := 0;
  	BEGIN
		CASE num_bits IS
			WHEN 3 => result := 1;
			WHEN 4 => result := 1;
			WHEN 5 => result := 1;
			WHEN 6 => result := 2;
			WHEN 7 => result := 2;
			WHEN 8 => result := 2;
			WHEN 9 => result := 3;
			WHEN 10 => result := 3;
			WHEN 11 => result := 3;
			WHEN 12 => result := 4;
			WHEN 13 => result := 4;
			WHEN 14 => result := 4;
			WHEN 15 => result := 5;
			WHEN 16 => result := 5;
			WHEN 17 => result := 5;
			WHEN 18 => result := 6;
			WHEN 19 => result := 6;
			WHEN 20 => result := 6;
			WHEN 21 => result := 7;
			WHEN 22 => result := 7;
			WHEN 23 => result := 7;
			WHEN 24 => result := 8;
			WHEN 25 => result := 8;
			WHEN 26 => result := 8;
			WHEN 27 => result := 9;
			WHEN 28 => result := 9;
			WHEN 29 => result := 9;
			WHEN 30 => result := 10;
			WHEN 31 => result := 10;
			WHEN 32 => result := 10;
			WHEN OTHERS => result := 0;
		END CASE;
  		
  		RETURN result;
  	END num_full_adders;

	FUNCTION num_half_adders (num_bits:NATURAL) RETURN NATURAL IS
		VARIABLE result: NATURAL := 0;
  	BEGIN
  		CASE num_bits IS
			WHEN 2 => result := 1;
			WHEN 5 => result := 1;
			WHEN 8 => result := 1;
			WHEN 11 => result := 1;
			WHEN 14 => result := 1;
			WHEN 17 => result := 1;
			WHEN 20 => result := 1;
			WHEN 23 => result := 1;
			WHEN 26 => result := 1;
			WHEN 29 => result := 1;
			WHEN 32 => result := 1;
			WHEN OTHERS => result := 0;
		END CASE;

		RETURN result;
  	END num_half_adders;

END mypackage;




LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY grlib;
USE grlib.stdlib.all;

LIBRARY gaisler;
USE gaisler.arith.all;

USE work.mypackage.all;



ENTITY mul32 IS
	GENERIC (
		tech			    : INTEGER := 0;
		multype				: INTEGER RANGE 0 TO 3 := 0;
		pipe				: INTEGER RANGE 0 TO 1 := 0;
		mac					: INTEGER RANGE 0 TO 1 := 0
	);
	PORT (
		rst					: IN STD_ULOGIC;
		clk					: IN STD_ULOGIC;
		holdn				: IN STD_ULOGIC;

		-- muli related signals
		muli				: IN mul32_IN_type;
		-- op1					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		-- op2					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		-- flush				: IN STD_LOGIC;
		-- is_signed			: IN STD_LOGIC;
		-- start				: IN STD_LOGIC;
		-- mac					: IN STD_LOGIC;
		-- acc					: IN STD_LOGIC_VECTOR(39 DOWNTO 0);

		-- mulo related signals
		mulo				: OUT mul32_OUT_type;
		-- ready				: OUT STD_LOGIC;
		-- icc					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		-- result				: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);

		-- debugging signals
		db_tmp_result		: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_a			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_b			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_number_bits_port	: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_started			: OUT STD_LOGIC := '0'
	);
END mul32;

ARCHITECTURE behavioral OF mul32 IS
	TYPE layer_depth_type IS ARRAY(32 DOWNTO 3) OF INTEGER RANGE 3 TO 9;
	TYPE operand_size_type IS ARRAY(3 DOWNTO 0) OF INTEGER RANGE 8 TO 32;

	CONSTANT op1_width_vector				: operand_size_type := (32,32,32,16);
	CONSTANT op2_width_vector				: operand_size_type := (32,16,8,16);

	CONSTANT width							: INTEGER RANGE 24 TO 64 := op1_width_vector(multype) + op2_width_vector(multype); -- result's width
	CONSTANT op1_width						: INTEGER RANGE 16 TO 32 := op1_width_vector(multype);
	CONSTANT op2_width						: INTEGER RANGE 8 TO 32 := op2_width_vector(multype);
	
	CONSTANT layer_depth					: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	CONSTANT levels							: INTEGER RANGE 3 TO 9 := layer_depth(op2_width);

	CONSTANT add_vector_baugh_wooley		: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := '1' & (width-2 DOWNTO op2_width+1 => '0') & '1' & (op2_width-1 DOWNTO 0 => '0');
	CONSTANT zeros							: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	CONSTANT zeros64						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	CONSTANT arrayX							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'X');
	CONSTANT arrayU							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'U');
	
	-- TYPE WallaceTree_type1 IS ARRAY (width-1 DOWNTO 0) OF STD_LOGIC;
	-- TYPE WallaceTree_type2 IS ARRAY (op2_width-1 DOWNTO 0) OF WallaceTree_type1;
	-- TYPE WallaceTree_type3 IS ARRAY (levels-1 DOWNTO 0) OF WallaceTree_type2;
	TYPE WallaceTree_type1 IS ARRAY (64-1 DOWNTO 0) OF STD_LOGIC;
	TYPE WallaceTree_type2 IS ARRAY (32-1 DOWNTO 0) OF WallaceTree_type1;
	TYPE WallaceTree_type3 IS ARRAY (9-1 DOWNTO 0) OF WallaceTree_type2;	
	
	-- TYPE WallaceTree_type IS ARRAY (levels-1 DOWNTO 0,op2_width-1 DOWNTO 0, width-1 DOWNTO 0) OF STD_LOGIC;
	TYPE number_bits_type IS ARRAY (width-1 DOWNTO 0) OF NATURAL;

	-- SIGNAL WallaceTree						: WallaceTree_type := (OTHERS => (OTHERS => (OTHERS => '0'))); -- Wallace tree
	SIGNAL WallaceTree						: WallaceTree_type3 := ((others => (others=> (others=>'0')))); -- Wallace tree
	
	-- SIGNAL op1								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	-- SIGNAL op2								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	SIGNAL baugh_wooley_add					: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := (OTHERS => '0');
	SIGNAL add_a, add_b, add_sum,add_cout	: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => '0'); --for final adder
	SIGNAL c_in								: STD_LOGIC := '0';
	SIGNAL tmp_x							: STD_LOGIC := '0';
	SIGNAL tmp_y							: STD_LOGIC := '0';
	SIGNAL tmp_cin							: STD_LOGIC := '0';
	SIGNAL tmp_cout							: STD_LOGIC := '0';
	SIGNAL tmp_s							: STD_LOGIC := '0';
	SIGNAL tmp_icc							: STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tmp_result						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tmp_ready						: STD_LOGIC := '0';
	SIGNAL is_signed						: STD_LOGIC := '0';
	SIGNAL is_negative						: STD_LOGIC := '0';

		

BEGIN

	wallace_proc: PROCESS (WallaceTree,clk,rst)
		VARIABLE x						: STD_LOGIC := '0';
		VARIABLE y						: STD_LOGIC := '0';
		VARIABLE cin					: STD_LOGIC := '0';

		VARIABLE remainder_bits			: INTEGER RANGE 0 TO 1 := 0;
		VARIABLE num_full_adds			: INTEGER RANGE 0 TO 10 := 0;
		VARIABLE num_half_adds			: INTEGER RANGE 0 TO 1 := 0;

		VARIABLE current_row			: INTEGER RANGE 0 TO 29 := 0;
		VARIABLE next_level_row			: INTEGER RANGE 0 TO 29 := 0;
		VARIABLE next_level_column_row	: INTEGER RANGE 0 TO 29 := 0;

		VARIABLE number_bits			: number_bits_type := (OTHERS => 0);
		VARIABLE next_level_number_bits	: number_bits_type := (OTHERS => 0);

		VARIABLE op1					: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
		VARIABLE op2					: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');

		VARIABLE started				: STD_LOGIC := '0';
		VARIABLE is_signed_var			: STD_LOGIC := '0';

	BEGIN
		IF (clk='1' AND clk'event AND (rst = '0' OR muli.flush = '1')) THEN  -- missing reset HERE
			FOR k IN levels-1 DOWNTO 0 LOOP
				FOR j IN op2_width-1 DOWNTO 0 LOOP
					FOR i IN width-1 DOWNTO 0 LOOP
						WallaceTree(k)(j)(i) <= '0'; -- Reset WallaceTree
					END LOOP;
				END LOOP;
			END LOOP;
		ELSE
			db_started <= started;
			IF (clk='1' AND clk'event AND holdn = '1') THEN
				IF (started = '1') THEN
					started := '0';
					tmp_ready <= '1';
				END IF;

				IF (muli.start = '1') THEN
					op1 := muli.op1;
					op2 := muli.op2;
					is_signed <= muli.signed AND (op1(32) OR op2(32));
					is_signed_var := muli.signed AND (op1(32) OR op2(32));
					is_negative <= muli.signed AND (op1(32) XOR op2(32));
					started := '1';
					tmp_ready <= '0';
				END IF;
			END IF;

			FOR i IN 0 TO op2_width-1 LOOP -- i: op2 index
				FOR j IN 0 TO op1_width-1 LOOP -- j: op1 1 index
					IF ((j+i) <= (op1_width-1)) THEN --make sure each column starts from row 0
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND (is_signed_var = '1') THEN
							WallaceTree(0)(i)(j+i) <= NOT(op1(j) AND op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0)(i)(j+i) <= op1(j) AND op2(i);
						END IF;
					ELSIF ((j+i)>(op1_width-1)) THEN
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND (is_signed_var = '1') THEN
							WallaceTree(0)(op1_width-1-j)(j+i) <= NOT(op1(j) AND op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0)(op1_width-1-j)(j+i) <= op1(j) AND op2(i);
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
					
					
					--FOR i IN 0 to (num_full_adds-1) LOOP
					FOR i IN 0 TO 10 LOOP -- max number of FA is 10 (for a 32*32 multiplication)
						IF (i <= (num_full_adds-1)) THEN
							x := WallaceTree(k)(current_row)(j);
							y := WallaceTree(k)(current_row+1)(j);
							cin := WallaceTree(k)(current_row+2)(j);
							
							WallaceTree(k+1)(next_level_row)(j) <= compute_FA_sum(x,y,cin); -- save s
							WallaceTree(k+1)(next_level_column_row)(j+1) <= compute_FA_cout(x,y,cin); -- save cout
							
							current_row := current_row + 3; -- processed 3 inputs
							next_level_row := next_level_row + 1; -- wrote one s to next level
							next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
						END IF;
					END LOOP;
					
					-- FOR i IN 0 to (num_half_adds-1) LOOP
					IF (num_half_adds = 1) THEN -- max possible number of HA is 1
						x := WallaceTree(k)(current_row)(j);
						y := WallaceTree(k)(current_row+1)(j);
						
						WallaceTree(k+1)(next_level_row)(j) <= compute_HA_sum(x,y); -- save s
						WallaceTree(k+1)(next_level_column_row)(j+1) <= compute_HA_cout(x,y); -- save cout
						
						current_row := current_row + 2; -- processed 2 inputs
						next_level_row := next_level_row + 1; -- wrote one s to next level
						next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
					END IF;
					 -- END LOOP;

					-- FOR i IN 0 to remainder_bits-1 LOOP -- left over bits, ie non processed (will at most be one bit)
					IF (remainder_bits = 1) THEN -- possible to have 1 left over bit, ie non processed (will at most be one bit)
						WallaceTree(k+1)(next_level_row)(j) <= WallaceTree(k)(current_row)(j); -- transfer bit to next level
						
						current_row := current_row + 1; -- processed 1 input
						next_level_row := next_level_row + 1; -- wrote one s to next level
					END IF;
					-- END LOOP;
						
						next_level_number_bits(j) := next_level_number_bits(j) + num_full_adds + num_half_adds + remainder_bits; -- update array with the number of bits written to next level
						-- be careful as it might have carry outs from previous columns
						next_level_number_bits(j+1) := num_full_adds + num_half_adds; -- update array with the number of couts generated (before this it should be 0)
				END LOOP;
				number_bits := next_level_number_bits;
				FOR i IN width-1 DOWNTO 0 LOOP
					next_level_number_bits(i) := 0;
				END LOOP;

			END LOOP;
			FOR j IN 0 TO width-1 LOOP
				add_a(j) <= WallaceTree(levels-1)(0)(j);
				add_b(j) <= WallaceTree(levels-1)(1)(j);
			END LOOP;
		END IF;
	END PROCESS;


	-- Final process
	out_proc: PROCESS (clk)
	VARIABLE result : STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	BEGIN
		IF (clk='1' AND clk'event) THEN
			IF(rst = '0' OR muli.flush = '1') THEN
				tmp_icc <= "0000";
				tmp_result <= std_logic_vector(unsigned(zeros64));

			ELSIF (holdn = '1') THEN
				IF (is_signed = '1') THEN
					IF (mac = 1 and muli.mac = '1') THEN
						result := std_logic_vector(signed(add_a) + signed(add_b)+ signed(add_vector_baugh_wooley) + signed(muli.acc) + signed(zeros64));
					ELSE
						result := std_logic_vector(signed(add_a) + signed(add_b)+ signed(add_vector_baugh_wooley) + signed(zeros64));
					END IF;
				ELSE
					IF (mac = 1 and muli.mac = '1') THEN
						result := std_logic_vector(unsigned(add_a) + unsigned(add_b)+ unsigned(muli.acc) + unsigned(zeros64));
					ELSE
						result := std_logic_vector(unsigned(add_a) + unsigned(add_b)+ unsigned(zeros64));
					END IF;
				END IF;


				IF (result = zeros64) THEN
					tmp_icc(2) <= '1'; -- is result zero?
				ELSE
					tmp_icc(2) <= '0';
				END IF;

				IF (is_negative = '1') THEN
					tmp_icc(3) <= '1'; -- is result negative?
				ELSE
					tmp_icc (3) <= '0';
				END IF;

				tmp_result <= result;
			END IF;
		END IF;
	END PROCESS;
	
	mulo.ready <= tmp_ready;
	mulo.icc <= tmp_icc;
	mulo.result <= tmp_result;
	
	-- prod <= (OTHERS => '0');
	db_tmp_result <= tmp_result;
	db_number_bits_port <= (63 DOWNTO width => '0') & add_vector_baugh_wooley;
	
	db_prod_a <= (63 DOWNTO width => '0') & add_a;
	db_prod_b <= (63 DOWNTO width => '0') & add_b;

	-- db_prod_a <= (63 DOWNTO 33 => op1(32)) & op1;
	-- db_prod_b <= (63 DOWNTO 33 => op2(32)) & op2;
	
END behavioral;
	
	