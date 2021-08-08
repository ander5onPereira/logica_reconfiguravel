library ieee ;
    use ieee.std_logic_1164.all ;

entity tb_ex04 is
end tb_ex04 ; 

architecture arch of tb_ex04 is
    signal ta, tb, tx: std_logic;
begin
    uut: entity work.ex4(arch)
    port map(A=>ta,B=>tb,X=>tx);
    process 
    begin
        ta<='0';tb<='0'; wait for 10 ns;
        ta<='0';tb<='1'; wait for 10 ns;
        ta<='1';tb<='0'; wait for 10 ns;
        ta<='1';tb<='1'; wait for 10 ns;
        end process;
end arch ;

