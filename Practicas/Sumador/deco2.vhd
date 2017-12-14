library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity deco2 is

port( 
	E: in std_logic_vector (4 downto 0) ;
	S: out std_logic_vector (6 downto 0) );

	ATTRIBUTE LOC: STRING;
	ATTRIBUTE LOC OF E: SIGNAL IS "p5,p4,p3,p2,p1";
	ATTRIBUTE LOC OF S: SIGNAL IS "p20,p19,p18,p17,p16,p15,p14";

end;

architecture behavioral of deco2 is
begin

	WITH E SELECT
	S<= 	"0000000" WHEN "00000",
		"0000000" WHEN "00001",
		"0000000" WHEN "00010",
		"0000000" WHEN "00011",
		"0000000" WHEN "00100",
		"0000000" WHEN "00101",
		"0000000" WHEN "00110",
		"0000000" WHEN "00111",
		"0000000" WHEN "01000",
		"0000000" WHEN "01001",

		"0110000" WHEN "01010",
		"0110000" WHEN "01011",
		"0110000" WHEN "01100",
		"0110000" WHEN "01101",
		"0110000" WHEN "01110",
		"0110000" WHEN "01111",
		"0110000" WHEN "10000",
		"0110000" WHEN "10001",
		"0110000" WHEN "10010",
		"0110000" WHEN "10011",

		"1101101" WHEN "10100",
		"1101101" WHEN "10101",
		"1101101" WHEN "10110",
		"1101101" WHEN "10111",
		"1101101" WHEN "11000",
		"1101101" WHEN "11001",
		"1101101" WHEN "11010",
		"1101101" WHEN "11011",
		"1101101" WHEN "11100",
		"1101101" WHEN "11101",

		"1111001" WHEN "11110",
		"1111001" WHEN "11111",
		"0000000" WHEN OTHERS;



end behavioral;

