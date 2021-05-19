----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:57:09 04/18/2021 
-- Design Name: 
-- Module Name:    Decod2_4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decod2_4 is port(
	indec: in std_logic_vector(1 downto 0);
	out0,out1,out2,out3: out std_logic);
end Decod2_4;

architecture Behavioral of Decod2_4 is begin
  process(indec) begin 
	case indec is 
		when "00" => 
		out0 <= '1';
		out1 <= '0';
		out2 <= '0';
		out3 <= '0';
		
		when "01" => 
		out0 <= '0';
		out1 <= '1';
		out2 <= '0';
		out3 <= '0';
		
		when "10" => 
		out0 <= '0';
		out1 <= '0';
		out2 <= '1';
		out3 <= '0';
		
		when others => 
		out0 <= '0';
		out1 <= '0';
		out2 <= '0';
		out3 <= '1';
		
	end case;
  end process;
end Behavioral;

