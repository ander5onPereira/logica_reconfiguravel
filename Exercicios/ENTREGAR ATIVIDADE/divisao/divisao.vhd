library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity divisao is

	port(
		a,b: in std_logic_vector(1 downto 0);
		result: out std_logic_vector(3 downto 0);
		erro:out std_logic
	);
end divisao;

architecture arch of divisao is
begin
	erro <= '1' when b="00" else
			'0';
	result <= "0000" when (b="01" and a="00") else
				  "0100" when (b="01" and a="01") else
				  "1000" when (b="01" and a="10") else
				  "1100" when (b="01" and a="11") else
				  "0000" when (b="10" and a="00") else
				  "0010" when (b="10" and a="01") else
				  "0100" when (b="10" and a="10") else
				  "0110" when (b="10" and a="11") else
				  "0000" when (b="11" and a="00") else
				  "0001" when (b="11" and a="01") else
				  "0010" when (b="11" and a="10") else
				  "0100";
				  
end arch;

