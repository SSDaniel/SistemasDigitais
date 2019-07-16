library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------Controlador VGA---------------
--CLOCK_25 => CLOCK DE 25 MHZ PARA A RESOLUÇÃO 640X480
--(FONTE: http://tinyvga.com/vga-timing/640x480@60Hz)
--VGA_HS => SAÍDA PARA A SINCRONIZAÇÃO HORIZONTAL 
--VGA_VS => SAÍDA PARA A SINCRONIZAÇÃO VERTICAL
--VGA_RGB => SAÍDAS DE 4 BITS CADA, PARA FORMAÇÃO DA IMAGEM 
--(FONTE: https://www.intel.com/content/dam/altera-www/global/en_US/portal/dsn/42/doc-us-dsnbk-42-4904342209-de1-usermanual.pdf)
----------------------------------------------


----------------------------------------------
-- 					  VGA							  --
----------------------------------------------
ENTITY VGA IS
PORT(
CLOCK_50: IN STD_LOGIC;
VGA_HS,VGA_VS:OUT STD_LOGIC;
VGA_R,VGA_B,VGA_G: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END VGA;
----------------------------------------------
-- 		        ARQUITETURA			        --
--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--
ARCHITECTURE MAIN OF VGA IS



----------------------------------------------
signal CLOCK_25 : std_LOGIC;
----------------------------------------------



----------------------------------------------
-- 				 components						  --
--##########################################--

component clk_divider is
	generic(
		multiplier 	: integer := 2
	);
	port(
		clk_in 		: in std_logic;
		clk_out		: out std_logic
	);
end component;

----------------------------------------------

 COMPONENT SYNC IS
 PORT(
	CLK: IN STD_LOGIC;
	HSYNC: OUT STD_LOGIC;
	VSYNC: OUT STD_LOGIC;
	R: OUT STD_LOGIC_VECTOR(3 downto 0);
	G: OUT STD_LOGIC_VECTOR(3 downto 0);
	B: OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END COMPONENT SYNC;
--##########################################--
----------------------------------------------



 BEGIN
 
 C: clk_divider PORT MAP(CLOCK_50,CLOCK_25);
 C1: SYNC PORT MAP(CLOCK_25,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
 
 END MAIN;

 
 
 --@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@--
 ----------------------------------------------