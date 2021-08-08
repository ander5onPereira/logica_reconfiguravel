library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meupacote is
	component setSeg02 is
  port (
		 bar: out bit_vector(7 downto 0); -- saida display setSegmentos
		 sel: in bit_vector(3 downto 0); -- entrada binaria
		 display: in bit_vector(1 downto 0); -- selecao de display ativo
		 option: in bit; --modo de operação BCD(0) ou Hex(1)
		 displaySet: out bit_vector(3 downto 0)
  ) ;
end component ;

end package;

