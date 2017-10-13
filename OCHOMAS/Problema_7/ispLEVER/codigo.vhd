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
	F: out std_logic  );

	ATTRIBUTE LOC: STRING;

	ATTRIBUTE LOC OF A: SIGNAL IS "P2";
	ATTRIBUTE LOC OF B: SIGNAL IS "P3";
	ATTRIBUTE LOC OF C: SIGNAL IS "P4";
	ATTRIBUTE LOC OF D: SIGNAL IS "P5";

	ATTRIBUTE LOC OF F: SIGNAL IS "P14";

end;

architecture behavioral of codigo is
begin

F<=( (NOT A AND NOT B AND NOT C AND D) OR (A AND B AND D) OR (A AND B AND C) OR (A AND C AND D) OR (B AND C AND D) );

end behavioral;

