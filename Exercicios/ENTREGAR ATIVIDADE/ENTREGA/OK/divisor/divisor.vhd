library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divisor is
	port(
		num: in std_logic_vector(2 downto 0); -- numerador
		den: in std_logic_vector(2 downto 0); -- denominador
		quo: out std_logic_vector(2 downto 0); -- quociente
		res: out std_logic_vector(2 downto 0) -- resto
		);
end divisor;

architecture arch of divisor is
	signal s: std_logic_vector(5 downto 0);
begin
	s <= num & den;
	with s select
		quo <= "001" when "001001" | "010010" | "011010" | "011011" |
							 "100011" | "100100" | "101011" | "101100" |
							 "101101" | "110100" | "110101" | "110110" |
							 "111100" |	"111101" | "111110" | "111111",
			  "010" when "010001" | "100010" | "101010" | "110011" |
							 "111011",
			  "011" when "011001" | "110010" | "111010",
			  "100" when "100001",
			  "101" when "101001",
			  "110" when "110001",
			  "111" when "111001",
		     "000" when others;
	with s select 
		res <= "001" when "001010" | "001011" | "001100" | "001101" |
				  			 "001110" | "001111" | "011010" | "100011" |
							 "101010" | "101100" | "110101" | "111010" |
							 "111011" | "111110",
			  "010" when "010011" | "010100" | "010101" | "010110" |
							 "010111" | "101011" | "110100" | "111101",
			  "011" when "011100" | "011101" | "011110" | "011111" |
							 "111100",
			  "100" when "100101" | "100110"| "100111",
			  "101" when "101110" | "101111",
			  "110" when "110111",
			  "000" when others;

end arch;

