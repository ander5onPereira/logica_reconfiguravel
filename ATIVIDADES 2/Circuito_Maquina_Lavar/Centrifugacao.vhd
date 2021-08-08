library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity centrifugacao is
	port(
		clk3: in std_logic; 
		state: in std_logic_vector(1 downto 0);
		led: out std_logic_vector(7 downto 0)
	);
end entity centrifugacao;

architecture arq of centrifugacao is
 signal clock3: std_logic;
begin
	clock3<=clk3;
process(state,clock3)
	variable vclock: std_logic_vector(7 downto 0);
begin

	if(clock3'event and clock3 = '1') then 	
		if (vclock = "00000000") then vclock := "00000001";
		end if;
		if (vclock = "10000000") then vclock := "00000001";
		end if;
			vclock:= std_logic_vector(unsigned(vclock)*2);
	end if;
	
	if(state = "10") then
		led(0) <= vclock(0);
		led(1) <= vclock(1);
		led(2) <= vclock(2);
		led(3) <= vclock(3);
		led(4) <= vclock(4);
		led(5) <= vclock(5);
		led(6) <= vclock(6);
		led(7) <= vclock(7);
	else
		led <= (others => '0');
	end if;
end process;
end arq;