library ieee;
use ieee.std_logic_1164.all;
entity tb_comparador is
end tb_comparador;
architecture arq of tb_comparador is
signal ta, tb, ty: std_logic;
begin
	uut: entity work.comparador(arq_comp)
	port map(a => ta, b => tb, y => ty);
	process begin
		ta <= '0'; tb <= '0'; wait for 10 ns;
		ta <= '0'; tb <= '1'; wait for 10 ns;
		ta <= '1'; tb <= '0'; wait for 10 ns;
		ta <= '1'; tb <= '1'; wait for 10 ns;
	end process;
end arq;