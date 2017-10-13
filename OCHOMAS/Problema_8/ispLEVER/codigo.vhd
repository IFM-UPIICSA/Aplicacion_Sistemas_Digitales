library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity codigo is

port( 
	A: in std_logic ;
	B: in std_logic ;
	C: in std_logic ;
	D: in std_logic ;
	B1: out std_logic ;
	B2: out std_logic  );
	
	ATTRIBUTE LOC: STRING;

	ATTRIBUTE LOC OF A: SIGNAL IS "P2";
	ATTRIBUTE LOC OF B: SIGNAL IS "P3";
	ATTRIBUTE LOC OF C: SIGNAL IS "P4";
	ATTRIBUTE LOC OF D: SIGNAL IS "P5";

	ATTRIBUTE LOC OF B1: SIGNAL IS "P14";
	ATTRIBUTE LOC OF B2: SIGNAL IS "P15"; 

end;

architecture behavioral of codigo is
begin

	B1<= (NOT A AND NOT D);
	B2<= ((NOT B AND NOT C AND NOT D) OR (A AND NOT B AND NOT D));
end behavioral;

