library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.meupacote.all;
entity top is
generic(N:integer := 2);
	port(
		a,b: in std_logic_vector((N-1) downto 0);
		result: out std_logic_vector((N+1) downto 0);
		erro:out std_logic;
		bar:out std_logic_vector(7 downto 0);
		le:out std_logic_vector(6 downto 0)
	);
end top;

architecture arch of top is
Signal rest:std_logic_vector((N+1) downto 0);
Signal er:std_logic;
begin
	result<=rest;
	erro<=er;
	map01:entity divisao(arch) port map(a,b,rest,er);
	
	--map02:entity divisao3b(arch) port map(a,b,rest,er);
	
	map03:entity erros(arch) port map(er,bar);
	
	map04:entity led(arch) port map(er,rest,le);

end arch;

