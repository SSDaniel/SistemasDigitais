library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
end entity;

architecture test of test is

signal CLOCK_24: std_LOGIC_vECTOR(1 downto 0);
signal VGA_HS,VGA_VS: std_LOGIC;
signal VGA_R,VGA_G,VGA_B: STD_LOGIC_VECTOR(3 downto 0);

component VGA IS
PORT(
	CLOCK_24: IN STD_LOGIC_VECTOR(1 downto 0) := "00";
	VGA_HS,VGA_VS:OUT STD_LOGIC;
	VGA_R,VGA_G,VGA_B: OUT STD_LOGIC_VECTOR(3 downto 0)
	);
end component;
begin
teste: VGA port map(CLOCK_24,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);

process
begin

CLOCK_24 <= not CLOCK_24;
wait for 21 ns;

end process;

end architecture;