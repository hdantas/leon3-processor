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

PACKAGE mypackage2 is

	FUNCTION compute_FA_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_FA_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_HA_sum (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_HA_cout (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;  
	FUNCTION this_level_bits (previous_level_bits:NATURAL;previous_column_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_full_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_half_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_remainder_bits (num_bits:NATURAL) RETURN NATURAL;
END mypackage2;

PACKAGE BODY mypackage2 IS
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
  	BEGIN
		RETURN (num_bits - num_full_adders(num_bits)*3 - num_half_adders(num_bits)*2);
  	END num_remainder_bits;

	FUNCTION num_full_adders (num_bits:NATURAL) RETURN NATURAL IS
  	BEGIN
  		RETURN (num_bits/3);
  	END num_full_adders;

	FUNCTION num_half_adders (num_bits:NATURAL) RETURN NATURAL IS
  	BEGIN
  		RETURN ((num_bits - 3*num_full_adders(num_bits))/2);
  	END num_half_adders;

END mypackage2;




LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY grlib;
USE grlib.stdlib.all;

LIBRARY gaisler;
USE gaisler.arith.all;

USE work.mypackage.all;



ENTITY mymul32 IS
	GENERIC (
		tech			    : INTEGER := 0;
		infer				: INTEGER RANGE 0 TO 1 := 1;
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
		db_started			: OUT STD_LOGIC
	);
END mymul32;

ARCHITECTURE behavioral OF mymul32 IS
	TYPE layer_depth_type IS ARRAY(32 DOWNTO 3) OF INTEGER;
	TYPE operand_size_type IS ARRAY(3 DOWNTO 0) OF INTEGER;

	CONSTANT op1_width_vector				: operand_size_type := (32,32,32,16);
	CONSTANT op2_width_vector				: operand_size_type := (32,16,8,16);

	CONSTANT width							: INTEGER := op1_width_vector(multype) + op2_width_vector(multype); -- result's width
	CONSTANT op1_width						: INTEGER := op1_width_vector(multype);
	CONSTANT op2_width						: INTEGER := op2_width_vector(multype);
	
	CONSTANT layer_depth					: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	CONSTANT levels							: INTEGER := layer_depth(op2_width);

	CONSTANT add_vector_baugh_wooley		: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := '1' & (width-2 DOWNTO op2_width+1 => '0') & '1' & (op2_width-1 DOWNTO 0 => '0');
	CONSTANT zeros							: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	CONSTANT zeros64						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	CONSTANT arrayX							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'X');
	CONSTANT arrayU							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'U');
	
	TYPE WallaceTree_type1 IS ARRAY (width-1 DOWNTO 0) OF STD_LOGIC;
	TYPE WallaceTree_type2 IS ARRAY (op2_width-1 DOWNTO 0) OF WallaceTree_type1;
	TYPE WallaceTree_type3 IS ARRAY (levels-1 DOWNTO 0) OF WallaceTree_type2;
	
	TYPE WallaceTree_type IS ARRAY (levels-1 DOWNTO 0,op2_width-1 DOWNTO 0, width-1 DOWNTO 0) OF STD_LOGIC;
	TYPE number_bits_type IS ARRAY (width-1 DOWNTO 0) OF NATURAL;

	SIGNAL WallaceTree						: WallaceTree_type := (OTHERS => (OTHERS => (OTHERS => '0'))); -- Wallace tree
	-- SIGNAL WallaceTree						: WallaceTree_type3 := (OTHERS => '0')(OTHERS => '0')(OTHERS => '0'); -- Wallace tree
	
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
		

BEGIN

	wallace_proc: PROCESS (WallaceTree,muli.op1,muli.op2,clk,rst,muli.flush)
		VARIABLE x						: STD_LOGIC := '0';
		VARIABLE y						: STD_LOGIC := '0';
		VARIABLE cin					: STD_LOGIC := '0';

		VARIABLE remainder_bits			: NATURAL := 0;
		VARIABLE num_full_adds			: NATURAL := 0;
		VARIABLE num_half_adds			: NATURAL := 0;

		VARIABLE current_row			: NATURAL := 0;
		VARIABLE next_level_row			: NATURAL := 0;
		VARIABLE next_level_column_row	: NATURAL := 0;

		VARIABLE number_bits			: number_bits_type := (OTHERS => 0);
		VARIABLE next_level_number_bits	: number_bits_type := (OTHERS => 0);

		VARIABLE started				: NATURAL := 0;

	BEGIN
		IF (muli.op1'EVENT OR muli.op2'EVENT) THEN
			started := 0; -- inputs have changed
		END IF;

		IF (clk='1' AND clk'EVENT AND started = 0 AND muli.start = '1') THEN
			started := 1; -- after change in inputs the start has gone up.
		END IF;

		IF (muli.start='0' AND muli.start'EVENT AND started = 1) THEN
			started := 2; -- falling edge
		END IF;

		IF (clk='1' AND clk'EVENT AND (rst = '0' OR muli.flush = '1')) THEN 
			FOR k IN levels-1 DOWNTO 0 LOOP
				FOR j IN op2_width-1 DOWNTO 0 LOOP
					FOR i IN width-1 DOWNTO 0 LOOP
						WallaceTree(k,j,i) <= '0'; -- Reset WallaceTree
					END LOOP;
				END LOOP;
			END LOOP;
		ELSIF ((rst = '1' AND muli.flush = '0')AND started = 2) THEN
			FOR i IN 0 TO op2_width-1 LOOP -- i: op2 index
				FOR j IN 0 TO op1_width-1 LOOP -- j: op1 1 index
					IF ((j+i) <= (op1_width-1)) THEN --make sure each column starts from row 0
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND (((muli.op1(32) OR muli.op2(32)) AND muli.signed) = '1') THEN
							WallaceTree(0,i,j+i) <= NOT(muli.op1(j) AND muli.op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0,i,j+i) <= muli.op1(j) AND muli.op2(i);
						END IF;
					ELSIF ((j+i)>(op1_width-1)) THEN
						IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) AND (((muli.op1(32) OR muli.op2(32)) AND muli.signed) = '1') THEN
							WallaceTree(0,op1_width-1-j,j+i) <= NOT(muli.op1(j) AND muli.op2(i)); -- negate some bits for signed numbers (modified baugh wooley, check slide 63 of Part 3 Multiplication)
						ELSE
							WallaceTree(0,op1_width-1-j,j+i) <= muli.op1(j) AND muli.op2(i);
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
						
						WallaceTree(k+1,next_level_row,j) <= compute_FA_sum(x,y,cin); -- save s
						WallaceTree(k+1,next_level_column_row,j+1) <= compute_FA_cout(x,y,cin); -- save cout
						
						current_row := current_row + 3; -- processed 3 inputs
						next_level_row := next_level_row + 1; -- wrote one s to next level
						next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
					END LOOP;
						
					FOR i IN 0 to (num_half_adds-1) LOOP
						
						x := WallaceTree(k,current_row,j);
						y := WallaceTree(k,current_row+1,j);
						
						WallaceTree(k+1,next_level_row,j) <= compute_HA_sum(x,y); -- save s
						WallaceTree(k+1,next_level_column_row,j+1) <= compute_HA_cout(x,y); -- save cout
						
						current_row := current_row + 2; -- processed 2 inputs
						next_level_row := next_level_row + 1; -- wrote one s to next level
						next_level_column_row := next_level_column_row + 1; -- wronte one cout to next level
					END LOOP;
					FOR i IN 0 to remainder_bits-1 LOOP -- left over bits, ie non processed (will at most be one bit)
						
						WallaceTree(k+1,next_level_row,j) <= WallaceTree(k,current_row,j); -- transfer bit to next level
						
						current_row := current_row + 1; -- processed 1 input
						next_level_row := next_level_row + 1; -- wrote one s to next level
					END LOOP;
						
						next_level_number_bits(j) := next_level_number_bits(j) + num_full_adds + num_half_adds + remainder_bits; -- update array with the number of bits written to next level
						-- be careful as it might have carry outs from previous columns
						next_level_number_bits(j+1) := num_full_adds + num_half_adds; -- update array with the number of couts generated (before this it should be 0)
				END LOOP;
				number_bits := next_level_number_bits;
				next_level_number_bits := (OTHERS => 0);
			END LOOP;

			FOR j IN 0 TO width-1 LOOP
				add_a(j) <= WallaceTree(levels-1,0,j);
				add_b(j) <= WallaceTree(levels-1,1,j);
			END LOOP;

		END IF;
	END PROCESS;


	-- Final process
	out_proc: PROCESS (clk,muli.op1,muli.op2,rst,muli.flush)
	VARIABLE result : STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	BEGIN
		IF(clk='1' AND clk'EVENT AND (rst = '1' AND muli.flush = '0') AND holdn = '1') THEN
			IF ((muli.op1(32) = '1' OR muli.op2(32) = '1') AND muli.signed = '1') THEN
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

			IF (muli.signed = '1' AND ((muli.op1(32) XOR muli.op2(32)) = '1')) THEN
				tmp_icc(3) <= '1'; -- is result negative?
			ELSE
				tmp_icc (3) <= '0';
			END IF;


			tmp_result <= result;

		ELSIF (clk='1' AND clk'EVENT AND (rst = '0' OR muli.flush = '1')) THEN
			FOR i IN 3 DOWNTO 0 LOOP
				tmp_icc(i) <= '0';
			END LOOP;
			FOR i IN 63 DOWNTO 0 LOOP
				tmp_result(i) <= '0';
			END LOOP;
		END IF;
	END PROCESS;
	
	ready_process: PROCESS (clk,add_a,add_b)
	VARIABLE ready : NATURAL := 0;
	BEGIN
		-- IF (clk'EVENT AND clk = '1') THEN
			IF ((add_a'EVENT OR add_b'EVENT) AND add_a /= arrayX AND add_a /= arrayU AND add_b /= arrayX AND add_b /= arrayU ) THEN
				tmp_ready <= '1';
			ELSIF (clk'EVENT AND clk = '1') THEN
				tmp_ready <= '0';
			END IF;
		-- END IF;/
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
	
	