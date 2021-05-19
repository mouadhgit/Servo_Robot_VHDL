
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FSM is port 
	(clk,reset: in std_logic;
	 retard,go,sens,mvt: out std_logic;
	 time_set:in std_logic;
	 IR_load : out  STD_LOGIC;
    FSM_IR : in  STD_LOGIC_VECTOR (5 downto 0);
    rmux: out STD_LOGIC_VECTOR (1 downto 0);
    jmp : out  STD_LOGIC;
    PC_load : out  STD_LOGIC;
    set_Dec : out  STD_LOGIC;
    cmp_load : out STD_LOGIC;
    cmp_neqz : in  STD_LOGIC);
end FSM;

architecture FSMARCH of FSM is

begin


end FSMARCH ;

