----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:30 03/05/2021 
-- Design Name: 
-- Module Name:    IR - IR_arch 
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



entity IR is port (
    IR_load, Reset, CLK: in  std_logic;
    Data               : in  std_logic_vector(15 downto 0);
	 ir_1015            : out std_logic_vector(5 downto 0);
	 ir_98              : out std_logic_vector(1 downto 0);
    ir_07              : out std_logic_vector(7 downto 0));
end IR;

architecture IR_arch of IR is

	begin 
	dreg_proc : process (Clk, Reset)
   begin 
      if    (Reset='1')        then 
        ir_1015 <= "000000";
		  ir_98 <= "00";
		  ir_07 <= X"00";
      elsif (rising_edge(CLK)) then
        if (IR_load='1')       then 
        ir_1015 <= Data(15 downto 10);
		  ir_98 <= Data(9 downto 8);
		  ir_07 <= Data(7 downto 0);			
        end if;
      end if;
  end process dreg_proc;
end IR_arch;


