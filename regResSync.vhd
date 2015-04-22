library IEEE;
use ieee.std_logic_1164.all;

--	3)
-- Registre of 16 bits with signal reset synchrone
entity regResSync is
	
	port
	(	
		w, clk, reset : in std_logic;							-- write, clock, reset signals		
		input : in std_logic_vector (15 downto 0);
		output : out std_logic_vector (15 downto 0)		
	);
end  regResSync;

architecture regResSynca of regResSync is
	signal s1 : std_logic_vector (15 downto 0) := "0000000000000000";
begin

	P0 : process (clk)
	begin
		if(rising_edge (clk)) then
			if(reset = '1')then
				s1 <= "0000000000000000";	-- Reset
			else
				if(w = '1')then
					s1 <= input;				-- Write with input on the signal
				end if;
			end if;
		end if;
	end process P0;
	
	output <= s1;								-- Output receive signal
	
end regResSynca;