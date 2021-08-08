library ieee ;
    use ieee.std_logic_1164.all ;

entity b_g is
  port (
    B: in std_logic_vector(2 downto 0);
    G: out std_logic_vector(2 downto 0)

  ) ;
end b_g ; 

architecture arch of b_g is

begin
    G(0)<='1' when B="001" else
        '1' when B="010" else
        '1' when B="101" else
        '1' when B="110" else
         '0';
    G(1)<='1' when B="010" else
        '1' when B="011" else
        '1' when B="100" else
        '1' when B="101" else
        '0';
    G(2)<='1' when B="100" else
        '1' when B="101" else
        '1' when B="110" else
        '1' when B="111" else
        '0';
end architecture ;