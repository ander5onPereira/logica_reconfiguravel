library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity binario_gray is
    generic (N: integer := 4);
  port (
    A: in std_logic_vector((N-1) downto 0); -- entrada binaria 
    Y: out std_logic_vector((N-1) downto 0) --  saida Gray
  ) ;
end binario_gray ; 
architecture arch of binario_gray is
begin
    gen:for i in 0 to (N-1) generate 
			Y(i)<= A(i) when i=3 else
					(A(i) xor A(i+1)) when i<3;

		end generate gen;

end arch;