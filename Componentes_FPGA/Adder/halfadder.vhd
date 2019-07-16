library ieee;
use ieee.std_logic_1164.all;

entity halfadder is
port(a,b : in std_logic;
	  p,g : out std_logic);
end halfadder;


architecture halfadder of halfadder is 
begin
p <= a xor b;
g <= a and b;
end architecture;