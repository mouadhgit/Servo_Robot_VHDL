----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity MUX2_1 is port( 
	jmpmux: in std_logic;
	A,B: in std_logic_vector(7 downto 0);
	output:out std_logic_vector(7 downto 0));
end MUX2_1;

architecture Behavioral of MUX2_1 is
begin

 process(jmpmux,A,B) begin 

	if(jmpmux = '1') then 
		output<=B;
	else 
		output<=A;
	end if;
 end process;
end Behavioral;

