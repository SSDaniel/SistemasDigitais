library ieee;
use ieee.std_logic_1164.all;

entity cla is
port(a,b : in std_logic_vector(3 downto 0);
		 s : out std_logic_vector(3 downto 0);
	  cin : in std_logic;
	  cout : out std_logic);
end cla;

architecture cla of cla is
component halfadder is
port(a,b : in std_logic;
	  p,g : out std_logic);
end component;

signal p,g : std_logic_vector(3 downto 0);
signal c : std_logic_vector(3 downto 0);


begin

x: for i in 0 to 3 generate
		x1 :  halfadder port map(a(i),b(i),p(i),g(i)); 
end generate;
c(0) <= cin ;

c(1) <= g(0) or (p(0) and cin);
c(2) <= g(1) or (p(1) and g(0)) or (p(1) and p(0) and cin);
c(3) <= g(2) or (p(2) and g(1)) or (p(2) and p(1) and g(0)) or (p(2) and p(1) and p(0) and cin);
cout <= g(3) or (p(3) and g(2)) or (p(3) and p(2) and g(1)) or (p(3) and p(2) and p(1) and g(0)) or (p(3) and p(2) and p(1) and p(0) and cin);

s(0) <= p(0) xor c(0);
s(1) <= p(1) xor c(1);
s(2) <= p(2) xor c(2);
s(3) <= p(3) xor c(3);

end architecture;

