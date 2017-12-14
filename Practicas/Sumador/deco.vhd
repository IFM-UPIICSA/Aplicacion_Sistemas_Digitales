library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity deco is

port( 
	E: in std_logic_vector(4 downto 0) ;
	S: out std_logic_vector(6 downto 0) 
	
	);

	ATTRIBUTE LOC: STRING;
	ATTRIBUTE LOC OF E: SIGNAL IS "P5,p4,p3,p2,p1";
	ATTRIBUTE LOC OF S: SIGNAL IS "p20,p19,p18,p17,p16,p15,p14";
	
	

end;

architecture behavioral of deco is
begin

	WITH E SELECT
	S<= 	"1111110" WHEN "00000",
		"0110000" WHEN "00001",	
		"1101101" WHEN "00010",	
		"1111001" WHEN "00011",	
		"0110011" WHEN "00100",	
		"1011011" WHEN "00101",	
		"1011111" WHEN "00110",	
		"1110001" WHEN "00111",	
		"1111111" WHEN "01000",	
		"1111011" WHEN "01001",
	
		"1111110" WHEN "01010",
		"0110000" WHEN "01011",	
		"1101101" WHEN "01100",	
		"1111001" WHEN "01101",	
		"0110011" WHEN "01110",	
		"1011011" WHEN "01111",	
		"1011111" WHEN "10000",	
		"1110001" WHEN "10001",	
		"1111111" WHEN "10010",	
		"1111011" WHEN "10011",

		"1111110" WHEN "10100",
		"0110000" WHEN "10101",	
		"1101101" WHEN "10110",	
		"1111001" WHEN "10111",	
		"0110011" WHEN "11000",	
		"1011011" WHEN "11001",	
		"1011111" WHEN "11010",	
		"1110001" WHEN "11011",	
		"1111111" WHEN "11100",	
		"1111011" WHEN "11101",	

		"1111110" WHEN "11110",
		"0110000" WHEN "11111",
		"0000000" WHEN OTHERS ;

end behavioral;

