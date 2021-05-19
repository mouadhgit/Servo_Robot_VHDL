
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY PCINC_tb IS
END PCINC_tb;
 
ARCHITECTURE behavior OF PCINC_tb IS 
  
 
    COMPONENT PCINC
    PORT(
         input : IN  std_logic_vector(7 downto 0);
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal output : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PCINC PORT MAP (
          input => input,
          output => output
        );

   -- Clock process definitions

 

   -- Stimulus process
   stim_proc: process
     begin		
		input<="00000000";
		wait for 20 ns ;
      input<="00000001";
		wait for 20 ns ;
		input<="00000010";
		wait for 20 ns ;
		input<="00000011";
		wait for 20 ns ;

     wait;
   end process;

END;
