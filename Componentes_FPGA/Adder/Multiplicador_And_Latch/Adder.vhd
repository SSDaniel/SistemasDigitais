library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Adder is
port(a,b,cin : in std_logic;
		s,cout : out std_logic);
end Adder;

architecture Adder of Adder is
signal temp : std_logic;


begin

temp <= (a xor b);
s <= (temp xor cin);
cout <= (a and b) or (cin and temp);

end Adder;