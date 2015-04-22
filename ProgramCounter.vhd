library IEEE;
use ieee.std_logic_1164.all;

--	3)
-- ProgramCounter 8 bits
entity ProgramCounter is
	
	port
	(	
		clk, reset : in std_logic;							-- write, clock, reset signals		
		adr_in : in std_logic_vector (7 downto 0);
		adr_out : out std_logic_vector (7 downto 0)		
	);
end  ProgramCounter;

architecture ProgramCountera of ProgramCounter is
	signal s1 : std_logic_vector (7 downto 0) := "00000000";
begin

	P0 : process (clk)
	begin
		if(rising_edge (clk)) then
			if(reset = '1')then
				s1 <= "00000000";	-- Reset
			else
				s1 <= adr_in;				-- Write with input on the signal
			end if;
		end if;
	end process P0;
	
	adr_out <= s1;								-- Output receive signal
	
end ProgramCountera;