LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE mypackage is
	FUNCTION compute_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
	FUNCTION compute_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC;
END mypackage;

PACKAGE BODY mypackage IS
	FUNCTION compute_sum (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC IS
	BEGIN
    	RETURN (x XOR y XOR c_in);
  	END compute_sum;

	FUNCTION compute_cout (x:STD_LOGIC;y:STD_LOGIC;c_in:STD_LOGIC) RETURN STD_LOGIC IS
	BEGIN
    	RETURN ((x AND y) OR (c_in AND (x XOR y)));
  	END compute_cout;	
END mypackage;