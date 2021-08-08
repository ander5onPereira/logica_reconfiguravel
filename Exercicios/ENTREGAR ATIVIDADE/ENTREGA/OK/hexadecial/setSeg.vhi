
-- VHDL Instantiation Created from source file setSeg.vhd -- 18:07:11 05/01/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT setSeg
	PORT(
		sel : IN std_logic_vector(3 downto 0);
		display : IN std_logic_vector(1 downto 0);
		option : IN std_logic;          
		bar : OUT std_logic_vector(7 downto 0);
		displaySet : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_setSeg: setSeg PORT MAP(
		bar =>bar,
		sel =>sel ,
		display => display,
		option => option,
		displaySet => displaySet
	);


