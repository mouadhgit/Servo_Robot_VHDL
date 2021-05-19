
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY DataPath_tb IS
END DataPath_tb;
 
ARCHITECTURE behavior OF DataPath_tb IS 
 
    COMPONENT DataPath
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         IR_load : IN  std_logic;
         FSM_IR : OUT  std_logic_vector(5 downto 0);
         rmux : IN  std_logic_vector(1 downto 0);
         jmp : IN  std_logic;
         PC_load : IN  std_logic;
         set_Dec : IN  std_logic;
         cmp_load : IN  std_logic;
         cmp_neqz : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal IR_load : std_logic := '0';
   signal rmux : std_logic_vector(1 downto 0) := (others => '0');
   signal jmp : std_logic := '0';
   signal PC_load : std_logic := '0';
   signal set_Dec : std_logic := '0';
   signal cmp_load : std_logic := '0';
	

 	--Outputs
   signal FSM_IR : std_logic_vector(5 downto 0);
   signal cmp_neqz : std_logic;
	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DataPath PORT MAP (
          clk => clk,
          reset => reset,
          IR_load => IR_load,
          FSM_IR => FSM_IR,
          rmux => rmux,
          jmp => jmp,
          PC_load => PC_load,
          set_Dec => set_Dec,
          cmp_load => cmp_load,
          cmp_neqz => cmp_neqz
        );
  
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
 
   stim_proc: process begin
		Reset <= '1';
		wait for 15 ns;
		Reset <= '0';
		rmux  <= "00";
		
		--           Programme 1 ( Rom_1 )         --
						-- Set cp0 , 2 --
						-- Mav --
						-- Mar --
						-- Tg --
						-- Td --
						-- Decr cp0 --
						-- Bnz cp0 , 5 --
						-- Halt --
		  
		-- Start --
		IR_Load <= '0';
		Pc_Load <= '0';
		Jmp <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Set --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '1';
		Cmp_Load <= '1';
		Set_Dec <= '1';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- mav --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- mar --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Tg --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Td --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decr --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '1';
		Cmp_Load <= '1';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Bnz --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '1';
		Cmp_Load <= '0';
		Set_Dec <= '0';
		wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;	
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decr --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '1';
		Cmp_Load <= '1';
		Set_Dec <= '0';
      wait for clk_period;
		-- Start --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Fetch --
		IR_Load <= '1';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Decode --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait for clk_period;
		-- Bnz --
		IR_Load <= '0';
		Jmp <= '1';
		Pc_Load <= '1';
		Cmp_Load <= '0';
		Set_Dec <= '0';
		wait for clk_period;
		-- Halt --
		IR_Load <= '0';
		Jmp <= '0';
		Pc_Load <= '0';
		Cmp_Load <= '0';
		Set_Dec <= '0';
      wait;
  
   end process;

END;
