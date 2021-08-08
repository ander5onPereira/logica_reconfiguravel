library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.meupacote.all;

entity top is
	port (	 
		sel: in std_logic_vector(3 downto 0); -- entrada binaria
		displaySet: out std_logic_vector(3 downto 0); -- ativa display
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end top;

architecture arch of top is
signal display:std_logic_vector(1 downto 0);
signal option: std_logic;
	begin
	option<='1'; --reutilizando o ex3 seto o valor da option para 1 que ira realizar a operação de binario de 4bit para hexa
	display<="00";-- reutilizando o ex3 seto display como 01 para selecionar o display que mostra o resultado 
		map01: entity work.setSeg(arch) 
			port map(sel,option,bar);
		map02: entity work.seletDisplay(arch) 
			port map(display,displaySet);
end arch;