----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity PCINC is port
      (input : in std_logic_vector(7 downto 0);
		 output: out std_logic_vector(7 downto 0));
end PCINC;

architecture Behavioral of PCINC is

begin
process(input) begin
output <= input+1;
end process;
end Behavioral;

