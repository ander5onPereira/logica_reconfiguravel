library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux6_4 is
	port (
		sel: in std_logic_vector(5 downto 0); -- entrada binaria
		bar: out std_logic_vector(3 downto 0) -- saida display setSegmentos
	) ;
end mux6_4;

architecture arch of mux6_4 is

begin

bar<= not("00111111") when sel="00111111" else--0
		not("00000110") when sel="00000110" else--1
		not("01011011") when sel="01011011" else--2
		not("01001111") when sel="01001111" else--3
		not("01100110") when sel="01100110" else--4
		not("01101101") when sel="01101101" else--5
		not("01111101") when sel="01111101" else--6
		not("00000111") when sel="00000111" else--7
		not("01111111") when sel="01111111" else--8
		not("01101111") when sel="01101111" else--9
		not("01011111") when sel="01011111" else--10 A
		not("01111100") when sel="01111100" else--11 B
		not("00111001") when sel="00111001" else--12 C
		not("01011110") when sel="01011110" else--13 D
		not("01111001") when sel="01111001" else--14 E
		not("01110001") when sel="01110001" else--15 F
		not("10000000");
	
end arch;

