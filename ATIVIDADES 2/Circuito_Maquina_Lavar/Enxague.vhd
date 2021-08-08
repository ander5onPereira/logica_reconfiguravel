library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity enxague is
	port(
		clk2: in std_logic; 
		estado: in std_logic_vector(1 downto 0);
		led: out std_logic_vector(7 downto 0)
	);
end entity enxague;

architecture arq of enxague is
	signal clock2: std_logic;
begin
	clock2<= clk2;
process(estado,clock2)
begin
	if(estado = "01") then
		led(0) <= '0';
		led(1) <= clock2;
		led(2) <= clock2;
		led(3) <= '0';
		led(4) <= '0';
		led(5) <= '0';
		led(6) <= '0';
		led(7) <= '0';
	else
		led <= (others => '0');
	end if;
end process;
end arq;