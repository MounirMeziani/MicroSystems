LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

ENTITY Multiplexor_tb IS
END ;
-- Architecture of the testbench with the signal names
ARCHITECTURE Multiplexor_tb_arch OF Multiplexor_tb IS


SIGNAL R0_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R1_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R2_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R3_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R4_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R5_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R6_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R7_busmuxin_TB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R8_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R9_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R10_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R11_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R12_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R13_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R14_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL R15_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL HI_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL LO_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Z_HI_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Z_low_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL PC_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL MDR_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL In_port_busmuxin_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL C_signextended_TB :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL BusMuxOut_TB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL a_tb:  STD_LOGIC_VECTOR(4 downto 0);

SIGNAL clock: STD_LOGIC;

TYPE State IS (default, one, two, three);
SIGNAL Present_state: State:= default;

COMPONENT Multiplexor
PORT (

	R0_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R1_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R2_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R3_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R4_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R5_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R6_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R7_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R8_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R9_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R10_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R11_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R12_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R13_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R14_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	R15_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	HI_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	LO_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Z_HI_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Z_low_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	PC_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	MDR_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	In_port_busmuxin : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	C_signextended : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	BusMuxOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	a: IN STD_LOGIC_VECTOR(4 downto 0)

);

END COMPONENT Multiplexor;

BEGIN
	DUT1 : Multiplexor
	PORT MAP (
	   R0_busmuxin => R0_busmuxin_TB,
		R1_busmuxin => R1_busmuxin_TB,
		R2_busmuxin => R2_busmuxin_TB,
		R3_busmuxin => R3_busmuxin_TB,
		R4_busmuxin => R4_busmuxin_TB,
		R5_busmuxin => R5_busmuxin_TB,
		R6_busmuxin => R6_busmuxin_TB,
		R7_busmuxin => R7_busmuxin_TB,
		R8_busmuxin => R8_busmuxin_TB,
		R9_busmuxin => R9_busmuxin_TB,
		R10_busmuxin => R10_busmuxin_TB,
		R11_busmuxin => R11_busmuxin_TB,
		R12_busmuxin => R12_busmuxin_TB,
		R13_busmuxin => R13_busmuxin_TB,
		R14_busmuxin => R14_busmuxin_TB,
		R15_busmuxin => R15_busmuxin_TB,
		HI_busmuxin => HI_busmuxin_TB,
		LO_busmuxin => LO_busmuxin_TB,
		Z_HI_busmuxin => Z_HI_busmuxin_TB,
		Z_low_busmuxin => Z_low_busmuxin_TB,
		PC_busmuxin => PC_busmuxin_TB,
		MDR_busmuxin => MDR_busmuxin_TB,
		In_port_busmuxin => In_port_busmuxin_TB,
		C_signextended => C_signextended_TB ,
		BusMuxOut => BusMuxOut_TB,		
		a => a_tb 

	);
 

	clock_process: process
	begin
		clock <= '1', '0' after 10ns;
		wait for 20ns;
	end process;
	
	state_process: process(clock)
	begin
		if (rising_edge(clock))then
			case Present_state is
				when default =>
					Present_state <= one;
				when one =>
					Present_state <= two;
				when two =>
					Present_state <= three;
				when three =>
					Present_state <= default;
			end case;
		end if;
	end process;
	
	defstates_process: process(Present_state)
	begin
		case Present_state is
			when default =>
				R0_busmuxin_TB <= x"99999999";
				R1_busmuxin_TB <= x"aaaaaaaa";
				R2_busmuxin_TB <= x"bbbbbbbb";
				R3_busmuxin_TB <= x"cccccccc";
				
				a_tb <= b"00000";
				
			when one =>
				R0_busmuxin_TB <= x"99999999";
				R1_busmuxin_TB <= x"aaaaaaaa";
				R2_busmuxin_TB <= x"bbbbbbbb";
				R3_busmuxin_TB <= x"cccccccc";
				
				a_tb <= b"00001";
				
			when two =>
				R0_busmuxin_TB <= x"99999999";
				R1_busmuxin_TB <= x"aaaaaaaa";
				R2_busmuxin_TB <= x"bbbbbbbb";
				R3_busmuxin_TB <= x"cccccccc";
				
				a_tb <= b"00010";
				
			when three =>
				R0_busmuxin_TB <= x"99999999";
				R1_busmuxin_TB <= x"aaaaaaaa";
				R2_busmuxin_TB <= x"bbbbbbbb";
				R3_busmuxin_TB <= x"cccccccc";
				
				a_tb <= b"00011";
				
		end case;
	end process;

END;

