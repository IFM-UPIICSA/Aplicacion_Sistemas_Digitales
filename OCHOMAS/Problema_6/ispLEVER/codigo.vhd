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

	F<= ((A AND B) OR (A AND C) OR (A AND D) OR (B AND C) OR (C AND D) OR (B AND D));

end behavioral;

