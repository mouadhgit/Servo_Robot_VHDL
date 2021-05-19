----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity RAMMUX is port( 
	sel: in std_logic_vector(1 downto 0);
	A,B,C: in std_logic_vector(15 downto 0);
	output:out std_logic_vector(15 downto 0));
end RAMMUX ;

architecture Behavioral of RAMMUX is
begin

 process(sel,A,B,C) begin 
   	case sel is 
		when "00" => 
		output <= A;
		when "01" => 
		output <= B;
		when others => 
		output <= C;
	end case;
 end process;
end Behavioral;

