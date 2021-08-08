library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led is
	port(
		erro:in std_logic;
		entrada: in std_logic_vector(3 downto 0);
		saida: out std_logic_vector(6 downto 0)
	);
end led;

architecture arch of led is

begin
	saida<="0000000" when (entrada="0000" and erro='0')else
			"0010000" when (entrada="0100" and erro='0')else
			"0100000" when (entrada="1000"and erro='0')else
			"0110000" when (entrada="1100"and erro='0')else
			"0000010" when (entrada="0010"and erro='0')else
			"0010000" when (entrada="0100"and erro='0')else
			"0010010" when (entrada="0110"and erro='0')else
			"0000001" when (entrada="0001"and erro='0')else
			"0000010" when (entrada="0010"and erro='0')else
			"0010000" when (entrada="0100"and erro='0');

end arch;

