library ieee;
use ieee.std_logic_1164.all;

entity latchrs2t is
port(s,r : in std_logic;
			q,qb : out std_logic); 
end entity;

architecture latchrs2t of latchrs2t is
signal state : std_logic;

begin

q <= state;
qb <= not state;

-- No bloco process as linhas são executadas sequencialmente 
--Lista de sensibilidade(condição para ser executado)
process(r,s)
begin
	if (r = '1') then
		state <= '0';
	elsif (s = '1') then
		state <= '1'; 
	end if;
end process;

end architecture;
			