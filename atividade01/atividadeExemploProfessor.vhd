library ieee;
use ieee.std_logic_1164.all;

entity ccto is
port(w,x,y,z:in std_logic;
s:out std_logic);
end ccto;

architecture arq of ccto is
begin 
	s<=not(x and y) or z or (z and not(w));
end arq;