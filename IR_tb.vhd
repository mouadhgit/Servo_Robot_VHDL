--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:20:10 04/22/2021
-- Design Name:   
-- Module Name:   D:/ISE Projects/cerveau_Robot/IR_tb.vhd
-- Project Name:  cerveau_Robot
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IR
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY IR_tb IS
END IR_tb;
 
ARCHITECTURE behavior OF IR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IR
    PORT(
         IR_load : IN  std_logic;
         Reset : IN  std_logic;
         CLK : IN  std_logic;
         Data : IN  std_logic_vector(15 downto 0);
         ir_1015 : OUT  std_logic_vector(5 downto 0);
         ir_98 : OUT  std_logic_vector(1 downto 0);
         ir_07 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal IR_load : std_logic := '0';
   signal Reset : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Data : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal ir_1015 : std_logic_vector(5 downto 0);
   signal ir_98 : std_logic_vector(1 downto 0);
   signal ir_07 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IR PORT MAP (
          IR_load => IR_load,
          Reset => Reset,
          CLK => CLK,
          Data => Data,
          ir_1015 => ir_1015,
          ir_98 => ir_98,
          ir_07 => ir_07
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
   IR_load <= '0','1' after 20 ns; ;
    Reset  <= '0','1' after 20 ns; ; ;
   -- Stimulus process
   stim_proc: process
   begin	
	


     Data  ;

   end process;

END;
