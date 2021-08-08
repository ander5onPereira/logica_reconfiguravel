library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meupacote is

component setSeg is
	port (
		sel: in std_logic_vector(7 downto 0); -- entrada binaria
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end component;

component multplica is
 port(
a,b: in std_logic_vector(1 downto 0);
	prod: out std_logic_vector(7 downto 0));
end component;

component potencia is

 port(
a,b: in std_logic_vector(1 downto 0);
	prod: out std_logic_vector(4 downto 0));
end component;

end meupacote;

package body meupacote is

end meupacote;
