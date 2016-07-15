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
			mbin => 3
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
		mMin <= std_logic_vector(to_signed(0, mBinWidth));
		mMax <= std_logic_vector(to_signed(5,mBinWidth));
		--0 stub phi 2.23348 phiR -0.0113634 stub rT 22.1387 integers phi -167 r: 154  
		--1 stub phi 2.24627 phiR 0.00143256 stub rT 22.1056 integers phi 20 r: 154	
		--2 stub phi 2.24627 phiR 0.00143256 stub rT 22.1056 integers phi 20 r: 154
		--3 stub phi 2.22258 phiR -0.0222641 stub rT 35.0465 integers phi -326 r: 244 Cell : 6
		--4 stub phi 2.22272 phiR -0.0221225 stub rT 35.0472 integers phi -324 r: 244 Cell : 6
		--5 stub phi 2.21863 phiR -0.0262145 stub rT 34.4199 integers phi -384 r: 239 Cell : 5, 6
		--6 stub phi 2.21863 phiR -0.0262145 stub rT 34.4199 integers phi -384 r: 239 Cell : 5, 6
		--7 stub phi 2.20016 phiR -0.0446814 stub rT 34.9543 integers phi -654 r: 243 
		--8 stub phi 2.21079 phiR -0.0340515 stub rT 49.2189 integers phi -499 r: 343 Cell : 5, 6
		--9 stub phi 2.19376 phiR -0.0510808 stub rT 69.647 integers phi -748 r: 485 Cell : 5, 6
		--10 stub phi 2.17754 phiR -0.0672954 stub rT 87.3158 integers phi -985 r: 608 Cell : 5, 6
		--11 stub phi 2.1686 phiR -0.0762404 stub rT 107.032 integers phi -1116 r: 745 Cell : 5, 6

		-- Cell (2, 5)
		-- Cell (2, 6)
		-- Cell (2, 7)
		-- Cell (3, 8)
		-- Cell (3, 9)
		-- Cell (3, 10)
		-- Cell (4, 11)
		-- Cell (4, 13)

		inputStub.valid <= '1';
		inputStub.r <= std_logic_vector(to_unsigned(154, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-167,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(0, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(154, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(20,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(0, layerIdWidth));
		wait for clk_period;
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(244, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-326,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(244, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-324,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(239, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-384,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(243, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-654,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(1, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(343, rWidth)); -- Cell -4
		inputStub.phi <= std_logic_vector(to_signed(-499,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(2, layerIdWidth));
		wait for clk_period;	
		inputStub.r <= std_logic_vector(to_unsigned(485, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-748,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(3, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(608, rWidth));
		inputStub.phi <= std_logic_vector(to_signed(-985,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(4, layerIdWidth));
		wait for clk_period;
		inputStub.r <= std_logic_vector(to_unsigned(745, rWidth)); -- Cell -4
		inputStub.phi <= std_logic_vector(to_signed(-1116,phiWidth));
		inputStub.layerId <= std_logic_vector(to_unsigned(5, layerIdWidth));

		wait for clk_period;
		inputStub <= nullStub;
		wait;
	end process ; -- DataProcess

end;