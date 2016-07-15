library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.HoughFilter_pkg.all;

entity HoughCell is
    Port ( 
	  	clk : in std_logic;
		stub : in t_stub;
		writeEn : in std_logic;
		readEn : in std_logic;
		ready : out std_logic;
		trackCand : out std_logic;
		stubCounter : out std_logic_vector(maxNumStubsWidth-1 downto 0);
		outputRegister : out std_logic_vector(maxNumStubs-1 downto 0)
  	);
end HoughCell;

architecture Behavioral of HoughCell is
	signal inputStub, hStub : t_stub := nullStub;
	signal writeAddr : std_logic_vector(4 downto 0) := (others => '0');
	signal start, eot : std_logic := '0';
	signal counter : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0');
	signal reg : std_logic_vector(maxNumStubs-1 downto 0) := (others => '0');
	signal layerReg : std_logic_vector(maxLayers-1 downto 0) := (others => '0');

begin
	CellProcess : process( clk )
	begin
		if rising_edge(clk) then
			inputStub <= stub;
			start <= writeEn;
			eot <= readEn;
			if inputStub.valid = '1' then
				writeAddr <= std_logic_vector(unsigned(writeAddr) + 1);
				ready <= '0';
				if writeEn = '1' then
					counter <= std_logic_vector(unsigned(counter) + 1);
					reg(to_integer(unsigned(writeAddr))) <= '1';
					layerReg(to_integer(unsigned(inputStub.layerId))) <= '1';
				end if;
			elsif eot = '1' then
				writeAddr <= (others => '0');
				counter <= (others => '0');
				reg <= (others => '0');
				layerReg <= (others => '0');
				ready <= '1';
				if majority(layerReg) = '1' then
					trackCand <= '1';
					stubCounter <= counter;
					outputRegister <= reg;
				else
					trackCand <= '0';
					stubCounter <= (others => '0');
					outputRegister <= (others => '0');
				end if;
			end if;
		end if;
	end process ; -- CellProcess

end Behavioral;
