------------------------------------------------------------------------------
--  This program is free software; you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation; either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
-----------------------------------------------------------------------------
-- Entity: 	mul16
-- File:	mul16.vhd
-- Authors:	Luca Feltrin - Henrique Dantas
-- Description:	This unit implements signed/unsigned 32-bit multiply module,
--		producing a 64-bit result.
------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

LIBRARY grlib;
USE grlib.stdlib.all;

LIBRARY gaisler;
USE gaisler.arith.all;

ENTITY mul16by16 IS
	GENERIC (
		tech				: INTEGER := 0;
		multype				: INTEGER RANGE 0 TO 3 := 0;
		pipe				: INTEGER RANGE 0 TO 1 := 0;
		mac					: INTEGER RANGE 0 TO 1 := 0
	);
	PORT (
		rst					: IN STD_ULOGIC;
		clk					: IN STD_ULOGIC;
		holdn				: IN STD_ULOGIC;

		-- muli related signals
		muli				: IN mul32_IN_type;
		-- op1					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		-- op2					: IN STD_LOGIC_VECTOR(32 DOWNTO 0);
		-- flush				: IN STD_LOGIC;
		-- is_signed			: IN STD_LOGIC;
		-- start				: IN STD_LOGIC;
		-- mac					: IN STD_LOGIC;
		-- acc					: IN STD_LOGIC_VECTOR(39 DOWNTO 0);

		-- mulo related signals
		mulo				: OUT mul32_OUT_type := (ready => '0', nready => '0', icc => (OTHERS => '0'), result => (OTHERS => '0'))
		-- ready				: OUT STD_LOGIC;
		-- icc					: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		-- result				: OUT STD_LOGIC_VECTOR(63 DOWNTO 0);


	);
END mul16by16;

ARCHITECTURE behavioral OF mul16by16 IS
	TYPE layer_depth_type IS ARRAY(3 DOWNTO 0) OF INTEGER RANGE 3 TO 9;
	TYPE operand_size_type IS ARRAY(3 DOWNTO 0) OF INTEGER RANGE 8 TO 32;

	CONSTANT op1_width_vector				: operand_size_type := (32,32,32,16);
	CONSTANT op2_width_vector				: operand_size_type := (32,16,8,16);

	CONSTANT width							: INTEGER RANGE 24 TO 64 := op1_width_vector(multype) + op2_width_vector(multype); -- result's width
	CONSTANT op1_width						: INTEGER RANGE 16 TO 32 := op1_width_vector(multype);
	CONSTANT op2_width						: INTEGER RANGE 8 TO 32 := op2_width_vector(multype);
	
	CONSTANT layer_depth					: layer_depth_type := (9,7,6,7);
	CONSTANT levels							: INTEGER RANGE 3 TO 9 := layer_depth(multype);

	CONSTANT add_vector_baugh_wooley		: STD_LOGIC_VECTOR((width-1) DOWNTO 0) := '1' & (width-2 DOWNTO op2_width+1 => '0') & '1' & (op2_width-1 DOWNTO 0 => '0');
	CONSTANT zeros64						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	

	CONSTANT maxk : INTEGER := levels;
	CONSTANT maxi : INTEGER := op1_width;
	CONSTANT maxj : INTEGER := width;
	
	TYPE numberFA_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE -1 TO 10;
	TYPE numberCI_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE -1 TO 11;
	TYPE number_all_type IS ARRAY(1191 DOWNTO 0) OF INTEGER RANGE -1 TO 1;

	


	CONSTANT numberFA_all					: numberFA_all_type := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,5,4,4,4,4,4,4,4,3,3,3,3,3,3,3,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,4,4,4,4,4,4,5,5,5,6,6,6,6,6,6,7,7,7,6,6,6,6,5,5,5,5,5,4,4,4,4,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,10,10,9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,2,2,2,2,1,1,1,1,1,0,0,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0);
	CONSTANT numberHA_all					: number_all_type := (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,0,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0);
	CONSTANT numberRE_all					: number_all_type := (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,0,0,0,0,0,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,0,0,1,1,0,0,0,0,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,0,1,1,1,0,1,0,0,0,1,1,0,0,0,1,0,0,0,1,1,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1,0,0,1);
	CONSTANT numberCI_all					: numberCI_all_type := (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,5,5,5,4,4,4,4,4,4,4,3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,4,4,5,5,5,5,5,5,6,6,6,7,7,7,7,7,7,7,6,6,6,6,6,5,5,5,5,4,4,4,4,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10,11,10,10,10,9,9,9,8,8,8,7,7,7,6,6,6,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,2,2,2,2,2,2,3,2,2,2,2,2,2,2,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,2,2,2,3,3,3,3,3,3,4,3,3,3,3,2,2,2,2,2,1,1,1,1,0,0,0,0,1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,5,5,4,4,4,3,3,3,2,2,2,1,1,1,0,0);

	TYPE number_range_type IS ARRAY(4 DOWNTO 0) OF INTEGER RANGE 0 TO 1192;
	CONSTANT number_range					: number_range_type := (1192,680,392,192,0);

	CONSTANT bottom_range					: INTEGER := number_range(multype);
	CONSTANT top_range						: INTEGER := number_range(multype+1)-1;

	CONSTANT numberFA						: numberFA_all_type := (1191 DOWNTO (maxk-1)*maxj => -1) & numberFA_all(top_range DOWNTO bottom_range);
	CONSTANT numberHA						: number_all_type := (1191 DOWNTO (maxk-1)*maxj => -1) & numberHA_all(top_range DOWNTO bottom_range);
	CONSTANT numberRE						: number_all_type := (1191 DOWNTO (maxk-1)*maxj => -1) & numberRE_all(top_range DOWNTO bottom_range);
	CONSTANT numberCI						: numberCI_all_type := (1191 DOWNTO (maxk-1)*maxj => -1) & numberCI_all(top_range DOWNTO bottom_range);

	SIGNAL tmp_started						: STD_LOGIC := '0';
	SIGNAL tmp_nready						: STD_LOGIC := '0';

	SIGNAL op1								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	SIGNAL op2								: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');
	CONSTANT zeros32						: STD_LOGIC_VECTOR(32 DOWNTO 0) := (OTHERS => '0');


	TYPE if_vector_type IS ARRAY(2 DOWNTO 0) OF NATURAL RANGE 0 TO 4;
	CONSTANT nready_if_vector				: if_vector_type := (1, 0, 0);
	CONSTANT ready_if_vector				: if_vector_type := (2, 1, 0);

	SIGNAL ready_if							: NATURAL := 0;
	SIGNAL nready_if						: NATURAL := 0;

	SIGNAL add_a, add_b						: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => '0'); --for final adder
	SIGNAL old_add_a, old_add_b				: STD_LOGIC_VECTOR(width-1 DOWNTO 0) := (OTHERS => '0'); --for final adder

	SIGNAL tmp_icc							: STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tmp_result						: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	SIGNAL tmp_ready						: STD_LOGIC := '0';
	SIGNAL is_negative						: STD_LOGIC := '0';
	SIGNAL is_signed						: STD_LOGIC := '0';
		
	SIGNAL WallaceTree						: STD_LOGIC_VECTOR(maxk*maxi*maxj-1 DOWNTO 0) := (OTHERS => '0'); -- Wallace tree



	component FA is
	port (		
		x     	: in  std_logic;
		y     	: in  std_logic;
		cin   	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
	end component;


	component HA is
	port (		
		x     	: in  std_logic;
		y     	: in  std_logic;
		s    	: out  std_logic;
		cout    : out std_logic
	);
end component;

BEGIN

	mul16by16 : IF (multype = 0 AND pipe = 0) GENERATE
		ready_if <= ready_if_vector(1);
		nready_if <= nready_if_vector(1);
	END GENERATE mul16by16;

	mul16by16p : IF (multype = 0 AND pipe = 1) GENERATE
		ready_if <= ready_if_vector(2);
		nready_if <= nready_if_vector(2);
	END GENERATE mul16by16p;


	rst_hold_proc: PROCESS(clk)
		VARIABLE started				: STD_LOGIC := '0';
		VARIABLE wait_for_nready		: NATURAL := 99;
	BEGIN
		IF (clk='1' AND clk'event) THEN
			IF (rst = '0' OR muli.flush = '1') THEN --reset
				op1 <= zeros32;
				op2 <= zeros32;
				started := '0';

			ELSIF (holdn = '0') THEN
				started := '0';

			ELSIF (holdn = '1') THEN
				IF (muli.start = '1') THEN
					started := '1';
				END IF;
			
				IF (muli.start = '0' AND started = '1') THEN
					started := '0';
					wait_for_nready := 0;
					op1 <= muli.op1;
					op2 <= muli.op2;
					is_signed <= muli.signed;
					is_negative <= muli.signed AND (muli.op1(32) XOR muli.op2(32));
				END IF;

				IF (wait_for_nready < nready_if) THEN
					tmp_nready <= '0';
					wait_for_nready := wait_for_nready + 1;
				ELSIF (wait_for_nready = nready_if) THEN
					tmp_nready <= '1';
					wait_for_nready := wait_for_nready + 1;
				ELSIF (wait_for_nready = nready_if + 1) THEN
					tmp_nready <= '0';				
					wait_for_nready := 99;
				END IF;
			END IF;
		END IF;
		tmp_started <= started;
	END PROCESS;

		--step 1 wallace algorithm (first level of the tree)
	init_step_row: for i in 0 to op2_width-1 generate
		init_step_columns: for j in 0 to op1_width-1 generate
			
			first_half: if ((j+i) <= (op1_width-1)) generate
				neg_operation1: if (((j = op1_width-1) OR (i = op2_width-1)) AND ((i+j) /= (width - 2))) generate
					WallaceTree(j+i+maxj*i) <= (op1(j) AND op2(i)) XOR is_signed; -- negate AND if is a signed multiplication
				end generate neg_operation1;

				pos_operation1: IF (((j /= op1_width-1) AND (i /= op2_width-1)) OR ((i+j) = (width - 2))) generate
					WallaceTree(j+i+maxj*i) <= op1(j) AND op2(i);
				end generate pos_operation1;
			end generate first_half;


			second_half: if (j+i) > (op1_width-1) generate
				neg_operation2: IF ((j = op1_width-1) OR (i= op2_width-1)) AND ((i+j) /= (width - 2)) generate
					WallaceTree(j+i+maxj*(op1_width-1-j)) <= (op1(j) AND op2(i)) XOR is_signed;  -- negate AND if is a signed multiplication
				end generate neg_operation2;

				pos_operation2: IF (((j /= op1_width-1) AND (i /= op2_width-1)) OR ((i+j) = (width - 2))) generate
					WallaceTree(j+i+maxj*(op1_width-1-j)) <= op1(j) AND op2(i);
				end generate pos_operation2;
			end generate second_half;

		end generate init_step_columns;
	end generate init_step_row;


	update_wallace: for k in 0 to levels-2 generate
		columns: for j in 0 to width-2 generate
			full_adders: for i in 0 to numberFA(j+maxj*k)-1 generate
				PortFA: FA port map(
					-- x => WallaceTree(k)(3*i))(j),
					x => WallaceTree(j+maxj*(3*i+maxi*k)),
					-- y => WallaceTree(k)(3*i+1)(j),
					y => WallaceTree(j+maxj*(3*i+1+maxi*k)),
					-- cin => WallaceTree(k)(3*i+2)(j),
					cin => WallaceTree(j+maxj*(3*i+2+maxi*k)),
					-- s => WallaceTree(k+1)(numberCI(k)(j)+i)(j),
					s => WallaceTree(j+maxj*(numberCI(j+maxj*k)+i+maxi*(k+1))),
					-- cout => WallaceTree(k+1)(i)(j+1)
					cout => WallaceTree(j+1+maxj*(i+maxi*(k+1)))
				);
			end generate full_adders;

			half_adders: if numberHA(j+maxj*k) = 1 generate
				PortHA: HA port map(
					-- x => WallaceTree(k)(3*numberFA(k)(j))(j),
					x => WallaceTree(j+maxj*(3*numberFA(j+maxj*k)+maxi*k)),
					-- y => WallaceTree(k)(3*numberFA(k)(j)+1)(j),
					y => WallaceTree(j+maxj*(3*numberFA(j+maxj*k)+1+maxi*k)),
					-- s => WallaceTree(k+1)(numberFA(k)(j)+numberCI(k)(j))(j),
					s => WallaceTree(j+maxj*(numberFA(j+maxj*k)+numberCI(j+maxj*k)+maxi*(k+1))),
					-- cout => WallaceTree(k+1)(numberFA(k)(j))(j+1)
					cout => WallaceTree(j+1+maxj*(numberFA(j+maxj*k)+maxi*(k+1)))
				);
			end generate half_adders;

			remaining: if numberRE(j+maxj*k) = 1 generate
				-- WallaceTree(k+1)(numberFA(k)(j)+numberHA(k)(j)+numberCI(k)(j))(j) <= WallaceTree(k)(3*numberFA(j)+2*numberHA(j))(j);
				WallaceTree(j+maxj*(numberFA(j+maxj*k)+numberHA(j+maxj*k)+numberCI(j+maxj*k)+maxi*(k+1))) <= WallaceTree(j+maxj*(3*numberFA(j+maxj*k)+2*numberHA(j+maxj*k)+maxi*k));
			end generate remaining;

		end generate columns;
	end generate update_wallace;
 

 	mid_proc: PROCESS (clk)
 	VARIABLE tmp_a : STD_LOGIC := '0';
 	VARIABLE tmp_b : STD_LOGIC := '0';
 	VARIABLE started : STD_LOGIC := '0';
 	VARIABLE wait_for_ready : INTEGER := 99;
 	BEGIN
		IF (clk='1' AND clk'event) THEN
			IF (holdn = '1') THEN

				IF (muli.start = '1') THEN
					started := '1';
				-- 	tmp_ready <= '1';
				-- ELSE
				-- 	tmp_ready <= '0';
				ELSIF (muli.start = '0' AND started = '1') THEN
					wait_for_ready := 0;
					started := '0';
				END IF;

				IF (wait_for_ready < ready_if) THEN
					wait_for_ready := wait_for_ready + 1;
					tmp_ready <= '0';
				ELSIF (wait_for_ready = ready_if) THEN
					wait_for_ready := wait_for_ready + 1;
					tmp_ready <= '1';
				ELSIF (wait_for_ready = ready_if + 1) THEN
					tmp_ready <= '0';
					wait_for_ready := 99;
				END IF;
			END IF;

			-- ready := '0';
			final_op: for j IN 0 TO width-1 LOOP
				tmp_a := WallaceTree(j+maxj*(maxi*(levels-1))); -- op1 for final addition
				tmp_b := WallaceTree(j+maxj*(1+maxi*(levels-1))); -- op2 for final addition

				add_a(j) <= tmp_a;
				add_b(j) <= tmp_b;

			END LOOP;

			old_add_a <= add_a;
			old_add_b <= add_b;

			--tmp_ready <= ready;

		END IF;
	END PROCESS;


	-- Final process
	out_proc: PROCESS (clk)
	VARIABLE result 				: STD_LOGIC_VECTOR(63 DOWNTO 0) := (OTHERS => '0');
	BEGIN
		IF (clk='1' AND clk'event) THEN
			IF(rst = '0' OR muli.flush = '1') THEN
				tmp_icc <= "0000";
				tmp_result <= zeros64;
					
			ELSIF (holdn = '1') THEN
				IF (is_signed = '1') THEN
					IF (mac = 1 and muli.mac = '1') THEN
						result := std_logic_vector(signed(add_a) + signed(add_b)+ signed(add_vector_baugh_wooley) + signed(muli.acc) + signed(zeros64));
					ELSE
						result := std_logic_vector(signed(add_a) + signed(add_b)+ signed(add_vector_baugh_wooley) + signed(zeros64));
					END IF;
				ELSE
					IF (mac = 1 and muli.mac = '1') THEN
						result := std_logic_vector(unsigned(add_a) + unsigned(add_b)+ unsigned(muli.acc) + unsigned(zeros64));
					ELSE
						result := std_logic_vector(unsigned(add_a) + unsigned(add_b)+ unsigned(zeros64));
					END IF;
				END IF;
			END IF;
			
			IF (result = zeros64) THEN
				tmp_icc(2) <= '1'; -- is result zero?
				tmp_icc(1) <= '0';
				tmp_icc(0) <= '0';
			ELSE
				tmp_icc(2) <= '0';
				tmp_icc(1) <= '0';
				tmp_icc(0) <= '0';					
			END IF;

			IF (is_negative = '1') THEN
				tmp_icc(3) <= '1'; -- is result negative?
			ELSE
				tmp_icc (3) <= '0';
			END IF;

			tmp_result <= result;

		END IF;
	END PROCESS;
	
	update_result_prc: PROCESS (clk)
	BEGIN
		IF (clk='1' AND clk'event AND holdn = '1') THEN
			mulo.ready <= tmp_ready;
		END IF;
	END PROCESS;

	
	mulo.icc <= tmp_icc;
	mulo.nready <= tmp_nready;
	mulo.result <= tmp_result;

END behavioral;