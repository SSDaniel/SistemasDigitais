library ieee;
use ieee.std_logic_1164.all;

entity somador is
port(a,b,cin : in std_logic;
		cout,s : out std_logic);
end somador;


architecture somador of somador is 
signal temp : std_logic;
begin 

temp <= a xor b;
s <= temp xor cin;
cout <= (a and b) xor (temp and cin);

end somador; 