
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity cerveau_robot is port(
	clk,reset: in std_logic;
	M_1,M_2: out std_logic_vector(7 downto 0));
end cerveau_robot;

architecture Top of cerveau_robot is

component DataPath is port(
	        clk : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           IR_load : in  STD_LOGIC;
           FSM_IR : out  STD_LOGIC_VECTOR (5 downto 0);
			  rmux:STD_LOGIC_VECTOR (1 downto 0);
           jmp : in  STD_LOGIC;
           PC_load : in  STD_LOGIC;
           set_Dec : in  STD_LOGIC;
           cmp_load : in  STD_LOGIC;
           cmp_neqz : out  STD_LOGIC);
end component;

component FSM is port(
	 clk,reset:in std_logic;
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
end component;

component Motor_controller is port(
	clk,reset,retard,go,sens,mvt: in std_logic;
	M_1,M_2: out std_logic_vector(7 downto 0);
	time_set:out std_logic);
end component;

signal 	retard,time_set,go,sens,mvt,IR_load,jmp, PC_load,set_Dec,cmp_load,cmp_neqz :STD_LOGIC;
signal	FSM_IR :  STD_LOGIC_VECTOR (5 downto 0);
signal	rmux:STD_LOGIC_VECTOR (1 downto 0);
	
begin
dataP: DataPath  port map(clk,reset,IR_load,FSM_IR ,rmux,jmp, PC_load,set_Dec,cmp_load,cmp_neqz);
MC: Motor_controller port map(clk,reset,retard,go,sens,mvt,M_1,M_2,time_set);
FSM1: FSM port map (clk,reset,retard,go,sens,mvt,time_set,IR_load,FSM_IR ,rmux,jmp, PC_load,set_Dec,cmp_load,cmp_neqz);
end Top;

