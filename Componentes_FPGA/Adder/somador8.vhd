library ieee;
use ieee.std_logic_1164.all;

entity somador8 is 
port( a,b : in std_logic_vector(7 downto 0);
		cin  : in std_logic;
		s: out std_logic_vector(7 downto 0);
		cout : out std_logic);
end somador8;

architecture somador8 of somador8 is

component somador is
port(a,b,cin : in std_logic;
		cout,s : out std_logic);
end component;

signal carry : std_logic_vector(8 downto 0);
signal c: std_logic;

begin 

x1 : for i in 0 to 7 generate
    x: somador port map(a(i),b(i),carry(i),carry(i+1),s(i));
	 end generate;
carry(0) <= cin;
cout <= carry(8);
end somador8;