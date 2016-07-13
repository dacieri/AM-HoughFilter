LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.HoughFilter_pkg.all;

entity Cell_TB is 
end Cell_TB;

architecture behaviour of Cell_TB is 
	component HoughCell 
	port(
		clk : in std_logic;
		stub : in t_stub;
		writeEn : in std_logic;
		readEn : in std_logic;
		trackCand : out std_logic;
		stubCounter : out std_logic_vector(maxNumStubsWidth-1 downto 0);
		outputRegister : out std_logic_vector(maxNumStubs-1 downto 0)
	);
	end component;

	signal clk : std_logic := '0';
	signal inputStub : t_stub := nullStub;
	signal writeEn, readEn, trackCand : std_logic := '0';
	signal stubCounter : std_logic_vector(maxNumStubsWidth-1 downto 0);
	signal outputRegister : std_logic_vector(maxNumStubs-1 downto 0);

begin

	uut: HoughCell
		port map(
			clk => clk,
			stub => inputStub,
			writeEn => writeEn,
			readEn => readEn,
			trackCand => trackCand,
			stubCounter => stubCounter,
			outputRegister => outputRegister
		);

	CLK_PROCESS : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process ;

	DataProcess : process
	begin
		wait for clk_period*5;
		inputStub.valid <= '1';		
		inputStub.r <= std_logic_vector(to_unsigned(212, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(9,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(0, layerIdWidth));
		writeEn <= '1';
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(344, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(19,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(508, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(79,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(6, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(669, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(50,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(4, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(890, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(50,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(3, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(1074, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-297,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(2, layerIdWidth));
		writeEn <= '0';

		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(1074, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(81,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(2, layerIdWidth));
		writeEn <= '1';

		wait for clk_period;
		inputStub <= nullStub;
		writeEn <= '0';
		readEn <= '1';

		wait;
	end process ; -- DataProcess

end;