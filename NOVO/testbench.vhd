library ieee;
use ieee.std_logic_1164.all;

entity testbench is 
end testbench;



architecture test of testbench is 

component VGA IS
PORT(
CLOCK_50: IN STD_LOGIC;
VGA_HS,VGA_VS:OUT STD_LOGIC;
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END component;



signal CLOCK_50: STD_LOGIC := '0';
signal VGA_HS,VGA_VS: STD_LOGIC;
signal VGA_R,VGA_B,VGA_G: STD_LOGIC_VECTOR(3 downto 0);

begin 

t: VGA port map(CLOCK_50,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B); 

CLOCK_50 <= not CLOCK_50 after 10 ns;


end test;