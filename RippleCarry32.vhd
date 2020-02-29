LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RippleCarry32 IS
PORT(
	X  			:	IN 	STD_LOGIC_VECTOR(31 downto 0);
	Y 				:	IN 	STD_LOGIC_VECTOR(31 downto 0);
	CarryIn		:	IN 	STD_LOGIC;
	SumOut		:	OUT   STD_LOGIC_VECTOR(31 downto 0);
	CarryOut		:	OUT	STD_LOGIC
);
END RippleCarry32;

architecture behavioral of RippleCarry32 is

COMPONENT FullAdder
PORT(
	X 			:	IN STD_LOGIC;
	Y			:	IN STD_LOGIC;
	CarryIn	:	IN STD_LOGIC;
	CarryOut :	OUT STD_LOGIC;
	SumOut	:	OUT STD_LOGIC
);
END COMPONENT;

SIGNAL ctemp1 :	STD_LOGIC;
SIGNAL ctemp2 :	STD_LOGIC;
SIGNAL ctemp3 :	STD_LOGIC;
SIGNAL ctemp4 :	STD_LOGIC;
SIGNAL ctemp5 :	STD_LOGIC;
SIGNAL ctemp6 :	STD_LOGIC;
SIGNAL ctemp7 :	STD_LOGIC;
SIGNAL ctemp8 :	STD_LOGIC;
SIGNAL ctemp9 :	STD_LOGIC;
SIGNAL ctemp10 :	STD_LOGIC;
SIGNAL ctemp11 :	STD_LOGIC;
SIGNAL ctemp12 :	STD_LOGIC;
SIGNAL ctemp13 :	STD_LOGIC;
SIGNAL ctemp14 :	STD_LOGIC;
SIGNAL ctemp15 :	STD_LOGIC;
SIGNAL ctemp16 :	STD_LOGIC;
SIGNAL ctemp17 :	STD_LOGIC;
SIGNAL ctemp18 :	STD_LOGIC;
SIGNAL ctemp19 :	STD_LOGIC;
SIGNAL ctemp20 :	STD_LOGIC;
SIGNAL ctemp21 :	STD_LOGIC;
SIGNAL ctemp22 :	STD_LOGIC;
SIGNAL ctemp23 :	STD_LOGIC;
SIGNAL ctemp24 :	STD_LOGIC;
SIGNAL ctemp25 :	STD_LOGIC;
SIGNAL ctemp26 :	STD_LOGIC;
SIGNAL ctemp27 :	STD_LOGIC;
SIGNAL ctemp28 : 	STD_LOGIC;
SIGNAL ctemp29 :	STD_LOGIC;
SIGNAL ctemp30 :	STD_LOGIC;
SIGNAL ctemp31 :	STD_LOGIC;
 
BEGIN
 
A1: FullAdder PORT MAP( X(0), Y(0), CarryIn, SumOut(0), ctemp1);
A2: FullAdder PORT MAP( X(1), Y(1), ctemp1, SumOut(1), ctemp2);
A3: FullAdder PORT MAP( X(2), Y(2), ctemp2, SumOut(2), ctemp3);
A4: FullAdder PORT MAP( X(3), Y(3), ctemp3, SumOut(3), ctemp4);
A5: FullAdder PORT MAP( X(4), Y(4), ctemp4, SumOut(4), ctemp5);
A6: FullAdder PORT MAP( X(5), Y(5), ctemp5, SumOut(5), ctemp6);
A7: FullAdder PORT MAP( X(6), Y(6), ctemp6, SumOut(6), ctemp7);
A8: FullAdder PORT MAP( X(7), Y(7), ctemp7, SumOut(7), ctemp8);
A9: FullAdder PORT MAP( X(8), Y(8), ctemp8, SumOut(8), ctemp9);
A10: FullAdder PORT MAP(X(9), Y(9), ctemp9, SumOut(9), ctemp10);
A11: FullAdder PORT MAP( X(10), Y(10), ctemp10, SumOut(10), ctemp11);
A12: FullAdder PORT MAP( X(11), Y(11), ctemp11, SumOut(11), ctemp12);
A13: FullAdder PORT MAP( X(12), Y(12), ctemp12, SumOut(12), ctemp13);
A14: FullAdder PORT MAP( X(13), Y(13), ctemp13, SumOut(13), ctemp14);
A15: FullAdder PORT MAP( X(14), Y(14), ctemp14, SumOut(14), ctemp15);
A16: FullAdder PORT MAP( X(15), Y(15), ctemp15, SumOut(15), ctemp16);
A17: FullAdder PORT MAP( X(16), Y(16), ctemp16, SumOut(16), ctemp17);
A18: FullAdder PORT MAP( X(17), Y(17), ctemp17, SumOut(17), ctemp18);
A19: FullAdder PORT MAP( X(18), Y(18), ctemp18, SumOut(18), ctemp19);
A20: FullAdder PORT MAP( X(19), Y(19), ctemp19, SumOut(19), ctemp20);
A21: FullAdder PORT MAP( X(20), Y(20), ctemp20, SumOut(20), ctemp21);
A22: FullAdder PORT MAP( X(21), Y(21), ctemp21, SumOut(21), ctemp22);
A23: FullAdder PORT MAP( X(22), Y(22), ctemp22, SumOut(22), ctemp23);
A24: FullAdder PORT MAP( X(23), Y(23), ctemp23, SumOut(23), ctemp24);
A25: FullAdder PORT MAP( X(24), Y(24), ctemp24, SumOut(24), ctemp25);
A26: FullAdder PORT MAP( X(25), Y(25), ctemp25, SumOut(25), ctemp26);
A27: FullAdder PORT MAP( X(26), Y(26), ctemp26, SumOut(26), ctemp27);
A28: FullAdder PORT MAP( X(27), Y(27), ctemp27, SumOut(27), ctemp28);
A29: FullAdder PORT MAP( X(28), Y(28), ctemp28, SumOut(28), ctemp29);
A30: FullAdder PORT MAP( X(29), Y(29), ctemp29, SumOut(29), ctemp30);
FA31: FullAdder PORT MAP( X(30), Y(30), ctemp30, SumOut(30), ctemp31);
A32: FullAdder PORT MAP( X(31), Y(31), ctemp31, SumOut(31), CarryOut);

END behavioral;