library ieee ;
    use ieee.std_logic_1164.all ;

entity tb_gt is
end tb_gt ; 

architecture arch of tb_gt is
    signal ta0, ta1,tb0, tb1, tx: std_logic;
begin
    uut: entity work.greater(arch)
    port map(A0=>ta0,A1=>ta1,B0=>tb0,B1=>tb1,X=>tx);
    process 
    begin
        ta1<='0';ta0<='0';tb1<='0';tb0<='0'; wait for 10 ns;
        ta1<='0';ta0<='0';tb1<='0';tb0<='1'; wait for 10 ns;
        ta1<='0';ta0<='0';tb1<='1';tb0<='0'; wait for 10 ns;
        ta1<='0';ta0<='0';tb1<='1';tb0<='1'; wait for 10 ns;
        ta1<='0';ta0<='1';tb1<='0';tb0<='0'; wait for 10 ns;
        ta1<='0';ta0<='1';tb1<='0';tb0<='1'; wait for 10 ns;
        ta1<='0';ta0<='1';tb1<='1';tb0<='0'; wait for 10 ns;
        ta1<='0';ta0<='1';tb1<='1';tb0<='1'; wait for 10 ns;
        ta1<='1';ta0<='0';tb1<='0';tb0<='0'; wait for 10 ns;
        ta1<='1';ta0<='0';tb1<='0';tb0<='1'; wait for 10 ns;
        ta1<='1';ta0<='0';tb1<='1';tb0<='0'; wait for 10 ns;
        ta1<='1';ta0<='0';tb1<='1';tb0<='1'; wait for 10 ns;
        ta1<='1';ta0<='1';tb1<='0';tb0<='0'; wait for 10 ns;
        ta1<='1';ta0<='1';tb1<='0';tb0<='1'; wait for 10 ns;
        ta1<='1';ta0<='1';tb1<='1';tb0<='0'; wait for 10 ns;
        ta1<='1';ta0<='1';tb1<='1';tb0<='1'; wait for 10 ns;
        end process;
end arch ;

