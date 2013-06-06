LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE std.textio.all;

ENTITY wallace_mult_tb IS
	GENERIC (
		width: INTEGER := 111
	);
END wallace_mult_tb;

ARCHITECTURE tb OF wallace_mult_tb IS
	SIGNAL t_a: STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	SIGNAL t_b: STD_LOGIC_VECTOR(width-1 DOWNTO 0);
	SIGNAL t_p: STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
	SIGNAL t_clk: STD_LOGIC;
	SIGNAL t_reset: STD_LOGIC;
	
	COMPONENT wallace_mult
		GENERIC (
			width : INTEGER := 4
		);
		PORT (
			a :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			b :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			clk :	IN STD_LOGIC;
			reset :	IN STD_LOGIC;
			prod : OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0)
		);		
	END COMPONENT;
	
	FUNCTION to_string(sv: Std_Logic_Vector) return string is
    		USE Std.TextIO.all;
    		USE ieee.std_logic_textio.all;
		VARIABLE lp: line;
  	BEGIN
    		write(lp, to_integer(unsigned(sv)));
    		RETURN lp.all;
  	END;	
BEGIN
	U_wallace_mult: wallace_mult
	GENERIC MAP (
		width => width
	)
	PORT MAP (
		a => t_a,
		b => t_b,
		clk => t_clk,
		reset => t_reset,
		prod => t_p
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
		VARIABLE v_a: INTEGER := 0;
		VARIABLE v_b: INTEGER := 2**(width-1);
	BEGIN
		FOR i IN 0 TO 2**width LOOP
			WAIT FOR 10 ns;
			v_a := v_a + 1;
			v_b := v_b - i;
			t_a <= std_logic_vector(to_signed(v_a,width));
			t_b <= std_logic_vector(to_signed(v_b,width));
			
		END LOOP;
	END PROCESS;
	
	-- Reset Process
	rst_prc: PROCESS
	BEGIN
		t_reset <= '1';
		WAIT FOR 10 ns;
		t_reset <= '0';
		WAIT;
	END PROCESS;

END tb;