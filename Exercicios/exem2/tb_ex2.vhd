library ieee ;
    use ieee.std_logic_1164.all ;

entity tb_and01 is
end tb_and01 ; 

architecture arch of tb_and01 is
    signal ta, tb, tc, tx: std_logic;
begin
    uut: entity work.ex2(arch)
    port map(A=>ta,B=>tb,C=>tc,X=>tx);
    process 
    begin
        ta<='0';tb<='0';tc<='0'; wait for 10 ns;
        ta<='0';tb<='0';tc<='1'; wait for 10 ns;
        ta<='0';tb<='1';tc<='0'; wait for 10 ns;
        ta<='0';tb<='1';tc<='1'; wait for 10 ns;
        ta<='1';tb<='0';tc<='0'; wait for 10 ns;
        ta<='1';tb<='0';tc<='1'; wait for 10 ns;
        ta<='1';tb<='1';tc<='0'; wait for 10 ns;
        ta<='1';tb<='1';tc<='1'; wait for 10 ns;
        end process;
end arch ;