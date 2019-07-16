library ieee;
use ieee.std_logic_1164.all;

entity cla8 is
port( a,b : in std_logic_vector(7 downto 0);
		s : out std_logic_vector(7 downto 0);
		cin : in std_logic;
		cout : out std_logic);
end cla8;

architecture cla8 of cla8 is

component cla is
port(a,b : in std_logic_vector(3 downto 0);
		 s : out std_logic_vector(3 downto 0);
	  cin : in std_logic;
	  cout : out std_logic);
end component;

signal carry : std_logic_vector(2 downto 0);
signal carry2 : std_logic_vector(3 downto 0);
signal carry3 : std_logic_vector(3 downto 0);
signal teste1 : std_logic_vector(3 downto 0);
signal teste2 : std_logic_vector(6 downto 3);
signal teste3 : std_logic_vector(3 downto 0);
signal teste4 : std_logic_vector(6 downto 3);

begin
teste1 <= a(3 downto 0);
teste2 <= a(6 downto 3);
teste3 <= b(3 downto 0);
teste4 <= b(6 downto 3);

x1: cla port map (teste1,teste3,carry2,cin,carry(1));
x2: cla port map (teste2,teste4,carry3,carry(1),carry(2));

carry(0) <= cin;
cout <= carry(2);
s <= carry2 & carry3;



end architecture;