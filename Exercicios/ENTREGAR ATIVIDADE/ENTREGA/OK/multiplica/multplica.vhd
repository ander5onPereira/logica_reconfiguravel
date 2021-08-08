library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   use ieee.numeric_std.all ;
entity multplica is
generic(N:integer := 4);
 port(
a,b: in std_logic_vector(N-1 downto 0);
	prod: out std_logic_vector((N+N)-1 downto 0));
end multplica;
	
architecture arch of multplica is
signal a_sig, b_sig: unsigned(N-1 downto 0);
begin
		 a_sig <= unsigned(a);
		 b_sig <= unsigned(b);
		 prod <=std_logic_vector(a_sig*b_sig); --std_logic_vector(unsigned(a_sig * b_sig));		 
end arch;

