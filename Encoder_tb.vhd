LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

ENTITY encoder_tb IS
END ;
-- Architecture of the testbench with the signal names
ARCHITECTURE encoder_tb_arch OF encoder_tb IS

Signal R0_out_tb :  STD_LOGIC;
Signal R1_out_tb :  STD_LOGIC;
Signal R2_out_tb :  STD_LOGIC;
Signal R3_out_tb :  STD_LOGIC;
Signal R4_out_tb :  STD_LOGIC;
Signal R5_out_tb :  STD_LOGIC;
Signal R6_out_tb :  STD_LOGIC;
Signal R7_out_tb :  STD_LOGIC;
Signal R8_out_tb :  STD_LOGIC;
Signal R9_out_tb :  STD_LOGIC;
Signal R10_out_tb :  STD_LOGIC;
Signal R11_out_tb :  STD_LOGIC;
Signal R12_out_tb :  STD_LOGIC;
Signal R13_out_tb :  STD_LOGIC;
Signal R14_out_tb :  STD_LOGIC;
Signal R15_out_tb :  STD_LOGIC;
Signal HI_out_tb :  STD_LOGIC;
Signal LO_out_tb :  STD_LOGIC;
Signal Z_high_out_tb :  STD_LOGIC;
Signal Z_low_out_tb :  STD_LOGIC;
Signal PC_out_tb :  STD_LOGIC;
Signal MDR_out_tb :  STD_LOGIC;
Signal In_port_out_tb :  STD_LOGIC;
Signal C_out_tb :  STD_LOGIC;
Signal s_tb : STD_LOGIC_VECTOR(4 DOWNTO 0);



COMPONENT encoder
PORT (

R0_out : IN STD_LOGIC;
R1_out : IN STD_LOGIC;
R2_out : IN STD_LOGIC;
R3_out : IN STD_LOGIC;
R4_out : IN STD_LOGIC;
R5_out : IN STD_LOGIC;
R6_out : IN STD_LOGIC;
R7_out : IN STD_LOGIC;
R8_out : IN STD_LOGIC;
R9_out : IN STD_LOGIC;
R10_out : IN STD_LOGIC;
R11_out : IN STD_LOGIC;
R12_out : IN STD_LOGIC;
R13_out : IN STD_LOGIC;
R14_out : IN STD_LOGIC;
R15_out : IN STD_LOGIC;
HI_out : IN STD_LOGIC;
LO_out : IN STD_LOGIC;
Z_high_out : IN STD_LOGIC;
Z_low_out : IN STD_LOGIC;
PC_out : IN STD_LOGIC;
MDR_out : IN STD_LOGIC;
In_port_out : IN STD_LOGIC;
C_out : IN STD_LOGIC;
s : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)

);

END COMPONENT encoder;

BEGIN
	DUT1 : encoder
	PORT MAP (
		R0_out => R0_out_tb,
		R1_out => R1_out_tb,
		R2_out => R2_out_tb,
		R3_out => R3_out_tb,
		R4_out => R4_out_tb,
		R5_out => R5_out_tb,
		R6_out => R6_out_tb,
		R7_out => R7_out_tb,
		R8_out => R8_out_tb,
		R9_out => R9_out_tb,
		R10_out => R10_out_tb,
		R11_out => R11_out_tb,
		R12_out => R12_out_tb,
		R13_out => R13_out_tb,
		R14_out => R14_out_tb,
		R15_out => R15_out_tb,
		HI_out => HI_out_tb,
		LO_out => LO_out_tb,
		Z_high_out => Z_high_out_tb,
		Z_low_out => Z_low_out_tb,
		PC_out => PC_out_tb,
		MDR_out => MDR_out_tb,
		In_port_out => In_port_out_tb,
		C_out => C_out_tb,
		s => s_tb
		
	);
 
	
	sim_process: process
	begin
	
			 R0_out_tb <= '1' ,'0' after 5ns ;
			 wait for 10ns;
			 R1_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;	
			 R2_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;  
			 R3_out_tb <= '1' ,'0' after 5ns  ;
				wait for 10ns; 
			 R4_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;	
			 R5_out_tb <= '1' ,'0' after 5ns ;
				wait for 10ns;
			 R6_out_tb <= '1' ,'0' after 5ns  ;
				wait for 10ns;
			 R7_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R8_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;	
			 R9_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R10_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R11_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R12_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R13_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R14_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 R15_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 HI_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 LO_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 Z_high_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 Z_low_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 PC_out_tb <= '1' ,'0' after 5ns ;
				wait for 10ns;
			 MDR_out_tb  <= '1' ,'0' after 5ns ;
				wait for 10ns;
			 In_port_out_tb <= '1','0' after 5ns  ;
				wait for 10ns;
			 C_out_tb <= '1' ,'0' after 5ns ;
				wait for 10ns;

			
	end process;
	
END;
