library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity codigo is

port( 
	A: in std_logic ;
	B: in std_logic ;
	X: out std_logic ;
	Y: out std_logic ;
	Z: out std_logic  );

	ATTRIBUTE LOC: STRING;

	ATTRIBUTE LOC OF A: SIGNAL IS "P2";
	ATTRIBUTE LOC OF B: SIGNAL IS "P3";

	ATTRIBUTE LOC OF X: SIGNAL IS "P14";
	ATTRIBUTE LOC OF Y: SIGNAL IS "P15";
	ATTRIBUTE LOC OF Z: SIGNAL IS "P16";

end;

architecture behavioral of codigo is
begin

	X<= (A AND B);
	Y<= (NOT A OR NOT B);
	Z<= ((NOT A AND B) OR (A AND NOT B));

end behavioral;

