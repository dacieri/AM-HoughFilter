LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.HoughFilter_pkg.all;

entity Filter_TB is 
end Filter_TB;

architecture behaviour of Filter_TB is 
	component HoughFilter
    Port (
	  	clk : in std_logic;
	  	iStub : in t_stub;
	  	mMin : in std_logic_vector(mBinWidth-1 downto 0);
	  	mMax : in std_logic_vector(mBinWidth-1 downto 0);
	  	--phiRoad : in std_logic_vector(phiSWidth-1 downto 0);
	  	oStub : out t_stub
	);
	end component;

	signal clk : std_logic := '0';
	signal inputStub, outputStub : t_stub := nullStub;
	signal mMin, mMax : std_logic_vector(mBinWidth-1 downto 0);

begin

	uut: HoughFilter
		port map(
			clk => clk,
			iStub => inputStub,
			mMin => mMin,
			mMax => mMax,
			oStub => outputStub
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