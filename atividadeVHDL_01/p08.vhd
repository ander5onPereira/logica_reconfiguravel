library ieee;
use ieee.std_logic_1164.all;
entity comparador8 is
port(a, b, c: in std_logic;
 s1,s2,s3: out std_logic);
end comparador8;
architecture arq_comp8 of comparador8 is
begin
	s1 <= (a and not(b) and not(c)) or ( a and not(b) and c) or (a and b and not(c)) or (a and b and c);
	s2 <= (not(a) and b and not(c)) or ( not(a) and b and c) or (a and not(b) and not(c)) or (a and not(b) and c);
	s3 <= (not(a) and not(b) and c) or ( not(a) and b and not(c)) or (a and not(b) and c) or (a and b and not(c));
end arq_comp8;