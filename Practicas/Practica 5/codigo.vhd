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
	
	A: out std_logic ;
	B: out std_logic ;
	C: out std_logic ;
	D: out std_logic ;
	E: out std_logic ;
	F: out std_logic ;
	G: out std_logic );

	ATTRIBUTE LOC: STRING; 
	
	ATTRIBUTE LOC OF W: SIGNAL IS "P2";
	ATTRIBUTE LOC OF X: SIGNAL IS "P3";
	ATTRIBUTE LOC OF Y: SIGNAL IS "P4";
	ATTRIBUTE LOC OF Z: SIGNAL IS "P5";	

	ATTRIBUTE LOC OF A: SIGNAL IS "P20"; 
	ATTRIBUTE LOC OF B: SIGNAL IS "P19";
	ATTRIBUTE LOC OF C: SIGNAL IS "P18";
	ATTRIBUTE LOC OF D: SIGNAL IS "P17";
	ATTRIBUTE LOC OF E: SIGNAL IS "P16";
	ATTRIBUTE LOC OF F: SIGNAL IS "P15";
	ATTRIBUTE LOC OF G: SIGNAL IS "P14";

end;

architecture behavioral of codigo is
begin

	A<= ((Y AND Z)OR(W AND NOT Y)OR(W AND X)OR(NOT X AND Z)OR(X AND NOT Y AND NOT Z)OR(NOT W AND NOT X AND Y));
	B<= ((NOT Y AND Z)OR(X AND Z)OR(W AND Y)OR(W AND X));
	C<= ((NOT Y AND NOT Z)OR(NOT W AND NOT Y)OR(X AND Z)OR(W AND Y));
	D<= ((NOT W AND NOT Z)OR(X AND NOT Z)OR(W AND NOT X AND NOT Y)OR(NOT W AND X AND Y));
	E<= ((NOT W AND NOT X)OR(Y AND NOT Z)OR(NOT W AND Y)OR(NOT X AND NOT Y AND Z)OR(W AND X AND NOT Z));
	F<= ((NOT W AND NOT X)OR(Y)OR(NOT Z));
	G<= ((NOT X AND NOT Y)OR(W AND Z)OR(NOT X AND Z)OR(W AND Y)OR(NOT W AND NOT Y AND NOT Z));


end behavioral;

