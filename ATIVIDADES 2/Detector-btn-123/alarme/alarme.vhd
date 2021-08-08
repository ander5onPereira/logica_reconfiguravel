library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alarme is
	port(
		clock: in std_logic;
		btn: in std_logic_vector(1 downto 0);
		led: out std_logic_vector(1 downto 0)
	);	
end alarme;

architecture arch of alarme is
	type estado is(
		wait_1,wait_2,wait_3,estado_A, estado_B, estado_C
	);
	signal pr_st: estado := estado_A;
	signal nx_st: estado;
begin
	
	process(pr_st, btn,clock)
	begin
		if(rising_edge(clock)) then pr_st <= nx_st;
		end if;
		case pr_st is
			when estado_A => led<="00";
			if( btn="01") then nx_st <= wait_1;
				else nx_st <= estado_A;
			end if;
			when wait_1 =>
				led <= "00";
				if(btn="00") then nx_st <= estado_B;
					elsif (btn = "01") then nx_st <= wait_1;
					else nx_st<= estado_A;
				end if;
				
			when estado_B => led<="01";
			if( btn="01") then nx_st <= wait_2;
				elsif(btn="00") then nx_st <= estado_B;
				else nx_st <= estado_C;
			end if;
			when wait_2 =>
				led <= "01";
				if(btn="00") then nx_st <= estado_A;
					elsif (btn = "10") then nx_st <= estado_A;
					else nx_st<= wait_2;
				end if;
			
			when estado_C => led<="11";
			if( btn="10") then nx_st <= estado_C;
				elsif(btn="00") then nx_st <= estado_C;
				else nx_st <= wait_3;
			end if;
			when wait_3 =>
				led <= "11";
				if(btn="01") then nx_st <= wait_3;
					elsif (btn = "11") then nx_st <= wait_3;
					else nx_st<= estado_A;
				end if;
		end case;
end process;
end arch;

