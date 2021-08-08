library ieee ;
    use ieee.std_logic_1164.all ;
entity and01 is
  port (
    A: in std_logic;
    B: in std_logic;
    C: in std_logic;

    X: out std_logic
    ) ;
end and01 ; 

architecture arch of and01 is
begin
    X <= A and B and C;
end architecture ;