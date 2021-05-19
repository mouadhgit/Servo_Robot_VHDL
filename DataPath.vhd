
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DataPath is
    Port ( clk : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           IR_load : in  STD_LOGIC;
           FSM_IR : out  STD_LOGIC_VECTOR (5 downto 0);
			  rmux:STD_LOGIC_VECTOR (1 downto 0);
           jmp : in  STD_LOGIC;
           PC_load : in  STD_LOGIC;
           set_Dec : in  STD_LOGIC;
           cmp_load : in  STD_LOGIC;
           cmp_neqz : out  STD_LOGIC);
end DataPath;

architecture struct of DataPath is

component ORMUX is port( 
	sel: in std_logic_vector(1 downto 0);
	A,B,C,D: in std_logic_vector(7 downto 0);
	output:out std_logic_vector(7 downto 0));
end component;

component cmp8bit is
    Port ( clk  : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           cmp_load : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           input : in  STD_LOGIC_VECTOR (7 downto 0);
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component OR8BITS is port (
	input: in std_logic_vector( 7 downto 0);
	cmp_neqz: out std_logic);
end component;

component Decod2_4 is port(
	indec: in std_logic_vector(1 downto 0);
	out0,out1,out2,out3: out std_logic);
end component;

component MUX2_1 is port( 
	jmpmux: in std_logic;
	A,B: in std_logic_vector(7 downto 0);
	output:out std_logic_vector(7 downto 0));
end component;

component PCINC is port
      (input : in std_logic_vector(7 downto 0);
		 output: out std_logic_vector(7 downto 0));
end component;

component rom is 
port ( clk : in std_logic ;
     address : in std_logic_vector( 7 downto 0 )  ;
     data_out : out std_logic_vector( 15 downto 0 )) ;
end component ;

component rom1 is 
port ( clk : in std_logic ;
     address : in std_logic_vector( 7 downto 0 )  ;
     data_out : out std_logic_vector( 15 downto 0 )) ;
end component ;

component rom2 is 
port ( clk : in std_logic ;
     address : in std_logic_vector( 7 downto 0 )  ;
     data_out : out std_logic_vector( 15 downto 0 )) ;
end component ;

component RAMMUX is port( 
	sel: in std_logic_vector(1 downto 0);
	A,B,C: in std_logic_vector(15 downto 0);
	output:out std_logic_vector(15 downto 0));
end component;

component PC is port (
  clk, reset, PC_load : in  std_logic;  
  input       : in  std_logic_vector(7 downto 0);
  output       : out std_logic_vector(7 downto 0)); 
end component; 

component IR is port (
    IR_load, Reset, CLK: in  std_logic;
    Data               : in  std_logic_vector(15 downto 0);
	 ir_1015            : out std_logic_vector(5 downto 0);
	 ir_98              : out std_logic_vector(1 downto 0);
    ir_07              : out std_logic_vector(7 downto 0));
end component;

component DEC8bits is port
      (input : in std_logic_vector(7 downto 0);
		 output: out std_logic_vector(7 downto 0));
end component;

signal x0,x23,x24,x25: std_logic_vector(15 downto 0);
signal x1,x2,x4,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19,x20,x21,x22: std_logic_vector(7 downto 0);
signal x3: std_logic_vector(1 downto 0);
signal x5,x6,x7,x8: std_logic;

begin
ri: IR port map(IR_load, Reset, CLK, x0, FSM_IR, x3, x2);
prc: PC port map(clk, reset,PC_load,x18,x4);
code1: rom port map(clk, x4,x23);
code2: rom1 port map(clk,x4,x24);
code3: rom2 port map(clk,x4,x25);
muxram: RAMMUX port map(rmux,x23,x24,x25,x0);
pcin: PCINC port map(x4, x1);
jmmux: MUX2_1 port map(jmp, x1, x2, x18);
decoder: Decod2_4 port map(x3, x8, x7, x6, x5);
decmux3: MUX2_1 port map(set_Dec, x9, x2, x19);
decmux2: MUX2_1 port map(set_Dec, x10, x2, x20);
decmux1: MUX2_1 port map(set_Dec, x11, x2, x21);
decmux0: MUX2_1 port map(set_Dec, x12, x2, x22);
cmp3: cmp8bit port map(clk,x5,cmp_load,reset,x19,x13);
cmp2: cmp8bit port map(clk,x6,cmp_load,reset,x20,x14);
cmp1: cmp8bit port map(clk,x7,cmp_load,reset,x21,x15);
cmp0: cmp8bit port map(clk,x8,cmp_load,reset,x22,x16);
dec3: DEC8bits port map(x13,x9); 
dec2: DEC8bits port map(x14,x10); 
dec1: DEC8bits port map(x15,x11); 
dec0: DEC8bits port map(x16,x12); 
mux4: ORMUX port map(x3,x16,x15,x14,x13,x17);
zero: OR8BITS port map(x17,cmp_neqz);
end struct;

