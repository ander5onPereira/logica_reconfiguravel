library ieee;
use ieee.std_logic_1164.all;
entity tb_p07 is
end tb_p07;
architecture arq7 of tb_p07 is
signal ta1, ta0, tb1, tb0, tx: std_logic;
begin
	uut: entity work.ccto_basico7(arq7)
	port map(a1 => ta1,a0 => ta0,b1 => tb1 ,b0 => tb0, x => tx);
	process begin
		ta1 <= '0'; ta0 <= '0' ; tb1 <= '0'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '0' ; tb1 <= '0'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '0' ; tb1 <= '1'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '0' ; tb1 <= '1'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '1' ; tb1 <= '0'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '1' ; tb1 <= '0'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '1' ; tb1 <= '1'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '0'; ta0 <= '1' ; tb1 <= '1'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '0' ; tb1 <= '0'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '0' ; tb1 <= '0'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '0' ; tb1 <= '1'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '0' ; tb1 <= '1'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '1' ; tb1 <= '0'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '1' ; tb1 <= '0'; tb0 <= '1'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '1' ; tb1 <= '1'; tb0 <= '0'; wait for 10 ns;
		ta1 <= '1'; ta0 <= '1' ; tb1 <= '1'; tb0 <= '1'; wait for 10 ns;
		end process;
end arq7;