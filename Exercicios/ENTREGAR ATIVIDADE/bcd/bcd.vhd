library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;
entity bcd is
  port (
    bar : out std_logic_vector(7 downto 0);
	 A: in std_logic_vector(3 downto 0);
	 seletor: in std_logic_vector(1 downto 0);
	 display: out std_logic_vector(3 downto 0)
  ) ;
end bcd ; 

architecture arch of bcd is
	signal sel: std_logic_vector(3 downto 0);
	signal selt: std_logic_vector(1 downto 0);
begin
	sel<=A;
	selt<=seletor;
	process(sel,selt)
		begin
			if selt="00" then
				display<=not("0001");
			elsif selt="01" then
				display<=not("0010");
			elsif selt="10" then
				display<=not("0100");
			else
				display<=not("1000");
			end if;
				
			if sel="0000" then --0
				bar <=not("00111111"); 
			elsif sel="0001" then --1
				bar <=not("00000110");
			elsif sel="0010" then--2
				bar <=not("01011011");
			elsif sel ="0011" then--3
				bar <=not("01001111");
			elsif sel ="0100" then--4
				bar <=not("01100110");
			elsif sel="0101" then--5
				bar <=not("01101101");
			elsif sel="0110" then--6
				bar <=not("01111101");
			elsif sel="0111" then--7
				bar <=not("00000111");
			elsif sel="1000" then--8
				bar <=not("01111111");
			elsif sel="1001" then--9
				bar <=not("01101111");
			else
            bar <=not("10000000"); 
			end if;
		end process;
end architecture ;