library ieee;
use ieee.std_logic_1164.all;
entity porta_and_sinal is
port(a, b, c: in std_logic;
 x: out std_logic);
end porta_and_sinal;
architecture arq of porta_and_sinal is
signal s0, s1: std_logic;
begin --comentário qualquer
	s0 <= a and b; s1 <= s0 and c;
end arq;