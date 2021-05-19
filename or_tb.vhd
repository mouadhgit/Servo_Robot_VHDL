--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:09:42 04/22/2021
-- Design Name:   
-- Module Name:   D:/ISE Projects/cerveau_Robot/or_tb.vhd
-- Project Name:  cerveau_Robot
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: OR8BITS
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
 
ENTITY or_tb IS
END or_tb;
 
ARCHITECTURE behavior OF or_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OR8BITS
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         cmp_neqz : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal cmp_neqz : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OR8BITS PORT MAP (
          input => input,
          cmp_neqz => cmp_neqz
        );

   -- Clock
 

   -- Stimulus process
   stim_proc: process
   begin		
     input<= x"00";
	  wait for 20 ns;
     input<=x"01";
	  wait for 20 ns;
	  input<=x"0f";
	  wait for 20 ns;
	  input<=x"00";
	  wait for 20 ns;

   end process;

END;
