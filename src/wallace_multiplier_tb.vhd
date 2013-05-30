LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE std.textio.all;
USE work.typespackage.all;

ENTITY wallace_multiplier_tb IS
	GENERIC (
		width: INTEGER := 16
	);
END wallace_multiplier_tb;

ARCHITECTURE tb OF wallace_multiplier_tb IS

	SIGNAL t_reset				: STD_LOGIC;
	SIGNAL t_clk				: STD_LOGIC;
	SIGNAL t_holdn				: STD_LOGIC;

	SIGNAL t_a					: STD_LOGIC_VECTOR(31 DOWNTO 0);
	SIGNAL t_b					: STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	SIGNAL t_ready 				: STD_LOGIC;
	SIGNAL t_icc 				: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL t_p					: STD_LOGIC_VECTOR(63 DOWNTO 0);
	
	SIGNAL t_tmp_result			: STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
	SIGNAL t_p_a				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL is_t_a_signed		: STD_LOGIC;
	SIGNAL t_p_b				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL is_t_b_signed		: STD_LOGIC;
	SIGNAL t_result				: STD_LOGIC_VECTOR(63 DOWNTO 0);
	SIGNAL t_number_bits_port 	: STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);

	
	COMPONENT wallace_multiplier
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
			-- db_tmp_result		: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
			db_prod_a			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
			db_prod_b			: OUT STD_LOGIC_VECTOR(63 DOWNTO 0)
			-- db_number_bits_port	: OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0)
		);
	END COMPONENT;
	
	FUNCTION to_string(sv: Std_Logic_Vector) return string is
		USE Std.TextIO.all;
		USE ieee.std_logic_textio.all;
		VARIABLE lp: line;
	BEGIN
		write(lp, to_integer(signed(sv)));
		RETURN lp.all;
	END;	
BEGIN
	U_wallace_mult: wallace_multiplier
	GENERIC MAP (
		multype => 3,
		pipe => '0'
		-- width => width
	)
	PORT MAP (
		reset => t_reset,
		clock => t_clk,
		holdn => t_holdn,
		
		op1(31 DOWNTO 0) => t_a,
		op1(32) => is_t_a_signed,
		op2(31 DOWNTO 0) => t_b,
		op2(32) => is_t_b_signed,
		flush => '0',
		is_signed => '0',
		mac => '0',
		acc => (OTHERS => '0'),

		ready => t_ready,
		icc => t_icc,
		result => t_p,

		-- db_tmp_result => t_tmp_result,
		db_prod_a => t_p_a,
		db_prod_b => t_p_b
		-- db_number_bits_port => t_number_bits_port
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
		CONSTANT min_val : INTEGER := -2**(width-1);
		CONSTANT max_val : INTEGER := 2**(width-1)-1;

		VARIABLE v_a	: INTEGER := max_val;
		VARIABLE v_b	: INTEGER := min_val;
		VARIABLE i		: INTEGER := (max_val-min_val-1)/10;

	BEGIN
		
		FOR j IN 0 TO 10 LOOP
			WAIT FOR 10 ns;
			
			IF (v_a < min_val) OR (v_b > max_val) THEN
				t_a <= (OTHERS => 'U');
				t_b <= (OTHERS => 'U');
				EXIT;
			ELSE
				t_a <= std_logic_vector(to_signed(v_a,32));
				t_b <= std_logic_vector(to_signed(v_b,32));
			END IF;

			IF (v_a < 0) THEN
				is_t_a_signed <= '1';
			ELSE
				is_t_a_signed <= '0';
			END IF;
			
			IF (v_b < 0) THEN
				is_t_b_signed <= '1';
			ELSE
				is_t_b_signed <= '0';
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
	
	-- Reset Process
	rst_prc: PROCESS
	BEGIN
		t_reset <= '0';
		WAIT FOR 10 ns;
		t_reset <= '1';
		WAIT;
	END PROCESS;

	-- holdn Process
	holdn_prc: PROCESS
	BEGIN
		t_holdn <= '1';
		WAIT FOR 80 ns;
		t_holdn <= '0';
		WAIT;
	END PROCESS;

END tb;