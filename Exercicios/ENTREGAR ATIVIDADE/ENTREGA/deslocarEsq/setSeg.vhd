library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity setSeg is
	port (
		sel: in std_logic_vector(7 downto 0); -- entrada binaria
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end setSeg;

architecture arch of setSeg is

begin

bar<= not("00111111") when sel="00000000" else--0
		not("00000110") when sel="00000001" else--1
		not("01011011") when sel="00000010" else--2
		not("01001111") when sel="00000011" else--3
		not("01100110") when sel="00000100" else--4
		not("01101101") when sel="00000101" else--5
		not("01111101") when sel="00000110" else--6
		not("00000111") when sel="00000111" else--7
		not("01111111") when sel="00001000" else--8
		not("01101111") when sel="00001001" else--9
		not("10000000");
	
end arch;

