library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------SINCRONIZACAO VGA---------------
--CLK => CLOCK DE 25 MHZ PARA A RESOLUÇÃO 640X480
--(FONTE: http://tinyvga.com/vga-timing/640x480@60Hz)
--HSYNC => SAÍDA PARA A SINCRONIZAÇÃO HORIZONTAL 
--VSYNC => SAÍDA PARA A SINCRONIZAÇÃO VERTICAL
--R,G,B => SAÍDAS DE 4 BITS CADA, PARA FORMAÇÃO DA IMAGEM 
--(FONTE: https://www.intel.com/content/dam/altera-www/global/en_US/portal/dsn/42/doc-us-dsnbk-42-4904342209-de1-usermanual.pdf)
----------------------------------------------
ENTITY SYNC IS
PORT(
CLK: IN STD_LOGIC;
HSYNC: OUT STD_LOGIC;
VSYNC: OUT STD_LOGIC;
R: OUT STD_LOGIC_VECTOR(3 downto 0);
G: OUT STD_LOGIC_VECTOR(3 downto 0);
B: OUT STD_LOGIC_VECTOR(3 downto 0)
);
END SYNC;


ARCHITECTURE MAIN OF SYNC IS


-----VGA Signal 640 x 480 @ 60 Hz Industry standard timing 25 MHz clock
SIGNAL HPOS: INTEGER RANGE 0 TO 800:=0; -- 800 = HORIZONTAL (VA+FP+SYNCP+BP)
SIGNAL VPOS: INTEGER RANGE 0 TO 525:=0; -- 525 = VERTICAL (VA+FP+SYNCP+BP)



BEGIN


--
 PROCESS(CLK)
 BEGIN
IF(CLK'EVENT AND CLK='1')THEN

-------------PREENCHIMENTO DA TELA---------------
-- A CADA CICLO DE CLOCK A POSIÇÃO HORIZONTAL SERÁ
-- INCRMENTADA COM +1 ATÉ ATINGIR SEU LIMITE,
-- DEPOIS SERÁ ZERADA E SERÁ ACRESCENTADO 1 NA 
-- POSIÇÃO VERTICAL. REPETINDO O PROCESSO ATÉ O 
-- LIMITE DA RESOLUÇÃO.
			R<=(others=>'1');
	      G<=(others=>'0');
	      B<=(others=>'0');

	IF(HPOS<800)THEN
		HPOS<=HPOS+1;
	ELSE
		HPOS<=0;
		  IF(VPOS<525)THEN
			  VPOS<=VPOS+1;
			  ELSE
			  VPOS<=0; 
		  END IF;
	END IF;
----------------------------------------------
	
	
---------------------HSYNC--------------------	
-- A SINCRONIZAÇÃO HORIZONTAL PERMANECE EM NIVEL ALTO
-- ENTRE O FP E O BP. ENTÃO A SINCRONIZAÇÃO VERTICAL
-- DEVE ACOTECER QUANDO O HPOS É MAIOR QUE O FIN DO FP(16)
-- E MENOR QUE O FP+SYNCP. SE NÃO, RECEBE NIVEL BAIXO.
   IF(HPOS>16 AND HPOS<112)THEN 
	   HSYNC<='1';
	ELSE
	   HSYNC<='0';
	END IF;
----------------------------------------------



---------------------VSYNC--------------------
-- A SINCRONIZAÇÃO VERTICAL PERMANECE EM NIVEL ALTO
-- ENTRE O FP E O BP. ENTÃO A SINCRONIZAÇÃO VERTICAL
-- DEVE ACOTECER QUANDO O HPOS É MAIOR QUE O FIN DO FP(16)
-- E MENOR QUE O FP+SYNCPULSE. SE NÃO, RECEBE NIVEL BAIXO.
   IF(VPOS>2 AND VPOS<10)THEN
	   VSYNC<='1';
	ELSE
	   VSYNC<='0';
	END IF;
----------------------------------------------

	
   IF((HPOS>0 AND HPOS<160) OR (VPOS>0 AND VPOS<45))THEN
	R<=(others=>'0');
	G<=(others=>'0');
	B<=(others=>'0');
	END IF;

 END IF;
 END PROCESS;
 END MAIN;