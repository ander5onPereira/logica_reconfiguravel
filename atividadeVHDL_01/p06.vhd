library ieee;
use ieee.std_logic_1164.all;
entity ccto_basico2 is
port(a, b, c: in std_logic;
 x: out std_logic);
end ccto_basico2;
architecture arq1 of ccto_basico2 is
begin
 x <= a and b and c;
end arq1;