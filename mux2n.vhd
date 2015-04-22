library ieee;
use ieee.std_logic_1164.all;

-- 1) Generic mux of 2 input of N bits.
entity mux2n is
	generic
	(
		N : natural := 16
	);
	port(
		input0, input1 : in std_logic_vector(N-1 downto 0);
		sel : in std_logic;
		output : out std_logic_vector(N-1 downto 0)
	);
end mux2n;

architecture mux2na of mux2n is
begin
	with sel select
		output <=
			input0 when '0',
			input1 when others;
			
end mux2na;
