
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity codigo is

port( 
	W: in std_logic ;
	X: in std_logic ;
	Y: in std_logic ;
	Z: in std_logic ;
	F: out std_logic  );

	ATTRIBUTE LOC: STRING;
	ATTRIBUTE LOC OF W: SIGNAL IS "P2";
	ATTRIBUTE LOC OF X: SIGNAL IS "P3";
	ATTRIBUTE LOC OF Y: SIGNAL IS "P4";
	ATTRIBUTE LOC OF Z: SIGNAL IS "P5";
	ATTRIBUTE LOC OF F: SIGNAL IS "P14";

end;

architecture behavioral of codigo is
begin

	F<= ((W AND Y) OR ((NOT Y) AND X AND (NOT Y)AND Z) OR ((NOT X) AND Y) OR (Y AND (NOT Z)));

end behavioral;
