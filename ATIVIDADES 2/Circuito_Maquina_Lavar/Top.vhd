library ieee;
use ieee.std_logic_1164.all;
use work.meu_pacote.all;
use ieee.numeric_std.all;

entity top is
	port(
		clk, rst, x: in std_logic;
		led: out std_logic_vector(7 downto 0)
	);
end entity;

architecture arq of top is	
	signal clk1, clk2, clk3: std_logic; 
	signal stateA: std_logic_vector(7 downto 0);
	signal stateB: std_logic_vector(7 downto 0);
	signal stateC: std_logic_vector(7 downto 0);
	signal state_saida: std_logic_vector(1 downto 0); 
begin
	map_Clock: entity work.clock(arq)
	port map(clk, rst, clk1, clk2, clk3);
	
	map_Maquina_Estado: entity work.maquina_estado(arq)
	port map(clk, rst, x, state_saida);
	
	map_Stand_by: entity work.stand_by(arq)
	port map(clk1, state_saida, stateA);	
	
	map_Enxague: entity work.enxague(arq)
	port map(clk2, state_saida, stateB);

	map_Centrifugacao: entity work.centrifugacao(arq)
	port map(clk3, state_saida, stateC);	
	
	map_Apresenta: entity work.saida(arq)
	port map(state_saida, stateA, stateB, stateC, led);
	
end arq;