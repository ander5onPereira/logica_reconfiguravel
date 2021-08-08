library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   use ieee.numeric_std.all ;
entity potencia is

 port(
a,b: in std_logic_vector(1 downto 0);
	prod: out std_logic_vector(4 downto 0));
end potencia;
	
architecture arch of potencia is
signal a_sig, b_sig: unsigned(1 downto 0);
signal result: std_logic_vector(7 downto 0);

begin
	process
		variable mult,va,vb: integer;
		begin
		
		vb <= unsigned(b);
		va <= unsigned(a);
		mult<=va;
		gen: for i in 0 to vb loop
		 mult<= 1 when i=0 else
					(mult*va);
		 end loop;
		 
		 prod <=std_logic_vector(unsigned(mult)); --std_logic_vector(unsigned(a_sig * b_sig));
end process;
end arch;

