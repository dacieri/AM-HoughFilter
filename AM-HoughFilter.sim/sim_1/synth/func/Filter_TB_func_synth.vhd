-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
-- Date        : Wed Jul 13 15:12:01 2016
-- Host        : heplnw236.pp.rl.ac.uk running 64-bit Scientific Linux release 6.7 (Carbon)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /net/home/ppd/nlk16165/AM/AM-HoughFilter/AM-HoughFilter.sim/sim_1/synth/func/Filter_TB_func_synth.vhd
-- Design      : HoughColumn
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k480tffg901-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HoughCell is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end HoughCell;

architecture STRUCTURE of HoughCell is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair97";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__1\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__1\ : entity is "HoughCell";
end \HoughCell__1\;

architecture STRUCTURE of \HoughCell__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \stubCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \stubCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \stubCounter[4]_i_5_n_0\ : STD_LOGIC;
  signal \stubCounter[4]_i_6_n_0\ : STD_LOGIC;
  signal \stubCounter[4]_i_7_n_0\ : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \stubCounter[4]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \stubCounter[4]_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair1";
begin
  ready <= \^ready\;
  trackCand <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040444"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => \stubCounter[4]_i_3_n_0\,
      I3 => \stubCounter[4]_i_4_n_0\,
      I4 => \stubCounter[4]_i_5_n_0\,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEE8E8808000"
    )
        port map (
      I0 => \layerReg_reg_n_0_[5]\,
      I1 => \stubCounter[4]_i_6_n_0\,
      I2 => p_3_in,
      I3 => \layerReg_reg_n_0_[4]\,
      I4 => p_2_in,
      I5 => \stubCounter[4]_i_7_n_0\,
      O => \stubCounter[4]_i_3_n_0\
    );
\stubCounter[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => \stubCounter[4]_i_4_n_0\
    );
\stubCounter[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBDBDD7BDD7D77E"
    )
        port map (
      I0 => \stubCounter[4]_i_7_n_0\,
      I1 => p_2_in,
      I2 => \layerReg_reg_n_0_[4]\,
      I3 => p_3_in,
      I4 => \stubCounter[4]_i_6_n_0\,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \stubCounter[4]_i_5_n_0\
    );
\stubCounter[4]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => \stubCounter[4]_i_6_n_0\
    );
\stubCounter[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => \stubCounter[4]_i_7_n_0\
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__2\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__2\ : entity is "HoughCell";
end \HoughCell__2\;

architecture STRUCTURE of \HoughCell__2\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair13";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__3\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__3\ : entity is "HoughCell";
end \HoughCell__3\;

architecture STRUCTURE of \HoughCell__3\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair27";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__4\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__4\ : entity is "HoughCell";
end \HoughCell__4\;

architecture STRUCTURE of \HoughCell__4\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair41";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__5\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__5\ : entity is "HoughCell";
end \HoughCell__5\;

architecture STRUCTURE of \HoughCell__5\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair55";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__6\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__6\ : entity is "HoughCell";
end \HoughCell__6\;

architecture STRUCTURE of \HoughCell__6\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair69";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \HoughCell__7\ is
  port (
    clk : in STD_LOGIC;
    \stub[valid]\ : in STD_LOGIC;
    \stub[EoF]\ : in STD_LOGIC;
    \stub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \stub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \stub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    writeEn : in STD_LOGIC;
    readEn : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \HoughCell__7\ : entity is "HoughCell";
end \HoughCell__7\;

architecture STRUCTURE of \HoughCell__7\ is
  signal counter00 : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal eot : STD_LOGIC;
  signal \inputStub_reg[layerId]__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \inputStub_reg[valid_n_0_]\ : STD_LOGIC;
  signal \layerReg[0]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[1]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[2]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[3]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[4]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[5]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg[6]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_1_n_0\ : STD_LOGIC;
  signal \layerReg[7]_i_2_n_0\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[4]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[5]\ : STD_LOGIC;
  signal \layerReg_reg_n_0_[7]\ : STD_LOGIC;
  signal majority : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \reg[25]_i_2_n_0\ : STD_LOGIC;
  signal \reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \reg[26]_i_2_n_0\ : STD_LOGIC;
  signal \reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \reg[27]_i_2_n_0\ : STD_LOGIC;
  signal \reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \reg[29]_i_2_n_0\ : STD_LOGIC;
  signal \reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \reg[30]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \reg[9]_i_1_n_0\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \stubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \^trackcand\ : STD_LOGIC;
  signal trackCand_i_1_n_0 : STD_LOGIC;
  signal trackCand_i_3_n_0 : STD_LOGIC;
  signal trackCand_i_4_n_0 : STD_LOGIC;
  signal trackCand_i_5_n_0 : STD_LOGIC;
  signal trackCand_i_6_n_0 : STD_LOGIC;
  signal trackCand_i_7_n_0 : STD_LOGIC;
  signal writeAddr : STD_LOGIC;
  signal \writeAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \counter[4]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \layerReg[5]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \layerReg[7]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of ready_i_1 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \reg[15]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \reg[23]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \reg[24]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \reg[25]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \reg[26]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \reg[27]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \reg[28]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \reg[29]_i_2\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \reg[30]_i_2\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \reg[31]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \reg[31]_i_3\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \reg[7]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of trackCand_i_1 : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of trackCand_i_4 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of trackCand_i_5 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of trackCand_i_6 : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of trackCand_i_7 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \writeAddr[2]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \writeAddr[3]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \writeAddr[4]_i_1\ : label is "soft_lutpair83";
begin
  ready <= \^ready\;
  trackCand <= \^trackcand\;
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => plusOp(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => plusOp(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => plusOp(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      O => plusOp(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => start,
      O => \counter[4]_i_1_n_0\
    );
\counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(0),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => plusOp(4)
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(0),
      Q => \counter_reg__0\(0),
      R => writeAddr
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(1),
      Q => \counter_reg__0\(1),
      R => writeAddr
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(2),
      Q => \counter_reg__0\(2),
      R => writeAddr
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(3),
      Q => \counter_reg__0\(3),
      R => writeAddr
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[4]_i_1_n_0\,
      D => plusOp(4),
      Q => \counter_reg__0\(4),
      R => writeAddr
    );
eot_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readEn,
      Q => eot,
      R => '0'
    );
\inputStub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(0),
      Q => \inputStub_reg[layerId]__0\(0),
      R => '0'
    );
\inputStub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(1),
      Q => \inputStub_reg[layerId]__0\(1),
      R => '0'
    );
\inputStub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[layerId]\(2),
      Q => \inputStub_reg[layerId]__0\(2),
      R => '0'
    );
\inputStub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \stub[valid]\,
      Q => \inputStub_reg[valid_n_0_]\,
      R => '0'
    );
\layerReg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_5_in,
      O => \layerReg[0]_i_1_n_0\
    );
\layerReg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_4_in,
      O => \layerReg[1]_i_1_n_0\
    );
\layerReg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFD02000200"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_3_in,
      O => \layerReg[2]_i_1_n_0\
    );
\layerReg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => p_2_in,
      O => \layerReg[3]_i_1_n_0\
    );
\layerReg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[4]\,
      O => \layerReg[4]_i_1_n_0\
    );
\layerReg[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[5]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[5]\,
      O => \layerReg[5]_i_1_n_0\
    );
\layerReg[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[5]_i_2_n_0\
    );
\layerReg[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFF708000800"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(2),
      I2 => \inputStub_reg[layerId]__0\(0),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => counter00,
      O => \layerReg[6]_i_1_n_0\
    );
\layerReg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF7F80008000"
    )
        port map (
      I0 => \layerReg[7]_i_2_n_0\,
      I1 => \inputStub_reg[layerId]__0\(0),
      I2 => \inputStub_reg[layerId]__0\(2),
      I3 => \inputStub_reg[valid_n_0_]\,
      I4 => eot,
      I5 => \layerReg_reg_n_0_[7]\,
      O => \layerReg[7]_i_1_n_0\
    );
\layerReg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \inputStub_reg[layerId]__0\(1),
      O => \layerReg[7]_i_2_n_0\
    );
\layerReg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[0]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\layerReg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[1]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\layerReg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[2]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\layerReg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[3]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\layerReg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[4]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[4]\,
      R => '0'
    );
\layerReg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[5]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[5]\,
      R => '0'
    );
\layerReg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[6]_i_1_n_0\,
      Q => counter00,
      R => '0'
    );
\layerReg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \layerReg[7]_i_1_n_0\,
      Q => \layerReg_reg_n_0_[7]\,
      R => '0'
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(0),
      Q => outputRegister(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(10),
      Q => outputRegister(10),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(11),
      Q => outputRegister(11),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(12),
      Q => outputRegister(12),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(13),
      Q => outputRegister(13),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(14),
      Q => outputRegister(14),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(15),
      Q => outputRegister(15),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(16),
      Q => outputRegister(16),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(17),
      Q => outputRegister(17),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(18),
      Q => outputRegister(18),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(19),
      Q => outputRegister(19),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(1),
      Q => outputRegister(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(20),
      Q => outputRegister(20),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(21),
      Q => outputRegister(21),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(22),
      Q => outputRegister(22),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(23),
      Q => outputRegister(23),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(24),
      Q => outputRegister(24),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(25),
      Q => outputRegister(25),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(26),
      Q => outputRegister(26),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(27),
      Q => outputRegister(27),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(28),
      Q => outputRegister(28),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(29),
      Q => outputRegister(29),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(2),
      Q => outputRegister(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(30),
      Q => outputRegister(30),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(31),
      Q => outputRegister(31),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(3),
      Q => outputRegister(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(4),
      Q => outputRegister(4),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(5),
      Q => outputRegister(5),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(6),
      Q => outputRegister(6),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(7),
      Q => outputRegister(7),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(8),
      Q => outputRegister(8),
      R => \stubCounter[4]_i_1_n_0\
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => reg(9),
      Q => outputRegister(9),
      R => \stubCounter[4]_i_1_n_0\
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^ready\,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      R => '0'
    );
\reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(0),
      O => \reg[0]_i_1_n_0\
    );
\reg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(10),
      O => \reg[10]_i_1_n_0\
    );
\reg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(11),
      O => \reg[11]_i_1_n_0\
    );
\reg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(12),
      O => \reg[12]_i_1_n_0\
    );
\reg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(13),
      O => \reg[13]_i_1_n_0\
    );
\reg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(14),
      O => \reg[14]_i_1_n_0\
    );
\reg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(15),
      O => \reg[15]_i_1_n_0\
    );
\reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[15]_i_2_n_0\
    );
\reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(16),
      O => \reg[16]_i_1_n_0\
    );
\reg[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(17),
      O => \reg[17]_i_1_n_0\
    );
\reg[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(18),
      O => \reg[18]_i_1_n_0\
    );
\reg[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(19),
      O => \reg[19]_i_1_n_0\
    );
\reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(1),
      O => \reg[1]_i_1_n_0\
    );
\reg[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(20),
      O => \reg[20]_i_1_n_0\
    );
\reg[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(21),
      O => \reg[21]_i_1_n_0\
    );
\reg[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(22),
      O => \reg[22]_i_1_n_0\
    );
\reg[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[23]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(23),
      O => \reg[23]_i_1_n_0\
    );
\reg[23]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[23]_i_2_n_0\
    );
\reg[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(24),
      O => \reg[24]_i_1_n_0\
    );
\reg[24]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(1),
      O => \reg[24]_i_2_n_0\
    );
\reg[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(25),
      O => \reg[25]_i_1_n_0\
    );
\reg[25]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[25]_i_2_n_0\
    );
\reg[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(26),
      O => \reg[26]_i_1_n_0\
    );
\reg[26]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[26]_i_2_n_0\
    );
\reg[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(27),
      O => \reg[27]_i_1_n_0\
    );
\reg[27]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[27]_i_2_n_0\
    );
\reg[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(28),
      O => \reg[28]_i_1_n_0\
    );
\reg[28]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[28]_i_2_n_0\
    );
\reg[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(29),
      O => \reg[29]_i_1_n_0\
    );
\reg[29]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[29]_i_2_n_0\
    );
\reg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[26]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(2),
      O => \reg[2]_i_1_n_0\
    );
\reg[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(30),
      O => \reg[30]_i_1_n_0\
    );
\reg[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \writeAddr_reg__0\(1),
      I1 => \writeAddr_reg__0\(0),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[30]_i_2_n_0\
    );
\reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[31]_i_3_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(31),
      O => \reg[31]_i_1_n_0\
    );
\reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \reg[31]_i_2_n_0\
    );
\reg[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(3),
      I3 => \writeAddr_reg__0\(4),
      O => \reg[31]_i_3_n_0\
    );
\reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[27]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(3),
      O => \reg[3]_i_1_n_0\
    );
\reg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[28]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(4),
      O => \reg[4]_i_1_n_0\
    );
\reg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[29]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(5),
      O => \reg[5]_i_1_n_0\
    );
\reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[30]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(6),
      O => \reg[6]_i_1_n_0\
    );
\reg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[31]_i_2_n_0\,
      I1 => \reg[7]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(7),
      O => \reg[7]_i_1_n_0\
    );
\reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => start,
      I1 => \inputStub_reg[valid_n_0_]\,
      I2 => \writeAddr_reg__0\(4),
      I3 => \writeAddr_reg__0\(3),
      O => \reg[7]_i_2_n_0\
    );
\reg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[24]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(8),
      O => \reg[8]_i_1_n_0\
    );
\reg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FB4040"
    )
        port map (
      I0 => \reg[25]_i_2_n_0\,
      I1 => \reg[15]_i_2_n_0\,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => eot,
      I4 => reg(9),
      O => \reg[9]_i_1_n_0\
    );
\reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[0]_i_1_n_0\,
      Q => reg(0),
      R => '0'
    );
\reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[10]_i_1_n_0\,
      Q => reg(10),
      R => '0'
    );
\reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[11]_i_1_n_0\,
      Q => reg(11),
      R => '0'
    );
\reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[12]_i_1_n_0\,
      Q => reg(12),
      R => '0'
    );
\reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[13]_i_1_n_0\,
      Q => reg(13),
      R => '0'
    );
\reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[14]_i_1_n_0\,
      Q => reg(14),
      R => '0'
    );
\reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[15]_i_1_n_0\,
      Q => reg(15),
      R => '0'
    );
\reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[16]_i_1_n_0\,
      Q => reg(16),
      R => '0'
    );
\reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[17]_i_1_n_0\,
      Q => reg(17),
      R => '0'
    );
\reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[18]_i_1_n_0\,
      Q => reg(18),
      R => '0'
    );
\reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[19]_i_1_n_0\,
      Q => reg(19),
      R => '0'
    );
\reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[1]_i_1_n_0\,
      Q => reg(1),
      R => '0'
    );
\reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[20]_i_1_n_0\,
      Q => reg(20),
      R => '0'
    );
\reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[21]_i_1_n_0\,
      Q => reg(21),
      R => '0'
    );
\reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[22]_i_1_n_0\,
      Q => reg(22),
      R => '0'
    );
\reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[23]_i_1_n_0\,
      Q => reg(23),
      R => '0'
    );
\reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[24]_i_1_n_0\,
      Q => reg(24),
      R => '0'
    );
\reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[25]_i_1_n_0\,
      Q => reg(25),
      R => '0'
    );
\reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[26]_i_1_n_0\,
      Q => reg(26),
      R => '0'
    );
\reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[27]_i_1_n_0\,
      Q => reg(27),
      R => '0'
    );
\reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[28]_i_1_n_0\,
      Q => reg(28),
      R => '0'
    );
\reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[29]_i_1_n_0\,
      Q => reg(29),
      R => '0'
    );
\reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[2]_i_1_n_0\,
      Q => reg(2),
      R => '0'
    );
\reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[30]_i_1_n_0\,
      Q => reg(30),
      R => '0'
    );
\reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[31]_i_1_n_0\,
      Q => reg(31),
      R => '0'
    );
\reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[3]_i_1_n_0\,
      Q => reg(3),
      R => '0'
    );
\reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[4]_i_1_n_0\,
      Q => reg(4),
      R => '0'
    );
\reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[5]_i_1_n_0\,
      Q => reg(5),
      R => '0'
    );
\reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[6]_i_1_n_0\,
      Q => reg(6),
      R => '0'
    );
\reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[7]_i_1_n_0\,
      Q => reg(7),
      R => '0'
    );
\reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[8]_i_1_n_0\,
      Q => reg(8),
      R => '0'
    );
\reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg[9]_i_1_n_0\,
      Q => reg(9),
      R => '0'
    );
start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => writeEn,
      Q => start,
      R => '0'
    );
\stubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inputStub_reg[valid_n_0_]\,
      I1 => eot,
      I2 => majority,
      O => \stubCounter[4]_i_1_n_0\
    );
\stubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => eot,
      I1 => \inputStub_reg[valid_n_0_]\,
      O => writeAddr
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(0),
      Q => stubCounter(0),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(1),
      Q => stubCounter(1),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(2),
      Q => stubCounter(2),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(3),
      Q => stubCounter(3),
      R => \stubCounter[4]_i_1_n_0\
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => writeAddr,
      D => \counter_reg__0\(4),
      Q => stubCounter(4),
      R => \stubCounter[4]_i_1_n_0\
    );
trackCand_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => majority,
      I1 => eot,
      I2 => \inputStub_reg[valid_n_0_]\,
      I3 => \^trackcand\,
      O => trackCand_i_1_n_0
    );
trackCand_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEEAAAEAAAAAA8"
    )
        port map (
      I0 => trackCand_i_3_n_0,
      I1 => \layerReg_reg_n_0_[5]\,
      I2 => trackCand_i_4_n_0,
      I3 => trackCand_i_5_n_0,
      I4 => trackCand_i_6_n_0,
      I5 => trackCand_i_7_n_0,
      O => majority
    );
trackCand_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_3_n_0
    );
trackCand_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => counter00,
      I1 => \layerReg_reg_n_0_[7]\,
      I2 => p_4_in,
      I3 => p_5_in,
      O => trackCand_i_4_n_0
    );
trackCand_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_5_n_0
    );
trackCand_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_3_in,
      I1 => \layerReg_reg_n_0_[4]\,
      I2 => p_2_in,
      O => trackCand_i_6_n_0
    );
trackCand_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7EE8"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => \layerReg_reg_n_0_[7]\,
      I3 => counter00,
      O => trackCand_i_7_n_0
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trackCand_i_1_n_0,
      Q => \^trackcand\,
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      O => \writeAddr[0]_i_1_n_0\
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      O => \plusOp__0\(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      O => \writeAddr[2]_i_1_n_0\
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \writeAddr_reg__0\(0),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(2),
      I3 => \writeAddr_reg__0\(3),
      O => \plusOp__0\(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \writeAddr_reg__0\(2),
      I1 => \writeAddr_reg__0\(1),
      I2 => \writeAddr_reg__0\(0),
      I3 => \writeAddr_reg__0\(3),
      I4 => \writeAddr_reg__0\(4),
      O => \plusOp__0\(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[0]_i_1_n_0\,
      Q => \writeAddr_reg__0\(0),
      R => writeAddr
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(1),
      Q => \writeAddr_reg__0\(1),
      R => writeAddr
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \writeAddr[2]_i_1_n_0\,
      Q => \writeAddr_reg__0\(2),
      R => writeAddr
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(3),
      Q => \writeAddr_reg__0\(3),
      R => writeAddr
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \inputStub_reg[valid_n_0_]\,
      D => \plusOp__0\(4),
      Q => \writeAddr_reg__0\(4),
      R => writeAddr
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity HoughColumn is
  port (
    clk : in STD_LOGIC;
    \inputStub[valid]\ : in STD_LOGIC;
    \inputStub[EoF]\ : in STD_LOGIC;
    \inputStub[r]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \inputStub[phi]\ : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \inputStub[layerId]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mMin : in STD_LOGIC_VECTOR ( 2 downto 0 );
    mMax : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reset : in STD_LOGIC;
    ready : out STD_LOGIC;
    trackCand : out STD_LOGIC;
    stubCounter : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outputRegister : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cbin : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of HoughColumn : entity is true;
  attribute mbin : integer;
  attribute mbin of HoughColumn : entity is -4;
end HoughColumn;

architecture STRUCTURE of HoughColumn is
  signal A : STD_LOGIC_VECTOR ( 0 to 0 );
  signal CellAddr0 : STD_LOGIC;
  signal \CellAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \CellAddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \CellAddr[0]_i_3_n_0\ : STD_LOGIC;
  signal \CellAddr[0]_i_4_n_0\ : STD_LOGIC;
  signal \CellAddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \CellAddr[1]_i_2_n_0\ : STD_LOGIC;
  signal \CellAddr[1]_i_3_n_0\ : STD_LOGIC;
  signal \CellAddr[1]_i_4_n_0\ : STD_LOGIC;
  signal \CellAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \CellAddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \CellAddr[2]_i_3_n_0\ : STD_LOGIC;
  signal \CellAddr[2]_i_5_n_0\ : STD_LOGIC;
  signal \CellAddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \CellAddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \CellAddr_reg_n_0_[2]\ : STD_LOGIC;
  signal CellEnabler : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of CellEnabler : signal is "yes";
  signal \CellEnabler[0]_i_1_n_0\ : STD_LOGIC;
  signal \CellEnabler[1]_i_1_n_0\ : STD_LOGIC;
  signal \CellEnabler[1]_i_2_n_0\ : STD_LOGIC;
  signal \CellEnabler[4]_i_1_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_10_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_14_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_15_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_16_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_17_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_19_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_1_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_21_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_23_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_24_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_25_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_26_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_27_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_28_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_29_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_2_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_30_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_31_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_32_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_33_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_34_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_35_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_36_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_37_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_38_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_39_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_40_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_41_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_42_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_4_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_5_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_6_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_7_n_0\ : STD_LOGIC;
  signal \CellEnabler[5]_i_8_n_0\ : STD_LOGIC;
  signal \CellEnabler[7]_i_1_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_11_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_11_n_6\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_11_n_7\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_12_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_13_n_1\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_13_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_13_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_1\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_4\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_5\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_6\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_18_n_7\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_1\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_4\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_5\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_6\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_20_n_7\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_22_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_22_n_1\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_22_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_22_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_1\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_4\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_5\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_6\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_3_n_7\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_9_n_2\ : STD_LOGIC;
  signal \CellEnabler_reg[5]_i_9_n_3\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[0]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[1]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[2]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[3]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[4]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[5]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[6]\ : STD_LOGIC;
  signal \CellEnabler_reg_n_0_[7]\ : STD_LOGIC;
  signal \CellOutputRegister[7]\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \CellReader[0]_i_1_n_0\ : STD_LOGIC;
  signal \CellReader_reg_n_0_[0]\ : STD_LOGIC;
  signal CellTrackCand : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \FSM_onehot_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[4]\ : signal is "yes";
  signal SHIFT_RIGHT : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal SHIFT_RIGHT0 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_0_5_n_0 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_0_5_n_2 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_0_5_n_3 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_0_5_n_4 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_0_5_n_5 : STD_LOGIC;
  signal StubBufferForCells_reg_0_31_24_27_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_0 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_2 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_3 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_4 : STD_LOGIC;
  signal StubBuffer_reg_0_31_0_5_n_5 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_0 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_2 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_3 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_4 : STD_LOGIC;
  signal StubBuffer_reg_0_31_12_17_n_5 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_0 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_2 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_3 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_4 : STD_LOGIC;
  signal StubBuffer_reg_0_31_18_23_n_5 : STD_LOGIC;
  signal StubBuffer_reg_0_31_24_24_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_0 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_1 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_2 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_3 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_4 : STD_LOGIC;
  signal StubBuffer_reg_0_31_6_11_n_5 : STD_LOGIC;
  signal cbin_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal dspAddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \dspAddr2_reg[0]_srl3_n_0\ : STD_LOGIC;
  signal \dspAddr2_reg[1]_srl3_n_0\ : STD_LOGIC;
  signal \dspAddr2_reg[2]_srl3_n_0\ : STD_LOGIC;
  signal \dspAddr2_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \dspAddr2_reg[4]_srl3_n_0\ : STD_LOGIC;
  signal dspValid : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of dspValid : signal is std.standard.true;
  signal dsp_cbin : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute DONT_TOUCH of dsp_cbin : signal is std.standard.true;
  signal \dsp_cbin[0]_i_10_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_5_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_6_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_7_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_8_n_0\ : STD_LOGIC;
  signal \dsp_cbin[0]_i_9_n_0\ : STD_LOGIC;
  signal \dsp_cbin[13]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_cbin[13]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_cbin[4]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_cbin[4]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_cbin[4]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_cbin[4]_i_5_n_0\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \dsp_cbin_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \dsp_cbin_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_cbin_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \dsp_cbin_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal dsp_cshift : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal dsp_phi : STD_LOGIC_VECTOR ( 12 downto 0 );
  attribute DONT_TOUCH of dsp_phi : signal is std.standard.true;
  signal dsp_phirm : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \dsp_phirm[11]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_phirm[11]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_phirm[11]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_phirm[11]_i_5_n_0\ : STD_LOGIC;
  signal \dsp_phirm[13]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_phirm[13]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_phirm[13]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_phirm[3]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_phirm[3]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_phirm[3]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_phirm[3]_i_5_n_0\ : STD_LOGIC;
  signal \dsp_phirm[7]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_phirm[7]_i_3_n_0\ : STD_LOGIC;
  signal \dsp_phirm[7]_i_4_n_0\ : STD_LOGIC;
  signal \dsp_phirm[7]_i_5_n_0\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \dsp_phirm_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \dsp_phirm_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_phirm_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \dsp_phirm_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \dsp_phirm_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \dsp_phirm_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal dsp_rhalf : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal dsp_rm : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute DONT_TOUCH of dsp_rm : signal is std.standard.true;
  signal \dsp_rm[10]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[11]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[13]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[13]_i_2_n_0\ : STD_LOGIC;
  signal \dsp_rm[3]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[4]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[5]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[6]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[7]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[8]_i_1_n_0\ : STD_LOGIC;
  signal \dsp_rm[9]_i_1_n_0\ : STD_LOGIC;
  signal mMin_IBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal outputRegister_OBUF : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_0_in23_out : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_12_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_16_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_17_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_20_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_21_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_24_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_28_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_29_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_9_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal readAddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \readAddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \readAddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \readAddr[0]_i_3_n_0\ : STD_LOGIC;
  signal \readAddr[0]_i_4_n_0\ : STD_LOGIC;
  signal \readAddr[0]_i_5_n_0\ : STD_LOGIC;
  signal \readAddr[0]_i_6_n_0\ : STD_LOGIC;
  signal \readAddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \readAddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \readAddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \readAddr[4]_i_1_n_0\ : STD_LOGIC;
  signal ready_OBUF : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal \rows[0].Cell_n_0\ : STD_LOGIC;
  signal \rows[1].Cell_n_0\ : STD_LOGIC;
  signal \rows[2].Cell_n_0\ : STD_LOGIC;
  signal \rows[3].Cell_n_0\ : STD_LOGIC;
  signal \rows[4].Cell_n_0\ : STD_LOGIC;
  signal \rows[5].Cell_n_0\ : STD_LOGIC;
  signal \rows[6].Cell_n_0\ : STD_LOGIC;
  signal \rows[7].Cell_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stubCounter_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \stub_reg[EoF]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[layerId][0]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[layerId][1]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[layerId][2]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][0]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][10]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][11]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][12]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][1]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][2]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][3]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][4]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][5]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][6]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][7]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][8]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[phi][9]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][0]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][1]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][2]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][3]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][4]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][5]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][6]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][7]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][8]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[r][9]_i_1_n_0\ : STD_LOGIC;
  signal \stub_reg[valid]_i_1_n_0\ : STD_LOGIC;
  signal stub_to_vec : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal tempCbin : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \tempOutputRegister[0]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[0]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[10]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[10]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[11]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[11]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[12]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[12]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[13]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[13]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[14]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[14]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[15]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[15]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[16]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[16]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[17]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[17]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[18]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[18]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[19]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[19]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[1]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[1]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[20]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[20]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[21]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[21]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[22]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[22]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[23]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[23]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[24]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[24]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[25]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[25]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[26]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[26]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[27]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[27]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[28]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[28]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[29]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[29]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[2]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[2]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[30]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[30]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[31]_i_1_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[31]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[31]_i_4_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[31]_i_5_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[3]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[3]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[4]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[4]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[5]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[5]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[6]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[6]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[7]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[7]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[8]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[8]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[9]_i_2_n_0\ : STD_LOGIC;
  signal \tempOutputRegister[9]_i_3_n_0\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[0]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[10]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[11]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[12]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[13]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[14]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[15]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[16]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[17]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[18]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[19]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[1]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[20]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[21]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[22]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[23]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[24]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[25]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[26]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[27]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[28]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[29]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[2]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[30]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[31]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[3]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[4]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[5]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[6]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[7]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[8]\ : STD_LOGIC;
  signal \tempOutputRegister_reg_n_0_[9]\ : STD_LOGIC;
  signal \tempStubCounter[0]_i_2_n_0\ : STD_LOGIC;
  signal \tempStubCounter[0]_i_3_n_0\ : STD_LOGIC;
  signal \tempStubCounter[1]_i_2_n_0\ : STD_LOGIC;
  signal \tempStubCounter[1]_i_3_n_0\ : STD_LOGIC;
  signal \tempStubCounter[2]_i_2_n_0\ : STD_LOGIC;
  signal \tempStubCounter[2]_i_3_n_0\ : STD_LOGIC;
  signal \tempStubCounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \tempStubCounter[3]_i_3_n_0\ : STD_LOGIC;
  signal \tempStubCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \tempStubCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \tempStubCounter[4]_i_5_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \tempStubCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \tempStubCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \tempStubCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \tempStubCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \tempStubCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal tempTrackCand : STD_LOGIC;
  signal tempTrackCand_i_1_n_0 : STD_LOGIC;
  signal tempTrackCand_reg_n_0 : STD_LOGIC;
  signal to_stub_valid : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal trackCand_OBUF : STD_LOGIC;
  signal valid0 : STD_LOGIC;
  attribute DONT_TOUCH of valid0 : signal is std.standard.true;
  signal valid1 : STD_LOGIC;
  signal vec : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \vec_reg_n_0_[0]\ : STD_LOGIC;
  signal \vec_reg_n_0_[25]\ : STD_LOGIC;
  signal \vec_reg_n_0_[26]\ : STD_LOGIC;
  signal \vec_reg_n_0_[27]\ : STD_LOGIC;
  signal writeAddr : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \writeAddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \writeAddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \NLW_CellEnabler_reg[5]_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_CellEnabler_reg[5]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CellEnabler_reg[5]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CellEnabler_reg[5]_i_12_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CellEnabler_reg[5]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CellEnabler_reg[5]_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_CellEnabler_reg[5]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CellEnabler_reg[5]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_StubBufferForCells_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBufferForCells_reg_0_31_24_27_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBufferForCells_reg_0_31_24_27_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_24_24_DOA_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_StubBuffer_reg_0_31_24_24_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_24_24_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_24_24_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_StubBuffer_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_dsp_cbin_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_dsp_cbin_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dsp_cbin_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dsp_cbin_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dsp_phirm_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dsp_phirm_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_rows[7].Cell_trackCand_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CellAddr[0]_i_2\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \CellAddr[1]_i_2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \CellAddr[2]_i_2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \CellAddr[2]_i_3\ : label is "soft_lutpair113";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute KEEP of \FSM_onehot_state_reg[4]\ : label is "yes";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of StubBufferForCells_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBufferForCells_reg_0_31_24_27 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBuffer_reg_0_31_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBuffer_reg_0_31_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBuffer_reg_0_31_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBuffer_reg_0_31_24_24 : label is "";
  attribute METHODOLOGY_DRC_VIOS of StubBuffer_reg_0_31_6_11 : label is "";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \dspAddr2_reg[0]_srl3\ : label is "\dspAddr2_reg ";
  attribute srl_name : string;
  attribute srl_name of \dspAddr2_reg[0]_srl3\ : label is "\dspAddr2_reg[0]_srl3 ";
  attribute srl_bus_name of \dspAddr2_reg[1]_srl3\ : label is "\dspAddr2_reg ";
  attribute srl_name of \dspAddr2_reg[1]_srl3\ : label is "\dspAddr2_reg[1]_srl3 ";
  attribute srl_bus_name of \dspAddr2_reg[2]_srl3\ : label is "\dspAddr2_reg ";
  attribute srl_name of \dspAddr2_reg[2]_srl3\ : label is "\dspAddr2_reg[2]_srl3 ";
  attribute srl_bus_name of \dspAddr2_reg[3]_srl3\ : label is "\dspAddr2_reg ";
  attribute srl_name of \dspAddr2_reg[3]_srl3\ : label is "\dspAddr2_reg[3]_srl3 ";
  attribute srl_bus_name of \dspAddr2_reg[4]_srl3\ : label is "\dspAddr2_reg ";
  attribute srl_name of \dspAddr2_reg[4]_srl3\ : label is "\dspAddr2_reg[4]_srl3 ";
  attribute DONT_TOUCH of dspValid_reg : label is std.standard.true;
  attribute KEEP of dspValid_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of dspValid_reg : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[0]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[10]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[10]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[11]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[11]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[12]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[12]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[13]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[13]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[1]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[2]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[2]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[3]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[3]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[4]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[4]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[5]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[5]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[6]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[6]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[7]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[7]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[8]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[8]\ : label is "no";
  attribute DONT_TOUCH of \dsp_cbin_reg[9]\ : label is std.standard.true;
  attribute KEEP of \dsp_cbin_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_cbin_reg[9]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[0]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[10]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[10]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[11]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[11]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[12]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[12]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[1]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[2]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[2]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[3]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[3]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[4]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[4]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[5]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[5]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[6]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[6]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[7]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[7]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[8]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[8]\ : label is "no";
  attribute DONT_TOUCH of \dsp_phi_reg[9]\ : label is std.standard.true;
  attribute KEEP of \dsp_phi_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_phi_reg[9]\ : label is "no";
  attribute SOFT_HLUTNM of \dsp_rm[10]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \dsp_rm[11]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \dsp_rm[13]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \dsp_rm[3]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \dsp_rm[4]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \dsp_rm[5]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \dsp_rm[6]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \dsp_rm[9]_i_1\ : label is "soft_lutpair114";
  attribute DONT_TOUCH of \dsp_rm_reg[0]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[10]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[10]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[11]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[11]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[12]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[12]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[13]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[13]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[1]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[2]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[2]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[3]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[3]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[4]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[4]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[5]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[5]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[6]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[6]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[7]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[7]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[8]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[8]\ : label is "no";
  attribute DONT_TOUCH of \dsp_rm_reg[9]\ : label is std.standard.true;
  attribute KEEP of \dsp_rm_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \dsp_rm_reg[9]\ : label is "no";
  attribute SOFT_HLUTNM of \readAddr[0]_i_3\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \readAddr[1]_i_1\ : label is "soft_lutpair117";
  attribute DONT_TOUCH of valid0_reg : label is std.standard.true;
  attribute KEEP of valid0_reg : label is "yes";
  attribute equivalent_register_removal of valid0_reg : label is "no";
  attribute SOFT_HLUTNM of \writeAddr[0]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \writeAddr[1]_i_1\ : label is "soft_lutpair116";
begin
\A[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_0_5_n_3,
      Q => A(0),
      R => '0'
    );
\CellAddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0051FFFF00510000"
    )
        port map (
      I0 => CellTrackCand(0),
      I1 => \CellAddr[0]_i_2_n_0\,
      I2 => \CellAddr[1]_i_2_n_0\,
      I3 => \CellAddr[0]_i_3_n_0\,
      I4 => CellAddr0,
      I5 => \CellAddr_reg_n_0_[0]\,
      O => \CellAddr[0]_i_1_n_0\
    );
\CellAddr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[2]\,
      I1 => \CellAddr_reg_n_0_[1]\,
      I2 => CellTrackCand(2),
      O => \CellAddr[0]_i_2_n_0\
    );
\CellAddr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAFFFB00000000"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[2]\,
      I1 => CellTrackCand(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => CellTrackCand(3),
      I5 => \CellAddr[0]_i_4_n_0\,
      O => \CellAddr[0]_i_3_n_0\
    );
\CellAddr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500FFFF45000F00"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[1]\,
      I1 => \CellAddr_reg_n_0_[0]\,
      I2 => CellTrackCand(5),
      I3 => CellTrackCand(6),
      I4 => \CellAddr_reg_n_0_[2]\,
      I5 => CellTrackCand(4),
      O => \CellAddr[0]_i_4_n_0\
    );
\CellAddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
        port map (
      I0 => CellTrackCand(0),
      I1 => \CellAddr[1]_i_2_n_0\,
      I2 => \CellAddr[1]_i_3_n_0\,
      I3 => CellAddr0,
      I4 => \CellAddr_reg_n_0_[1]\,
      O => \CellAddr[1]_i_1_n_0\
    );
\CellAddr[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[2]\,
      I1 => CellTrackCand(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      O => \CellAddr[1]_i_2_n_0\
    );
\CellAddr[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFFEEFFEFFFEF"
    )
        port map (
      I0 => \CellAddr[2]_i_3_n_0\,
      I1 => \CellAddr[0]_i_2_n_0\,
      I2 => CellTrackCand(4),
      I3 => \CellAddr_reg_n_0_[2]\,
      I4 => \CellAddr[1]_i_4_n_0\,
      I5 => CellTrackCand(5),
      O => \CellAddr[1]_i_3_n_0\
    );
\CellAddr[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[1]\,
      I1 => \CellAddr_reg_n_0_[0]\,
      O => \CellAddr[1]_i_4_n_0\
    );
\CellAddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0FFFF00B00000"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[1]\,
      I1 => CellTrackCand(2),
      I2 => \CellAddr[2]_i_2_n_0\,
      I3 => \CellAddr[2]_i_3_n_0\,
      I4 => CellAddr0,
      I5 => \CellAddr_reg_n_0_[2]\,
      O => \CellAddr[2]_i_1_n_0\
    );
\CellAddr[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFEF"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[1]\,
      I1 => \CellAddr_reg_n_0_[0]\,
      I2 => CellTrackCand(1),
      I3 => \CellAddr_reg_n_0_[2]\,
      I4 => CellTrackCand(0),
      O => \CellAddr[2]_i_2_n_0\
    );
\CellAddr[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0444"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[2]\,
      I1 => CellTrackCand(3),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      O => \CellAddr[2]_i_3_n_0\
    );
\CellAddr[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \CellAddr[2]_i_5_n_0\,
      I1 => \rows[2].Cell_n_0\,
      I2 => \rows[3].Cell_n_0\,
      I3 => \rows[0].Cell_n_0\,
      I4 => \rows[1].Cell_n_0\,
      O => CellAddr0
    );
\CellAddr[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \rows[4].Cell_n_0\,
      I1 => \rows[5].Cell_n_0\,
      I2 => \rows[6].Cell_n_0\,
      I3 => \rows[7].Cell_n_0\,
      I4 => state_reg(0),
      I5 => state_reg(1),
      O => \CellAddr[2]_i_5_n_0\
    );
\CellAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \CellAddr[0]_i_1_n_0\,
      Q => \CellAddr_reg_n_0_[0]\,
      R => '0'
    );
\CellAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \CellAddr[1]_i_1_n_0\,
      Q => \CellAddr_reg_n_0_[1]\,
      R => '0'
    );
\CellAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \CellAddr[2]_i_1_n_0\,
      Q => \CellAddr_reg_n_0_[2]\,
      R => '0'
    );
\CellEnabler[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \CellEnabler[1]_i_2_n_0\,
      I1 => dsp_cbin(0),
      O => \CellEnabler[0]_i_1_n_0\
    );
\CellEnabler[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \CellEnabler[1]_i_2_n_0\,
      I1 => dsp_cbin(0),
      O => \CellEnabler[1]_i_1_n_0\
    );
\CellEnabler[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => p_19_in,
      I1 => dspValid,
      I2 => \CellEnabler[5]_i_10_n_0\,
      I3 => \CellEnabler_reg[5]_i_11_n_6\,
      I4 => p_18_in,
      I5 => \CellEnabler_reg[5]_i_3_n_6\,
      O => \CellEnabler[1]_i_2_n_0\
    );
\CellEnabler[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \CellEnabler[5]_i_4_n_0\,
      I1 => dsp_cbin(0),
      O => \CellEnabler[4]_i_1_n_0\
    );
\CellEnabler[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \CellEnabler_reg[5]_i_3_n_7\,
      I1 => CellEnabler,
      O => \CellEnabler[5]_i_1_n_0\
    );
\CellEnabler[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \CellEnabler_reg[5]_i_18_n_5\,
      I1 => \CellEnabler_reg[5]_i_18_n_6\,
      I2 => \CellEnabler[5]_i_19_n_0\,
      I3 => \CellEnabler_reg[5]_i_20_n_4\,
      I4 => \CellEnabler_reg[5]_i_18_n_4\,
      I5 => \CellEnabler_reg[5]_i_11_n_7\,
      O => \CellEnabler[5]_i_10_n_0\
    );
\CellEnabler[5]_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(13),
      O => \CellEnabler[5]_i_14_n_0\
    );
\CellEnabler[5]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(12),
      I1 => dsp_cbin(13),
      O => \CellEnabler[5]_i_15_n_0\
    );
\CellEnabler[5]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(10),
      I1 => dsp_cbin(11),
      O => \CellEnabler[5]_i_16_n_0\
    );
\CellEnabler[5]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(8),
      I1 => dsp_cbin(9),
      O => \CellEnabler[5]_i_17_n_0\
    );
\CellEnabler[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \CellEnabler_reg[5]_i_3_n_5\,
      I1 => \CellEnabler_reg[5]_i_20_n_7\,
      I2 => \CellEnabler_reg[5]_i_20_n_5\,
      I3 => \CellEnabler_reg[5]_i_20_n_6\,
      I4 => \CellEnabler_reg[5]_i_3_n_4\,
      I5 => \CellEnabler_reg[5]_i_18_n_7\,
      O => \CellEnabler[5]_i_19_n_0\
    );
\CellEnabler[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \CellEnabler[5]_i_4_n_0\,
      I1 => dsp_cbin(0),
      O => \CellEnabler[5]_i_2_n_0\
    );
\CellEnabler[5]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(13),
      O => \CellEnabler[5]_i_21_n_0\
    );
\CellEnabler[5]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(12),
      I1 => dsp_cbin(13),
      O => \CellEnabler[5]_i_23_n_0\
    );
\CellEnabler[5]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(10),
      I1 => dsp_cbin(11),
      O => \CellEnabler[5]_i_24_n_0\
    );
\CellEnabler[5]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dsp_cbin(1),
      I1 => dsp_cbin(0),
      O => \CellEnabler[5]_i_25_n_0\
    );
\CellEnabler[5]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(6),
      I1 => dsp_cbin(7),
      O => \CellEnabler[5]_i_26_n_0\
    );
\CellEnabler[5]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(4),
      I1 => dsp_cbin(5),
      O => \CellEnabler[5]_i_27_n_0\
    );
\CellEnabler[5]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => dsp_cbin(2),
      I1 => dsp_cbin(3),
      O => \CellEnabler[5]_i_28_n_0\
    );
\CellEnabler[5]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(0),
      I1 => dsp_cbin(1),
      O => \CellEnabler[5]_i_29_n_0\
    );
\CellEnabler[5]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(12),
      O => \CellEnabler[5]_i_30_n_0\
    );
\CellEnabler[5]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(11),
      O => \CellEnabler[5]_i_31_n_0\
    );
\CellEnabler[5]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(10),
      O => \CellEnabler[5]_i_32_n_0\
    );
\CellEnabler[5]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(9),
      O => \CellEnabler[5]_i_33_n_0\
    );
\CellEnabler[5]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(8),
      O => \CellEnabler[5]_i_34_n_0\
    );
\CellEnabler[5]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(7),
      O => \CellEnabler[5]_i_35_n_0\
    );
\CellEnabler[5]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(6),
      O => \CellEnabler[5]_i_36_n_0\
    );
\CellEnabler[5]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(5),
      O => \CellEnabler[5]_i_37_n_0\
    );
\CellEnabler[5]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(2),
      I1 => dsp_cbin(3),
      O => \CellEnabler[5]_i_38_n_0\
    );
\CellEnabler[5]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(8),
      I1 => dsp_cbin(9),
      O => \CellEnabler[5]_i_39_n_0\
    );
\CellEnabler[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => p_19_in,
      I1 => dspValid,
      I2 => \CellEnabler[5]_i_10_n_0\,
      I3 => \CellEnabler_reg[5]_i_11_n_6\,
      I4 => p_18_in,
      I5 => \CellEnabler_reg[5]_i_3_n_6\,
      O => \CellEnabler[5]_i_4_n_0\
    );
\CellEnabler[5]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(6),
      I1 => dsp_cbin(7),
      O => \CellEnabler[5]_i_40_n_0\
    );
\CellEnabler[5]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(4),
      I1 => dsp_cbin(5),
      O => \CellEnabler[5]_i_41_n_0\
    );
\CellEnabler[5]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(2),
      I1 => dsp_cbin(3),
      O => \CellEnabler[5]_i_42_n_0\
    );
\CellEnabler[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(4),
      O => \CellEnabler[5]_i_5_n_0\
    );
\CellEnabler[5]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(3),
      O => \CellEnabler[5]_i_6_n_0\
    );
\CellEnabler[5]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_cbin(2),
      O => \CellEnabler[5]_i_7_n_0\
    );
\CellEnabler[5]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_cbin(1),
      O => \CellEnabler[5]_i_8_n_0\
    );
\CellEnabler[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => CellEnabler,
      I1 => \CellEnabler_reg[5]_i_3_n_7\,
      O => \CellEnabler[7]_i_1_n_0\
    );
\CellEnabler_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[0]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[0]\,
      R => \CellEnabler[5]_i_1_n_0\
    );
\CellEnabler_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[1]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[1]\,
      R => \CellEnabler[5]_i_1_n_0\
    );
\CellEnabler_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[0]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[2]\,
      R => \CellEnabler[7]_i_1_n_0\
    );
\CellEnabler_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[1]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[3]\,
      R => \CellEnabler[7]_i_1_n_0\
    );
\CellEnabler_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[4]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[4]\,
      R => \CellEnabler[5]_i_1_n_0\
    );
\CellEnabler_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[5]_i_2_n_0\,
      Q => \CellEnabler_reg_n_0_[5]\,
      R => \CellEnabler[5]_i_1_n_0\
    );
\CellEnabler_reg[5]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \CellEnabler_reg[5]_i_18_n_0\,
      CO(3 downto 1) => \NLW_CellEnabler_reg[5]_i_11_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \CellEnabler_reg[5]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => \NLW_CellEnabler_reg[5]_i_11_O_UNCONNECTED\(3 downto 2),
      O(1) => \CellEnabler_reg[5]_i_11_n_6\,
      O(0) => \CellEnabler_reg[5]_i_11_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \CellEnabler[5]_i_21_n_0\
    );
\CellEnabler_reg[5]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \CellEnabler_reg[5]_i_22_n_0\,
      CO(3 downto 2) => \NLW_CellEnabler_reg[5]_i_12_CO_UNCONNECTED\(3 downto 2),
      CO(1) => p_18_in,
      CO(0) => \CellEnabler_reg[5]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => dsp_cbin(13),
      DI(0) => '0',
      O(3 downto 0) => \NLW_CellEnabler_reg[5]_i_12_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \CellEnabler[5]_i_23_n_0\,
      S(0) => \CellEnabler[5]_i_24_n_0\
    );
\CellEnabler_reg[5]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CellEnabler_reg[5]_i_13_n_0\,
      CO(2) => \CellEnabler_reg[5]_i_13_n_1\,
      CO(1) => \CellEnabler_reg[5]_i_13_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_13_n_3\,
      CYINIT => '1',
      DI(3 downto 1) => B"000",
      DI(0) => \CellEnabler[5]_i_25_n_0\,
      O(3 downto 0) => \NLW_CellEnabler_reg[5]_i_13_O_UNCONNECTED\(3 downto 0),
      S(3) => \CellEnabler[5]_i_26_n_0\,
      S(2) => \CellEnabler[5]_i_27_n_0\,
      S(1) => \CellEnabler[5]_i_28_n_0\,
      S(0) => \CellEnabler[5]_i_29_n_0\
    );
\CellEnabler_reg[5]_i_18\: unisim.vcomponents.CARRY4
     port map (
      CI => \CellEnabler_reg[5]_i_20_n_0\,
      CO(3) => \CellEnabler_reg[5]_i_18_n_0\,
      CO(2) => \CellEnabler_reg[5]_i_18_n_1\,
      CO(1) => \CellEnabler_reg[5]_i_18_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_18_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CellEnabler_reg[5]_i_18_n_4\,
      O(2) => \CellEnabler_reg[5]_i_18_n_5\,
      O(1) => \CellEnabler_reg[5]_i_18_n_6\,
      O(0) => \CellEnabler_reg[5]_i_18_n_7\,
      S(3) => \CellEnabler[5]_i_30_n_0\,
      S(2) => \CellEnabler[5]_i_31_n_0\,
      S(1) => \CellEnabler[5]_i_32_n_0\,
      S(0) => \CellEnabler[5]_i_33_n_0\
    );
\CellEnabler_reg[5]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \CellEnabler_reg[5]_i_3_n_0\,
      CO(3) => \CellEnabler_reg[5]_i_20_n_0\,
      CO(2) => \CellEnabler_reg[5]_i_20_n_1\,
      CO(1) => \CellEnabler_reg[5]_i_20_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_20_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CellEnabler_reg[5]_i_20_n_4\,
      O(2) => \CellEnabler_reg[5]_i_20_n_5\,
      O(1) => \CellEnabler_reg[5]_i_20_n_6\,
      O(0) => \CellEnabler_reg[5]_i_20_n_7\,
      S(3) => \CellEnabler[5]_i_34_n_0\,
      S(2) => \CellEnabler[5]_i_35_n_0\,
      S(1) => \CellEnabler[5]_i_36_n_0\,
      S(0) => \CellEnabler[5]_i_37_n_0\
    );
\CellEnabler_reg[5]_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CellEnabler_reg[5]_i_22_n_0\,
      CO(2) => \CellEnabler_reg[5]_i_22_n_1\,
      CO(1) => \CellEnabler_reg[5]_i_22_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_22_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \CellEnabler[5]_i_38_n_0\,
      O(3 downto 0) => \NLW_CellEnabler_reg[5]_i_22_O_UNCONNECTED\(3 downto 0),
      S(3) => \CellEnabler[5]_i_39_n_0\,
      S(2) => \CellEnabler[5]_i_40_n_0\,
      S(1) => \CellEnabler[5]_i_41_n_0\,
      S(0) => \CellEnabler[5]_i_42_n_0\
    );
\CellEnabler_reg[5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CellEnabler_reg[5]_i_3_n_0\,
      CO(2) => \CellEnabler_reg[5]_i_3_n_1\,
      CO(1) => \CellEnabler_reg[5]_i_3_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => dsp_cbin(2),
      DI(0) => '0',
      O(3) => \CellEnabler_reg[5]_i_3_n_4\,
      O(2) => \CellEnabler_reg[5]_i_3_n_5\,
      O(1) => \CellEnabler_reg[5]_i_3_n_6\,
      O(0) => \CellEnabler_reg[5]_i_3_n_7\,
      S(3) => \CellEnabler[5]_i_5_n_0\,
      S(2) => \CellEnabler[5]_i_6_n_0\,
      S(1) => \CellEnabler[5]_i_7_n_0\,
      S(0) => \CellEnabler[5]_i_8_n_0\
    );
\CellEnabler_reg[5]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \CellEnabler_reg[5]_i_13_n_0\,
      CO(3) => \NLW_CellEnabler_reg[5]_i_9_CO_UNCONNECTED\(3),
      CO(2) => p_19_in,
      CO(1) => \CellEnabler_reg[5]_i_9_n_2\,
      CO(0) => \CellEnabler_reg[5]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \CellEnabler[5]_i_14_n_0\,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_CellEnabler_reg[5]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \CellEnabler[5]_i_15_n_0\,
      S(1) => \CellEnabler[5]_i_16_n_0\,
      S(0) => \CellEnabler[5]_i_17_n_0\
    );
\CellEnabler_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[4]_i_1_n_0\,
      Q => \CellEnabler_reg_n_0_[6]\,
      R => \CellEnabler[7]_i_1_n_0\
    );
\CellEnabler_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => CellEnabler,
      D => \CellEnabler[5]_i_2_n_0\,
      Q => \CellEnabler_reg_n_0_[7]\,
      R => \CellEnabler[7]_i_1_n_0\
    );
\CellReader[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5C0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => p_0_in23_out,
      I2 => CellEnabler,
      I3 => \CellReader_reg_n_0_[0]\,
      O => \CellReader[0]_i_1_n_0\
    );
\CellReader_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \CellReader[0]_i_1_n_0\,
      Q => \CellReader_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBB888"
    )
        port map (
      I0 => reset_IBUF,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => state_reg(0),
      I3 => p_0_in23_out,
      I4 => \FSM_onehot_state[4]_i_4_n_0\,
      I5 => \FSM_onehot_state[4]_i_5_n_0\,
      O => state
    );
\FSM_onehot_state[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => CellEnabler,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      O => state_reg(0)
    );
\FSM_onehot_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000000000"
    )
        port map (
      I0 => readAddr(0),
      I1 => dspAddr(0),
      I2 => readAddr(1),
      I3 => dspAddr(1),
      I4 => \FSM_onehot_state[4]_i_6_n_0\,
      I5 => \FSM_onehot_state[4]_i_7_n_0\,
      O => p_0_in23_out
    );
\FSM_onehot_state[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8000000"
    )
        port map (
      I0 => \CellAddr_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      I3 => \CellAddr_reg_n_0_[0]\,
      I4 => \CellAddr_reg_n_0_[1]\,
      O => \FSM_onehot_state[4]_i_4_n_0\
    );
\FSM_onehot_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000001000"
    )
        port map (
      I0 => mMin_IBUF(1),
      I1 => mMin_IBUF(0),
      I2 => stub_to_vec(0),
      I3 => mMin_IBUF(2),
      I4 => state_reg(0),
      I5 => state_reg(1),
      O => \FSM_onehot_state[4]_i_5_n_0\
    );
\FSM_onehot_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => dspAddr(4),
      I1 => readAddr(4),
      I2 => dspAddr(3),
      I3 => readAddr(3),
      I4 => readAddr(2),
      I5 => dspAddr(2),
      O => \FSM_onehot_state[4]_i_6_n_0\
    );
\FSM_onehot_state[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82000082"
    )
        port map (
      I0 => \FSM_onehot_state[4]_i_9_n_0\,
      I1 => writeAddr(1),
      I2 => readAddr(1),
      I3 => writeAddr(0),
      I4 => readAddr(0),
      O => \FSM_onehot_state[4]_i_7_n_0\
    );
\FSM_onehot_state[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => state_reg(1)
    );
\FSM_onehot_state[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => writeAddr(4),
      I1 => readAddr(4),
      I2 => writeAddr(3),
      I3 => readAddr(3),
      I4 => readAddr(2),
      I5 => writeAddr(2),
      O => \FSM_onehot_state[4]_i_9_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => CellEnabler,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => CellEnabler,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => state,
      D => \FSM_onehot_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => '0'
    );
StubBufferForCells_reg_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => dspAddr(4 downto 0),
      ADDRB(4 downto 0) => dspAddr(4 downto 0),
      ADDRC(4 downto 0) => dspAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(1 downto 0),
      DIB(1 downto 0) => stub_to_vec(3 downto 2),
      DIC(1 downto 0) => stub_to_vec(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => StubBufferForCells_reg_0_31_0_5_n_0,
      DOA(0) => to_stub_valid(0),
      DOB(1) => StubBufferForCells_reg_0_31_0_5_n_2,
      DOB(0) => StubBufferForCells_reg_0_31_0_5_n_3,
      DOC(1) => StubBufferForCells_reg_0_31_0_5_n_4,
      DOC(0) => StubBufferForCells_reg_0_31_0_5_n_5,
      DOD(1 downto 0) => NLW_StubBufferForCells_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBufferForCells_reg_0_31_24_27: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => dspAddr(4 downto 0),
      ADDRB(4 downto 0) => dspAddr(4 downto 0),
      ADDRC(4 downto 0) => dspAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(25 downto 24),
      DIB(1 downto 0) => stub_to_vec(27 downto 26),
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => to_stub_valid(25),
      DOA(0) => StubBufferForCells_reg_0_31_24_27_n_1,
      DOB(1 downto 0) => to_stub_valid(27 downto 26),
      DOC(1 downto 0) => NLW_StubBufferForCells_reg_0_31_24_27_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_StubBufferForCells_reg_0_31_24_27_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBuffer_reg_0_31_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => readAddr(4 downto 0),
      ADDRB(4 downto 0) => readAddr(4 downto 0),
      ADDRC(4 downto 0) => readAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(1 downto 0),
      DIB(1 downto 0) => stub_to_vec(3 downto 2),
      DIC(1 downto 0) => stub_to_vec(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => StubBuffer_reg_0_31_0_5_n_0,
      DOA(0) => StubBuffer_reg_0_31_0_5_n_1,
      DOB(1) => StubBuffer_reg_0_31_0_5_n_2,
      DOB(0) => StubBuffer_reg_0_31_0_5_n_3,
      DOC(1) => StubBuffer_reg_0_31_0_5_n_4,
      DOC(0) => StubBuffer_reg_0_31_0_5_n_5,
      DOD(1 downto 0) => NLW_StubBuffer_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBuffer_reg_0_31_12_17: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => readAddr(4 downto 0),
      ADDRB(4 downto 0) => readAddr(4 downto 0),
      ADDRC(4 downto 0) => readAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(13 downto 12),
      DIB(1 downto 0) => stub_to_vec(15 downto 14),
      DIC(1 downto 0) => stub_to_vec(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1) => StubBuffer_reg_0_31_12_17_n_0,
      DOA(0) => StubBuffer_reg_0_31_12_17_n_1,
      DOB(1) => StubBuffer_reg_0_31_12_17_n_2,
      DOB(0) => StubBuffer_reg_0_31_12_17_n_3,
      DOC(1) => StubBuffer_reg_0_31_12_17_n_4,
      DOC(0) => StubBuffer_reg_0_31_12_17_n_5,
      DOD(1 downto 0) => NLW_StubBuffer_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBuffer_reg_0_31_18_23: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => readAddr(4 downto 0),
      ADDRB(4 downto 0) => readAddr(4 downto 0),
      ADDRC(4 downto 0) => readAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(19 downto 18),
      DIB(1 downto 0) => stub_to_vec(21 downto 20),
      DIC(1 downto 0) => stub_to_vec(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1) => StubBuffer_reg_0_31_18_23_n_0,
      DOA(0) => StubBuffer_reg_0_31_18_23_n_1,
      DOB(1) => StubBuffer_reg_0_31_18_23_n_2,
      DOB(0) => StubBuffer_reg_0_31_18_23_n_3,
      DOC(1) => StubBuffer_reg_0_31_18_23_n_4,
      DOC(0) => StubBuffer_reg_0_31_18_23_n_5,
      DOD(1 downto 0) => NLW_StubBuffer_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBuffer_reg_0_31_24_24: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => readAddr(4 downto 0),
      ADDRB(4 downto 0) => readAddr(4 downto 0),
      ADDRC(4 downto 0) => readAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1) => '0',
      DIA(0) => stub_to_vec(24),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => NLW_StubBuffer_reg_0_31_24_24_DOA_UNCONNECTED(1),
      DOA(0) => StubBuffer_reg_0_31_24_24_n_1,
      DOB(1 downto 0) => NLW_StubBuffer_reg_0_31_24_24_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_StubBuffer_reg_0_31_24_24_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_StubBuffer_reg_0_31_24_24_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
StubBuffer_reg_0_31_6_11: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 0) => readAddr(4 downto 0),
      ADDRB(4 downto 0) => readAddr(4 downto 0),
      ADDRC(4 downto 0) => readAddr(4 downto 0),
      ADDRD(4 downto 0) => writeAddr(4 downto 0),
      DIA(1 downto 0) => stub_to_vec(7 downto 6),
      DIB(1 downto 0) => stub_to_vec(9 downto 8),
      DIC(1 downto 0) => stub_to_vec(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1) => StubBuffer_reg_0_31_6_11_n_0,
      DOA(0) => StubBuffer_reg_0_31_6_11_n_1,
      DOB(1) => StubBuffer_reg_0_31_6_11_n_2,
      DOB(0) => StubBuffer_reg_0_31_6_11_n_3,
      DOC(1) => StubBuffer_reg_0_31_6_11_n_4,
      DOC(0) => StubBuffer_reg_0_31_6_11_n_5,
      DOD(1 downto 0) => NLW_StubBuffer_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_IBUF_BUFG,
      WE => '1'
    );
\cbin_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cbin_OBUF(0),
      O => cbin(0)
    );
\cbin_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cbin_OBUF(1),
      O => cbin(1)
    );
\cbin_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => cbin_OBUF(2),
      O => cbin(2)
    );
\cbin_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => tempCbin(0),
      Q => cbin_OBUF(0),
      R => '0'
    );
\cbin_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => tempCbin(1),
      Q => cbin_OBUF(1),
      R => '0'
    );
\cbin_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => tempCbin(2),
      Q => cbin_OBUF(2),
      R => '0'
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\dspAddr2_reg[0]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_IBUF_BUFG,
      D => readAddr(0),
      Q => \dspAddr2_reg[0]_srl3_n_0\
    );
\dspAddr2_reg[1]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_IBUF_BUFG,
      D => readAddr(1),
      Q => \dspAddr2_reg[1]_srl3_n_0\
    );
\dspAddr2_reg[2]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_IBUF_BUFG,
      D => readAddr(2),
      Q => \dspAddr2_reg[2]_srl3_n_0\
    );
\dspAddr2_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_IBUF_BUFG,
      D => readAddr(3),
      Q => \dspAddr2_reg[3]_srl3_n_0\
    );
\dspAddr2_reg[4]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => clk_IBUF_BUFG,
      D => readAddr(4),
      Q => \dspAddr2_reg[4]_srl3_n_0\
    );
\dspAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dspAddr2_reg[0]_srl3_n_0\,
      Q => dspAddr(0),
      R => '0'
    );
\dspAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dspAddr2_reg[1]_srl3_n_0\,
      Q => dspAddr(1),
      R => '0'
    );
\dspAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dspAddr2_reg[2]_srl3_n_0\,
      Q => dspAddr(2),
      R => '0'
    );
\dspAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dspAddr2_reg[3]_srl3_n_0\,
      Q => dspAddr(3),
      R => '0'
    );
\dspAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dspAddr2_reg[4]_srl3_n_0\,
      Q => dspAddr(4),
      R => '0'
    );
dspValid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => valid1,
      Q => dspValid,
      R => '0'
    );
\dsp_cbin[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(0),
      I1 => dsp_cshift(0),
      O => \dsp_cbin[0]_i_10_n_0\
    );
\dsp_cbin[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(7),
      I1 => dsp_cshift(7),
      O => \dsp_cbin[0]_i_3_n_0\
    );
\dsp_cbin[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(6),
      I1 => dsp_cshift(6),
      O => \dsp_cbin[0]_i_4_n_0\
    );
\dsp_cbin[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(5),
      I1 => dsp_cshift(5),
      O => \dsp_cbin[0]_i_5_n_0\
    );
\dsp_cbin[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(4),
      I1 => dsp_cshift(4),
      O => \dsp_cbin[0]_i_6_n_0\
    );
\dsp_cbin[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(3),
      I1 => dsp_cshift(3),
      O => \dsp_cbin[0]_i_7_n_0\
    );
\dsp_cbin[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(2),
      I1 => dsp_cshift(2),
      O => \dsp_cbin[0]_i_8_n_0\
    );
\dsp_cbin[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(1),
      I1 => dsp_cshift(1),
      O => \dsp_cbin[0]_i_9_n_0\
    );
\dsp_cbin[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dsp_phirm(12),
      I1 => dsp_phirm(13),
      O => \dsp_cbin[13]_i_2_n_0\
    );
\dsp_cbin[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dsp_phirm(11),
      I1 => dsp_phirm(12),
      O => \dsp_cbin[13]_i_3_n_0\
    );
\dsp_cbin[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dsp_phirm(10),
      I1 => dsp_phirm(11),
      O => \dsp_cbin[4]_i_2_n_0\
    );
\dsp_cbin[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_phirm(10),
      O => \dsp_cbin[4]_i_3_n_0\
    );
\dsp_cbin[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => dsp_phirm(9),
      O => \dsp_cbin[4]_i_4_n_0\
    );
\dsp_cbin[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phirm(8),
      I1 => dsp_cshift(8),
      O => \dsp_cbin[4]_i_5_n_0\
    );
\dsp_cbin_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[0]_i_1_n_4\,
      Q => dsp_cbin(0),
      R => '0'
    );
\dsp_cbin_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_cbin_reg[0]_i_2_n_0\,
      CO(3) => \dsp_cbin_reg[0]_i_1_n_0\,
      CO(2) => \dsp_cbin_reg[0]_i_1_n_1\,
      CO(1) => \dsp_cbin_reg[0]_i_1_n_2\,
      CO(0) => \dsp_cbin_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dsp_phirm(7 downto 4),
      O(3) => \dsp_cbin_reg[0]_i_1_n_4\,
      O(2 downto 0) => \NLW_dsp_cbin_reg[0]_i_1_O_UNCONNECTED\(2 downto 0),
      S(3) => \dsp_cbin[0]_i_3_n_0\,
      S(2) => \dsp_cbin[0]_i_4_n_0\,
      S(1) => \dsp_cbin[0]_i_5_n_0\,
      S(0) => \dsp_cbin[0]_i_6_n_0\
    );
\dsp_cbin_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dsp_cbin_reg[0]_i_2_n_0\,
      CO(2) => \dsp_cbin_reg[0]_i_2_n_1\,
      CO(1) => \dsp_cbin_reg[0]_i_2_n_2\,
      CO(0) => \dsp_cbin_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dsp_phirm(3 downto 0),
      O(3 downto 0) => \NLW_dsp_cbin_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \dsp_cbin[0]_i_7_n_0\,
      S(2) => \dsp_cbin[0]_i_8_n_0\,
      S(1) => \dsp_cbin[0]_i_9_n_0\,
      S(0) => \dsp_cbin[0]_i_10_n_0\
    );
\dsp_cbin_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(10),
      R => '0'
    );
\dsp_cbin_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(11),
      R => '0'
    );
\dsp_cbin_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(12),
      R => '0'
    );
\dsp_cbin_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(13),
      R => '0'
    );
\dsp_cbin_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_cbin_reg[4]_i_1_n_0\,
      CO(3 downto 1) => \NLW_dsp_cbin_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \dsp_cbin_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => dsp_phirm(11),
      O(3 downto 2) => \NLW_dsp_cbin_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => SHIFT_RIGHT0,
      O(0) => \dsp_cbin_reg[13]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \dsp_cbin[13]_i_2_n_0\,
      S(0) => \dsp_cbin[13]_i_3_n_0\
    );
\dsp_cbin_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[4]_i_1_n_7\,
      Q => dsp_cbin(1),
      R => '0'
    );
\dsp_cbin_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[4]_i_1_n_6\,
      Q => dsp_cbin(2),
      R => '0'
    );
\dsp_cbin_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[4]_i_1_n_5\,
      Q => dsp_cbin(3),
      R => '0'
    );
\dsp_cbin_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[4]_i_1_n_4\,
      Q => dsp_cbin(4),
      R => '0'
    );
\dsp_cbin_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_cbin_reg[0]_i_1_n_0\,
      CO(3) => \dsp_cbin_reg[4]_i_1_n_0\,
      CO(2) => \dsp_cbin_reg[4]_i_1_n_1\,
      CO(1) => \dsp_cbin_reg[4]_i_1_n_2\,
      CO(0) => \dsp_cbin_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => dsp_phirm(10),
      DI(2 downto 1) => B"10",
      DI(0) => dsp_phirm(8),
      O(3) => \dsp_cbin_reg[4]_i_1_n_4\,
      O(2) => \dsp_cbin_reg[4]_i_1_n_5\,
      O(1) => \dsp_cbin_reg[4]_i_1_n_6\,
      O(0) => \dsp_cbin_reg[4]_i_1_n_7\,
      S(3) => \dsp_cbin[4]_i_2_n_0\,
      S(2) => \dsp_cbin[4]_i_3_n_0\,
      S(1) => \dsp_cbin[4]_i_4_n_0\,
      S(0) => \dsp_cbin[4]_i_5_n_0\
    );
\dsp_cbin_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_cbin_reg[13]_i_1_n_7\,
      Q => dsp_cbin(5),
      R => '0'
    );
\dsp_cbin_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(6),
      R => '0'
    );
\dsp_cbin_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(7),
      R => '0'
    );
\dsp_cbin_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(8),
      R => '0'
    );
\dsp_cbin_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT0,
      Q => dsp_cbin(9),
      R => '0'
    );
\dsp_cshift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(0),
      Q => dsp_cshift(0),
      R => '0'
    );
\dsp_cshift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(1),
      Q => dsp_cshift(1),
      R => '0'
    );
\dsp_cshift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(2),
      Q => dsp_cshift(2),
      R => '0'
    );
\dsp_cshift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(3),
      Q => dsp_cshift(3),
      R => '0'
    );
\dsp_cshift_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(4),
      Q => dsp_cshift(4),
      R => '0'
    );
\dsp_cshift_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(5),
      Q => dsp_cshift(5),
      R => '0'
    );
\dsp_cshift_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(6),
      Q => dsp_cshift(6),
      R => '0'
    );
\dsp_cshift_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(7),
      Q => dsp_cshift(7),
      R => '0'
    );
\dsp_cshift_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => dsp_rhalf(8),
      Q => dsp_cshift(8),
      R => '0'
    );
\dsp_phi_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(12),
      Q => dsp_phi(0),
      R => '0'
    );
\dsp_phi_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(22),
      Q => dsp_phi(10),
      R => '0'
    );
\dsp_phi_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(23),
      Q => dsp_phi(11),
      R => '0'
    );
\dsp_phi_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(24),
      Q => dsp_phi(12),
      R => '0'
    );
\dsp_phi_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(13),
      Q => dsp_phi(1),
      R => '0'
    );
\dsp_phi_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(14),
      Q => dsp_phi(2),
      R => '0'
    );
\dsp_phi_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(15),
      Q => dsp_phi(3),
      R => '0'
    );
\dsp_phi_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(16),
      Q => dsp_phi(4),
      R => '0'
    );
\dsp_phi_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(17),
      Q => dsp_phi(5),
      R => '0'
    );
\dsp_phi_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(18),
      Q => dsp_phi(6),
      R => '0'
    );
\dsp_phi_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(19),
      Q => dsp_phi(7),
      R => '0'
    );
\dsp_phi_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(20),
      Q => dsp_phi(8),
      R => '0'
    );
\dsp_phi_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(21),
      Q => dsp_phi(9),
      R => '0'
    );
\dsp_phirm[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(11),
      I1 => dsp_rm(11),
      O => \dsp_phirm[11]_i_2_n_0\
    );
\dsp_phirm[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(10),
      I1 => dsp_rm(10),
      O => \dsp_phirm[11]_i_3_n_0\
    );
\dsp_phirm[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(9),
      I1 => dsp_rm(9),
      O => \dsp_phirm[11]_i_4_n_0\
    );
\dsp_phirm[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(8),
      I1 => dsp_rm(8),
      O => \dsp_phirm[11]_i_5_n_0\
    );
\dsp_phirm[13]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => dsp_rm(12),
      O => \dsp_phirm[13]_i_2_n_0\
    );
\dsp_phirm[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => dsp_rm(12),
      I1 => dsp_rm(13),
      O => \dsp_phirm[13]_i_3_n_0\
    );
\dsp_phirm[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_rm(12),
      I1 => dsp_phi(12),
      O => \dsp_phirm[13]_i_4_n_0\
    );
\dsp_phirm[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(3),
      I1 => dsp_rm(3),
      O => \dsp_phirm[3]_i_2_n_0\
    );
\dsp_phirm[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(2),
      I1 => dsp_rm(2),
      O => \dsp_phirm[3]_i_3_n_0\
    );
\dsp_phirm[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(1),
      I1 => dsp_rm(1),
      O => \dsp_phirm[3]_i_4_n_0\
    );
\dsp_phirm[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(0),
      I1 => dsp_rm(0),
      O => \dsp_phirm[3]_i_5_n_0\
    );
\dsp_phirm[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(7),
      I1 => dsp_rm(7),
      O => \dsp_phirm[7]_i_2_n_0\
    );
\dsp_phirm[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(6),
      I1 => dsp_rm(6),
      O => \dsp_phirm[7]_i_3_n_0\
    );
\dsp_phirm[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(5),
      I1 => dsp_rm(5),
      O => \dsp_phirm[7]_i_4_n_0\
    );
\dsp_phirm[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => dsp_phi(4),
      I1 => dsp_rm(4),
      O => \dsp_phirm[7]_i_5_n_0\
    );
\dsp_phirm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[3]_i_1_n_7\,
      Q => dsp_phirm(0),
      R => '0'
    );
\dsp_phirm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[11]_i_1_n_5\,
      Q => dsp_phirm(10),
      R => '0'
    );
\dsp_phirm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[11]_i_1_n_4\,
      Q => dsp_phirm(11),
      R => '0'
    );
\dsp_phirm_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_phirm_reg[7]_i_1_n_0\,
      CO(3) => \dsp_phirm_reg[11]_i_1_n_0\,
      CO(2) => \dsp_phirm_reg[11]_i_1_n_1\,
      CO(1) => \dsp_phirm_reg[11]_i_1_n_2\,
      CO(0) => \dsp_phirm_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dsp_phi(11 downto 8),
      O(3) => \dsp_phirm_reg[11]_i_1_n_4\,
      O(2) => \dsp_phirm_reg[11]_i_1_n_5\,
      O(1) => \dsp_phirm_reg[11]_i_1_n_6\,
      O(0) => \dsp_phirm_reg[11]_i_1_n_7\,
      S(3) => \dsp_phirm[11]_i_2_n_0\,
      S(2) => \dsp_phirm[11]_i_3_n_0\,
      S(1) => \dsp_phirm[11]_i_4_n_0\,
      S(0) => \dsp_phirm[11]_i_5_n_0\
    );
\dsp_phirm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[13]_i_1_n_7\,
      Q => dsp_phirm(12),
      R => '0'
    );
\dsp_phirm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[13]_i_1_n_6\,
      Q => dsp_phirm(13),
      R => '0'
    );
\dsp_phirm_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_phirm_reg[11]_i_1_n_0\,
      CO(3 downto 1) => \NLW_dsp_phirm_reg[13]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \dsp_phirm_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \dsp_phirm[13]_i_2_n_0\,
      O(3 downto 2) => \NLW_dsp_phirm_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \dsp_phirm_reg[13]_i_1_n_6\,
      O(0) => \dsp_phirm_reg[13]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \dsp_phirm[13]_i_3_n_0\,
      S(0) => \dsp_phirm[13]_i_4_n_0\
    );
\dsp_phirm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[3]_i_1_n_6\,
      Q => dsp_phirm(1),
      R => '0'
    );
\dsp_phirm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[3]_i_1_n_5\,
      Q => dsp_phirm(2),
      R => '0'
    );
\dsp_phirm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[3]_i_1_n_4\,
      Q => dsp_phirm(3),
      R => '0'
    );
\dsp_phirm_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dsp_phirm_reg[3]_i_1_n_0\,
      CO(2) => \dsp_phirm_reg[3]_i_1_n_1\,
      CO(1) => \dsp_phirm_reg[3]_i_1_n_2\,
      CO(0) => \dsp_phirm_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dsp_phi(3 downto 0),
      O(3) => \dsp_phirm_reg[3]_i_1_n_4\,
      O(2) => \dsp_phirm_reg[3]_i_1_n_5\,
      O(1) => \dsp_phirm_reg[3]_i_1_n_6\,
      O(0) => \dsp_phirm_reg[3]_i_1_n_7\,
      S(3) => \dsp_phirm[3]_i_2_n_0\,
      S(2) => \dsp_phirm[3]_i_3_n_0\,
      S(1) => \dsp_phirm[3]_i_4_n_0\,
      S(0) => \dsp_phirm[3]_i_5_n_0\
    );
\dsp_phirm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[7]_i_1_n_7\,
      Q => dsp_phirm(4),
      R => '0'
    );
\dsp_phirm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[7]_i_1_n_6\,
      Q => dsp_phirm(5),
      R => '0'
    );
\dsp_phirm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[7]_i_1_n_5\,
      Q => dsp_phirm(6),
      R => '0'
    );
\dsp_phirm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[7]_i_1_n_4\,
      Q => dsp_phirm(7),
      R => '0'
    );
\dsp_phirm_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \dsp_phirm_reg[3]_i_1_n_0\,
      CO(3) => \dsp_phirm_reg[7]_i_1_n_0\,
      CO(2) => \dsp_phirm_reg[7]_i_1_n_1\,
      CO(1) => \dsp_phirm_reg[7]_i_1_n_2\,
      CO(0) => \dsp_phirm_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => dsp_phi(7 downto 4),
      O(3) => \dsp_phirm_reg[7]_i_1_n_4\,
      O(2) => \dsp_phirm_reg[7]_i_1_n_5\,
      O(1) => \dsp_phirm_reg[7]_i_1_n_6\,
      O(0) => \dsp_phirm_reg[7]_i_1_n_7\,
      S(3) => \dsp_phirm[7]_i_2_n_0\,
      S(2) => \dsp_phirm[7]_i_3_n_0\,
      S(1) => \dsp_phirm[7]_i_4_n_0\,
      S(0) => \dsp_phirm[7]_i_5_n_0\
    );
\dsp_phirm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[11]_i_1_n_7\,
      Q => dsp_phirm(8),
      R => '0'
    );
\dsp_phirm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_phirm_reg[11]_i_1_n_6\,
      Q => dsp_phirm(9),
      R => '0'
    );
\dsp_rhalf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(0),
      Q => dsp_rhalf(0),
      R => '0'
    );
\dsp_rhalf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(1),
      Q => dsp_rhalf(1),
      R => '0'
    );
\dsp_rhalf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(2),
      Q => dsp_rhalf(2),
      R => '0'
    );
\dsp_rhalf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(3),
      Q => dsp_rhalf(3),
      R => '0'
    );
\dsp_rhalf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(4),
      Q => dsp_rhalf(4),
      R => '0'
    );
\dsp_rhalf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(5),
      Q => dsp_rhalf(5),
      R => '0'
    );
\dsp_rhalf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(6),
      Q => dsp_rhalf(6),
      R => '0'
    );
\dsp_rhalf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(7),
      Q => dsp_rhalf(7),
      R => '0'
    );
\dsp_rhalf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => SHIFT_RIGHT(8),
      Q => dsp_rhalf(8),
      R => '0'
    );
\dsp_rm[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => SHIFT_RIGHT(6),
      I1 => \dsp_rm[13]_i_2_n_0\,
      I2 => SHIFT_RIGHT(5),
      I3 => SHIFT_RIGHT(7),
      O => \dsp_rm[10]_i_1_n_0\
    );
\dsp_rm[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => SHIFT_RIGHT(7),
      I1 => SHIFT_RIGHT(5),
      I2 => \dsp_rm[13]_i_2_n_0\,
      I3 => SHIFT_RIGHT(6),
      I4 => SHIFT_RIGHT(8),
      O => \dsp_rm[11]_i_1_n_0\
    );
\dsp_rm[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => SHIFT_RIGHT(7),
      I1 => SHIFT_RIGHT(5),
      I2 => \dsp_rm[13]_i_2_n_0\,
      I3 => SHIFT_RIGHT(6),
      I4 => SHIFT_RIGHT(8),
      O => \dsp_rm[13]_i_1_n_0\
    );
\dsp_rm[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => SHIFT_RIGHT(3),
      I1 => SHIFT_RIGHT(1),
      I2 => A(0),
      I3 => SHIFT_RIGHT(0),
      I4 => SHIFT_RIGHT(2),
      I5 => SHIFT_RIGHT(4),
      O => \dsp_rm[13]_i_2_n_0\
    );
\dsp_rm[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => SHIFT_RIGHT(0),
      O => \dsp_rm[3]_i_1_n_0\
    );
\dsp_rm[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => SHIFT_RIGHT(0),
      I1 => A(0),
      I2 => SHIFT_RIGHT(1),
      O => \dsp_rm[4]_i_1_n_0\
    );
\dsp_rm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => SHIFT_RIGHT(1),
      I1 => A(0),
      I2 => SHIFT_RIGHT(0),
      I3 => SHIFT_RIGHT(2),
      O => \dsp_rm[5]_i_1_n_0\
    );
\dsp_rm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => SHIFT_RIGHT(2),
      I1 => SHIFT_RIGHT(0),
      I2 => A(0),
      I3 => SHIFT_RIGHT(1),
      I4 => SHIFT_RIGHT(3),
      O => \dsp_rm[6]_i_1_n_0\
    );
\dsp_rm[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFE"
    )
        port map (
      I0 => SHIFT_RIGHT(3),
      I1 => SHIFT_RIGHT(1),
      I2 => A(0),
      I3 => SHIFT_RIGHT(0),
      I4 => SHIFT_RIGHT(2),
      I5 => SHIFT_RIGHT(4),
      O => \dsp_rm[7]_i_1_n_0\
    );
\dsp_rm[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dsp_rm[13]_i_2_n_0\,
      I1 => SHIFT_RIGHT(5),
      O => \dsp_rm[8]_i_1_n_0\
    );
\dsp_rm[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => SHIFT_RIGHT(5),
      I1 => \dsp_rm[13]_i_2_n_0\,
      I2 => SHIFT_RIGHT(6),
      O => \dsp_rm[9]_i_1_n_0\
    );
\dsp_rm_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => '0',
      Q => dsp_rm(0),
      R => '0'
    );
\dsp_rm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[10]_i_1_n_0\,
      Q => dsp_rm(10),
      R => '0'
    );
\dsp_rm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[11]_i_1_n_0\,
      Q => dsp_rm(11),
      R => '0'
    );
\dsp_rm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[13]_i_1_n_0\,
      Q => dsp_rm(12),
      R => '0'
    );
\dsp_rm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[13]_i_1_n_0\,
      Q => dsp_rm(13),
      R => '0'
    );
\dsp_rm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => '0',
      Q => dsp_rm(1),
      R => '0'
    );
\dsp_rm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => A(0),
      Q => dsp_rm(2),
      R => '0'
    );
\dsp_rm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[3]_i_1_n_0\,
      Q => dsp_rm(3),
      R => '0'
    );
\dsp_rm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[4]_i_1_n_0\,
      Q => dsp_rm(4),
      R => '0'
    );
\dsp_rm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[5]_i_1_n_0\,
      Q => dsp_rm(5),
      R => '0'
    );
\dsp_rm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[6]_i_1_n_0\,
      Q => dsp_rm(6),
      R => '0'
    );
\dsp_rm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[7]_i_1_n_0\,
      Q => dsp_rm(7),
      R => '0'
    );
\dsp_rm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[8]_i_1_n_0\,
      Q => dsp_rm(8),
      R => '0'
    );
\dsp_rm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \dsp_rm[9]_i_1_n_0\,
      Q => dsp_rm(9),
      R => '0'
    );
\mMin_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mMin(0),
      O => mMin_IBUF(0)
    );
\mMin_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mMin(1),
      O => mMin_IBUF(1)
    );
\mMin_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => mMin(2),
      O => mMin_IBUF(2)
    );
\outputRegister_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(0),
      O => outputRegister(0)
    );
\outputRegister_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(10),
      O => outputRegister(10)
    );
\outputRegister_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(11),
      O => outputRegister(11)
    );
\outputRegister_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(12),
      O => outputRegister(12)
    );
\outputRegister_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(13),
      O => outputRegister(13)
    );
\outputRegister_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(14),
      O => outputRegister(14)
    );
\outputRegister_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(15),
      O => outputRegister(15)
    );
\outputRegister_OBUF[16]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(16),
      O => outputRegister(16)
    );
\outputRegister_OBUF[17]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(17),
      O => outputRegister(17)
    );
\outputRegister_OBUF[18]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(18),
      O => outputRegister(18)
    );
\outputRegister_OBUF[19]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(19),
      O => outputRegister(19)
    );
\outputRegister_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(1),
      O => outputRegister(1)
    );
\outputRegister_OBUF[20]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(20),
      O => outputRegister(20)
    );
\outputRegister_OBUF[21]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(21),
      O => outputRegister(21)
    );
\outputRegister_OBUF[22]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(22),
      O => outputRegister(22)
    );
\outputRegister_OBUF[23]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(23),
      O => outputRegister(23)
    );
\outputRegister_OBUF[24]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(24),
      O => outputRegister(24)
    );
\outputRegister_OBUF[25]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(25),
      O => outputRegister(25)
    );
\outputRegister_OBUF[26]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(26),
      O => outputRegister(26)
    );
\outputRegister_OBUF[27]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(27),
      O => outputRegister(27)
    );
\outputRegister_OBUF[28]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(28),
      O => outputRegister(28)
    );
\outputRegister_OBUF[29]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(29),
      O => outputRegister(29)
    );
\outputRegister_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(2),
      O => outputRegister(2)
    );
\outputRegister_OBUF[30]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(30),
      O => outputRegister(30)
    );
\outputRegister_OBUF[31]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(31),
      O => outputRegister(31)
    );
\outputRegister_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(3),
      O => outputRegister(3)
    );
\outputRegister_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(4),
      O => outputRegister(4)
    );
\outputRegister_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(5),
      O => outputRegister(5)
    );
\outputRegister_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(6),
      O => outputRegister(6)
    );
\outputRegister_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(7),
      O => outputRegister(7)
    );
\outputRegister_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(8),
      O => outputRegister(8)
    );
\outputRegister_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => outputRegister_OBUF(9),
      O => outputRegister(9)
    );
\outputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[0]\,
      Q => outputRegister_OBUF(0),
      R => '0'
    );
\outputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[10]\,
      Q => outputRegister_OBUF(10),
      R => '0'
    );
\outputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[11]\,
      Q => outputRegister_OBUF(11),
      R => '0'
    );
\outputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[12]\,
      Q => outputRegister_OBUF(12),
      R => '0'
    );
\outputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[13]\,
      Q => outputRegister_OBUF(13),
      R => '0'
    );
\outputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[14]\,
      Q => outputRegister_OBUF(14),
      R => '0'
    );
\outputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[15]\,
      Q => outputRegister_OBUF(15),
      R => '0'
    );
\outputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[16]\,
      Q => outputRegister_OBUF(16),
      R => '0'
    );
\outputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[17]\,
      Q => outputRegister_OBUF(17),
      R => '0'
    );
\outputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[18]\,
      Q => outputRegister_OBUF(18),
      R => '0'
    );
\outputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[19]\,
      Q => outputRegister_OBUF(19),
      R => '0'
    );
\outputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[1]\,
      Q => outputRegister_OBUF(1),
      R => '0'
    );
\outputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[20]\,
      Q => outputRegister_OBUF(20),
      R => '0'
    );
\outputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[21]\,
      Q => outputRegister_OBUF(21),
      R => '0'
    );
\outputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[22]\,
      Q => outputRegister_OBUF(22),
      R => '0'
    );
\outputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[23]\,
      Q => outputRegister_OBUF(23),
      R => '0'
    );
\outputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[24]\,
      Q => outputRegister_OBUF(24),
      R => '0'
    );
\outputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[25]\,
      Q => outputRegister_OBUF(25),
      R => '0'
    );
\outputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[26]\,
      Q => outputRegister_OBUF(26),
      R => '0'
    );
\outputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[27]\,
      Q => outputRegister_OBUF(27),
      R => '0'
    );
\outputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[28]\,
      Q => outputRegister_OBUF(28),
      R => '0'
    );
\outputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[29]\,
      Q => outputRegister_OBUF(29),
      R => '0'
    );
\outputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[2]\,
      Q => outputRegister_OBUF(2),
      R => '0'
    );
\outputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[30]\,
      Q => outputRegister_OBUF(30),
      R => '0'
    );
\outputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[31]\,
      Q => outputRegister_OBUF(31),
      R => '0'
    );
\outputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[3]\,
      Q => outputRegister_OBUF(3),
      R => '0'
    );
\outputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[4]\,
      Q => outputRegister_OBUF(4),
      R => '0'
    );
\outputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[5]\,
      Q => outputRegister_OBUF(5),
      R => '0'
    );
\outputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[6]\,
      Q => outputRegister_OBUF(6),
      R => '0'
    );
\outputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[7]\,
      Q => outputRegister_OBUF(7),
      R => '0'
    );
\outputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[8]\,
      Q => outputRegister_OBUF(8),
      R => '0'
    );
\outputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempOutputRegister_reg_n_0_[9]\,
      Q => outputRegister_OBUF(9),
      R => '0'
    );
\readAddr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \readAddr[0]_i_4_n_0\,
      I2 => CellEnabler,
      O => \readAddr[0]_i_1_n_0\
    );
\readAddr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEFEFEFEEE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \readAddr[0]_i_4_n_0\,
      I2 => CellEnabler,
      I3 => \readAddr[0]_i_5_n_0\,
      I4 => writeAddr(4),
      I5 => readAddr(4),
      O => \readAddr[0]_i_2_n_0\
    );
\readAddr[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readAddr(0),
      O => \readAddr[0]_i_3_n_0\
    );
\readAddr[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => mMin_IBUF(2),
      I2 => stub_to_vec(0),
      I3 => mMin_IBUF(0),
      I4 => mMin_IBUF(1),
      O => \readAddr[0]_i_4_n_0\
    );
\readAddr[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => readAddr(3),
      I1 => writeAddr(3),
      I2 => \readAddr[0]_i_6_n_0\,
      O => \readAddr[0]_i_5_n_0\
    );
\readAddr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44D444D4D4DD44D4"
    )
        port map (
      I0 => readAddr(2),
      I1 => writeAddr(2),
      I2 => writeAddr(1),
      I3 => readAddr(1),
      I4 => writeAddr(0),
      I5 => readAddr(0),
      O => \readAddr[0]_i_6_n_0\
    );
\readAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => readAddr(0),
      I1 => readAddr(1),
      O => \readAddr[1]_i_1_n_0\
    );
\readAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => readAddr(0),
      I1 => readAddr(1),
      I2 => readAddr(2),
      O => \readAddr[2]_i_1_n_0\
    );
\readAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => readAddr(1),
      I1 => readAddr(0),
      I2 => readAddr(2),
      I3 => readAddr(3),
      O => \readAddr[3]_i_1_n_0\
    );
\readAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => readAddr(2),
      I1 => readAddr(0),
      I2 => readAddr(1),
      I3 => readAddr(3),
      I4 => readAddr(4),
      O => \readAddr[4]_i_1_n_0\
    );
\readAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \readAddr[0]_i_2_n_0\,
      D => \readAddr[0]_i_3_n_0\,
      Q => readAddr(0),
      R => \readAddr[0]_i_1_n_0\
    );
\readAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \readAddr[0]_i_2_n_0\,
      D => \readAddr[1]_i_1_n_0\,
      Q => readAddr(1),
      R => \readAddr[0]_i_1_n_0\
    );
\readAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \readAddr[0]_i_2_n_0\,
      D => \readAddr[2]_i_1_n_0\,
      Q => readAddr(2),
      R => \readAddr[0]_i_1_n_0\
    );
\readAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \readAddr[0]_i_2_n_0\,
      D => \readAddr[3]_i_1_n_0\,
      Q => readAddr(3),
      R => \readAddr[0]_i_1_n_0\
    );
\readAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \readAddr[0]_i_2_n_0\,
      D => \readAddr[4]_i_1_n_0\,
      Q => readAddr(4),
      R => \readAddr[0]_i_1_n_0\
    );
ready_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => ready_OBUF,
      O => ready
    );
ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => ready_OBUF,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => ready_i_1_n_0,
      Q => ready_OBUF,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\rows[0].Cell\: entity work.HoughCell
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_0_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[0].Cell_n_0\,
      stubCounter(4 downto 0) => p_1_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(0),
      writeEn => \CellEnabler_reg_n_0_[0]\
    );
\rows[1].Cell\: entity work.\HoughCell__7\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_4_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[1].Cell_n_0\,
      stubCounter(4 downto 0) => p_5_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(1),
      writeEn => \CellEnabler_reg_n_0_[1]\
    );
\rows[2].Cell\: entity work.\HoughCell__6\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_8_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[2].Cell_n_0\,
      stubCounter(4 downto 0) => p_9_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(2),
      writeEn => \CellEnabler_reg_n_0_[2]\
    );
\rows[3].Cell\: entity work.\HoughCell__5\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_12_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[3].Cell_n_0\,
      stubCounter(4 downto 0) => p_13_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(3),
      writeEn => \CellEnabler_reg_n_0_[3]\
    );
\rows[4].Cell\: entity work.\HoughCell__4\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_16_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[4].Cell_n_0\,
      stubCounter(4 downto 0) => p_17_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(4),
      writeEn => \CellEnabler_reg_n_0_[4]\
    );
\rows[5].Cell\: entity work.\HoughCell__3\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_20_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[5].Cell_n_0\,
      stubCounter(4 downto 0) => p_21_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(5),
      writeEn => \CellEnabler_reg_n_0_[5]\
    );
\rows[6].Cell\: entity work.\HoughCell__2\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_24_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[6].Cell_n_0\,
      stubCounter(4 downto 0) => p_25_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => CellTrackCand(6),
      writeEn => \CellEnabler_reg_n_0_[6]\
    );
\rows[7].Cell\: entity work.\HoughCell__1\
     port map (
      clk => clk_IBUF_BUFG,
      outputRegister(31 downto 0) => p_28_out(31 downto 0),
      readEn => \CellReader_reg_n_0_[0]\,
      ready => \rows[7].Cell_n_0\,
      stubCounter(4 downto 0) => p_29_out(4 downto 0),
      \stub[EoF]\ => '0',
      \stub[layerId]\(2) => \vec_reg_n_0_[27]\,
      \stub[layerId]\(1) => \vec_reg_n_0_[26]\,
      \stub[layerId]\(0) => \vec_reg_n_0_[25]\,
      \stub[phi]\(12 downto 0) => B"0000000000000",
      \stub[r]\(9 downto 0) => B"0000000000",
      \stub[valid]\ => \vec_reg_n_0_[0]\,
      trackCand => \NLW_rows[7].Cell_trackCand_UNCONNECTED\,
      writeEn => \CellEnabler_reg_n_0_[7]\
    );
\stubCounter_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => stubCounter_OBUF(0),
      O => stubCounter(0)
    );
\stubCounter_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => stubCounter_OBUF(1),
      O => stubCounter(1)
    );
\stubCounter_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => stubCounter_OBUF(2),
      O => stubCounter(2)
    );
\stubCounter_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => stubCounter_OBUF(3),
      O => stubCounter(3)
    );
\stubCounter_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => stubCounter_OBUF(4),
      O => stubCounter(4)
    );
\stubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempStubCounter_reg_n_0_[0]\,
      Q => stubCounter_OBUF(0),
      R => '0'
    );
\stubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempStubCounter_reg_n_0_[1]\,
      Q => stubCounter_OBUF(1),
      R => '0'
    );
\stubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempStubCounter_reg_n_0_[2]\,
      Q => stubCounter_OBUF(2),
      R => '0'
    );
\stubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempStubCounter_reg_n_0_[3]\,
      Q => stubCounter_OBUF(3),
      R => '0'
    );
\stubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => \tempStubCounter_reg_n_0_[4]\,
      Q => stubCounter_OBUF(4),
      R => '0'
    );
\stub_reg[EoF]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[EoF]_i_1_n_0\,
      Q => stub_to_vec(1),
      R => '0'
    );
\stub_reg[EoF]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[EoF]\,
      O => \stub_reg[EoF]_i_1_n_0\
    );
\stub_reg[layerId][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[layerId][0]_i_1_n_0\,
      Q => stub_to_vec(25),
      R => '0'
    );
\stub_reg[layerId][0]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[layerId]\(0),
      O => \stub_reg[layerId][0]_i_1_n_0\
    );
\stub_reg[layerId][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[layerId][1]_i_1_n_0\,
      Q => stub_to_vec(26),
      R => '0'
    );
\stub_reg[layerId][1]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[layerId]\(1),
      O => \stub_reg[layerId][1]_i_1_n_0\
    );
\stub_reg[layerId][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[layerId][2]_i_1_n_0\,
      Q => stub_to_vec(27),
      R => '0'
    );
\stub_reg[layerId][2]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[layerId]\(2),
      O => \stub_reg[layerId][2]_i_1_n_0\
    );
\stub_reg[phi][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][0]_i_1_n_0\,
      Q => stub_to_vec(12),
      R => '0'
    );
\stub_reg[phi][0]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(0),
      O => \stub_reg[phi][0]_i_1_n_0\
    );
\stub_reg[phi][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][10]_i_1_n_0\,
      Q => stub_to_vec(22),
      R => '0'
    );
\stub_reg[phi][10]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(10),
      O => \stub_reg[phi][10]_i_1_n_0\
    );
\stub_reg[phi][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][11]_i_1_n_0\,
      Q => stub_to_vec(23),
      R => '0'
    );
\stub_reg[phi][11]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(11),
      O => \stub_reg[phi][11]_i_1_n_0\
    );
\stub_reg[phi][12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][12]_i_1_n_0\,
      Q => stub_to_vec(24),
      R => '0'
    );
\stub_reg[phi][12]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(12),
      O => \stub_reg[phi][12]_i_1_n_0\
    );
\stub_reg[phi][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][1]_i_1_n_0\,
      Q => stub_to_vec(13),
      R => '0'
    );
\stub_reg[phi][1]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(1),
      O => \stub_reg[phi][1]_i_1_n_0\
    );
\stub_reg[phi][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][2]_i_1_n_0\,
      Q => stub_to_vec(14),
      R => '0'
    );
\stub_reg[phi][2]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(2),
      O => \stub_reg[phi][2]_i_1_n_0\
    );
\stub_reg[phi][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][3]_i_1_n_0\,
      Q => stub_to_vec(15),
      R => '0'
    );
\stub_reg[phi][3]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(3),
      O => \stub_reg[phi][3]_i_1_n_0\
    );
\stub_reg[phi][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][4]_i_1_n_0\,
      Q => stub_to_vec(16),
      R => '0'
    );
\stub_reg[phi][4]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(4),
      O => \stub_reg[phi][4]_i_1_n_0\
    );
\stub_reg[phi][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][5]_i_1_n_0\,
      Q => stub_to_vec(17),
      R => '0'
    );
\stub_reg[phi][5]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(5),
      O => \stub_reg[phi][5]_i_1_n_0\
    );
\stub_reg[phi][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][6]_i_1_n_0\,
      Q => stub_to_vec(18),
      R => '0'
    );
\stub_reg[phi][6]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(6),
      O => \stub_reg[phi][6]_i_1_n_0\
    );
\stub_reg[phi][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][7]_i_1_n_0\,
      Q => stub_to_vec(19),
      R => '0'
    );
\stub_reg[phi][7]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(7),
      O => \stub_reg[phi][7]_i_1_n_0\
    );
\stub_reg[phi][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][8]_i_1_n_0\,
      Q => stub_to_vec(20),
      R => '0'
    );
\stub_reg[phi][8]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(8),
      O => \stub_reg[phi][8]_i_1_n_0\
    );
\stub_reg[phi][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[phi][9]_i_1_n_0\,
      Q => stub_to_vec(21),
      R => '0'
    );
\stub_reg[phi][9]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[phi]\(9),
      O => \stub_reg[phi][9]_i_1_n_0\
    );
\stub_reg[r][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][0]_i_1_n_0\,
      Q => stub_to_vec(2),
      R => '0'
    );
\stub_reg[r][0]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(0),
      O => \stub_reg[r][0]_i_1_n_0\
    );
\stub_reg[r][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][1]_i_1_n_0\,
      Q => stub_to_vec(3),
      R => '0'
    );
\stub_reg[r][1]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(1),
      O => \stub_reg[r][1]_i_1_n_0\
    );
\stub_reg[r][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][2]_i_1_n_0\,
      Q => stub_to_vec(4),
      R => '0'
    );
\stub_reg[r][2]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(2),
      O => \stub_reg[r][2]_i_1_n_0\
    );
\stub_reg[r][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][3]_i_1_n_0\,
      Q => stub_to_vec(5),
      R => '0'
    );
\stub_reg[r][3]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(3),
      O => \stub_reg[r][3]_i_1_n_0\
    );
\stub_reg[r][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][4]_i_1_n_0\,
      Q => stub_to_vec(6),
      R => '0'
    );
\stub_reg[r][4]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(4),
      O => \stub_reg[r][4]_i_1_n_0\
    );
\stub_reg[r][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][5]_i_1_n_0\,
      Q => stub_to_vec(7),
      R => '0'
    );
\stub_reg[r][5]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(5),
      O => \stub_reg[r][5]_i_1_n_0\
    );
\stub_reg[r][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][6]_i_1_n_0\,
      Q => stub_to_vec(8),
      R => '0'
    );
\stub_reg[r][6]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(6),
      O => \stub_reg[r][6]_i_1_n_0\
    );
\stub_reg[r][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][7]_i_1_n_0\,
      Q => stub_to_vec(9),
      R => '0'
    );
\stub_reg[r][7]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(7),
      O => \stub_reg[r][7]_i_1_n_0\
    );
\stub_reg[r][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][8]_i_1_n_0\,
      Q => stub_to_vec(10),
      R => '0'
    );
\stub_reg[r][8]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(8),
      O => \stub_reg[r][8]_i_1_n_0\
    );
\stub_reg[r][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[r][9]_i_1_n_0\,
      Q => stub_to_vec(11),
      R => '0'
    );
\stub_reg[r][9]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[r]\(9),
      O => \stub_reg[r][9]_i_1_n_0\
    );
\stub_reg[valid]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \stub_reg[valid]_i_1_n_0\,
      Q => stub_to_vec(0),
      R => '0'
    );
\stub_reg[valid]_i_1\: unisim.vcomponents.IBUF
     port map (
      I => \inputStub[valid]\,
      O => \stub_reg[valid]_i_1_n_0\
    );
\tempCbin_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellAddr_reg_n_0_[0]\,
      Q => tempCbin(0),
      R => '0'
    );
\tempCbin_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellAddr_reg_n_0_[1]\,
      Q => tempCbin(1),
      R => '0'
    );
\tempCbin_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellAddr_reg_n_0_[2]\,
      Q => tempCbin(2),
      R => '0'
    );
\tempOutputRegister[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(0),
      I1 => p_12_out(0),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(0),
      I5 => p_8_out(0),
      O => \tempOutputRegister[0]_i_2_n_0\
    );
\tempOutputRegister[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(0),
      I1 => p_28_out(0),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(0),
      I5 => p_24_out(0),
      O => \tempOutputRegister[0]_i_3_n_0\
    );
\tempOutputRegister[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(10),
      I1 => p_12_out(10),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(10),
      I5 => p_8_out(10),
      O => \tempOutputRegister[10]_i_2_n_0\
    );
\tempOutputRegister[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(10),
      I1 => p_28_out(10),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(10),
      I5 => p_24_out(10),
      O => \tempOutputRegister[10]_i_3_n_0\
    );
\tempOutputRegister[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(11),
      I1 => p_12_out(11),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(11),
      I5 => p_8_out(11),
      O => \tempOutputRegister[11]_i_2_n_0\
    );
\tempOutputRegister[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(11),
      I1 => p_28_out(11),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(11),
      I5 => p_24_out(11),
      O => \tempOutputRegister[11]_i_3_n_0\
    );
\tempOutputRegister[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(12),
      I1 => p_12_out(12),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(12),
      I5 => p_8_out(12),
      O => \tempOutputRegister[12]_i_2_n_0\
    );
\tempOutputRegister[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(12),
      I1 => p_28_out(12),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(12),
      I5 => p_24_out(12),
      O => \tempOutputRegister[12]_i_3_n_0\
    );
\tempOutputRegister[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(13),
      I1 => p_12_out(13),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(13),
      I5 => p_8_out(13),
      O => \tempOutputRegister[13]_i_2_n_0\
    );
\tempOutputRegister[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(13),
      I1 => p_28_out(13),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(13),
      I5 => p_24_out(13),
      O => \tempOutputRegister[13]_i_3_n_0\
    );
\tempOutputRegister[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(14),
      I1 => p_12_out(14),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(14),
      I5 => p_8_out(14),
      O => \tempOutputRegister[14]_i_2_n_0\
    );
\tempOutputRegister[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(14),
      I1 => p_28_out(14),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(14),
      I5 => p_24_out(14),
      O => \tempOutputRegister[14]_i_3_n_0\
    );
\tempOutputRegister[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(15),
      I1 => p_12_out(15),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(15),
      I5 => p_8_out(15),
      O => \tempOutputRegister[15]_i_2_n_0\
    );
\tempOutputRegister[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(15),
      I1 => p_28_out(15),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(15),
      I5 => p_24_out(15),
      O => \tempOutputRegister[15]_i_3_n_0\
    );
\tempOutputRegister[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(16),
      I1 => p_12_out(16),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(16),
      I5 => p_8_out(16),
      O => \tempOutputRegister[16]_i_2_n_0\
    );
\tempOutputRegister[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(16),
      I1 => p_28_out(16),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(16),
      I5 => p_24_out(16),
      O => \tempOutputRegister[16]_i_3_n_0\
    );
\tempOutputRegister[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(17),
      I1 => p_12_out(17),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(17),
      I5 => p_8_out(17),
      O => \tempOutputRegister[17]_i_2_n_0\
    );
\tempOutputRegister[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(17),
      I1 => p_28_out(17),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(17),
      I5 => p_24_out(17),
      O => \tempOutputRegister[17]_i_3_n_0\
    );
\tempOutputRegister[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(18),
      I1 => p_12_out(18),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(18),
      I5 => p_8_out(18),
      O => \tempOutputRegister[18]_i_2_n_0\
    );
\tempOutputRegister[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(18),
      I1 => p_28_out(18),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(18),
      I5 => p_24_out(18),
      O => \tempOutputRegister[18]_i_3_n_0\
    );
\tempOutputRegister[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(19),
      I1 => p_12_out(19),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(19),
      I5 => p_8_out(19),
      O => \tempOutputRegister[19]_i_2_n_0\
    );
\tempOutputRegister[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(19),
      I1 => p_28_out(19),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(19),
      I5 => p_24_out(19),
      O => \tempOutputRegister[19]_i_3_n_0\
    );
\tempOutputRegister[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(1),
      I1 => p_12_out(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(1),
      I5 => p_8_out(1),
      O => \tempOutputRegister[1]_i_2_n_0\
    );
\tempOutputRegister[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(1),
      I1 => p_28_out(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(1),
      I5 => p_24_out(1),
      O => \tempOutputRegister[1]_i_3_n_0\
    );
\tempOutputRegister[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(20),
      I1 => p_12_out(20),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(20),
      I5 => p_8_out(20),
      O => \tempOutputRegister[20]_i_2_n_0\
    );
\tempOutputRegister[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(20),
      I1 => p_28_out(20),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(20),
      I5 => p_24_out(20),
      O => \tempOutputRegister[20]_i_3_n_0\
    );
\tempOutputRegister[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(21),
      I1 => p_12_out(21),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(21),
      I5 => p_8_out(21),
      O => \tempOutputRegister[21]_i_2_n_0\
    );
\tempOutputRegister[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(21),
      I1 => p_28_out(21),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(21),
      I5 => p_24_out(21),
      O => \tempOutputRegister[21]_i_3_n_0\
    );
\tempOutputRegister[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(22),
      I1 => p_12_out(22),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(22),
      I5 => p_8_out(22),
      O => \tempOutputRegister[22]_i_2_n_0\
    );
\tempOutputRegister[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(22),
      I1 => p_28_out(22),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(22),
      I5 => p_24_out(22),
      O => \tempOutputRegister[22]_i_3_n_0\
    );
\tempOutputRegister[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(23),
      I1 => p_12_out(23),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(23),
      I5 => p_8_out(23),
      O => \tempOutputRegister[23]_i_2_n_0\
    );
\tempOutputRegister[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(23),
      I1 => p_28_out(23),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(23),
      I5 => p_24_out(23),
      O => \tempOutputRegister[23]_i_3_n_0\
    );
\tempOutputRegister[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(24),
      I1 => p_12_out(24),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(24),
      I5 => p_8_out(24),
      O => \tempOutputRegister[24]_i_2_n_0\
    );
\tempOutputRegister[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(24),
      I1 => p_28_out(24),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(24),
      I5 => p_24_out(24),
      O => \tempOutputRegister[24]_i_3_n_0\
    );
\tempOutputRegister[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(25),
      I1 => p_12_out(25),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(25),
      I5 => p_8_out(25),
      O => \tempOutputRegister[25]_i_2_n_0\
    );
\tempOutputRegister[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(25),
      I1 => p_28_out(25),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(25),
      I5 => p_24_out(25),
      O => \tempOutputRegister[25]_i_3_n_0\
    );
\tempOutputRegister[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(26),
      I1 => p_12_out(26),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(26),
      I5 => p_8_out(26),
      O => \tempOutputRegister[26]_i_2_n_0\
    );
\tempOutputRegister[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(26),
      I1 => p_28_out(26),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(26),
      I5 => p_24_out(26),
      O => \tempOutputRegister[26]_i_3_n_0\
    );
\tempOutputRegister[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(27),
      I1 => p_12_out(27),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(27),
      I5 => p_8_out(27),
      O => \tempOutputRegister[27]_i_2_n_0\
    );
\tempOutputRegister[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(27),
      I1 => p_28_out(27),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(27),
      I5 => p_24_out(27),
      O => \tempOutputRegister[27]_i_3_n_0\
    );
\tempOutputRegister[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(28),
      I1 => p_12_out(28),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(28),
      I5 => p_8_out(28),
      O => \tempOutputRegister[28]_i_2_n_0\
    );
\tempOutputRegister[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(28),
      I1 => p_28_out(28),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(28),
      I5 => p_24_out(28),
      O => \tempOutputRegister[28]_i_3_n_0\
    );
\tempOutputRegister[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(29),
      I1 => p_12_out(29),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(29),
      I5 => p_8_out(29),
      O => \tempOutputRegister[29]_i_2_n_0\
    );
\tempOutputRegister[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(29),
      I1 => p_28_out(29),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(29),
      I5 => p_24_out(29),
      O => \tempOutputRegister[29]_i_3_n_0\
    );
\tempOutputRegister[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(2),
      I1 => p_12_out(2),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(2),
      I5 => p_8_out(2),
      O => \tempOutputRegister[2]_i_2_n_0\
    );
\tempOutputRegister[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(2),
      I1 => p_28_out(2),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(2),
      I5 => p_24_out(2),
      O => \tempOutputRegister[2]_i_3_n_0\
    );
\tempOutputRegister[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(30),
      I1 => p_12_out(30),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(30),
      I5 => p_8_out(30),
      O => \tempOutputRegister[30]_i_2_n_0\
    );
\tempOutputRegister[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(30),
      I1 => p_28_out(30),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(30),
      I5 => p_24_out(30),
      O => \tempOutputRegister[30]_i_3_n_0\
    );
\tempOutputRegister[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80A80000AAAA80A8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \tempOutputRegister[31]_i_3_n_0\,
      I2 => \tempStubCounter_reg[3]_i_1_n_0\,
      I3 => \tempStubCounter_reg_n_0_[3]\,
      I4 => \tempStubCounter_reg[4]_i_3_n_0\,
      I5 => \tempStubCounter_reg_n_0_[4]\,
      O => \tempOutputRegister[31]_i_1_n_0\
    );
\tempOutputRegister[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44D444D4D4DD44D4"
    )
        port map (
      I0 => \tempStubCounter_reg_n_0_[2]\,
      I1 => \tempStubCounter_reg[2]_i_1_n_0\,
      I2 => \tempStubCounter_reg[1]_i_1_n_0\,
      I3 => \tempStubCounter_reg_n_0_[1]\,
      I4 => \tempStubCounter_reg[0]_i_1_n_0\,
      I5 => \tempStubCounter_reg_n_0_[0]\,
      O => \tempOutputRegister[31]_i_3_n_0\
    );
\tempOutputRegister[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(31),
      I1 => p_12_out(31),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(31),
      I5 => p_8_out(31),
      O => \tempOutputRegister[31]_i_4_n_0\
    );
\tempOutputRegister[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(31),
      I1 => p_28_out(31),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(31),
      I5 => p_24_out(31),
      O => \tempOutputRegister[31]_i_5_n_0\
    );
\tempOutputRegister[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(3),
      I1 => p_12_out(3),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(3),
      I5 => p_8_out(3),
      O => \tempOutputRegister[3]_i_2_n_0\
    );
\tempOutputRegister[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(3),
      I1 => p_28_out(3),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(3),
      I5 => p_24_out(3),
      O => \tempOutputRegister[3]_i_3_n_0\
    );
\tempOutputRegister[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(4),
      I1 => p_12_out(4),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(4),
      I5 => p_8_out(4),
      O => \tempOutputRegister[4]_i_2_n_0\
    );
\tempOutputRegister[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(4),
      I1 => p_28_out(4),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(4),
      I5 => p_24_out(4),
      O => \tempOutputRegister[4]_i_3_n_0\
    );
\tempOutputRegister[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(5),
      I1 => p_12_out(5),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(5),
      I5 => p_8_out(5),
      O => \tempOutputRegister[5]_i_2_n_0\
    );
\tempOutputRegister[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(5),
      I1 => p_28_out(5),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(5),
      I5 => p_24_out(5),
      O => \tempOutputRegister[5]_i_3_n_0\
    );
\tempOutputRegister[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(6),
      I1 => p_12_out(6),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(6),
      I5 => p_8_out(6),
      O => \tempOutputRegister[6]_i_2_n_0\
    );
\tempOutputRegister[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(6),
      I1 => p_28_out(6),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(6),
      I5 => p_24_out(6),
      O => \tempOutputRegister[6]_i_3_n_0\
    );
\tempOutputRegister[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(7),
      I1 => p_12_out(7),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(7),
      I5 => p_8_out(7),
      O => \tempOutputRegister[7]_i_2_n_0\
    );
\tempOutputRegister[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(7),
      I1 => p_28_out(7),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(7),
      I5 => p_24_out(7),
      O => \tempOutputRegister[7]_i_3_n_0\
    );
\tempOutputRegister[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(8),
      I1 => p_12_out(8),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(8),
      I5 => p_8_out(8),
      O => \tempOutputRegister[8]_i_2_n_0\
    );
\tempOutputRegister[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(8),
      I1 => p_28_out(8),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(8),
      I5 => p_24_out(8),
      O => \tempOutputRegister[8]_i_3_n_0\
    );
\tempOutputRegister[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_4_out(9),
      I1 => p_12_out(9),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_0_out(9),
      I5 => p_8_out(9),
      O => \tempOutputRegister[9]_i_2_n_0\
    );
\tempOutputRegister[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_20_out(9),
      I1 => p_28_out(9),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_16_out(9),
      I5 => p_24_out(9),
      O => \tempOutputRegister[9]_i_3_n_0\
    );
\tempOutputRegister_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(0),
      Q => \tempOutputRegister_reg_n_0_[0]\,
      R => '0'
    );
\tempOutputRegister_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[0]_i_2_n_0\,
      I1 => \tempOutputRegister[0]_i_3_n_0\,
      O => \CellOutputRegister[7]\(0),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(10),
      Q => \tempOutputRegister_reg_n_0_[10]\,
      R => '0'
    );
\tempOutputRegister_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[10]_i_2_n_0\,
      I1 => \tempOutputRegister[10]_i_3_n_0\,
      O => \CellOutputRegister[7]\(10),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(11),
      Q => \tempOutputRegister_reg_n_0_[11]\,
      R => '0'
    );
\tempOutputRegister_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[11]_i_2_n_0\,
      I1 => \tempOutputRegister[11]_i_3_n_0\,
      O => \CellOutputRegister[7]\(11),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(12),
      Q => \tempOutputRegister_reg_n_0_[12]\,
      R => '0'
    );
\tempOutputRegister_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[12]_i_2_n_0\,
      I1 => \tempOutputRegister[12]_i_3_n_0\,
      O => \CellOutputRegister[7]\(12),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(13),
      Q => \tempOutputRegister_reg_n_0_[13]\,
      R => '0'
    );
\tempOutputRegister_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[13]_i_2_n_0\,
      I1 => \tempOutputRegister[13]_i_3_n_0\,
      O => \CellOutputRegister[7]\(13),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(14),
      Q => \tempOutputRegister_reg_n_0_[14]\,
      R => '0'
    );
\tempOutputRegister_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[14]_i_2_n_0\,
      I1 => \tempOutputRegister[14]_i_3_n_0\,
      O => \CellOutputRegister[7]\(14),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(15),
      Q => \tempOutputRegister_reg_n_0_[15]\,
      R => '0'
    );
\tempOutputRegister_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[15]_i_2_n_0\,
      I1 => \tempOutputRegister[15]_i_3_n_0\,
      O => \CellOutputRegister[7]\(15),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(16),
      Q => \tempOutputRegister_reg_n_0_[16]\,
      R => '0'
    );
\tempOutputRegister_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[16]_i_2_n_0\,
      I1 => \tempOutputRegister[16]_i_3_n_0\,
      O => \CellOutputRegister[7]\(16),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(17),
      Q => \tempOutputRegister_reg_n_0_[17]\,
      R => '0'
    );
\tempOutputRegister_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[17]_i_2_n_0\,
      I1 => \tempOutputRegister[17]_i_3_n_0\,
      O => \CellOutputRegister[7]\(17),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(18),
      Q => \tempOutputRegister_reg_n_0_[18]\,
      R => '0'
    );
\tempOutputRegister_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[18]_i_2_n_0\,
      I1 => \tempOutputRegister[18]_i_3_n_0\,
      O => \CellOutputRegister[7]\(18),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(19),
      Q => \tempOutputRegister_reg_n_0_[19]\,
      R => '0'
    );
\tempOutputRegister_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[19]_i_2_n_0\,
      I1 => \tempOutputRegister[19]_i_3_n_0\,
      O => \CellOutputRegister[7]\(19),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(1),
      Q => \tempOutputRegister_reg_n_0_[1]\,
      R => '0'
    );
\tempOutputRegister_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[1]_i_2_n_0\,
      I1 => \tempOutputRegister[1]_i_3_n_0\,
      O => \CellOutputRegister[7]\(1),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(20),
      Q => \tempOutputRegister_reg_n_0_[20]\,
      R => '0'
    );
\tempOutputRegister_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[20]_i_2_n_0\,
      I1 => \tempOutputRegister[20]_i_3_n_0\,
      O => \CellOutputRegister[7]\(20),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(21),
      Q => \tempOutputRegister_reg_n_0_[21]\,
      R => '0'
    );
\tempOutputRegister_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[21]_i_2_n_0\,
      I1 => \tempOutputRegister[21]_i_3_n_0\,
      O => \CellOutputRegister[7]\(21),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(22),
      Q => \tempOutputRegister_reg_n_0_[22]\,
      R => '0'
    );
\tempOutputRegister_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[22]_i_2_n_0\,
      I1 => \tempOutputRegister[22]_i_3_n_0\,
      O => \CellOutputRegister[7]\(22),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(23),
      Q => \tempOutputRegister_reg_n_0_[23]\,
      R => '0'
    );
\tempOutputRegister_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[23]_i_2_n_0\,
      I1 => \tempOutputRegister[23]_i_3_n_0\,
      O => \CellOutputRegister[7]\(23),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(24),
      Q => \tempOutputRegister_reg_n_0_[24]\,
      R => '0'
    );
\tempOutputRegister_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[24]_i_2_n_0\,
      I1 => \tempOutputRegister[24]_i_3_n_0\,
      O => \CellOutputRegister[7]\(24),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(25),
      Q => \tempOutputRegister_reg_n_0_[25]\,
      R => '0'
    );
\tempOutputRegister_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[25]_i_2_n_0\,
      I1 => \tempOutputRegister[25]_i_3_n_0\,
      O => \CellOutputRegister[7]\(25),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(26),
      Q => \tempOutputRegister_reg_n_0_[26]\,
      R => '0'
    );
\tempOutputRegister_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[26]_i_2_n_0\,
      I1 => \tempOutputRegister[26]_i_3_n_0\,
      O => \CellOutputRegister[7]\(26),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(27),
      Q => \tempOutputRegister_reg_n_0_[27]\,
      R => '0'
    );
\tempOutputRegister_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[27]_i_2_n_0\,
      I1 => \tempOutputRegister[27]_i_3_n_0\,
      O => \CellOutputRegister[7]\(27),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(28),
      Q => \tempOutputRegister_reg_n_0_[28]\,
      R => '0'
    );
\tempOutputRegister_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[28]_i_2_n_0\,
      I1 => \tempOutputRegister[28]_i_3_n_0\,
      O => \CellOutputRegister[7]\(28),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(29),
      Q => \tempOutputRegister_reg_n_0_[29]\,
      R => '0'
    );
\tempOutputRegister_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[29]_i_2_n_0\,
      I1 => \tempOutputRegister[29]_i_3_n_0\,
      O => \CellOutputRegister[7]\(29),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(2),
      Q => \tempOutputRegister_reg_n_0_[2]\,
      R => '0'
    );
\tempOutputRegister_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[2]_i_2_n_0\,
      I1 => \tempOutputRegister[2]_i_3_n_0\,
      O => \CellOutputRegister[7]\(2),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(30),
      Q => \tempOutputRegister_reg_n_0_[30]\,
      R => '0'
    );
\tempOutputRegister_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[30]_i_2_n_0\,
      I1 => \tempOutputRegister[30]_i_3_n_0\,
      O => \CellOutputRegister[7]\(30),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(31),
      Q => \tempOutputRegister_reg_n_0_[31]\,
      R => '0'
    );
\tempOutputRegister_reg[31]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[31]_i_4_n_0\,
      I1 => \tempOutputRegister[31]_i_5_n_0\,
      O => \CellOutputRegister[7]\(31),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(3),
      Q => \tempOutputRegister_reg_n_0_[3]\,
      R => '0'
    );
\tempOutputRegister_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[3]_i_2_n_0\,
      I1 => \tempOutputRegister[3]_i_3_n_0\,
      O => \CellOutputRegister[7]\(3),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(4),
      Q => \tempOutputRegister_reg_n_0_[4]\,
      R => '0'
    );
\tempOutputRegister_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[4]_i_2_n_0\,
      I1 => \tempOutputRegister[4]_i_3_n_0\,
      O => \CellOutputRegister[7]\(4),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(5),
      Q => \tempOutputRegister_reg_n_0_[5]\,
      R => '0'
    );
\tempOutputRegister_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[5]_i_2_n_0\,
      I1 => \tempOutputRegister[5]_i_3_n_0\,
      O => \CellOutputRegister[7]\(5),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(6),
      Q => \tempOutputRegister_reg_n_0_[6]\,
      R => '0'
    );
\tempOutputRegister_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[6]_i_2_n_0\,
      I1 => \tempOutputRegister[6]_i_3_n_0\,
      O => \CellOutputRegister[7]\(6),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(7),
      Q => \tempOutputRegister_reg_n_0_[7]\,
      R => '0'
    );
\tempOutputRegister_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[7]_i_2_n_0\,
      I1 => \tempOutputRegister[7]_i_3_n_0\,
      O => \CellOutputRegister[7]\(7),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(8),
      Q => \tempOutputRegister_reg_n_0_[8]\,
      R => '0'
    );
\tempOutputRegister_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[8]_i_2_n_0\,
      I1 => \tempOutputRegister[8]_i_3_n_0\,
      O => \CellOutputRegister[7]\(8),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempOutputRegister_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \tempOutputRegister[31]_i_1_n_0\,
      D => \CellOutputRegister[7]\(9),
      Q => \tempOutputRegister_reg_n_0_[9]\,
      R => '0'
    );
\tempOutputRegister_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempOutputRegister[9]_i_2_n_0\,
      I1 => \tempOutputRegister[9]_i_3_n_0\,
      O => \CellOutputRegister[7]\(9),
      S => \CellAddr_reg_n_0_[2]\
    );
\tempStubCounter[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_5_out(0),
      I1 => p_13_out(0),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_1_out(0),
      I5 => p_9_out(0),
      O => \tempStubCounter[0]_i_2_n_0\
    );
\tempStubCounter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_21_out(0),
      I1 => p_29_out(0),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_17_out(0),
      I5 => p_25_out(0),
      O => \tempStubCounter[0]_i_3_n_0\
    );
\tempStubCounter[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_5_out(1),
      I1 => p_13_out(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_1_out(1),
      I5 => p_9_out(1),
      O => \tempStubCounter[1]_i_2_n_0\
    );
\tempStubCounter[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_21_out(1),
      I1 => p_29_out(1),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_17_out(1),
      I5 => p_25_out(1),
      O => \tempStubCounter[1]_i_3_n_0\
    );
\tempStubCounter[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_5_out(2),
      I1 => p_13_out(2),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_1_out(2),
      I5 => p_9_out(2),
      O => \tempStubCounter[2]_i_2_n_0\
    );
\tempStubCounter[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_21_out(2),
      I1 => p_29_out(2),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_17_out(2),
      I5 => p_25_out(2),
      O => \tempStubCounter[2]_i_3_n_0\
    );
\tempStubCounter[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_5_out(3),
      I1 => p_13_out(3),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_1_out(3),
      I5 => p_9_out(3),
      O => \tempStubCounter[3]_i_2_n_0\
    );
\tempStubCounter[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_21_out(3),
      I1 => p_29_out(3),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_17_out(3),
      I5 => p_25_out(3),
      O => \tempStubCounter[3]_i_3_n_0\
    );
\tempStubCounter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \tempOutputRegister[31]_i_1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[4]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => \tempOutputRegister[31]_i_1_n_0\,
      O => tempTrackCand
    );
\tempStubCounter[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_5_out(4),
      I1 => p_13_out(4),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_1_out(4),
      I5 => p_9_out(4),
      O => \tempStubCounter[4]_i_4_n_0\
    );
\tempStubCounter[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => p_21_out(4),
      I1 => p_29_out(4),
      I2 => \CellAddr_reg_n_0_[0]\,
      I3 => \CellAddr_reg_n_0_[1]\,
      I4 => p_17_out(4),
      I5 => p_25_out(4),
      O => \tempStubCounter[4]_i_5_n_0\
    );
\tempStubCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => \tempStubCounter_reg[0]_i_1_n_0\,
      Q => \tempStubCounter_reg_n_0_[0]\,
      R => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempStubCounter[0]_i_2_n_0\,
      I1 => \tempStubCounter[0]_i_3_n_0\,
      O => \tempStubCounter_reg[0]_i_1_n_0\,
      S => \CellAddr_reg_n_0_[2]\
    );
\tempStubCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => \tempStubCounter_reg[1]_i_1_n_0\,
      Q => \tempStubCounter_reg_n_0_[1]\,
      R => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempStubCounter[1]_i_2_n_0\,
      I1 => \tempStubCounter[1]_i_3_n_0\,
      O => \tempStubCounter_reg[1]_i_1_n_0\,
      S => \CellAddr_reg_n_0_[2]\
    );
\tempStubCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => \tempStubCounter_reg[2]_i_1_n_0\,
      Q => \tempStubCounter_reg_n_0_[2]\,
      R => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempStubCounter[2]_i_2_n_0\,
      I1 => \tempStubCounter[2]_i_3_n_0\,
      O => \tempStubCounter_reg[2]_i_1_n_0\,
      S => \CellAddr_reg_n_0_[2]\
    );
\tempStubCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => \tempStubCounter_reg[3]_i_1_n_0\,
      Q => \tempStubCounter_reg_n_0_[3]\,
      R => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempStubCounter[3]_i_2_n_0\,
      I1 => \tempStubCounter[3]_i_3_n_0\,
      O => \tempStubCounter_reg[3]_i_1_n_0\,
      S => \CellAddr_reg_n_0_[2]\
    );
\tempStubCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => \tempStubCounter_reg[4]_i_3_n_0\,
      Q => \tempStubCounter_reg_n_0_[4]\,
      R => \tempStubCounter[4]_i_1_n_0\
    );
\tempStubCounter_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \tempStubCounter[4]_i_4_n_0\,
      I1 => \tempStubCounter[4]_i_5_n_0\,
      O => \tempStubCounter_reg[4]_i_3_n_0\,
      S => \CellAddr_reg_n_0_[2]\
    );
tempTrackCand_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DD4D4D44"
    )
        port map (
      I0 => \tempStubCounter_reg_n_0_[4]\,
      I1 => \tempStubCounter_reg[4]_i_3_n_0\,
      I2 => \tempStubCounter_reg_n_0_[3]\,
      I3 => \tempStubCounter_reg[3]_i_1_n_0\,
      I4 => \tempOutputRegister[31]_i_3_n_0\,
      O => tempTrackCand_i_1_n_0
    );
tempTrackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => tempTrackCand,
      D => tempTrackCand_i_1_n_0,
      Q => tempTrackCand_reg_n_0,
      R => \tempStubCounter[4]_i_1_n_0\
    );
trackCand_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => trackCand_OBUF,
      O => trackCand
    );
trackCand_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \FSM_onehot_state_reg_n_0_[4]\,
      D => tempTrackCand_reg_n_0,
      Q => trackCand_OBUF,
      R => '0'
    );
valid0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => vec(0),
      Q => valid0,
      R => '0'
    );
valid1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => valid0,
      Q => valid1,
      R => '0'
    );
\vec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => to_stub_valid(0),
      Q => \vec_reg_n_0_[0]\,
      R => '0'
    );
\vec_reg[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_0_5_n_1,
      Q => vec(0),
      R => '0'
    );
\vec_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_5,
      Q => SHIFT_RIGHT(7),
      R => '0'
    );
\vec_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_4,
      Q => SHIFT_RIGHT(8),
      R => '0'
    );
\vec_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_1,
      Q => vec(12),
      R => '0'
    );
\vec_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_0,
      Q => vec(13),
      R => '0'
    );
\vec_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_3,
      Q => vec(14),
      R => '0'
    );
\vec_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_2,
      Q => vec(15),
      R => '0'
    );
\vec_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_5,
      Q => vec(16),
      R => '0'
    );
\vec_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_12_17_n_4,
      Q => vec(17),
      R => '0'
    );
\vec_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_1,
      Q => vec(18),
      R => '0'
    );
\vec_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_0,
      Q => vec(19),
      R => '0'
    );
\vec_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_3,
      Q => vec(20),
      R => '0'
    );
\vec_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_2,
      Q => vec(21),
      R => '0'
    );
\vec_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_5,
      Q => vec(22),
      R => '0'
    );
\vec_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_18_23_n_4,
      Q => vec(23),
      R => '0'
    );
\vec_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_24_24_n_1,
      Q => vec(24),
      R => '0'
    );
\vec_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => to_stub_valid(25),
      Q => \vec_reg_n_0_[25]\,
      R => '0'
    );
\vec_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => to_stub_valid(26),
      Q => \vec_reg_n_0_[26]\,
      R => '0'
    );
\vec_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => to_stub_valid(27),
      Q => \vec_reg_n_0_[27]\,
      R => '0'
    );
\vec_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_0_5_n_2,
      Q => SHIFT_RIGHT(0),
      R => '0'
    );
\vec_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_0_5_n_5,
      Q => SHIFT_RIGHT(1),
      R => '0'
    );
\vec_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_0_5_n_4,
      Q => SHIFT_RIGHT(2),
      R => '0'
    );
\vec_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_1,
      Q => SHIFT_RIGHT(3),
      R => '0'
    );
\vec_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_0,
      Q => SHIFT_RIGHT(4),
      R => '0'
    );
\vec_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_3,
      Q => SHIFT_RIGHT(5),
      R => '0'
    );
\vec_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => StubBuffer_reg_0_31_6_11_n_2,
      Q => SHIFT_RIGHT(6),
      R => '0'
    );
\writeAddr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => writeAddr(0),
      O => plusOp(0)
    );
\writeAddr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => writeAddr(0),
      I1 => writeAddr(1),
      O => plusOp(1)
    );
\writeAddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => writeAddr(0),
      I1 => writeAddr(1),
      I2 => writeAddr(2),
      O => plusOp(2)
    );
\writeAddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => writeAddr(1),
      I1 => writeAddr(0),
      I2 => writeAddr(2),
      I3 => writeAddr(3),
      O => plusOp(3)
    );
\writeAddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => CellEnabler,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \writeAddr[4]_i_1_n_0\
    );
\writeAddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFAFAFAFAFAFAF8"
    )
        port map (
      I0 => stub_to_vec(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => CellEnabler,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \writeAddr[4]_i_2_n_0\
    );
\writeAddr[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => writeAddr(2),
      I1 => writeAddr(0),
      I2 => writeAddr(1),
      I3 => writeAddr(3),
      I4 => writeAddr(4),
      O => plusOp(4)
    );
\writeAddr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \writeAddr[4]_i_2_n_0\,
      D => plusOp(0),
      Q => writeAddr(0),
      R => \writeAddr[4]_i_1_n_0\
    );
\writeAddr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \writeAddr[4]_i_2_n_0\,
      D => plusOp(1),
      Q => writeAddr(1),
      R => \writeAddr[4]_i_1_n_0\
    );
\writeAddr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \writeAddr[4]_i_2_n_0\,
      D => plusOp(2),
      Q => writeAddr(2),
      R => \writeAddr[4]_i_1_n_0\
    );
\writeAddr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \writeAddr[4]_i_2_n_0\,
      D => plusOp(3),
      Q => writeAddr(3),
      R => \writeAddr[4]_i_1_n_0\
    );
\writeAddr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => \writeAddr[4]_i_2_n_0\,
      D => plusOp(4),
      Q => writeAddr(4),
      R => \writeAddr[4]_i_1_n_0\
    );
end STRUCTURE;
