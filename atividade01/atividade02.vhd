library ieee;
use ieee.std_logic_1164.all;

entity ccto_basico is
port(a,b,c:in std_logic;
x:out std_logic);
end ccto_basico;

architecture arq of porta_and is
begin 
x<=a and b and c;
end arq;