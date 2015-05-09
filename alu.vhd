	library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity alu is
	port(	op1,op2 : IN Std_logic_vector(15 downto 0);
			code_op : IN Std_logic_vector(2 downto 0);
			data_out : OUT Std_logic_vector(15 downto 0)
			);
			
end entity;

architecture archialu of alu is

begin

process(all)
variable mult: integer;
begin 

if code_op = "000" then
	data_out <= op1+op2;
elsif code_op = "001" then
   data_out <= op1-op2;
elsif code_op = "010" then
	data_out <= not(op1);
elsif code_op = "011" then
   mult := to_integer(signed(op1))*to_integer(signed(op2));
   data_out(14 downto 0) <= std_logic_vector(to_unsigned(mult, 15));
	if mult < 0 then
		data_out(15) <= '1';
	else
		data_out(15) <= '0';
	end if;
else 
  data_out <= "0000000000000000";
end if;
end process;
end archialu;