library ieee;
use ieee.std_logic_1164.all;

entity testbench8 is
end testbench8;


architecture testbench8 of testbench8 is

component somador8 is 
port( a,b : in std_logic_vector(7 downto 0);
		cin  : in std_logic;
		s: out std_logic_vector(7 downto 0);
		cout : out std_logic);
end component;

signal a,b : std_logic_vector(7 downto 0);
signal s : std_logic_vector(7 downto 0);
signal cin,cout : std_logic;

begin
		add: somador8 port map(a,b, cin, s, cout);
		a <= 
		"00000000",
		"00000100" after 10 ns,
		"00000111" after 20 ns,
		"00001010" after 300 ns,
		"00001011" after 400 ns,
		"00000000" after 1000 ns;
		b <= 
		"00000000",
		"00000100" after 10 ns,
		"00000111" after 20 ns,
		"00001010" after 300 ns,
		"00001011" after 400 ns,
		"00000000" after 1000 ns;
		
		cin <= '0';
		
end architecture ;