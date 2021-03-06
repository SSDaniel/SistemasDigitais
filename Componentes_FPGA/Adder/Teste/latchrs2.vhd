library ieee;
use ieee.std_logic_1164.all;

entity latchrs2 is
port(s,r : in std_logic;
			q,qb : out std_logic); 
end entity;

architecture latchrs2 of latchrs2 is
signal state : std_logic

begin

q <= state;
qb <= not state;



/* No bloco process as linhas são executadas sequencialmente */
process(r,s)/*Lista de sensibilidade(condição para ser executado)*/

	if (r = '1') then
		state <= '0';
	elsif (s = '1') then
		state <= '1'; 
	end if

end process;



end architecture;
			