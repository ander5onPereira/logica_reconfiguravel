library ieee;
use ieee.std_logic_1164.all;

entity maquina_lavar is
	generic (
		timer: integer := 12_500_000);
port(clk, rst: in std_logic;
				x: in std_logic;
				y: out std_logic_vector(6 downto 0));
end maquina_lavar;

architecture arq of maquina_lavar is
	type estado is (estado_A, estado_B, estado_C);
	signal pr_st, nx_st: estado;
	signal a : std_logic_vector(1 downto 0);
	signal clockestado1 : std_logic;
	signal clockestado2 : std_logic;
	signal clockestado3 : std_logic;
	signal led: integer range 0 to 6;
	constant N: integer := 50e6;
begin
--circuito sequencial
	process(clk, rst)
		variable count: integer range 0 to timer;
	begin
		if(rst = '1') then pr_st <= estado_A; count := 0;
			elsif(clk'event and clk = '1') then
				count := count + 1;
				if (count >= timer)then
					pr_st <= nx_st;
					count := 0;
				end if;
		end if;
	end process;
------------------------------------------------------
--circuito combinacional
	process(pr_st, x)
	begin
		case pr_st is

			when estado_A =>
				a <= "00";
				if(x = '1') then nx_st <= estado_B;
					else nx_st <= estado_A;
				end if;

			when estado_B =>
				a <= "01";
				if(x = '1') then nx_st <= estado_C;
					else nx_st <= estado_A;
				end if;

			when estado_C =>
				a <= "10";
				if(x = '0') then nx_st <= estado_A;
					else nx_st <= estado_C;
				end if;

		end case;
	end process;
-----------------------------------------------------
--gerador de clock
	process(clk, rst)
	variable i, j, k: integer range 0 to N;
	variable v_clk1: std_logic;
	variable v_clk2: std_logic;
	variable v_clk3: std_logic;
	variable led1: integer range 0 to 6;
	begin
		if (rst = '1')then 
			i := 0;
			v_clk1 := '0';
		elsif(clk'event and clk='1') then 
			i := i + 1;
			if (i = N/2) then 
				i := 0;
				v_clk1 := not(v_clk1);
			end if;
			if (j = N/4) then 
				j := 0;
				v_clk2 := not(v_clk2);
			end if;
			if (k = N/10) then 
				k := 0;
				led1 := led1 + 1;
				v_clk3 := not(v_clk3);
				if (led1 > 6) then led1 := 0;
				end if;
			end if;
			led <= led1;
			clockestado1 <= v_clk1;
			clockestado2 <= v_clk2;
			clockestado3 <= v_clk3;
		end if;
	end process;	
--------------------------------------------
--pisca leds
   process(clockestado1, clockestado2, clockestado3, a, led)
	--variable i: integer range 0 to 6;
	begin
		y <= "0000000";
		if (a = "00")then 
			y(0) <= clockestado1;
		end if;
		if (a = "01")then 
			y(0) <= clockestado2;
			y(1) <= clockestado2;
		end if;
		if (a = "10")then 
			--if(clockestado3'event and clockestado3='1') then 
				if (led = 0) then
					y <= "0000001";
				elsif (led = 1) then
					y <= "0000010";
				elsif (led = 2) then
					y <= "0000100";
				elsif (led = 3) then
					y <= "0001000";
				elsif (led = 4) then
					y <= "0010000";
				elsif (led = 5) then
					y <= "0100000";
				elsif (led = 6) then
					y <= "1000000";
				end if;
			--	i := i + 1;
			--end if;
		end if;
	end process;	
end arq;