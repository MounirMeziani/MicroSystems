-- adder_lpm_rc_tb.vhd file: <This is the filename>
LIBRARY ieee;
USE ieee.std_logic_1164.all;
-- entity declaration only. No definition here
ENTITY register32_tb IS
END ;
-- Architecture of the testbench with the signal names
ARCHITECTURE register32_tb_arch OF register32_tb IS

SIGNAL d_tb : STD_LOGIC_VECTOR(31 DOWNTO 0); -- input
SIGNAL le_tb :  STD_LOGIC; -- load/enable
SIGNAL clr_tb :  STD_LOGIC; -- clear
SIGNAL clk_tb :  STD_LOGIC; -- clock
SIGNAL q_tb :  STD_LOGIC_VECTOR(31 DOWNTO 0); -- output



-- component instantiation of the Design Under test (DUT)
 COMPONENT register32
 PORT (
d : IN STD_LOGIC_VECTOR(31 DOWNTO 0); -- input
le : IN STD_LOGIC; -- load/enable
clr : IN STD_LOGIC; -- clea
clk : IN STD_LOGIC; -- clock
q : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)); -- output
 END COMPONENT register32;
 
BEGIN
	 DUT1 : register32
	--port mapping: between the DUT and the testbench signals
	 PORT MAP (
	  d => d_tb ,
	  le => le_tb ,
	  clk =>clk_tb,
	  clr => clr_tb ,
	  q => q_tb
	  );
	  

	  clk_process : process 
	begin
		clk_tb <= '1', '0' after 10 ns;
		wait for 20 ns;
	end process clk_process;

	  
		--add test logic here
	 sim_process: process
	 
	 begin
		
		wait for 40ns;
		if(rising_edge (clk_tb)) THEN
					le_tb <= '1';
					d_tb <= x"0000000F"; --decimal 15
					
		end if;
		
		
	--	wait for 100ns;
		--clr_tb <='1';

		
	 end process sim_process; 
 END;