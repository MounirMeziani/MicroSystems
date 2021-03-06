LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY DividingBlock IS
	PORT
	(
		denom		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END DividingBlock;


ARCHITECTURE behavior OF DividingBlock IS

	SIGNAL X	: STD_LOGIC_VECTOR (31 DOWNTO 0);
	SIGNAL Y	: STD_LOGIC_VECTOR (31 DOWNTO 0);



	COMPONENT lpm_divide
	GENERIC (
		lpm_drepresentation		: STRING;
		lpm_hint		: STRING;
		lpm_nrepresentation		: STRING;
		lpm_type		: STRING;
		lpm_widthd		: NATURAL;
		lpm_widthn		: NATURAL
	);
	PORT (
			denom	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			numer	: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			quotient	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			remain	: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	quotient    <= X(31 DOWNTO 0);
	remain    <= Y(31 DOWNTO 0);

	LPM_DIVIDE_component : LPM_DIVIDE
	GENERIC MAP (
		lpm_drepresentation => "SIGNED",
		lpm_hint => "LPM_REMAINDERPOSITIVE=TRUE",
		lpm_nrepresentation => "SIGNED",
		lpm_type => "LPM_DIVIDE",
		lpm_widthd => 32,
		lpm_widthn => 32
	)
	PORT MAP (
		denom => denom,
		numer => numer,
		quotient => X,
		remain => Y
	);



END behavior;