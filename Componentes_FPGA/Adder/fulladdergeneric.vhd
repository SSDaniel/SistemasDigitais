library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fulladdergeneric is
generic( n : integer := 20);
port(a,b : in std_logic_vector(n-1 downto 0);
		cin : in std_logic;
		cimais1 : out std_logic;
		s : out std_logic_vector(n-1 downto 0));
end entity;

architecture fulladdergeneric of fulladdergeneric is

component fulladder is
port(a,b,ci : in std_logic;
	cimais1,s: out std_logic);
end component;

signal carry : std_logic_vector(n downto 0);

begin

x: for i in 0 to n-1 generate
	x1: fulladder port map(a(i),b(i),carry(i),carry(i+1),s(i));
end generate;

carry(0) <= cin;
cimais1 <= carry(n);

end architecture;
