library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity b_g_Nbit is
    generic (N: integer := 4);
  port (
    A: in std_logic_vector((N-1) downto 0); -- entrada binaria 
    Y: out std_logic_vector((N-1) downto 0) --  saida Gray
  ) ;
end b_g_Nbit ; 
architecture arch of b_g_Nbit is
begin
    gen: for i in y'range generate
		def:if i=(N-1) generate
			Y(i)<=A(i);
		end generate def;
		den: if i<(N-1) generate
			Y(i) <= (A(i) xor A(i+1));
		end generate den;
	end generate gen;
end arch;