LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE my_funs IS
	FUNCTION clogb2 (a: NATURAL) RETURN NATURAL;
	FUNCTION prev_lvl_carry (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL;
	FUNCTION this_lvl_bits (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL;
	FUNCTION num_full_adders (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL;
	FUNCTION num_half_adders (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL;
END my_funs;

PACKAGE BODY my_funs IS
	FUNCTION clogb2 (a: NATURAL) RETURN NATURAL IS
		VARIABLE aggregate : NATURAL := a;
		VARIABLE return_val : NATURAL := 0;
	BEGIN
		compute_clogb2: 
		FOR i IN a DOWNTO 0 LOOP

			IF aggregate > 0 THEN
				return_val := return_val + 1;
			END IF;
			
			aggregate := aggregate / 2;			
		END LOOP;
			
		RETURN return_val;

	END clogb2;
	
	FUNCTION prev_lvl_carry (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL IS
		VARIABLE this_weight_base_bits: NATURAL := 0;
		VARIABLE this_num_bits: NATURAL := 0;
		VARIABLE num_carry: NATURAL := 0;	
	BEGIN
		IF this_weight > (width-1) THEN
			IF this_weight = 2*width-1 THEN
				this_weight_base_bits := 1;		
			ELSIF this_weight = width THEN
				this_weight_base_bits := 2*width-this_weight;
			ELSE
				this_weight_base_bits := 2*width-this_weight-1;
			END IF;	
		ELSE
			this_weight_base_bits := this_weight+1;
		END IF;
		
		IF this_lvl > 0 THEN -- Recursive case
			IF this_weight > 0 THEN
				this_num_bits := this_lvl_bits(width,this_weight-1,this_lvl-1);
				num_carry := this_num_bits/3;
				num_carry := num_carry + (this_num_bits-num_carry*3)/2;
			ELSE
				num_carry := 0;
			END IF;
		ELSE
			num_carry := this_weight_base_bits/3;
			num_carry := num_carry + (this_weight_base_bits-num_carry*3)/2;
		END IF;
		
		RETURN num_carry;		
	END prev_lvl_carry;
	
	FUNCTION this_lvl_bits (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL IS
		VARIABLE this_weight_base_bits: NATURAL := 0;
		VARIABLE prev_lvl_bits: NATURAL := 0;
		VARIABLE full_adder_sums: NATURAL := 0;
		VARIABLE half_adder_sums: NATURAL := 0;
		VARIABLE this_num_bits: NATURAL := 0;
	BEGIN
		IF this_weight > (width-1) THEN
			IF this_weight = 2*width-1 THEN
				this_weight_base_bits := 1;		
			ELSIF this_weight = width THEN
				this_weight_base_bits := 2*width-this_weight;
			ELSE
				this_weight_base_bits := 2*width-this_weight-1;
			END IF;	
		ELSE
			this_weight_base_bits := this_weight+1;
		END IF;
		
		IF this_lvl > 0 THEN -- Recursive case
			IF this_weight > 0 THEN
				prev_lvl_bits := this_lvl_bits(width,this_weight,this_lvl-1);
				full_adder_sums := prev_lvl_bits/3;
				half_adder_sums := (prev_lvl_bits-full_adder_sums*3)/2;
				this_num_bits := prev_lvl_bits - 2*full_adder_sums- half_adder_sums + prev_lvl_carry(width,this_weight,this_lvl);
			ELSE
				this_num_bits := this_lvl_bits(width,this_weight,this_lvl-1);
			END IF;
		ELSE
			this_num_bits := this_weight_base_bits;
		END IF;
		
		RETURN this_num_bits;
	END this_lvl_bits;
	
	FUNCTION num_full_adders (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL IS
		VARIABLE this_num_bits: INTEGER := this_lvl_bits(width,this_weight,this_lvl);
	BEGIN
		RETURN (this_num_bits/3);
	END num_full_adders;
	
	FUNCTION num_half_adders (width: NATURAL; this_weight: NATURAL; this_lvl: NATURAL) RETURN NATURAL IS
		VARIABLE this_num_bits: INTEGER := this_lvl_bits(width,this_weight,this_lvl);
		VARIABLE num_full_adds: INTEGER := 0;
	BEGIN
		num_full_adds := this_num_bits/3;
		RETURN ((this_num_bits-num_full_adds*3)/2);
	END num_half_adders;
END my_funs;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_funs.all;

ENTITY wallace_mult IS
	GENERIC (
		width : INTEGER := 4
	);
	PORT (
		a :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		b :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		prod : OUT STD_LOGIC_VECTOR(2*width-1 DOWNTO 0)
	);		
END wallace_mult;

ARCHITECTURE behavioral OF wallace_mult IS
	TYPE layer_depth_type IS ARRAY(32 DOWNTO 3) OF INTEGER;
	CONSTANT layer_depth: layer_depth_type := (9,9,9,8,8,8,8,8,8,8,8,8,7,7,7,7,7,7,7,7,7,7,7,7,6,5,5,4,3,3);
	CONSTANT stages: INTEGER := layer_depth(width);
	TYPE W_type IS ARRAY(2*width-1 DOWNTO 0, width-1 DOWNTO 0, stages-1 DOWNTO 0) OF STD_LOGIC;
	TYPE P_type IS ARRAY(width-1 DOWNTO 0, width-1 DOWNTO 0) OF STD_LOGIC;
	SIGNAL P: P_type; -- Initial product tree
	SIGNAL W: W_type; -- Wallace tree
	SIGNAL add_a, add_b, add_sum: STD_LOGIC_VECTOR(2*width-1 DOWNTO 0);
	SIGNAL c_in: STD_LOGIC := '0';
		
	COMPONENT bk_adder
		GENERIC (
			width : 	INTEGER := 4
		);
		PORT (
			a :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			b :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			c_in :	IN STD_LOGIC;
			sum :	OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
			c_out :	OUT STD_LOGIC
		);
	END COMPONENT;	
		
BEGIN

	partial_proc: PROCESS(a,b)
	BEGIN
		FOR i IN width-1 DOWNTO 0 LOOP
			FOR j IN width-1 DOWNTO 0 LOOP
				P(i,j) <= a(i) AND b(j);
			END LOOP;
		END LOOP;
	END PROCESS;
	
	wallace_proc: PROCESS(W,P)
		VARIABLE this_carry_bits: NATURAL := 0;
		VARIABLE num_full_adds: NATURAL := 0;
		VARIABLE num_half_adds: NATURAL := 0;
		VARIABLE num_wires: NATURAL := 0;
	BEGIN
		W(2*width-1,0,0) <= '1'; -- Extended sign bit
		W(width,width-1,0) <= '1'; -- Sign bit
		FOR i IN 2*width-2 DOWNTO 0 LOOP
			IF i <= (width-1) THEN
				FOR j IN i DOWNTO 0 LOOP
					IF (j = width-1) XOR (i-j = width-1) THEN
						W(i,j,0) <= NOT(P(j,i-j));
					ELSE
						W(i,j,0) <= P(j,i-j);
					END IF;
				END LOOP;
			ELSE
				FOR j IN width-1 DOWNTO i-width+1 LOOP
					IF (j = width-1) XOR (i-j = width-1) THEN
						W(i,j-i+width-1,0) <= NOT(P(j,i-j));
					ELSE
						W(i,j-i+width-1,0) <= P(j,i-j);
					END IF;								
				END LOOP;
			END IF;
		END LOOP;
					
		FOR k IN 0 TO stages-2 LOOP
			FOR i IN 2*width-1 DOWNTO 0 LOOP
				this_carry_bits := prev_lvl_carry(width, i, k+1);						
				
				-- Full adders (3:2 Compressors)
				num_full_adds := num_full_adders(width,i,k);
				FOR j IN 0 TO num_full_adds-1 LOOP
					W(i,this_carry_bits+j,k+1) <= W(i,j*3,k) XOR W(i,j*3+1,k) XOR W(i,j*3+2,k);
					IF i < 2*width-1 THEN
						W(i+1,j,k+1) <= (W(i,j*3,k) AND W(i,j*3+1,k)) XOR (W(i,j*3+2,k) AND (W(i,j*3,k) XOR W(i,j*3+1,k)));
					END IF;
				END LOOP;
				
				-- Half adders (2:2 Compressors)
				num_half_adds := num_half_adders(width,i,k);
				FOR j IN 0 TO num_half_adds-1 LOOP
					W(i,this_carry_bits+num_full_adds+j,k+1) <= W(i,num_full_adds*3+j*2,k) XOR W(i,num_full_adds*3+j*2+1,k);
					IF i < 2*width-1 THEN
						W(i+1,num_full_adds+j,k+1) <= W(i,num_full_adds*3+j*2,k) AND W(i,num_full_adds*3+j*2+1,k);
					END IF;
				END LOOP;
				
				-- Wires
				num_wires := this_lvl_bits(width,i,k)-num_full_adds*3-num_half_adds*2;
				FOR j IN 0 TO num_wires-1 LOOP
					W(i,this_carry_bits+num_full_adds+num_half_adds+j,k+1) <= W(i,num_full_adds*3+num_half_adds*2+j,k);
				END LOOP;
			END LOOP;
		END LOOP;						
	END PROCESS;
	
	-- Final Adder (Using a Brent Kung Adder)
	signal_vect_proc: PROCESS(W)
	BEGIN
		FOR i IN 2*width-1 DOWNTO 0 LOOP
			add_a(i) <= W(i,0,stages-1);
			add_b(i) <= W(i,1,stages-1);				
		END LOOP;
	END PROCESS;
		
	U_bk_add: bk_adder
	GENERIC MAP (
		width => 2*width
	)
	PORT MAP (
		a => add_a,
		b => add_b,
		c_in => c_in,
		sum => add_sum
	);
	
	prod <= add_sum;
	
END behavioral;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_funs.all;

ENTITY bk_adder IS
	GENERIC (
		width : 	INTEGER := 7
	);
	PORT (
		a :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		b :	IN STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		c_in :	IN STD_LOGIC;
		sum :	OUT STD_LOGIC_VECTOR(width-1 DOWNTO 0);
		c_out :	OUT STD_LOGIC
	);
END bk_adder;

ARCHITECTURE behavioral OF bk_adder IS
	CONSTANT nn: INTEGER := clogb2(width);
	CONSTANT inv_nn: INTEGER := clogb2(width+2**(nn-2))-2;
	TYPE T_type IS ARRAY(nn+inv_nn-1 DOWNTO 0, width-1 DOWNTO 0) OF STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL T: T_type;
BEGIN
	
	-- Carry tree with maximum number of stages
	tree_proc: PROCESS(T,a,b,c_in)
	BEGIN
		-- First bit is a full adder
		T(0,0)(0) <= (a(0) AND b(0)) OR (c_in AND (a(0) XOR b(0)));
		T(0,0)(1) <= a(0) XOR b(0) XOR c_in;
		
		-- Leaves of tree		
		FOR j IN width-1 DOWNTO 1 LOOP
			T(0,j)(0) <= a(j) AND b(j); -- Generate bit base
			T(0,j)(1) <= a(j) XOR b(j); -- Propagate bit base
		END LOOP;
		
		-- Carry tree
		FOR i IN 1 TO nn-1 LOOP
			FOR j IN width-1 DOWNTO 0 LOOP
				IF(j mod 2**i = (2**i)-1) THEN 
					IF((j-2**(i-1)) >= 0) THEN
						T(i,j)(0) <= (T(i-1,j)(1) AND T(i-1,j-2**(i-1))(0)) OR T(i-1,j)(0); -- G = (P_i and G_i_prev) or G_i
						T(i,j)(1) <= T(i-1,j)(1) AND T(i-1,j-2**(i-1))(1); -- P = P_i and P_i_prev
					ELSE
						T(i,j)(0) <= T(i-1,j)(0); -- G = G_i (since we are at tree's edge, there is no G_i_prev)
						T(i,j)(1) <= T(i-1,j)(1); -- P = P_i (since we are at tree's edge, there is no P_i_prev)
					END IF;
				ELSE
					T(i,j)(0) <= T(i-1,j)(0); 
					T(i,j)(1) <= T(i-1,j)(1); 
				END IF;		
			END LOOP;
		END LOOP;
		
		-- Inverse carry tree
		FOR i IN nn+inv_nn DOWNTO nn+1 LOOP
			FOR j IN width-1 DOWNTO 0 LOOP
				IF((j-2**(nn+inv_nn-(i))) mod 2**((nn+inv_nn-(i))+1) = 2**((nn+inv_nn-(i))+1)-1) THEN 
					IF(j >= 2**(nn+inv_nn-i)) THEN	
						T(i-1,j)(0) <= (T(i-2,j)(1) AND T(i-2,j-2**((nn+inv_nn-(i))))(0)) OR T(i-2,j)(0); -- G = (P_i and G_i_prev) or G_i
						T(i-1,j)(1) <= T(i-2,j)(1) AND T(i-2,j-2**((nn+inv_nn-(i))))(1); -- P = P_i and P_i_prev
					ELSE
						T(i-1,j)(0) <= T(i-2,j)(0); 
						T(i-1,j)(1) <= T(i-2,j)(1); 
					END IF;
				ELSE
					T(i-1,j)(0) <= T(i-2,j)(0); 
					T(i-1,j)(1) <= T(i-2,j)(1); 
				END IF;
			END LOOP;
		END LOOP;
	END PROCESS;
	
	-- Basic summation for carry tree
	sum_proc: PROCESS(T)
	BEGIN
		sum(0) <= T(0,0)(1);
		FOR i IN width-1 DOWNTO 1 LOOP
			sum(i) <= T(0,i)(1) XOR T(nn+inv_nn-1,i-1)(0);
		END LOOP;
	END PROCESS;
	
	c_out <= T(nn+inv_nn-1,width-1)(0) OR (T(nn+inv_nn-1,width-1)(1) AND T(nn+inv_nn-1,width-2)(0));
	
END behavioral;
	
	