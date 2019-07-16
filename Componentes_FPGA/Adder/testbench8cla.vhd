library ieee;
use ieee.std_logic_1164.all;

entity testbench8cla is
end testbench8cla;

architecture testbench8cla of testbench8cla is
component cla is
port(a,b : in std_logic_vector(3 downto 0);
		 s : out std_logic_vector(3 downto 0);
	  cin : in std_logic;
	  cout : out std_logic);
end component;

signal a,b : std_logic_vector(3 downto 0);
signal	s : std_logic_vector(3 downto 0);
signal cin : std_logic;
signal cout : std_logic;

begin

	addcla : cla port map (a,b,s,cin,cout);
		a <= 
		"0000",
		"0100" after 10 ns,
		"0111" after 20 ns,
		"1010" after 300 ns,
		"1011" after 400 ns,
		"0000" after 1000 ns;
		b <= 
		"0000",
		"0100" after 10 ns,
		"0111" after 20 ns,
		"1010" after 300 ns,
		"1011" after 400 ns,
		"0000" after 1000 ns;
		
		cin <= '0';
end architecture; 