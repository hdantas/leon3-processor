LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;
-- LIBRARY grlib;
-- USE grlib.stdlib.all;
-- LIBRARY gaisler;
-- USE gaisler.arith.all;

ENTITY mul32 IS
	GENERIC (
		-- If set the multipliers will be inferred by the synthesis tool.
		-- Use this option if your synthesis tool is capable of inferring
		-- efficient multiplier implementation.
		infer	: INTEGER := 1;

		-- Size of the multiplier that is actually implemented. All configu- 
		-- ration produce 64-bit result with different latencies.
		-- 0 - 16x16 bit multiplier
		-- 1 - 32x8 bit multiplier
		-- 2 - 32x16 bit multiplier
		-- 3 - 32x32 bit multiplier
		multype	: INTEGER := 0;

		-- Used in 16x16 bit multiplier configuration with inferred option 
		-- enabled. Adds a pipeline register stage to the multiplier. This 
		-- option gives better timing but adds one clock cycle to latency. 
		pipe	: INTEGER := 0;
		
		-- Enable multiply & accumulate operation. Use only with 16x16 
		-- multiplier option with no pipelining (pipe = 0) 
		mac		: INTEGER := 0
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
		mulo	: OUT mul32_out_type
	);
END mul32;

ARCHITECTURE behavioral OF mul32 IS
	COMPONENT wallace_multiplier
		PORT (
			reset				: IN STD_ULOGIC;
			clock				: IN STD_ULOGIC;

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
			db_prod_cout		: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
			db_prod_a			: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
			db_prod_b			: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
			db_number_bits_port	: OUT number_bits_port_type
		);		
	END COMPONENT;
BEGIN
	
	prc: PROCESS (multype)
	BEGIN
		CASE multype IS
			WHEN 0 => width <= 16; --16x16
			WHEN 1 => width <= 32; --32x8
			WHEN 2 => width <= 32; --32x16
			WHEN 3 => width <= 32; --32x32
			WHEN OTHERS =>  width <= 'X';
		END CASE;
	END PROCESS;

	inp_prc: PROCESS (clk,muli)
	BEGIN
		IF (risingedge(clk) AND (muli.start = '1')) THEN
			input_a <= muli.op1;
			input_b <= muli.op2;
		END IF;
	END PROCESS;

	

	wallace_mult: wallace_multiplier
	GENERIC MAP (width => width,levels => levels)
	PORT MAP (
		reset => rst,
		clock => clk,
		op1 => muli.op1,
		op2 => muli.op2,
		flush => muli.flush,
		is_signed => muli.signed,
		mac => muli.mac,
		acc => muli.acc,

		ready => mulo.ready,
		icc => mulo.icc
		result => mulo.result,

		db_prod_cout => debugging_prod_cout,
		db_prod_a => debugging_prod_a,
		db_prod_b => debugging_prod_b,
		db_number_bits_port => debugging_number_bits_port
	);

END behavioral;



