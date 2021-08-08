library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity setSeg is
  port (
    bar : out std_logic_vector(6 downto 0);
	 A: in std_logic_vector(3 downto 0)

  ) ;
end setSeg ; 

architecture arch of setSeg is
signal sel: std_logic_vector(3 downto 0);
begin
sel<=A;
   def:process(sel)
	begin
    if sel="0000" then
		bar <="1111110";
		elsif sel="0001" then
		bar <="0110000";
		elsif sel="0010" then
		bar <="1101101";
		elsif sel ="0011" then
		bar <="1111001";
		elsif sel ="0100" then
		bar <="0110011";
		elsif sel="0101" then
		bar <="1011011";
		elsif sel="0110" then
		bar <="1011111";
		elsif sel="0111" then
		bar <="1110000";
		elsif sel="1000" then
		bar <="1111111";
		elsif sel="1001" then
		bar <="1111011";
		elsif sel="1010" then
		bar <="1110110";
		elsif sel="1011" then
		bar <="0011111";
		elsif sel="1100" then
		bar <="1001110";
		elsif sel="1101" then
		bar <="0111101";
		elsif sel="1110" then
		bar <="1001111";
		else
		bar <="1000111";
	end if;
	end process;
end architecture ;