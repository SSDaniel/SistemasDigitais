library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fulladder is
port(a,b,ci : in std_logic;
	cimais1,s: out std_logic);
end fulladder;

architecture fulladder of fulladder is

signal temp : std_logic_vector(3 downto 0);

begin
temp(0) <= a xor b;
s <= temp(0) xor ci;
cimais1 <= (temp(0) and ci) or (a and b);


end architecture;