library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity btn123 is
	port(
		clock, reset: in std_logic;
		btn: in std_logic_vector(1 downto 0);
		led: out std_logic_vector(3 downto 0)
	);
end btn123;

architecture arch of btn123 is
	type estado is (
	wait_1, wait_2, wait_Z, wait_X, wait_Y, wait_Z1, wait_X1, wait_Y1, estado_A, estado_B, estado_C, estado_D);
	signal pr_st: estado := estado_A; 
	signal nx_st: estado;

begin
-- FSM Lower
	process(clock, reset)
	begin
		if (reset = '1') then pr_st <= estado_A;
			elsif (rising_edge(clock)) then pr_st <= nx_st;
		end if;
	end process;
	
-- FSM upper
	process(pr_st, btn)
	begin
		case pr_st is
			when estado_A =>
				led <= "0000";
				if (btn = "01") then nx_st <= wait_1;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when wait_1 =>
				led <= "0000";
				if(btn = "00") then nx_st <= estado_B;
					elsif (btn = "01") then nx_st <= wait_1;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when estado_B =>
				led <= "0010";
				if (btn = "10") then nx_st <= wait_2;
					elsif (btn = "00") then nx_st <= estado_B;
					elsif (btn = "01") then nx_st <= wait_1;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when wait_2 =>
				led <= "0010";
				if (btn = "00") then nx_st <= estado_C;
					elsif (btn = "10") then nx_st <= wait_2;
					elsif (btn = "01") then nx_st <= wait_1;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when estado_C =>
				led <= "0100";
				if(btn = "01") then nx_st <= wait_X;
					elsif(btn = "10") then nx_st <= wait_X;
					else nx_st <= estado_C;
				end if;
				-- conferido
			when wait_X =>
				led <= "0100";
				if(btn = "01") then nx_st <= wait_X;
					elsif(btn = "10") then nx_st <= wait_X;
					elsif (btn = "11") then nx_st <= wait_Y;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when wait_Y =>
				led <= "0100";
				if(btn = "11") then nx_st <= wait_Y;
					else nx_st <= wait_Z;
				end if;
				-- conferido
			when wait_Z =>
				led <= "0100";
				if(btn = "00") then nx_st <= estado_D;
					else nx_st <= wait_Z;
				end if;
				-- conferido
			when estado_D =>
				led <= "1000";
				if(btn = "00") then nx_st <= estado_D;
					else nx_st <= estado_A;
				end if;
			-- garantindo que o nro 3 nao seja clicado ao fim da sequencia 123
			when wait_X1 =>
				led <= "0100";
				if(btn = "01") then nx_st <= wait_X1;
					elsif(btn = "10") then nx_st <= wait_X1;
					elsif (btn = "11") then nx_st <= wait_Y1;
					else nx_st <= estado_A;
				end if;
				-- conferido
			when wait_Y1 =>
				led <= "0100";
				if(btn = "11") then nx_st <= wait_Y1;
					else nx_st <= wait_Z1;
				end if;
				-- conferido
			when wait_Z1 =>
				led <= "0100";
				if(btn = "00") then nx_st <= wait_Z1;
					else nx_st <= estado_A;
				end if;			
		end case;
	end process;
end arch;

