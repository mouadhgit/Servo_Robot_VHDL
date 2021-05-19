
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Motor_controller is port(
	clk,reset,retard,go,sens,mvt: in std_logic;
	M_1,M_2: out std_logic_vector(7 downto 0);
	time_set:out std_logic);
end Motor_controller;

architecture Behavioral of Motor_controller is

component cmp_position is port 
	(clk,reset,go,sens,mvt: in std_logic;
	 output_mvt_motor,output_rt_motor:out std_logic_vector( 2 downto 0));
end component;

component rom_mvt is port 
	(adress: in std_logic_vector( 2 downto 0);
	 rom_data:out std_logic_vector(7 downto 0));
end component;

component rom_rt is port 
	(adress: in std_logic_vector( 2 downto 0);
	 rom_data:out std_logic_vector(7 downto 0));
end component;

component frq_divider is port 
	(clk,retard: in std_logic;
	 time_set:out std_logic);
end component;

signal x1,x2: std_logic_vector( 2 downto 0);
begin

cmp_p:cmp_position port map(clk,reset,go,sens,mvt,x1,x2);
romMvt:rom_mvt port map(x1,M_1);
romRt:rom_rt port map(x2,M_2);
frq_D:frq_divider port map(clk,retard,time_set);
end Behavioral;

