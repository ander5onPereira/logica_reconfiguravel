library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
    use ieee.numeric_std.all ;
	 use work.meu_pacote.all;
entity top is
port (
		 bar: out std_logic_vector(7 downto 0); -- saida display setSegmentos
		 sel: in std_logic_vector(3 downto 0); -- entrada binaria
		 display: in std_logic_vector(1 downto 0); -- selecao de display ativo
		 option: in std_logic; --modo de operação BCD(0) ou Hex(1)
		 displaySet: out std_logic_vector(3 downto 0)
  ) ;
end top;

architecture arch of top is

begin

 map_1: entity work.meu_pacote(arch) 
 port map(bar,sel,display,option,displaySet);

end arch;

