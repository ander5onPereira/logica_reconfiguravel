library ieee;
use ieee.std_logic_1164.all;

entity maquina_estado is
	generic (
		timer: integer := 12_500_000
	);
	port(
		clk, rst: in std_logic;
		x: in std_logic;
		state_saida: out std_logic_vector(1 downto 0)
	);
end maquina_estado;

architecture arq of maquina_estado is
	type state is (stateA, stateB, stateC);
	signal pr_st, nx_st: state;
begin
	process(clk, rst)
		variable count: integer range 0 to timer;
	begin
		if(rst = '1') then pr_st <= stateA; count := 0;
			elsif(clk'event and clk = '1') then
				count := count + 1;
				if (count >= timer)then
					pr_st <= nx_st;
					count := 0;
				end if;
		end if;
	end process;

	process(pr_st, x)
		variable a : std_logic_vector(1 downto 0);
	begin
		case pr_st is

			when stateA =>
				a := "00";
				if(x = '1') then nx_st <= stateB;
					else nx_st <= stateA;
				end if;

			when stateB =>
				a := "01";
				if(x = '1') then nx_st <= stateC;
					else nx_st <= stateB;
				end if;

			when stateC =>
				a := "10";
				if(x = '0') then nx_st <= stateC;
					else nx_st <= stateA;
				end if;
		end case;
		state_saida <= a;
	end process;
end arq;