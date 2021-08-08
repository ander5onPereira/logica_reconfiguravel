library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package meu_pacote is

	component clock is
		generic (N: integer := 50000000);
		port(clk, rst: in std_logic;
			clockestado1, clockestado2, clockestado3: out std_logic);
	end component;
	
	
	component maquina_estado is
		generic (timer: integer := 12_500_000);
		port(clk, rst: in std_logic;
			  x: in std_logic;
			  estado_saida: out std_logic_vector(1 downto 0));	
	end component;

	component stand_by is
		port(clk1: in std_logic;
			estado: in std_logic_vector(1 downto 0);
			led: out std_logic_vector(7 downto 0));	
	end component;

	component enxague is
		port(clk2: in std_logic;
			estado: in std_logic_vector(1 downto 0);
			led: out std_logic_vector(7 downto 0));	
	end component;

	component centrifugacao is
		port(clk3: in std_logic;
			estado: in std_logic_vector(1 downto 0);
			led: out std_logic_vector(7 downto 0));	
	end component;
	
	component saida is
	port(estado: in std_logic_vector(1 downto 0);
		  est_A: in std_logic_vector(7 downto 0);
		  est_B: in std_logic_vector(7 downto 0);
		  est_C: in std_logic_vector(7 downto 0);
		  led: out std_logic_vector(7 downto 0));
	end component;
	
end package;