LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.numeric_std.all;

PACKAGE mypackage is

	FUNCTION compute_FA_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_FA_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
  FUNCTION compute_HA_sum (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;
  FUNCTION compute_HA_cout (x:STD_LOGIC;y:STD_LOGIC) RETURN STD_LOGIC;  
	FUNCTION this_level_bits (previous_level_bits:NATURAL;previous_column_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_full_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_half_adders (num_bits:NATURAL) RETURN NATURAL;
	FUNCTION num_remainder_bits (num_bits:NATURAL) RETURN NATURAL;
END mypackage;

PACKAGE BODY mypackage IS
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

END mypackage;