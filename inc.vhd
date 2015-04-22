library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- TD2 - Q4
-- entity responsible for increment an input based on a control signal value
-- when inc is on 1, the component will add the 1 to the input
entity inc is
	port
	(
		data_in : in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(7 downto 0)
	);
end inc;

architecture inca of inc is
begin
		data_out <= std_logic_vector(unsigned(data_in) + 1);
end inca;