library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seletDisplay is
	port (
			display: in std_logic_vector(1 downto 0); -- selecao de display ativo
			displaySet: out std_logic_vector(3 downto 0) -- seleção de display
		) ;
end seletDisplay;

architecture arch of seletDisplay is

begin
	with display select
		displaySet <= not("0001") when "00",
					  not("0010") when "01",
					  not("0100") when "10",
					  not("1000") when others;
end arch;

