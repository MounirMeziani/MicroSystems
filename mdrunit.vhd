LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY mdrunit IS
PORT(
--mux signals
mem_read : IN STD_LOGIC;
bus_mux_out : IN STD_LOGIC_VECTOR(31 downto 0);
mem_data_in : IN STD_LOGIC_VECTOR(31 downto 0);
mem_mux_out : BUFFER STD_LOGIC_VECTOR(31 downto 0);
--mdr signals
clr : IN STD_LOGIC;
clk : IN STD_LOGIC;
enable : IN STD_LOGIC;
mdr_out : OUT STD_LOGIC_VECTOR(31 downto 0));

END mdrunit;

ARCHITECTURE description OF mdrunit IS
BEGIN

reg : process(clr, clk, enable)
begin
if clr = '1' then
mdr_out <= x"00000000";
elsif rising_edge(clk) then
if enable = '1' then
mdr_out <= mem_mux_out;
end if;
end if;

end process;

END description;