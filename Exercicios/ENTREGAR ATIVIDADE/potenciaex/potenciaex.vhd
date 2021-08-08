library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
   use ieee.numeric_std.all ;
entity potenciaex is

 port(
	x,y: in std_logic_vector(1 downto 0);
	result: out std_logic_vector(4 downto 0));
end potenciaex;
	
architecture arch of potenciaex is
--signal b_sig: unsigned(1 downto 0);
--signal result: std_logic_vector(7 downto 0);
signal vb,mult: integer;
constant va:integer:=to_integer(signed(x));
begin
--va<= to_integer(signed(x));
vb<=to_integer(signed(y));
nun:process(vb)
		--variable mult,va,vb: integer;
		--variable mult: integer;
		begin
		--a_sig <= unsigned(x);
		--b_sig <= unsigned(y);
		
		--b_sig<= unsigned(y);
		mult<=1;
		gen:for i in  0 to va-1 loop
		 mult<=mult*vb;
		 end loop gen;
		 result <= std_logic_vector(to_unsigned(mult,5)); --std_logic_vector(unsigned(a_sig * b_sig));
end process nun;
end arch;
