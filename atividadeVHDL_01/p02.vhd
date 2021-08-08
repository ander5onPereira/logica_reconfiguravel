library ieee;
use ieee.std_logic_1164.all;
entity ccto_basico is
port(a, b, c: in std_logic;
 x: out std_logic);
end ccto_basico;
architecture arq2 of ccto_basico is
begin
 x <= not(not(a) or not(b)) and b and c;
end arq2;