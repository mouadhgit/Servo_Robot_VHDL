----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:58:47 04/18/2021 
-- Design Name: 
-- Module Name:    OR8BITS - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OR8BITS is port (
	input: in std_logic_vector( 7 downto 0);
	cmp_neqz: out std_logic);
	
end OR8BITS;

architecture Behavioral of OR8BITS is
begin
 process(input) begin 
	cmp_neqz <= input(0) or input(1)or input(2)or input(3)or input(4)or input(5)or input(6)or input(7);
 end process;
end Behavioral;

