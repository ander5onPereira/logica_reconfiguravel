library ieee;
use ieee.std_logic_1164.all;
entity porta_and is
port(a, b, c: in std_logic;
 x: out std_logic);
end porta_and;
architecture arq of porta_and is
begin --comentário qualquer
 x <= a and b and c;
end arq;