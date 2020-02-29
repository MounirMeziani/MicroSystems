LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FullAdder IS
PORT(
X		:	IN STD_LOGIC;
Y		:	IN STD_LOGIC;
CarryIn	:	IN STD_LOGIC;
CarryOut :	OUT STD_LOGIC;
SumOut	:	OUT STD_LOGIC

);
END FullAdder;

ARCHITECTURE behavioral OF FullAdder IS
BEGIN
	CarryOut <= ((X AND CarryIn) OR (Y AND CarryIn) OR (X AND Y));
	SumOut <= (X XOR Y) XOR CarryIn;
END behavioral;