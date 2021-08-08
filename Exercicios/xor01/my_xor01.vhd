library ieee ;
    use ieee.std_logic_1164.all ;

entity my_xor01 is
  port (
    a,b: in std_logic_vector(1 downto 0);
    y: out std_logic
  ) ;
end entity ; 

architecture arch of my_xor01 is

begin
    y<= (a(1) xnor b(1)) and (a(0) xor B(0));
end architecture ;