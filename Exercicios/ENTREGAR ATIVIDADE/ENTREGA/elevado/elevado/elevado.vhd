library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity elevado is
	port(
		y: in std_logic_vector(1 downto 0);
		x: in std_logic_vector(1 downto 0); 
		res: out std_logic_vector(4 downto 0)
		);
end elevado;

architecture arch of elevado is
		signal s: std_logic_vector(3 downto 0);
begin
s <= y & x;
	with s select
		res <= "00000" when "0001" | "0010" | "0011", --0							   
			  "00001" when "0000" | "0100" | "1000" | "1100" | "0110" | "0111", --1
			  "00010" when "1001", --2
			  "00011" when "1101", --3
			  "00100" when "1010",--4
			  "01000" when "1011",--8
			  "01001" when "1110",--9			  
			  "11011" when others; --27

end arch;

