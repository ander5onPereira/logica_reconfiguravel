library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity greater is
  port (
    A0: in std_logic; 
    A1: in std_logic; 
    B0: in std_logic;
    B1: in std_logic;
    
    X: out std_logic
  );
end greater ; 

architecture arch of greater is
    signal s1,s2,s3,s4,s5,s6: std_logic;
begin
    s1<=(not A1) or A0 or (not B1) or (not B0);
    s2<=A1 or (not A0) or (not B1) or (not B0);
    s3<=A1 or (not A0) or (not B1) or B0;
    s4<=A1 or  A0 or (not B1) or (not B0);
    s5<=A1 or A0 or (not B1) or B0;
    s6<=A1 or A0 or B1 or (not B0);

    X<= s1 and s2 and s3 and s4 and s5 and s6;

end architecture ;