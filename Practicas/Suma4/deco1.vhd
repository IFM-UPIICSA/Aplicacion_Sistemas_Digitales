library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity deco1 is

port( 
	E: in std_logic_vector(2 downto 0) ;
	S: out std_logic_vector(6 downto 0) );

	ATTRIBUTE LOC OF E: SIGNAL IS ()

end;

architecture behavioral of deco1 is
begin

	WITH E SELECT
	

end behavioral;

