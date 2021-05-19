LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_arith.all ;
----------------

entity rom1 is 
port ( clk : in std_logic ;
     address : in std_logic_vector( 7 downto 0 ) ;
     data_out : out std_logic_vector( 15 downto 0 )) ;
end entity ;

------------------
architecture arch of rom1 is 

type memory is array ( 0 to 255) of std_logic_vector( 15 downto 0 ) ;
constant myrom : memory := (
 "0100000000000010" , 
 "1100010000000110" , 
 "0010100000000010" , 
 "0100110000000000" , 
 "0010010000000000" , 
 "0110000000000000" , 
 "0100000000000000" ,
others => "0000000000000000" ) ;
begin 
process(clk)
begin 
if( rising_edge(clk) ) then
  data_out <= myrom(conv_integer(unsigned(address))) ;  
end if ;
end process ;
 end architecture ;