library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.math_real.all;
use ieee.numeric_std.all;
--use work.mp7_data_types.all;

package HoughFilter_pkg is

-- DataFormats according to the spec document
constant phiWidth : integer := 13;
constant zWidth : integer := 12;
constant rWidth : integer := 10;
constant layerIdWidth : integer := 3;
constant mBins : integer := 8;
constant cBins : integer := 8;
constant FullCBins : std_logic_vector(cBins-1 downto 0) := (others => '1');
constant FullMBins : std_logic_vector(mBins-1 downto 0) := (others => '1');

constant mBinWidth : integer := 3;
constant cBinWidth : integer := 3;
constant stubWidth : integer := phiWidth + rWidth + layerIdWIdth + 2;
constant FullCBinsAddr : std_logic_vector(cBinWidth-1 downto 0) := (others => '1');
constant FullMBinsAddr : std_logic_vector(mBinWidth-1 downto 0) := (others => '1');

constant maxNumStubs : integer := 32;
constant maxNumStubsWidth : integer := 5;
constant maxLayers : integer := 8;

constant FullStubAddr : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '1');


-- t_stub Type containing the stub information
type t_stub is
	record 
		valid : STD_LOGIC;
	    EoF : std_logic;
	    r : STD_LOGIC_VECTOR (rWidth-1 downto 0);
	    phi : STD_LOGIC_VECTOR (phiWidth-1 downto 0);
	    layerId : std_logic_vector(layerIdWidth-1 downto 0);
	end record;

-- Empty Stub initialisation 
constant nullStub: t_stub := ( '0', '0', ( others => '0'), ( others => '0'), (others => '0') ) ;

-- Defining type t_stubbuffer (buffer of stubs) 
type t_stubBuffer is array ( natural range <> ) of std_logic_vector( stubWidth-1 downto 0 );
type t_StubRegister is array (natural range <> ) of std_logic_vector(maxNumStubs-1 downto 0);
type t_StubCounter is array (natural range <> ) of std_logic_vector(maxNumStubsWidth-1 downto 0);
type t_LayerRegister is array (natural range <> ) of std_logic_vector(maxLayers-1 downto 0);
type t_CbinRegister is array (natural range <> ) of std_logic_vector(cBinWidth-1 downto 0);

constant BeamSpot : signed(11 downto 0) := X"04D";  -- 15 cm BeamSpot Length
constant houghThreshold : integer := 5;
constant rMidBarrel : integer := 646;
constant clk_period : time := 4.167 ns;

type t_deltaZ is array( natural range <> ) of STD_LOGIC_VECTOR( zWidth -1 downto 0 );
constant deltaZ: t_deltaZ( 3 downto 0 ) := (
	std_logic_vector(to_unsigned( 0, zWidth )),
	std_logic_vector(to_unsigned( 0, zWidth )),
	std_logic_vector(to_unsigned( 16, zWidth )),
	std_logic_vector(to_unsigned( 1, zWidth ))
);

type t_deltaR is array( natural range <> ) of STD_LOGIC_VECTOR( rWidth -1 downto 0 );
constant deltaR: t_deltaR( 3 downto 0 ) := (
	std_logic_vector(to_unsigned( 25, rWidth )),
	std_logic_vector(to_unsigned( 1, rWidth )),
	std_logic_vector(to_unsigned( 0, rWidth )),
	std_logic_vector(to_unsigned( 0, rWidth ))
);


-- Function that finds the last high bit in a std_logic_vector of maxNumStubs width

function to_stub( vec : std_logic_vector(stubWidth-1 downto 0) ) return t_stub;
function stub_to_vec( stub : t_stub ) return std_logic_vector;
function majority( pattern: std_logic_vector( maxLayers-1 downto 0 ) ) return std_logic;
function findNextTrackCand(reg : std_logic_vector(cBins-1 downto 0); count : std_logic_vector(cBinWidth-1 downto 0) ) return  std_logic_vector;
function findNextHighAddr(reg : std_logic_vector(maxNumStubs-1 downto 0); count : std_logic_vector(maxNumStubsWidth-1 downto 0) ) return  std_logic_vector;


end;

package body HoughFilter_pkg is
function to_stub(vec :std_logic_vector(stubWidth-1 downto 0)) return t_stub is
variable stub : t_stub := nullStub;
begin
	stub := ( vec( 0 ), vec( 1 ), vec( rWidth+1 downto 2 ), vec( phiWidth+rWidth+1 downto rWidth+2 ), vec(phiWidth+rWidth+layerIdWidth+1 downto phiWidth+rWidth+2 ) );
	return stub; 
end function;

function stub_to_vec( stub : t_stub ) return std_logic_vector is 
variable vec : std_logic_vector(stubWidth-1 downto 0) := (others => '0');
begin
	vec := stub.layerId & stub.phi & stub.r & stub.EoF & stub.valid;
	return vec;
end function;

---- Function that counts number of high bits in a std_logic_vector of size 8
function majority( pattern: std_logic_vector( maxLayers-1 downto 0 ) ) return std_logic is
variable counter: integer := 0;
begin
    for k in 7 downto 0 loop
        if pattern( k ) = '1' then
            counter := counter + 1;
        end if;
    end loop;
    if counter > houghThreshold - 1 then
        return '1';
    end if;
    return '0';
end function;

function findNextTrackCand(reg : std_logic_vector(cBins-1 downto 0); count : std_logic_vector(cBinWidth-1 downto 0) ) return  std_logic_vector is
	variable address : std_logic_vector(cBinWidth-1 downto 0) := (others => '1');
	begin
		for i in cBins-1 downto 0 loop
			if reg(i) = '1' and to_unsigned(i,cBinWidth)>unsigned(count)  then
				address := std_logic_vector(to_unsigned(i,cBinWidth));
			end if;
		end loop;
	return address;
end function;


function findNextHighAddr(reg : std_logic_vector(maxNumStubs-1 downto 0); count : std_logic_vector(maxNumStubsWidth-1 downto 0) ) return  std_logic_vector is
	variable address : std_logic_vector(maxNumStubsWidth-1 downto 0) := (others => '1');
	begin
		for i in maxNumStubs-1 downto 0 loop
			if reg(i) = '1' and to_unsigned(i,maxNumStubsWidth)>unsigned(count) then
				address := std_logic_vector(to_unsigned(i,maxNumStubsWidth));
			end if;
		end loop;
	return address;
end function;

end package body;