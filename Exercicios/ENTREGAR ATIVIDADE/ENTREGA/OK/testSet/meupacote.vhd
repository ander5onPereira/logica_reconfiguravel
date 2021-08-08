library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meupacote is
	component setSeg is
		port (
			sel: in std_logic_vector(3 downto 0); -- entrada binaria
			option: in std_logic; --modo de operação BCD(0) ou Hex(1)
			bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
		) ;
	end component ;
	
	component seletDisplay is
		port (
			display: in std_logic_vector(1 downto 0); -- selecao de display ativo
			displaySet: out std_logic_vector(3 downto 0) -- seleção de display
		) ;
	end component ;
end meupacote;

package body meupacote is
 
end meupacote;
