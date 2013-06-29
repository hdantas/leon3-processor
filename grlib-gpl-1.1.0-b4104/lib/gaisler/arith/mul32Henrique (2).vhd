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
USE ieee.numeric_std.all;

LIBRARY grlib;
USE grlib.stdlib.all;

LIBRARY gaisler;
USE gaisler.arith.all;

ENTITY mul32 IS
	GENERIC (
		tech				: INTEGER := 0;
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
		db_started			: OUT STD_LOGIC := '0';
		db_op1				: OUT STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
		db_op2				: OUT STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
		db_is_signed		: OUT STD_LOGIC := '0'
	);
END mul32;

ARCHITECTURE behavioral OF mul32 IS
	TYPE layer_depth_type IS ARRAY(3 DOWNTO 0) OF INTEGER RANGE 3 TO 9;
	TYPE operand_size_type IS ARRAY(3 DOWNTO 0) OF INTEGER RANGE 8 TO 32;

	CONSTANT op1_width_vector				: operand_size_type := (32,32,32,16);
	CONSTANT op2_width_vector				: operand_size_type := (32,16,8,16);

	CONSTANT width							: INTEGER RANGE 24 TO 64 := op1_width_vector(multype) + op2_width_vector(multype); -- result's width
	CONSTANT op1_width						: INTEGER RANGE 16 TO 32 := op1_width_vector(multype);
	CONSTANT op2_width						: INTEGER RANGE 8 TO 32 := op2_width_vector(multype);
	
	CONSTANT layer_depth					: layer_depth_type := (9,7,6,7);
	CONSTANT levels							: INTEGER RANGE 3 TO 9 := layer_depth(multype);

	CONSTANT add_vector_baugh_wooley		: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := '1' & (width-2 DOWNTO op2_width+1 => '0') & '1' & (op2_width-1 DOWNTO 0 => '0');
	CONSTANT zeros							: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	CONSTANT zeros64						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	CONSTANT zerosWallace					: STD_LOGIC_VECTOR(levels*op1_width*width-1 DOWNTO 0) := (OTHERS => '0');
	CONSTANT arrayX							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'X');
	CONSTANT arrayU							: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => 'U');
	

	TYPE number_bits_type IS ARRAY (width-1 DOWNTO 0) OF NATURAL;
	

	CONSTANT maxk : INTEGER := levels;
	CONSTANT maxi : INTEGER := op1_width;
	CONSTANT maxj : INTEGER := width;
	
	TYPE numberFA_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE 0 TO 10;
	TYPE numberCI_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE 0 TO 11;
	TYPE number_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE 0 TO 1;

	-- TYPE numberFA_type IS ARRAY((maxk-1)*maxj-1 DOWNTO 0) OF INTEGER RANGE 0 TO 10;
	-- TYPE number_type IS ARRAY((maxk-1)*maxj-1 DOWNTO 0) OF INTEGER RANGE 0 TO 10;
	


	CONSTANT numberFA_all					: numberFA_all_type := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,5,4,4,4,4,4,4,4,3,3,3,3,3,3,3,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,4,4,4,4,4,4,5,5,5,6,6,6,6,6,6,7,7,7,6,6,6,6,5,5,5,5,5,4,4,4,4,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,10,10,9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0);
	CONSTANT numberHA_all					: number_all_type := (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0);
	CONSTANT numberRE_all					: number_all_type := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1);
	CONSTANT numberCI_all					: numberCI_all_type := (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,5,5,4,4,4,4,4,4,4,3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,4,4,5,5,5,5,5,5,6,6,6,7,7,7,7,7,7,7,6,6,6,6,6,5,5,5,5,4,4,4,4,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,11,10,10,10,9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0);

	TYPE number_range_type IS ARRAY(4 DOWNTO 0) OF INTEGER RANGE 0 TO 1192;
	CONSTANT number_range					: number_range_type := (1192,680,392,192,0);

	CONSTANT bottom_range					: INTEGER := number_range(multype);
	CONSTANT top_range						: INTEGER := number_range(multype+1)-1;

	CONSTANT numberFA						: numberFA_all_type := (1191 DOWNTO (maxk-1)*maxj => 0) & numberFA_all(top_range DOWNTO bottom_range);
	CONSTANT numberHA						: number_all_type := (1191 DOWNTO (maxk-1)*maxj => 0) & numberHA_all(top_range DOWNTO bottom_range);
	CONSTANT numberRE						: number_all_type := (1191 DOWNTO (maxk-1)*maxj => 0) & numberRE_all(top_range DOWNTO bottom_range);
	CONSTANT numberCI						: numberCI_all_type := (1191 DOWNTO (maxk-1)*maxj => 0) & numberCI_all(top_range DOWNTO bottom_range);

	SIGNAL tmp_started						: STD_LOGIC := '0';

	SIGNAL op1								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	SIGNAL op2								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
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
	SIGNAL is_negative						: STD_LOGIC := '0';
	SIGNAL is_signed						: STD_LOGIC := '0';
		
	SIGNAL number_bits						: number_bits_type := (OTHERS => 0);
	SIGNAL WallaceTree						: STD_LOGIC_VECTOR(maxk*maxi*maxj-1 DOWNTO 0) := (others=>'0'); -- Wallace tree



	component FA is
	port (		
		x     	: in  std_logic;
		y     	: in  std_logic;
		cin   	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
	end component;


	component HA is
	port (		
		x     	: in  std_logic;
		y     	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
end component;

BEGIN

	rst_proc: PROCESS(clk)
	BEGIN
		IF (clk='1' AND clk'event) AND (rst = '0' OR muli.flush = '1') THEN
			WallaceTree <= zerosWallace;
		END IF;
	END PROCESS;


	hold_proc: PROCESS(clk)
		VARIABLE started				: STD_LOGIC := '0';
	BEGIN
		IF (clk='1' AND clk'event AND rst = '1' AND muli.flush = '0' AND holdn = '1') THEN
			IF (started = '1') THEN
				started := '0';
				tmp_ready <= '1';
			END IF;

			IF (muli.start = '1') THEN
				op1 <= muli.op1;
				op2 <= muli.op2;
				is_signed <= muli.signed AND (muli.op1(32) OR muli.op2(32));
				is_negative <= muli.signed AND (muli.op1(32) XOR muli.op2(32));
				started := '1';
				tmp_ready <= '0';
			END IF;
			
			tmp_started <= started;

		END IF;
	END PROCESS;


	--step 1 wallace algorithm (first level of the tree)
	init_step_row: for i in 0 to op2_width-1 generate
		init_step_columns: for j in 0 to op1_width-1 generate
			
			first_half: if ((j+i) <= (op1_width-1)) generate
				neg_operation1: if (((j = op1_width-1) OR (i = op2_width-1)) AND ((i+j) /= (width - 2))) generate
					WallaceTree(j+i+maxj*i) <= (op1(j) AND op2(i)) XOR is_signed; -- negate AND if is a signed multiplication
				end generate neg_operation1;

				pos_operation1: IF (((j /= op1_width-1) AND (i /= op2_width-1)) OR ((i+j) = (width - 2))) generate
					WallaceTree(j+i+maxj*i) <= op1(j) AND op2(i);
				end generate pos_operation1;
			end generate first_half;


			second_half: if (j+i) > (op1_width-1) generate
				neg_operation2: IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) generate
					WallaceTree(j+i+maxj*(op1_width-1-j)) <= (op1(j) AND op2(i)) XOR is_signed;  -- negate AND if is a signed multiplication
				end generate neg_operation2;

				pos_operation2: IF (((j /= op1_width-1) AND (i /= op2_width-1)) OR ((i+j) = (width - 2))) generate
					WallaceTree(j+i+maxj*(op1_width-1-j)) <= op1(j) AND op2(i);
				end generate pos_operation2;
			end generate second_half;

		end generate init_step_columns;
	end generate init_step_row;


	init_number_bits: for j IN 0 TO (width-2) generate -- update number bits each column has
		lower_half: IF (j < (op2_width-1)) generate
			number_bits(j) <= j+1;
		end generate lower_half;

		upper_half:	IF (j > (op1_width-1)) generate
			number_bits(j) <= width-1-j;
		end generate upper_half;

		remaining:	if ((j >= (op2_width-1)) AND (j <= (op1_width-1))) generate
			number_bits(j) <= op2_width;
		end generate remaining;

	end generate init_number_bits;

	update_wallace: for k in 0 to levels-2 generate
		columns: for j in 0 to width-2 generate
			full_adders: for i in 0 to numberFA(j+maxj*k)-1 generate
				PortFA: FA port map(
					-- x => WallaceTree(k)(numberCI(k)(j)+3*i))(j),
					x => WallaceTree(j+maxj*(numberCI(j+maxj*k)+3*i+maxi*k)),
					-- y => WallaceTree(k)(numberCI(k)(j)+3*i+1)(j),
					y => WallaceTree(j+maxj*(numberCI(j+maxj*k)+3*i+1+maxi*k)),
					-- cin => WallaceTree(k)(numberCI(k)(j)+3*i+2)(j),
					cin => WallaceTree(j+maxj*(numberCI(j+maxj*k)+3*i+2+maxi*k)),
					-- s => WallaceTree(k+1)(i)(j),
					s => WallaceTree(j+maxj*(i+maxi*(k+1))),
					-- cout => WallaceTree(k+1)(i)(j+1)
					cout => WallaceTree(j+1+maxj*(i+maxi*(k+1)))
				);
			end generate full_adders;

			half_adders: if numberHA(j+maxj*k) = 1 generate
				PortHA: HA port map(
					-- x => WallaceTree(k)(numberCI(k)(j)+3*numberFA(k)(j))(j),
					x => WallaceTree(j+maxj*(numberCI(j+maxj*k)+3*numberFA(j+maxj*k)+maxi*k)),
					-- y => WallaceTree(k)(numberCI(k)(j)+3*numberFA(k)(j)+1)(j),
					y => WallaceTree(j+maxj*(numberCI(j+maxj*k)+3*numberFA(j+maxj*k)+1+maxi*k)),
					-- s => WallaceTree(k+1)(numberFA(k)(j))(j),
					s => WallaceTree(j+maxj*(numberFA(j+maxj*k)+maxi*(k+1))),
					-- cout => WallaceTree(k+1)(numberFA(k)(j))(j+1)
					cout => WallaceTree(j+1+maxj*(numberFA(j+maxj*k)+maxi*(k+1)))
				);
			end generate half_adders;

			remaining: if numberRE(j+maxj*k) = 1 generate
				-- WallaceTree(k+1)(numberFA(k)(j)+numberHA(k)(j)+numberCI(k)(j))(j) <= WallaceTree(k)(3*numberFA(j)+2*numberHA(j))(j);
				WallaceTree(j+maxj*(numberFA(j+maxj*k)+numberHA(j+maxj*k)+numberCI(j+maxj*k)+maxi*(k+1))) <= WallaceTree(j+maxj*(3*numberFA(j+maxj*k)+2*numberHA(j+maxj*k)+maxi*k));
			end generate remaining;

		end generate columns;
	end generate update_wallace;
 

	-- register_proc: PROCESS (clk)
	-- BEGIN
	-- 	IF (clk='1' AND clk'event AND holdn = '1') THEN
	-- 		FOR j IN 0 TO width-1 LOOP
	-- 			-- add_a(j) <= WallaceTree(j+maxj*(maxi*(levels-1))); -- op1 for final addition
	-- 			-- add_b(j) <= WallaceTree(j+maxj*(1+maxi*(levels-1))); -- op2 for final addition

	-- 			add_a(j) <= WallaceTree(j+maxj*(maxi*(0))); -- op1 for final addition
	-- 			add_b(j) <= WallaceTree(j+maxj*(1+maxi*(0))); -- op2 for final addition				
	-- 		END LOOP;
	-- 	END IF;
	-- END PROCESS;

	final_op: for j IN 0 TO width-1 generate
		-- add_a(j) <= WallaceTree(j+maxj*(maxi*(levels-1))); -- op1 for final addition
		-- add_b(j) <= WallaceTree(j+maxj*(1+maxi*(levels-1))); -- op2 for final addition

		add_a(j) <= WallaceTree(j+maxj*(maxi*(1))); -- op1 for final addition
		add_b(j) <= WallaceTree(j+maxj*(1+maxi*(1))); -- op2 for final addition
	end generate final_op;

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

	db_tmp_result <= tmp_result;
	db_number_bits_port <= (63 DOWNTO width => '0') & add_vector_baugh_wooley;
	
	db_op1 <= op1;
	db_op2 <= op2;
	db_is_signed <= is_signed;

	db_prod_a <= (63 DOWNTO width => '0') & add_a;
	db_prod_b <= (63 DOWNTO width => '0') & add_b;
	db_started <= tmp_started;
	
END behavioral;