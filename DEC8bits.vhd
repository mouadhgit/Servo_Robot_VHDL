----------------------------------------------------------------------------------
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity DEC8bits is port
      (input : in std_logic_vector(7 downto 0);
		 output: out std_logic_vector(7 downto 0));
end entity;

architecture Behavioral of DEC8bits is

begin
process(input) begin
output <= input-1;
end process;
end Behavioral;

