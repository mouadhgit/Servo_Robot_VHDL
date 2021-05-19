----------------------------------------------------------------------------------
-- Company: 
-- Engineer:       Mouadh Dahech
-- 
-- Create Date:    09:16:15 03/05/2021 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name:   Control Robot 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PC is port (
  clk, reset, PC_load : in  std_logic;  
  input       : in  std_logic_vector(7 downto 0);
  output       : out std_logic_vector(7 downto 0)); 
end entity PC; 

architecture PC_arch of PC is 
  begin PC_proc : process (clk, reset)
    begin
      if    (reset='1')            then  output<= "00000000";
      elsif (rising_edge(clk))     then
        if (PC_load ='1')          then  output<= input;
        end if;
      end if;
  end process PC_proc;
end architecture PC_arch;




