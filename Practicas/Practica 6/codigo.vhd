library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity codigo is

port( 
	A: in std_logic_vector (3 downto 0) ;
	B: in std_logic_vector (3 downto 0) ;
	S: out std_logic_vector (3 downto 0) ;
	CS: out std_logic);

	ATTRIBUTE LOC: STRING;

	ATTRIBUTE LOC OF A: SIGNAL IS "P4,P3,P2,P1";
	ATTRIBUTE LOC OF B: SIGNAL IS "P8,P7,P6,P5";
	ATTRIBUTE LOC OF S: SIGNAL IS "P17,P16,P15,14";
	ATTRIBUTE LOC OF CS: SIGNAL IS "P18";

end;

architecture behavioral of codigo is
	SIGNAL C: std_logic_vector(2 downto 0);
begin
	
	S(0)<=(A(0)) XOR (B(0));	
	C(0)<=(A(0)) AND (B(0));
	
	S(1)<=(A(1)) XOR (B(1) XOR (C(0)));
	C(1)<=( ( (A(1)) AND (B(1)) ) OR ( (A(1)) AND (C(0)) ) OR ( (B(1)) AND (C(0)) ) );

	S(2)<=(A(2)) XOR (B(2)) XOR (C(1));
	C(2)<=( ( (A(2)) AND (B(2)) ) OR ( (A(2)) AND (C(1)) ) OR ( (B(2)) AND (C(1)) ) );

	S(3)<=(A(3)) XOR (B(3)) XOR (C(2));
	CS<=( ( (A(3)) AND (B(3)) ) OR ( (A(3)) AND (C(2)) ) OR ( (B(3)) AND (C(2)) ) );
 	

end behavioral;

