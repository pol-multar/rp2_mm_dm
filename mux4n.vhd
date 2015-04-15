library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity mux4n is -- Multiplexer a 2 entrees de N bits
	generic (N : natural :=2 ); -- valeur par defaut
	port (in1 : in std_logic_vector (N-1 downto 0);
			in2 : in std_logic_vector (N-1 downto 0);
			in3 : in std_logic_vector (N-1 downto 0);
			in4 : in std_logic_vector (N-1 downto 0);
			sel : in std_logic_vector(1 downto 0);
			mout : out std_logic_vector(N-1 downto 0));
end mux4n ;


architecture mux4na of mux4n is

begin

	mout<=in1 when sel="00" else 
			in2 when sel="01" else
			in3 when sel="10" else
			in4;

end mux4na;