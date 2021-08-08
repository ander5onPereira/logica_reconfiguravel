library IEEE;
use IEEE.STD_LOGIC_1164.all;

package meupacote is

component divisao is
	port(
		a,b: in std_logic_vector(1 downto 0);
		result: out std_logic_vector(3 downto 0);
		erro:out std_logic
	);
end component;

component divisao3b is
	port(
		a,b: in std_logic_vector(2 downto 0);
		result: out std_logic_vector(4 downto 0);
		erro:out std_logic
	);
end component;

component erros is
	 port(
		err: in std_logic;
		bar: out std_logic_vector(7 downto 0)
	 );
end component;

component led is
	port(
		erro:in std_logic;
		entrada: in std_logic_vector(4 downto 0);
		saida: out std_logic_vector(6 downto 0)
	);
end component;
end meupacote;

package body meupacote is

end meupacote;
