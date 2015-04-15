library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4 is
	generic(	SIZE_VECTOR : natural := 8);
	port(	VECTOR_0: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			VECTOR_1: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			VECTOR_2: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			VECTOR_3: 			in std_logic_vector (SIZE_VECTOR-1 downto 0);
			SELECT_VECTOR: 	in std_logic_vector (1 downto 0);
			SELECTED_VECTOR: 	out std_logic_vector (SIZE_VECTOR-1 downto 0));
end entity;

architecture archimux4 of mux4 is
begin

with SELECT_VECTOR select 
SELECTED_VECTOR <= VECTOR_0 when "00",
						 VECTOR_1 when "01",
						 VECTOR_2 when "10",
						 VECTOR_3 when "11";
end archimux4;