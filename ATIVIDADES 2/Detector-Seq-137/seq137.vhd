library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 

entity seq137 is
	port(
		clock, reset: in std_logic;
		x: in std_logic_vector(2 downto 0);
		y: out std_logic
	);
end seq137;

architecture arch of seq137 is
	type estado is (
		estado_A, estado_B, estado_C, estado_D
	);
	signal pr_st, nx_st: estado;
begin
	--circuito sequencial
	process(clock, reset)
	begin
		if (reset = '1') then pr_st <= estado_A; --quando realizado reset vai para o estado A - inicio
		elsif (clock'event and clock = '1') then pr_st <= nx_st; -- detector de borda
		end if;
	end process;
	--circuito combinacional - para analise dos estados
	process(pr_st, x)
	begin
		case pr_st is
			
			
			when estado_A =>
				y <= '0' ; --led apagado
				if (x = "001") then nx_st <= estado_B; --se a entrada for 001 passa para o proximo estado
					else nx_st <= estado_A; --senao continua no estado inicial
				end if;
			
			when estado_B =>
				y <= '0'; --led apagado
				if (x = "011") then nx_st <= estado_C; --se a entrada for 011 para para o proximo estado
					elsif (x = "001") then nx_st <= estado_B; --se a entrada continuar sendo 001 como o clock opera em 50MHz ele continua no estado_B
					else nx_st <= estado_A; -- se a entrada for diferente da desejada volta ao estagio inicial
				end if;
				
			when estado_C =>
				y <= '0'; --led apagado
				if (x = "111") then nx_st <= estado_D; --se a entrada for 111 passa para o proximo estado
					elsif (x = "011") then nx_st <= estado_C; --loop no estado_C
					elsif (x = "001") then nx_st <= estado_B; --se a entrada for 001 retorna ao estado_B para reiniciar a procura da sequencia
					else nx_st <= estado_A; -- se a entrada for diferente da desejada volta ao estagio inicial
				end if;
				
			when estado_D =>
				y <= '1'; --led ligado
				if (x = "001") then nx_st <= estado_B; --se a entrada for 001 retorna ao estado_B para reiniciar a procura da sequencia
					elsif (x = "111") then nx_st <= estado_D; --loop no estado_D
					else nx_st <= estado_A;
				end if;
				
			end case;
	end process;
end arch;