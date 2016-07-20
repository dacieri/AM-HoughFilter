library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.HoughFilter_pkg.all;

entity HoughColumn is
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
end HoughColumn;

architecture Behavioral of HoughColumn is

-- State Machine
type t_ColumnState is (idle, processing, CheckBins, WaitForTracks, ReadOut);
signal state : t_ColumnState := idle;

-- Cell signals
signal CellTrackCand : std_logic_vector(cBins-1 downto 0) := (others => '0');
signal CellStubCounter : t_StubCounter(cBins-1 downto 0) := (others => (others => '0'));
signal CellOutputRegister : t_StubRegister(cBins-1 downto 0) := (others => (others => '0'));
signal CellEnabler, CellReady : std_logic_vector(cBins-1 downto 0) := (others => '0');
signal CellReader : std_logic := '0';
signal CellAddr : std_logic_vector(cBinWidth-1 downto 0) := (others => '0');

-- Stub Address in stubBuffer (HoughFilter.vhd)
signal stubAddr : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0'); 
-- Stub signals
signal stub, CellStub : t_stub := nullStub;

-- Cbin calculation signals
signal dsp_phi : std_logic_vector(phiWidth downto 0) := (others => '0');
signal dsp_rm0, dsp_rm1 : std_logic_vector(rWidth+mBinWidth-1 downto 0) := (others => '0');
signal dsp_cbin0, dsp_cbin1, dsp_cmax, dsp_cmin : std_logic_vector(rWidth+mBinWidth-1 downto 0) := (others => '0');

-- Shifted signals for cbin calculations
signal dspAddr0, dspAddr1, dspAddr2, dspAddr : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0');
signal dspStub0, dspStub1, dspStub : t_stub := nullStub;
signal valid0, valid1, dspValid : std_logic := '0';

-- Temporary signals to find cell containing the maximum number of stubs
signal tempStubCounter : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0');
signal tempOutputRegister : std_logic_vector(maxNumStubs-1 downto 0) := (others => '0');
signal tempCbin : std_logic_vector(cBinWidth-1 downto 0) := (others => '0');
signal tempTrackCand : std_logic := '0';

begin

rows: for k in cbins-1 downto 0 generate
	begin
		Cell : entity work.HoughCell
		    port map (
				clk => clk,
				stub => CellStub,
				writeEn => CellEnabler(k),
				readEn => CellReader,
				ready => CellReady(k),
				trackCand => CellTrackCand(k),
				stubCounter => CellStubCounter(k),
				outputRegister => CellOutputRegister(k) 
	    	);
	end generate;


ColumnProcess : process( clk )
begin
	if rising_edge(clk) then
		stub <= inputStub;
		if stub.valid = '1' then
			stubAddr <= std_logic_vector(unsigned(stubAddr) + 1);
		end if ;

		CellStub <= dspStub;

		case( state ) is
			when IDLE =>
				ready <= '0';
				if mbin >= to_integer(signed(mMin)) and mbin <= to_integer(signed(mMax)) then
					if stub.valid = '1' then
						state <= processing;
						readAddr <= (others => '0');
					end if;
				else
					ready <= '1';
				end if ;			
			when processing =>
				CellEnabler <= (others => '0');
				if dspAddr = stubAddr then
					state <= WaitForTracks;
					CellReader <= '1';
				end if;

				if dspValid = '1' then
					EnablerLoop : for i in -cBins/2 to cBins/2 - 1 loop
						if i >= to_integer(signed(dsp_cmin)) and i <= to_integer(signed(dsp_cmax)) then
							CellEnabler(i + cBins/2 ) <= '1';
						end if;
					end loop ; 
				end if;

			when WaitForTracks =>
				CellReader <= '0';
				CellEnabler <= (others => '0');
				state <= CheckBins;
			when CheckBins =>
				if CellReady = FullCBins then
					CellAddr <= findNextTrackCand(CellTrackCand, CellAddr);
				end if;

				if CellAddr = FullCBinsAddr then
					state <= ReadOut;
				end if ;

				if tempStubCounter < CellStubCounter(to_integer(unsigned(CellAddr))) then
					tempStubCounter <= CellStubCounter(to_integer(unsigned(CellAddr)));
					tempOutputRegister <= CellOutputRegister(to_integer(unsigned(CellAddr)));
					tempTrackCand <= '1';
					tempCbin <= CellAddr;
				end if;
			when ReadOut =>
				stubCounter <= tempStubCounter;
				outputRegister <= tempOutputRegister;
				trackCand <= tempTrackCand;
				cbin <= tempCbin;
				ready <= '1';
				if reset = '1' then
					state <= idle;
					stubAddr <= (others => '0');
					tempStubCounter <= (others => '0');
					tempTrackCand <= '0';
					ready <= '0';
				end if;
		end case ;

		--Cbin calculation (clock 0)
		dsp_phi <= std_logic_vector(shift_left(resize(signed(stub.phi),phiWidth+1),1));
		dsp_rm0 <= std_logic_vector( to_signed(mbin*to_integer(unsigned(stub.r)), rWidth + mBinWidth ));
		dsp_rm1 <= std_logic_vector( to_signed( (mbin+1)*to_integer(unsigned(stub.r)), rWidth + mBinWidth ));
		dspStub0 <= stub;
		valid0 <= stub.valid;
		dspAddr0 <= stubAddr;
		-- clock 1
		dsp_cbin0 <= std_logic_vector(shift_right(signed(dsp_phi)+signed(dsp_rm0),7));
		dsp_cbin1 <= std_logic_vector(shift_right(signed(dsp_phi)+signed(dsp_rm1),7));
		valid1 <= valid0;
		dspStub1 <= dspStub0;
		dspAddr1 <= dspAddr0;
		-- clock 2
		if signed(dsp_cbin0) > signed(dsp_cbin1) then
			dsp_cmax <= dsp_cbin0;
			dsp_cmin <= dsp_cbin1;
		else 
			dsp_cmax <= dsp_cbin1;
			dsp_cmin <= dsp_cbin0;
		end if;
		
		dspAddr <= dspAddr1;
		dspStub <= dspStub1;
		dspValid <= valid1;

	end if ;
end process ; -- ColumnProcess


end Behavioral;
