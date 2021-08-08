library ieee;
use ieee.std_logic_1164.all;

entity clock is
	generic (
		N: integer := 50_000_000
	);
port(
	clk, rst: in std_logic;
	clockstate1, clockstate2, clockstate3: out std_logic
);
end clock;

architecture arq of clock is
begin
	process(clk, rst)
		variable i, j, k: integer range 0 to N;
		variable v_clk1: std_logic;
		variable v_clk2: std_logic;
		variable v_clk3: std_logic;
		begin
			if (rst = '1')then 
				i := 0;
				j := 0;
				k := 0;
				v_clk1 := '0';
				v_clk2 := '0';
				v_clk3 := '0';
			elsif(clk'event and clk='1') then 
				i := i + 1;
				j := j + 1;
				k := k + 1;
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
					v_clk3 := not(v_clk3);
				end if;
				clockstate1 <= v_clk1;
				clockstate2 <= v_clk2;
				clockstate3 <= v_clk3;
			end if;
	end process;	
end arq;