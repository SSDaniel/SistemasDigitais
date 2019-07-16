library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
use std.textio.all;

entity read_image_VHDL is
  generic (
    ADDR_WIDTH     : integer := 4;        
    DATA_WIDTH     : integer := 8;
    IMAGE_SIZE  : integer := 6400;
    IMAGE_FILE_NAME : string :="IMAGE_FILE.MIF"
  );
  port(
    clock: IN STD_LOGIC;
    IMAGEOUT: OUT std_logic_vector ((DATA_WIDTH-1) DOWNTO 0));
end read_image_VHDL;

architecture behavioral of read_image_VHDL is

TYPE mem_type IS ARRAY(0 TO IMAGE_SIZE) OF std_logic_vector((DATA_WIDTH-1) DOWNTO 0);

impure function init_mem(mif_file_name : in string) return mem_type is
    file mif_file : text open read_mode is mif_file_name;
    variable mif_line : line;
    variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
    variable temp_mem : mem_type;
begin
    for i in mem_type'range loop
        readline(mif_file, mif_line);
        read(mif_line, temp_bv);
        temp_mem(i) := to_stdlogicvector(temp_bv);
    end loop;
    return temp_mem;
end function;

signal ram_block: mem_type := init_mem(IMAGE_FILE_NAME);
begin

-- ISSO ESTA CERTO???????????
-- COMO CONSIGO MANDAR OS MESMO VALORES DE RGB PRA DEIXAR A IMAGEM CINZA?

process (clock)
	begin
		for i in 0 to (DATA_WIDTH-1) loop
			if (clock'EVENT AND clock='1') then
				IMAGEOUT<=ram_block(i);
			end if;	
		end loop;
  end process;
end behavioral;