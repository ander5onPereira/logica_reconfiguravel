library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity deslocar is
	port(
		x: in std_logic_vector(1 downto 0);
		res: out std_logic_vector(4 downto 0)
	);

end deslocar;

architecture arch of deslocar is
signal res0:std_logic_vector(4 downto 0);
signal v:integer;
begin
	res0<= "00000";
process(v)
variable i:integer:=0;
begin
	--variable v: integer;
	v<=to_integer(unsigned(x));
	for i in 0 to 4 loop
		res(i)<= res0(i+v) when (i+v)<5 else
					res0(0) when (i+v)=5 else
					res0(1) when (i+v)=6 else
					res0(2);
	end loop;
end process;

end arch;


