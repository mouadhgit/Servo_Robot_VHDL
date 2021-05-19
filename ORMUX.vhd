----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity ORMUX is port( 
	sel: in std_logic_vector(1 downto 0);
	A,B,C,D: in std_logic_vector(7 downto 0);
	output:out std_logic_vector(7 downto 0));
end ORMUX;

architecture Behavioral of ORMUX is
begin

 process(sel,A,B,C,D) begin 
   	case sel is 
		when "00" => 
		output <= A;
		when "01" => 
		output <= B;
		when "10" => 
		output <= C;
		when others => 
		output <= D;
	end case;
 end process;
end Behavioral;

