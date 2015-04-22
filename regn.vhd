library IEEE;
use ieee.std_logic_1164.all;

-- Register of n bits
entity regn is
	generic
	(
		N : natural := 16
	);
	port(
		d : in std_logic_vector(N-1 downto 0); -- input value to be stocked
		en, clk : in std_logic; -- en: signal used to allow the input stockage; clk: clock
		q : out std_logic_vector(N-1 downto 0) -- output value that was stocked in the register
	);
end regn;

architecture regna of regn is
begin
	P0: process(clk)
	begin
		if rising_edge(clk) then
			if (en = '1') then
				q <= d;
			end if;
		end if;
	end process;
end regna;