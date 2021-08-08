library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   use ieee.numeric_std.all ;
entity deslocarEsq is
generic(N:integer := 2);
 port(
	a,b: in std_logic_vector(N-1 downto 0);
	prod: out std_logic_vector((N+N)-1 downto 0));
end deslocarEsq;
	
architecture arch of deslocarEsq is
signal a_sig, b_sig: unsigned(N-1 downto 0);
begin

 
		 a_sig <= unsigned(a);
		 b_sig <= unsigned(b);
		 prod <=std_logic_vector(a_sig*b_sig);
		 
		 
end arch;

