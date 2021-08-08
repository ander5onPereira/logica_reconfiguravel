library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divisao3b is
	port(
		a,b: in std_logic_vector(2 downto 0);
		result: out std_logic_vector(4 downto 0);
		erro:out std_logic
	);
end divisao3b;

architecture arch of divisao3b is
begin
	erro <= '1' when b="000" else
			'0';
	result <= "00000" when (b="010" and a="000") else
				  "01000" when (b="010" and a="010") else
				  "10000" when (b="010" and a="100") else
				  "11000" when (b="010" and a="110") else
				  "00000" when (b="100" and a="000") else
				  "00100" when (b="100" and a="010") else
				  "01000" when (b="100" and a="100") else
				  "01100" when (b="100" and a="110") else
				  "00000" when (b="110" and a="000") else
				  "00010" when (b="110" and a="010") else
				  "00100" when (b="110" and a="100") else
				  "01000";
				  
end arch;

