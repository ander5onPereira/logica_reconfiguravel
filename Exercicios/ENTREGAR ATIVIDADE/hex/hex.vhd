library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
entity hex is
  port (
    bar : out std_logic_vector(7 downto 0); -- barramento de set segmentos
	 A: in std_logic_vector(3 downto 0);
	 seletor: in std_logic_vector(1 downto 0);
	 display: out std_logic_vector(3 downto 0);
	 option: in std_logic
  ) ;
end hex ; 

architecture arch of hex is

begin

	process(A,seletor,option)
		begin
			if seletor="00" then
				display<=not("0001");
			elsif seletor="01" then
				display<=not("0010");
			elsif seletor="10" then
				display<=not("0100");
			else
				display<=not("1000");
			end if;
				
			if A="0000" then --0
				bar <=not("00111111"); 
			elsif A="0001" then --1
				bar <=not("00000110");
			elsif A="0010" then--2
				bar <=not("01011011");
			elsif A ="0011" then--3
				bar <=not("01001111");
			elsif A ="0100" then--4
				bar <=not("01100110");
			elsif A="0101" then--5
				bar <=not("01101101");
			elsif A="0110" then--6
				bar <=not("01111101");
			elsif A="0111" then--7
				bar <=not("00000111");
			elsif A="1000" then--8
				bar <=not("01111111");
			elsif A="1001" then--9
				bar <=not("01101111");
			elsif A="1010" then--10 A
				bar <=not("01011111");
			elsif A="1011" then--11 B
				bar <=not("01111100"); 
			elsif A="1100" then-- 12 C
				bar <=not("00111001");
			elsif A="1101" then--13 D
				bar <=not("01011110");
			elsif A="1110" then--14 E
				bar <=not("01111001");
			elsif A="1111" then--15 F
				bar <=not("01110001");
			end if;
		end process;
end architecture ;
