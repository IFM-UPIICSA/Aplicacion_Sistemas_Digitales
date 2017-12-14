library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity semi_suma is 

port(

	A: in std_logic_vector(1 downto 0);
	B: in std_logic_vector(1 downto 0);
	S: out std_logic_vector(1 downto 0);
	Cs: out std_logic
);

	ATTRIBUTE LOC:STRING;
	ATTRIBUTE LOC OF A: SIGNAL IS "p2,p1";
	ATTRIBUTE LOC OF B: SIGNAL IS "p4,p3";
	ATTRIBUTE LOC OF S: SIGNAL IS "p15,p14";
	ATTRIBUTE LOC OF Cs: SIGNAL IS "p16";

end;

architecture behavioral of semi_suma is

	SIGNAL C: std_logic;

begin

	S(0)<=( ( A(0) ) XOR ( B(0) ) );
	C<=( (A(0)) AND (B(0)) );

	S(1)<=( ( A(1) ) XOR ( B(1) ) XOR ( C ) );
	Cs<=( ( (A(1)) AND (B(1)) ) OR ( (A(1)) AND (C) ) OR ( (B(1)) AND (C) ) );
	
end behavioral;
