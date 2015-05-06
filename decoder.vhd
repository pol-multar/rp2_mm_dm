library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

--author=max
ENTITY decoder IS
PORT (
		code_op : IN Std_logic_vector(3 downto 0); -- depuis instruction
		flagEQ : IN Std_logic; -- issu du comparateur
		flagGT : IN Std_logic; -- issu du comparateur
		--data_in_valid : in Std_logic; -- Indique donnÃ©e sur port entrÃ©e est valide
		--data_in_ack : out Std_logic; -- Indique que donnÃ©e sur port entrÃ©e a Ã©tÃ© lue
		--incr_decr : out Std_logic ; -- incrÃ©mentation ou dÃ©crementation du PC
		--Ces trucs sont supprimÃ©s en version 2015
		sel_mux_data : out Std_logic; -- selection valeur immediate ou port entrÃ©e
		code_alu : OUT Std_logic_vector(2 downto 0); -- code pour ALU
		r_w : OUT Std_logic; -- ecriture data memory
		en_reg_file : OUT Std_logic; -- autorisation ecriture register file
		sel_alu_mux : OUT Std_logic_vector(1 downto 0); -- selection donnee sortie etage EX 
		sel_mem_mux :OUT Std_logic; -- selection donnee en sortie etage WB 
		sel_mux_rs1 : OUT Std_logic; -- selection numero rs1 a lâ€™entree du reg_file
		sel_adr_mux : OUT Std_logic; -- selection adresse prochaine instr. 
		data_out_valid : OUT Std_logic -- la donnÃ©e sur le port de sortie est valide
);
END decoder;

architecture decoder_a of decoder is

begin

process(all) is

variable tmp: std_logic_vector(13 downto 0);

begin

case code_op is 
	--Instruction Add
	when "0000" => 
		tmp := "10000110010110";
	--Instruction Sub	
	when "0001" =>
		tmp := "10010110010110";
	--Instruction NOT	
	when "0010" =>
		tmp := "10100110010110";
	--Instruction MULT	
	when "0011" =>
		tmp := "10110110010110";		
	--Instruction NC	
	when "0100" =>
		tmp := "00000000000000";
	--Instruction JMP	
	when "0101" =>
		tmp := "01000100010110";
	--Instruction BEQ add	
	when "0110" =>
		if flagEQ = '1' then
			tmp := "01000100010100";
		else
			tmp := "11000100010100";
		end if;
	--Instruction BGT add	
	when "0111" =>
		if flagEQ = '1' then
			tmp := "01000100010100";
		else
			tmp := "11000100010100";
		end if;
	--Instruction LD	
	when "1000" =>
		tmp := "11000111000110";
	--Instruction MOVI	
	when "1001" =>
		tmp := "11000111010110";
	--Instruction ST	
	when "1010" =>
		tmp := "11000000110110";
	--Instruction B: NOP	
	when "1011" =>
		tmp := "11000101010110";
	--Instruction C:MOV	
	when "1100" =>
		tmp := "11000110110110";
	--Instruction D:OUT	
	when "1101" =>
		tmp := "11001100110110";	
	--Instruction E:SHF	
	when "1110" =>
		tmp := "11010110010110";
	--Instruction 15:IN	
	when "1111" =>
		tmp := "11000110111111";
end case;

	sel_adr_mux <= tmp(13);
	code_alu <= tmp(12 downto 10);
	data_out_valid <= tmp(9);
	r_w <= tmp(8);
	en_reg_file <= tmp(7);
	sel_alu_mux <= tmp(6 downto 5);
	sel_mem_mux <= tmp(4);
	sel_mux_data <= tmp(3);
	--incr_decr <= tmp(2); devenu inutile
	sel_mux_rs1 <= tmp(1);
	--data_in_ack <= tmp(0); devenu inutile
	
end process;


end decoder_a ;