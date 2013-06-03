LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
LIBRARY grlib;
USE grlib.stdlib.all;
LIBRARY gaisler;
USE gaisler.arith.all;

ENTITY mul32 IS
	GENERIC (

		tech    : integer := 0;

		-- If set the multipliers will be inferred by the synthesis tool.
		-- Use this option if your synthesis tool is capable of inferring
		-- efficient multiplier implementation.
		--infer	: INTEGER := 1;

		-- Size of the multiplier that is actually implemented. All configu- 
		-- ration produce 64-bit result with different latencies.
		-- 0 - 16x16 bit multiplier
		-- 1 - 32x8 bit multiplier
		-- 2 - 32x16 bit multiplier
		-- 3 - 32x32 bit multiplier
		multype	: INTEGER range 0 to 3 := 0;

		-- Used in 16x16 bit multiplier configuration with inferred option 
		-- enabled. Adds a pipeline register stage to the multiplier. This 
		-- option gives better timing but adds one clock cycle to latency. 
		pipe	: INTEGER range 0 to 1 := 0;
		
		-- Enable multiply & accumulate operation. Use only with 16x16 
		-- multiplier option with no pipelining (pipe = 0) 
		mac		: INTEGER range 0 to 1 := 0
	);
	
	PORT (
		rst		: IN STD_ULOGIC; -- reset; active low
		clk		: IN STD_ULOGIC; -- clock
		holdn	: IN STD_ULOGIC; -- hold; active low

		-- MULI.* (all active high)
		-- OP1/2[32:0] Operand 1/2; OP1[32] - Sign bit. Operand 1/2 in 2’s complement format
		-- FLUSH - flush current operation
		-- SIGNED - Signed multiplication?
		-- START - Start multiplication
		-- MAC - Multiply & accumulate
		-- ACC[39:0] - Accumulator.
		muli	: IN mul32_IN_type;

		-- MULO.* (all active high)
		-- READY - Result is ready during the next clock cycle for 
		-- 		16x16, 32x8 and 32x16 configurations. Not used 
		-- 		for 32x32 configuration or MAC operation.

		-- NREADY - not used
		-- ICC[3:0] - Condition codes
		-- 	ICC[3] - Negative result (not used in 32x32 conf)
		-- 	ICC[1] - Zero result (not used in 32x32 conf)
		-- 	ICC[1:0] - Not used

		-- RESULT[63:0] - Result. Available at the end of the clock cycle if High
		-- 				MULO.READY was asserted in previous clock
		-- 				cycle. For 32x32 configuration the result is avail-
		-- 				able during second clock cycle after the
		-- 				MULI.START was asserted.
		mulo	: OUT mul32_OUT_type
	);
END mul32;

ARCHITECTURE behavioral OF mul32 IS

	SIGNAL input_a						: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	SIGNAL input_b						: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	SIGNAL debugging_tmp_result			: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL debugging_prod_a				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL debugging_prod_b				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL debugging_number_bits_port	: STD_LOGIC_VECTOR(63 DOWNTO 0);

	COMPONENT wallace_multiplier
		GENERIC (
			multype 			: INTEGER := multype
			--pipe 				: STD_ULOGIC := pipe
		);
		PORT (
			reset				: IN STD_ULOGIC;
			clock				: IN STD_ULOGIC;
			holdn				: IN STD_ULOGIC;

			-- muli related signals
			op1					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
			op2					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
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
	END COMPONENT;
BEGIN
	
	inp_prc: PROCESS (clk,muli)
	BEGIN
		IF (clk'EVENT AND clk = '1') THEN
			IF (muli.flush = '1') THEN
				input_a <= (OTHERS => '0');	
				input_b <= (OTHERS => '0');
			ELSE
				input_a <= muli.op1;
				input_b <= muli.op2;
			END IF;
		END IF;
	END PROCESS;

	

	wallace_mult: wallace_multiplier
	GENERIC MAP (
		multype => multype
		--pipe => pipe
	)
	PORT MAP (
		reset => rst,
		clock => clk,
		holdn => holdn,

		op1 => (OTHERS => '1'),
		op2 => (OTHERS => '1'),
		is_signed => muli.signed,
		mac => muli.mac,
		acc => muli.acc,

		ready => mulo.ready,
		icc => mulo.icc,
		result => mulo.result,

		db_tmp_result => debugging_tmp_result,
		db_prod_a => debugging_prod_a,
		db_prod_b => debugging_prod_b,
		db_number_bits_port => debugging_number_bits_port
	);

END behavioral;



