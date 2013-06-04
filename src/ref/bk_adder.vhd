LIBRARY ieee;
USE ieee.std_logic_1164.all;

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