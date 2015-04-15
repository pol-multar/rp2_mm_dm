library ieee;
use ieee.std_logic_1164.all;

entity pc is port(
	clk, en : in std_logic; --en == rst
	adr_in : in std_logic_vector(7 downto 0);
	adr_out : out std_logic_vector(7 downto 0));
end pc;

architecture pca of pc is
begin

	process (clk)
	begin
		if rising_edge(clk) then
			if en = '1'then
				adr_out <= "00000000";
			else
				adr_out <= adr_in;
			end if;
		end if;
	end process;
end pca;