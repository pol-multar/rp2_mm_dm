	library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity reg_file is
	port(	DATA_OUT1: 							out std_logic_vector (15 downto 0);
			DATA_OUT2:							out std_logic_vector (15 downto 0);
			aR0:									out std_logic_vector(15 downto 0);
			bR1:									out std_logic_vector(15 downto 0);
			cR2:									out std_logic_vector(15 downto 0);
			dR3:									out std_logic_vector(15 downto 0);
			eR4:									out std_logic_vector(15 downto 0);
			fR5:									out std_logic_vector(15 downto 0);
			gR6:									out std_logic_vector(15 downto 0);
			hR7:									out std_logic_vector(15 downto 0);
			iR8:									out std_logic_vector(15 downto 0);
			jR9:									out std_logic_vector(15 downto 0);
			kR10:									out std_logic_vector(15 downto 0);
			lR11:									out std_logic_vector(15 downto 0);
			mR12:									out std_logic_vector(15 downto 0);
			nR13:									out std_logic_vector(15 downto 0);
			oR14:									out std_logic_vector(15 downto 0);
			pR15:									out std_logic_vector(15 downto 0);
			REG_SRC1:							in std_logic_vector (3 downto 0);
			REG_SRC2:							in std_logic_vector (3 downto 0);
			REG_DEST:							in std_logic_vector (3 downto 0);
			EN_WR:								in std_logic;
			DATA_IN: 							in std_logic_vector(15 downto 0);
			CLOCK:								in std_logic
			);
			
end entity;

architecture archireg_file of reg_file is

begin

process (all)
type register_array is array (0 to 15) of std_logic_vector(15 downto 0);
variable R: register_array; 
begin

	if rising_edge(CLOCK) then
		if EN_WR = '1' then
			R(Conv_Integer(REG_DEST)) := DATA_IN;
		end if;
				  
	end if;
	
		DATA_OUT1 <= R(Conv_Integer(REG_SRC1));
		DATA_OUT2 <= R(Conv_Integer(REG_SRC2));
		aR0 <= R(0);
		bR1 <= R(1);
		cR2 <= R(2);
		dR3 <= R(3);
		eR4 <= R(4);
		fR5 <= R(5);
		gR6 <= R(6);
		hR7 <= R(7);
		iR8 <= R(8);
		jR9 <= R(9);
		kR10 <= R(10);
		lR11 <= R(11);
		mR12 <= R(12);
		nR13 <= R(13);
		oR14 <= R(14);
		pR15 <= R(15);

		
	-- Output the current count
end process;

end archireg_file;