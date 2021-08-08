library ieee;
use ieee.std_logic_1164.all;
entity ccto_basico7 is
port(a1, a0, b1, b0: in std_logic;
 x: out std_logic);
end ccto_basico7;
architecture arq7 of ccto_basico7 is
begin
 x <= (not(a1)and a0 and not(b1) and not(b0)) 
 or(a1 and not(a0) and not(b1) and not(b0)) 
 or (a1 and not(a0) and not(b1) and b0)
 or(a1 and a0 and not(b1) and not(b0))
 or(a1 and a0 and not(b1) and b0)
 or(a1 and not(a0 and b1 and not(b0)));
end arq7;