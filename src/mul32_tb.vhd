LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE std.textio.all;
USE work.typespackage.all;
LIBRARY grlib;
USE grlib.stdlib.all;
LIBRARY gaisler;
USE gaisler.arith.all;


ENTITY mul32_tb IS
END mul32_tb;

ARCHITECTURE tb OF mul32_tb IS

	SIGNAL t_rst				: STD_LOGIC;
	SIGNAL t_clk				: STD_LOGIC;
	SIGNAL t_holdn				: STD_LOGIC;

	SIGNAL t_muli				: mul32_IN_type;
	SIGNAL t_mulo				: mul32_OUT_type;
	
	COMPONENT mul32
		GENERIC (
			multype				: INTEGER;
			mac					: INTEGER
		);
		PORT (
			rst					: IN STD_ULOGIC;
			clk					: IN STD_ULOGIC;
			holdn				: IN STD_ULOGIC;

			-- muli related signals
			muli				: IN mul32_IN_type;
			mulo				: OUT mul32_OUT_type
		);
	END COMPONENT;
	
		
BEGIN
	multiplier: mul32
	GENERIC MAP (
		multype => 3,
		mac => 0
	)
	PORT MAP (
		rst => t_rst,
		clk => t_clk,
		holdn => t_holdn,
		
		muli => t_muli,
		mulo => t_mulo
	);

	-- Clock Process
	clk_prc: PROCESS
	BEGIN
		t_clk <= '0';
		WAIT FOR 5 ns;
		t_clk <= '1';
		WAIT FOR 5 ns;
	END PROCESS;	

	-- Input Processes
	inp_prc: PROCESS
		CONSTANT max_val : INTEGER := -15;
		CONSTANT min_val : INTEGER := -25;

		VARIABLE v_a	: INTEGER := max_val;
		VARIABLE v_b	: INTEGER := min_val;
		VARIABLE i		: INTEGER := 1;--(max_val-min_val-1)/10;

	BEGIN
		
		FOR j IN 0 TO 10 LOOP
			WAIT FOR 10 ns;
			
			-- IF (v_a < min_val) OR (v_b > max_val) THEN
			-- 	t_muli.op1 <= (OTHERS => 'U');
			-- 	t_muli.op2 <= (OTHERS => 'U');
			-- 	EXIT;
			-- ELSE
				t_muli.op1 <= std_logic_vector(to_signed(v_a,33));
				t_muli.op2 <= std_logic_vector(to_signed(v_b,33));
			-- END IF;

			IF (j<5) THEN
				v_a := v_a - i;
				v_b := v_b + i;
			ELSE
				v_a := v_a + i;
				v_b := v_b + i;
			END IF;
		END LOOP;

	END PROCESS;
	
	-- Start Process
	start_prc: PROCESS
	BEGIN
		t_muli.start <= '1';
		WAIT FOR 20 ns;
		t_muli.start <= '0';
		WAIT;
	END PROCESS;

	-- Reset Process
	rst_prc: PROCESS
	BEGIN
		t_rst <= '1';
		WAIT;
	END PROCESS;

	-- holdn Process
	holdn_prc: PROCESS
	BEGIN
		t_holdn <= '1';
		WAIT;
	END PROCESS;

END tb;