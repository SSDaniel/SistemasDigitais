library ieee;
use ieee.std_logic_1164.all;

entity latchrs is
port(s,r : in std_logic;
			q,qb : buffer std_logic); /*usando buffer para poder usar uma saída como entrada */
end entity;

architecture latchrs of latchrs is

begin

q <= (not s) nand qb;
qb <= (not r) nand q;
 
end architecture;
			