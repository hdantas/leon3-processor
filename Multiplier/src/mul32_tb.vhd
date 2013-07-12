LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY grlib;
USE grlib.stdlib.all;
LIBRARY gaisler;
USE gaisler.arith.all;

LIBRARY mypackage;
USE mypackage.mypackage.all;

ENTITY mul32_tb IS
END mul32_tb;

ARCHITECTURE tb OF mul32_tb IS

	SIGNAL t_rst					: STD_LOGIC;
	SIGNAL t_clk					: STD_LOGIC;
	SIGNAL t_holdn					: STD_LOGIC;

	SIGNAL t_muli					: mul32_IN_type;
	SIGNAL t_mulo					: mul32_OUT_type;
	SIGNAL O_t_mulo					: mul32_OUT_type;
	
	SIGNAL t_db_tmp_result			: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL t_db_prod_a				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL t_db_prod_b				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL t_db_number_bits_port	: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL t_db_started				: STD_LOGIC;
	SIGNAL t_db_op1					: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL t_db_op2					: STD_LOGIC_VECTOR(32 DOWNTO 0);
	SIGNAL t_db_is_signed			: STD_LOGIC;

	COMPONENT mul32Original
		GENERIC (
			tech					: INTEGER;
			multype					: INTEGER;
			pipe					: INTEGER;
			mac						: INTEGER
		);
		PORT (
			rst						: IN STD_ULOGIC;
			clk						: IN STD_ULOGIC;
			holdn					: IN STD_ULOGIC;

			muli					: IN mul32_IN_type;
			mulo					: OUT mul32_OUT_type
		);
	END COMPONENT;

	COMPONENT mul32
	GENERIC (
		tech					: INTEGER;
		-- infer					: INTEGER;
		multype					: INTEGER;
		pipe					: INTEGER;
		mac						: INTEGER
	);
	PORT (
		-- debugging signals
		db_tmp_result			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_a				: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_prod_b				: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_number_bits_port		: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
		db_started				: OUT STD_LOGIC;
		db_op1					: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
		db_op2					: OUT STD_LOGIC_VECTOR(32 DOWNTO 0);
		db_is_signed			: OUT STD_LOGIC;

		rst						: IN STD_ULOGIC;
		clk						: IN STD_ULOGIC;
		holdn					: IN STD_ULOGIC;

		muli					: IN mul32_IN_type;
		mulo					: OUT mul32_OUT_type
	);
	END COMPONENT;
	
		
BEGIN
	multiplier: mul32
	GENERIC MAP (
		tech => 0,
		-- infer => 1,
		multype => 0,
		pipe => 0,
		mac => 0
	)
	PORT MAP (
		db_tmp_result => t_db_tmp_result,
		db_prod_a => t_db_prod_a,
		db_prod_b => t_db_prod_b,
		db_number_bits_port => t_db_number_bits_port,
		db_started => t_db_started,
		db_op1 => t_db_op1,
		db_op2 => t_db_op2,
		db_is_signed => t_db_is_signed,



		rst => t_rst,
		clk => t_clk,
		holdn => t_holdn,
		
		muli => t_muli,
		mulo => t_mulo
	);

	Omultiplier: mul32Original
	GENERIC MAP (
		tech => 0,
		multype => 0,
		pipe => 0,
		mac => 0
	)
	PORT MAP (
		rst => t_rst,
		clk => t_clk,
		holdn => t_holdn,
		
		muli => t_muli,
		mulo => O_t_mulo
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
		CONSTANT max_val : INTEGER := 25;
		CONSTANT min_val : INTEGER := -15;

		VARIABLE v_a	: INTEGER := max_val;
		VARIABLE v_b	: INTEGER := min_val;
		VARIABLE i		: INTEGER := 1;--(max_val-min_val-1)/10;

	BEGIN
		WAIT FOR 5 ns;

		FOR j IN 0 TO 10 LOOP
			
			WAIT FOR 60 ns;
			IF (v_a < min_val) OR (v_b > max_val) THEN
				t_muli.op1 <= (OTHERS => 'U');
				t_muli.op2 <= (OTHERS => 'U');
				EXIT;
			ELSE
				t_muli.op1 <= std_logic_vector(to_signed(v_a,33));
				t_muli.op2 <= std_logic_vector(to_signed(v_b,33));
			END IF;
			IF (v_a < 0 OR v_b < 0) THEN
				t_muli.signed <= '1';
			ELSE
				t_muli.signed <= '0';
			END IF;
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

		t_muli.flush <= '0';
		t_muli.mac <= '0';
		t_muli.acc <= std_logic_vector(to_signed(100,40));

		t_muli.start <= '0';
		WAIT FOR 45 ns;

		FOR j IN 0 TO 10 LOOP
			t_muli.start <= '0';
			WAIT FOR 70 ns;
			t_muli.start <= '1';
			WAIT FOR 10 ns;
		END LOOP;
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
		-- WAIT FOR 15 ns;
		-- t_holdn <= '0';
		-- WAIT FOR 70 ns;
	END PROCESS;

END tb;