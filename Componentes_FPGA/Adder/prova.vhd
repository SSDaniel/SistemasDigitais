library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity prova is
port(a,b : in std_logic_vector(7 downto 0);
		cin : in std_logic;
		cout1,cout2 : out std_logic;
		s1,s2 : out std_logic_vector(7 downto 0));
end entity;



architecture prova of prova is

component cla8 is
port( a,b : in std_logic_vector(3 downto 0);
		st : out std_logic_vector(7 downto 0);
		cin : in std_logic;
		cout : out std_logic);
end component;

component somador8 is 
port( a,b : in std_logic_vector(7 downto 0);
		cin  : in std_logic;
		s: out std_logic_vector(7 downto 0);
		cout : out std_logic);
end component;

signal carry : std_logic_vector(2 downto 0);

begin
carry(0) <= cin;
x1: somador8 port map(a,b,cin,s1,cout1);
x2: cla8 port map(a,b,s2,cin,cout2);

end architecture;