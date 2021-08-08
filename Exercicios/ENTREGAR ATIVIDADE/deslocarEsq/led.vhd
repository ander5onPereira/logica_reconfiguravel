library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity led is
	port(
		leds: in std_logic_vector(4 downto 0);
		saida: out std_logic_vector(4 downto 0)
	);
end led;

architecture arch of led is
	
begin

	saida(0)<=leds(0);
	saida(1)<=leds(1);
	saida(2)<=leds(2);
	saida(3)<=leds(3);
	saida(4)<=leds(4);	
	

end arch;

