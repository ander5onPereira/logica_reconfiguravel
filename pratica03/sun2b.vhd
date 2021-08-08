library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sun2b is 
port(a, b: in std_logic_vector(1 downto 0);
			s: out std_logic_vector(2 downto 0);
end sun2b;

architecture um_arq of sun2b is
	signal s0, s1: integer range 0 to 3
begin
	s0 <= to integer(unsigned(a));
	s1 <= to integer(unsigned(b));
	
	s <= stf_logic_vector(to_unsigned((s0 + s1), 3);

end um_arq;
