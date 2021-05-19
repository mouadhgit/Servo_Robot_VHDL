----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:28:09 04/18/2021 
-- Design Name: 
-- Module Name:    cmp8bit - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cmp8bit is
    Port ( clk  : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           cmp_load : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (7 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end cmp8bit;

architecture Behavioral of cmp8bit is begin

 process(clk,reset,enable) begin
	if (enable = '1') then
	 if(reset = '1') then output <= x"00";
	 elsif(rising_edge(clk)) then 
		if(cmp_load = '1') then output <= input + 1;
	 	end if;
	 end if;	
	end if;
 end process;
end Behavioral;

