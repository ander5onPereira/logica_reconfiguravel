library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity saida is
	port(
		state: in std_logic_vector(1 downto 0);
		stateA: in std_logic_vector(7 downto 0);
		stateB: in std_logic_vector(7 downto 0);
		stateC: in std_logic_vector(7 downto 0);
		led: out std_logic_vector(7 downto 0)
	);
end entity saida;

architecture arq of saida is
begin
process(state,stateA,stateB,stateC)
begin
	if(state = "00") then
		led <= stateA;
	elsif(state = "01") then
		led <= stateB;
	else
		led <= stateC;
	end if;
end process;
end arq;