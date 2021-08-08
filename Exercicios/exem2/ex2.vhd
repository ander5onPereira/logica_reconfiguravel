library ieee ;
    use ieee.std_logic_1164.all ;

entity ex2 is
  port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;

    X: out std_logic
  ) ;
end ex2 ; 

architecture arch of ex2 is
    signal or1: std_logic;
begin
    or1 <= (not A) or (not B);
    X <=  (not or1) and B and C;
end architecture ;