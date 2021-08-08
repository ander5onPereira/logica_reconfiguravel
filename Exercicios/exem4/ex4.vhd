library ieee ;
    use ieee.std_logic_1164.all ;
entity ex4 is
  port (
    A: in std_logic;
    B: in std_logic;

    X: out std_logic
  ) ;
end ex4 ; 

architecture arch of ex4 is

begin
    X<= ((not A) and (not B)) or (A and B);
end architecture ;