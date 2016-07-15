----------------------------------------------------------------------------------
-- Company: Rutherford Appleton Laboratory, UK
-- Author: Davide Cieri 
-- 
-- Create Date: 01.07.2016 09:44:18
-- Design Name: HoughFilter
-- Module Name: HoughFilter - Behavioral
-- Project Name: HoughFilter
-- Target Devices: Kintex 7
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.HoughFilter_pkg.all;
use IEEE.NUMERIC_STD.ALL;

entity HoughFilter is
  Port (
  	clk : in std_logic;
  	iStub : in t_stub;
  	mMin : in std_logic_vector(mBinWidth-1 downto 0);
  	mMax : in std_logic_vector(mBinWidth-1 downto 0);
  	--phiRoad : in std_logic_vector(phiSWidth-1 downto 0);
  	oStub : out t_stub
  );
end HoughFilter;

architecture Behavioral of HoughFilter is

	signal wAddr, rAddr : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0');
	signal stubBuffer : t_stubBuffer(maxNumStubs-1 downto 0) := (others => (others => '0'));
	signal ready : std_logic_vector(mbins-1 downto 0) := (others => '0');
	signal trackCand : std_logic_vector(mbins-1 downto 0) := (others => '0');
	signal stubCounter : t_StubCounter(mbins-1 downto 0) := (others => (others => '0'));
	signal outputRegister : t_StubRegister(mbins-1 downto 0) := (others => (others => '0'));
	signal stub : t_stub := nullStub;
	signal ColumnReset, ColumnReady : std_logic_vector(mbins-1 downto 0) := (others => '0');
	signal ColumnCbin : t_CbinRegister(mbins-1 downto 0) := (others => (others => '0'));
	signal ColumnAddr : std_logic_vector(mBinWidth-1 downto 0) := (others => '0');

	signal tempStubCounter : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '0');
	signal tempOutputRegister : std_logic_vector(maxNumStubs-1 downto 0) := (others => '0');
	signal tempCbin : std_logic_vector(cBinWidth-1 downto 0) := (others => '0');
	signal tempMbin : std_logic_vector(mBinWidth-1 downto 0) := (others => '0');

	type t_state is (idle, readColumn, readOut, waitForReset);
	signal state : t_state := idle;

begin

	columns: for k in mbins-1 downto 0 generate
	begin
		Column : entity work.HoughColumn
			generic map(
				mbin => k- cBins/2
			)
		    port map (
				clk => clk,
				inputStub => stub,
				mMin => mMin,
				mMax => mMax,
				ready => ColumnReady(k),
				reset => ColumnReset(k),
				trackCand => trackCand(k),
				stubCounter => stubCounter(k),
				outputRegister => outputRegister(k),
				cbin => ColumnCbin(k)
	    	);
	end generate;

	HoughProcess : process( clk )
	begin
		if rising_edge(clk) then
			stub <= iStub;
			if stub.valid = '1' then
				wAddr <= std_logic_vector(unsigned(wAddr) + 1);
			end if;
			stubBuffer(to_integer(unsigned(wAddr))) <= stub_to_vec(stub);


			case( state ) is
				when IDLE =>
					oStub <= nullStub;
					if ColumnReady = FullMBins then
						state <= readColumn;
					end if ;
				when readColumn =>
					ColumnAddr <= findNextTrackCand(trackCand, ColumnAddr);
					if ColumnAddr = FullMBinsAddr then
						state <= readOut;
					end if;
					
					if unsigned(tempStubCounter) < unsigned(stubCounter(to_integer(unsigned(ColumnAddr)))) then
						tempStubCounter <= stubCounter(to_integer(unsigned(ColumnAddr)));
						tempOutputRegister <= outputRegister(to_integer(unsigned(ColumnAddr)));
						tempCbin <= ColumnCbin(to_integer(unsigned(ColumnAddr)));
						tempMbin <= ColumnAddr;
					end if;

				when ReadOut =>
					rAddr <= findNextHighAddr(tempOutputRegister, rAddr);
					oStub <= to_stub(stubBuffer(to_integer(unsigned(rAddr))));
					if rAddr = FullStubAddr then
						state <= waitForReset;
						ColumnReset <= (others => '1');
						rAddr <= (others => '0');
						wAddr <= (others => '0');
					end if;
				when waitForReset =>
					state <= idle;
			end case ;


		end if ;

	end process ; -- HoughProcess

end Behavioral;
