LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.HoughFilter_pkg.all;

entity Column_TB is 
end Column_TB;

architecture behaviour of Column_TB is 
	component HoughColumn 
	generic(
		mbin : integer := -4
	);
    Port (
	    clk : in std_logic;
		inputStub : in t_stub;
		mMin : in std_logic_vector(mBinWidth-1 downto 0);
		mMax : in std_logic_vector(mBinWidth-1 downto 0);
		reset : in std_logic;
		ready : out std_logic;
		trackCand : out std_logic;
		stubCounter : out std_logic_vector(maxNumStubsWidth-1 downto 0);
		outputRegister : out std_logic_vector(maxNumStubs-1 downto 0);
		cbin : out std_logic_vector(cBinWidth-1 downto 0)
	);
	end component;

	signal clk : std_logic := '0';
	signal inputStub : t_stub := nullStub;
	signal writeEn, reset, ready, trackCand : std_logic := '0';
	signal stubCounter : std_logic_vector(maxNumStubsWidth-1 downto 0);
	signal outputRegister : std_logic_vector(maxNumStubs-1 downto 0);
	signal cbin : std_logic_vector(cBinWidth-1 downto 0);
	signal mMin, mMax : std_logic_vector(mBinWidth-1 downto 0);

begin

	uut: HoughColumn
		generic map(
			mbin => -4
			)
		port map(
			clk => clk,
			inputStub => inputStub,
			mMin => mMin,
			mMax => mMax,
			reset => reset,
			ready => ready,
			trackCand => trackCand,
			stubCounter => stubCounter,
			outputRegister => outputRegister,
			cbin => cbin
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
		mMin <= std_logic_vector(to_signed(-4, mBinWidth));
		mMax <= std_logic_vector(to_signed(3,mBinWidth));

		inputStub.valid <= '1';		
		inputStub.r <= std_logic_vector(to_unsigned(167, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(547,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(0, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(242, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(798,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(344, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(1143,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(6, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(485, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(1623,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(4, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(612, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(2055,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(3, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(755, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(2548,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(2, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(1074, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(81,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(2, layerIdWidth));
		wait for clk_period;
		inputStub <= nullStub;
		wait;
	end process ; -- DataProcess

end;