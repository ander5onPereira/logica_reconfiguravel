library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stand_by is
	port(
		clk1: in std_logic; 
		estado: in std_logic_vector(1 downto 0);
		led: out std_logic_vector(7 downto 0)
	);
end entity stand_by;

architecture arq of stand_by is
signal clock1: std_logic; 
begin	
 clock1 <= clk1;
process(estado,clock1)
begin
	if(estado = "00") then
		led(0) <= '0';
		led(1) <= clock1;
		led(2) <= '0';
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