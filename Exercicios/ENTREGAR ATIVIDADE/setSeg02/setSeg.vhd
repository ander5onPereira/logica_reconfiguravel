library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity setSeg02 is
  port (
		 bar: out bit_vector(7 downto 0); -- saida display setSegmentos
		 sel: in bit_vector(3 downto 0); -- entrada binaria
		 display: in bit_vector(1 downto 0); -- selecao de display ativo
		 option: in bit; --modo de operação BCD(0) ou Hex(1)
		 displaySet: out bit_vector(3 downto 0)
  ) ;
end setSeg02 ; 

architecture arch of setSeg02 is
begin
		process(sel,option,display)
		begin		
			if display="00" then
				displaySet<=not("0001");
			elsif display="01" then
				displaySet<=not("0010");
			elsif display="10" then
				displaySet<=not("0100");
			else
				displaySet<=not("1000");
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
				if option='0' then -- para bcd acende .
					bar <=not("10000000"); 
				else 
					if sel="1010" then -- A 
						bar <=not("01011111");
					elsif sel="1011" then -- B
						bar <=not("01111100");
					elsif sel="1100" then -- C
						bar <=not("00111001");
					elsif sel="1101" then -- D
						bar <=not("01011110");
					elsif sel="1110" then -- E
						bar <=not("01111001");
					else -- F
						bar <=not("01110001");
					end if;
				end if;
			end if;
		end process;
end arch ;