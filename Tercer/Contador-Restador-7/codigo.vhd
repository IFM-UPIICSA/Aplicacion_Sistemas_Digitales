library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Codigo is

port( 
	Clock: in std_logic ;
	X: in std_logic ;
	Q: inout std_logic_vector(3 downto 0) );
	
	ATTRIBUTE LOC: STRING;
	ATTRIBUTE LOC OF X: SIGNAL IS "P1";
	ATTRIBUTE LOC OF Q: SIGNAL IS "P20,P19,P18,P17";
	
end;

architecture behavioral of Codigo is
begin
	PROCESS (Clock)
		BEGIN
	
		IF X='1' THEN Q<="0000";
			ELSIF (Clock 'EVENT AND Clock = '1') THEN	
				CASE Q IS			
				WHEN "0000" => 
					IF X = '0' THEN 
					Q<="0010";
					ELSE 
					Q<= "0000";
					END IF;
				WHEN "0010" =>
					IF X= '0' THEN
					Q<= "0100";
					ELSE
					Q<="0000";
					END IF;				
				WHEN OTHERS => Q<= "0000";
			
				END CASE;
		END IF;
	END PROCESS;
	

end behavioral;

