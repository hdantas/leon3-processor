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

ENTITY mul32 IS
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
END mul32;

ARCHITECTURE behavioral OF mul32 IS

COMPONENT mul32by32 IS
	GENERIC (
		tech				: INTEGER;
		multype				: INTEGER RANGE 0 TO 3;
		pipe				: INTEGER RANGE 0 TO 1;
		mac					: INTEGER RANGE 0 TO 1
	);
	PORT (
		rst					: IN STD_ULOGIC;
		clk					: IN STD_ULOGIC;
		holdn				: IN STD_ULOGIC;
		muli				: IN mul32_IN_type;
		mulo				: OUT mul32_OUT_type
	);
END COMPONENT;

COMPONENT mul16by16 IS
	GENERIC (
		tech				: INTEGER;
		multype				: INTEGER RANGE 0 TO 3;
		pipe				: INTEGER RANGE 0 TO 1;
		mac					: INTEGER RANGE 0 TO 1
	);
	PORT (
		rst					: IN STD_ULOGIC;
		clk					: IN STD_ULOGIC;
		holdn				: IN STD_ULOGIC;
		muli				: IN mul32_IN_type;
		mulo				: OUT mul32_OUT_type
	);
END COMPONENT;

BEGIN

mul32by32_gen: IF (multype = 3) GENERATE
	multiplier32by32: mul32by32
	GENERIC MAP (
		tech => tech,
		multype => multype,
		pipe => pipe,
		mac => mac
	)
	PORT MAP (
		rst => rst,
		clk => clk,
		holdn => holdn,
		muli => muli,
		mulo => mulo
	);
END GENERATE mul32by32_gen;

mul16by16_gen: IF NOT (multype = 3) GENERATE
	multiplier16by16: mul16by16
	GENERIC MAP (
		tech => tech,
		multype => multype,
		pipe => pipe,
		mac => mac
	)
	PORT MAP (
		rst => rst,
		clk => clk,
		holdn => holdn,
		muli => muli,
		mulo => mulo
	);
END GENERATE mul16by16_gen;

END behavioral;