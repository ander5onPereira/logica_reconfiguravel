library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity erros is
generic(N: integer :=3);
	 port(
		err: in std_logic;
		bar: out std_logic_vector(7 downto 0)
	 );
end erros;

architecture arch of erros is

begin
	bar<=not("01000000") when err = '1' else---
			not("00000000");
	
end arch;
