library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.meupacote.all;

entity top is
	port (	 
		sel: in std_logic_vector(3 downto 0); -- entrada binaria
		display: in std_logic_vector(1 downto 0); -- selecao de display ativo
		option: in std_logic; --modo de operação BCD(0) ou Hex(1)
		displaySet: out std_logic_vector(3 downto 0); -- ativa display
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end top;

architecture arch of top is
	begin
		map01: entity work.setSeg(arch) 
			port map(sel,option,bar);
		map02: entity work.seletDisplay(arch) 
			port map(display,displaySet);
end arch;