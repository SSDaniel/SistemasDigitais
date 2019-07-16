library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Addern is
generic(n : integer := 4);
port(a,b : in std_logic_vector(n-1 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		s : out std_logic_vector(n-1 downto 0));
end entity;

architecture Addern of Addern is

component Adder is
port(a,b,cin : in std_logic;
		s,cout : out std_logic);
end component;

signal carry : std_logic_vector(n downto 0);

begin

laco: for i in 0 to N-1 generate
	adds: Adder port map(A(i),B(i),carry(i),S(i),carry(i+1));
end generate;
-- ===================== // ===================== ULTIMA CONEXÃO
carry(0) <= Cin;
Cout <= carry(N);

end architecture;