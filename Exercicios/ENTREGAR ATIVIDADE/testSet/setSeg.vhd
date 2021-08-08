library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity setSeg is
	port (
		sel: in std_logic_vector(3 downto 0); -- entrada binaria
		option: in std_logic; --modo de operação BCD(0) ou Hex(1)
		bar: out std_logic_vector(7 downto 0) -- saida display setSegmentos
	) ;
end setSeg;

architecture arch of setSeg is

begin

bar<= not("00111111") when sel="0000" else--0
		not("00000110") when sel="0001" else--1
		not("01011011") when sel="0010" else--2
		not("01001111") when sel="0011" else--3
		not("01100110") when sel="0100" else--4
		not("01101101") when sel="0101" else--5
		not("01111101") when sel="0110" else--6
		not("00000111") when sel="0111" else--7
		not("01111111") when sel="1000" else--8
		not("01101111") when sel="1001" else--9
		not("01011111") when (sel="1010" and option='1') else--10 A
		not("01111100") when (sel="1011" and option='1') else--11 B
		not("00111001") when (sel="1100" and option='1') else--12 C
		not("01011110") when (sel="1101" and option='1') else--13 D
		not("01111001") when (sel="1110" and option='1') else--14 E
		not("01110001") when (sel="1111" and option='1') else--15 F
		not("10000000");
	
end arch;

