library ieee ;
    use ieee.std_logic_1164.all ;

entity tb_b_g is
end tb_b_g ; 

architecture arch of tb_b_g is
    signal tb, tg: std_logic_vector (2 downto 0);
begin
    uut: entity work.b_g(arch)
    port map(B=>tb,G=>tg);
    process 
    variable i,j: integer :=0;
    begin
        for i in 0 to 2 loop
            for j in 0 to 2 loop
                tb<= std_logic_vector(to_unsigned(i,2));
                tg<=std_logic_vector(to_unsigned(j,2));
                wait for 10 ns;
            end loop;
        end loop;
    end process;
end arch ;

