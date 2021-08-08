library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meupacote is
component multplica is
generic(N:integer := 4);
 port(
a,b: in std_logic_vector(N-1 downto 0);
	prod: out std_logic_vector((N+N)-1 downto 0));
end component;

component setSeg is
	port (
		sel: in std_logic_vector(7 downto 0); -- entrada binaria
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end component;
end meupacote;

package body meupacote is

end meupacote;
