library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all ;
use work.meupacote.all;
entity top is
generic(N:integer :=3);
 port(
a,b: in std_logic_vector(N-1 downto 0);
	prod: out std_logic_vector((N+N)-1 downto 0);
	bar:out std_logic_vector(7 downto 0));
end top;

architecture arch of top is
 signal prod1:std_logic_vector((N+N)-1 downto 0);
 signal prod2:std_logic_vector(7 downto 0);
 signal a_sig: unsigned((N+N)-1 downto 0);
 signal b_sig:unsigned(7 downto 0);
begin
	prod<=prod1;
	a_sig <= unsigned(prod1);
	b_sig <= "00000000";
	prod2 <=std_logic_vector(a_sig+b_sig);
	map01: entity multplica(arch)
		generic map(N) port map(a,b,prod1);
		
	map02: entity setSeg(arch)
		port map(prod2,bar);
	
end arch;

