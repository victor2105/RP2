library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity imem is
	port
	(
		iadr: in std_logic_vector (7 downto 0);
		instr: out std_logic_vector (15 downto 0)
	);
end imem;

architecture imema of imem is

	type array_of_vector is array (255 downto 0) of std_logic_vector (15 downto 0);

	signal array_vector : array_of_vector := ((others=> (others=>'0')));
begin
							 -- rs2,rs1,rd,add
	array_vector(0) <= "0001001000110001"; -- (r3 = r1+r2)
	array_vector(1) <= "0001000000000001"; -- (r0 = r1+r0)
	array_vector(2) <= "0001000000000001";
	array_vector(3) <= "0001000000000001";
	array_vector(4) <= "0001000000000001";
	array_vector(5) <= "0001000000000001";
	array_vector(6) <= "0011000000000001"; -- (r0 = r3+r0)
	array_vector(7) <= "0000000000000001"; -- (r0 = r0+r0)
	array_vector(8) <= "0000000000000001";
	array_vector(9) <= "0000000000000001";
	array_vector(10) <= "0000000000000001";
	array_vector(11) <= "0000000000000001";
	array_vector(12) <= "0000000000000001";
	array_vector(13) <= "0000000000000001";
	array_vector(14) <= "0000000000000001";
	array_vector(15) <= "0000000000000001";	

	instr <= array_vector(to_integer(unsigned(iadr)));
	
end imema;