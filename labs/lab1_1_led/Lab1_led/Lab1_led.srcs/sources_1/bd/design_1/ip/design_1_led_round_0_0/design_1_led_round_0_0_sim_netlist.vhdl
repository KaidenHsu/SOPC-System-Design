-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed May  6 17:35:54 2026
-- Host        : kaiden running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ryanh/fpga/sopc/Lab1_led/Lab1_led.srcs/sources_1/bd/design_1/ip/design_1_led_round_0_0/design_1_led_round_0_0_sim_netlist.vhdl
-- Design      : design_1_led_round_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_round_0_0_led_round is
  port (
    Led : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_led_round_0_0_led_round : entity is "led_round";
end design_1_led_round_0_0_led_round;

architecture STRUCTURE of design_1_led_round_0_0_led_round is
  signal \^led\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_500ms : STD_LOGIC;
  signal clk_500ms_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal delay_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \delay_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \delay_cnt0_carry__6_n_2\ : STD_LOGIC;
  signal \delay_cnt0_carry__6_n_3\ : STD_LOGIC;
  signal delay_cnt0_carry_n_0 : STD_LOGIC;
  signal delay_cnt0_carry_n_1 : STD_LOGIC;
  signal delay_cnt0_carry_n_2 : STD_LOGIC;
  signal delay_cnt0_carry_n_3 : STD_LOGIC;
  signal \delay_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \delay_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal delay_cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_delay_cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_delay_cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  Led(7 downto 0) <= \^led\(7 downto 0);
\Led_r_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk_500ms,
      CE => '1',
      D => \^led\(1),
      PRE => rst,
      Q => \^led\(0)
    );
\Led_r_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(2),
      Q => \^led\(1)
    );
\Led_r_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(3),
      Q => \^led\(2)
    );
\Led_r_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(4),
      Q => \^led\(3)
    );
\Led_r_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(5),
      Q => \^led\(4)
    );
\Led_r_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(6),
      Q => \^led\(5)
    );
\Led_r_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(7),
      Q => \^led\(6)
    );
\Led_r_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_500ms,
      CE => '1',
      CLR => rst,
      D => \^led\(0),
      Q => \^led\(7)
    );
clk_500ms_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => clk_500ms,
      O => clk_500ms_i_1_n_0
    );
clk_500ms_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => clk_500ms_i_1_n_0,
      Q => clk_500ms
    );
delay_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => delay_cnt0_carry_n_0,
      CO(2) => delay_cnt0_carry_n_1,
      CO(1) => delay_cnt0_carry_n_2,
      CO(0) => delay_cnt0_carry_n_3,
      CYINIT => delay_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => delay_cnt(4 downto 1)
    );
\delay_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => delay_cnt0_carry_n_0,
      CO(3) => \delay_cnt0_carry__0_n_0\,
      CO(2) => \delay_cnt0_carry__0_n_1\,
      CO(1) => \delay_cnt0_carry__0_n_2\,
      CO(0) => \delay_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => delay_cnt(8 downto 5)
    );
\delay_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__0_n_0\,
      CO(3) => \delay_cnt0_carry__1_n_0\,
      CO(2) => \delay_cnt0_carry__1_n_1\,
      CO(1) => \delay_cnt0_carry__1_n_2\,
      CO(0) => \delay_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => delay_cnt(12 downto 9)
    );
\delay_cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__1_n_0\,
      CO(3) => \delay_cnt0_carry__2_n_0\,
      CO(2) => \delay_cnt0_carry__2_n_1\,
      CO(1) => \delay_cnt0_carry__2_n_2\,
      CO(0) => \delay_cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => delay_cnt(16 downto 13)
    );
\delay_cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__2_n_0\,
      CO(3) => \delay_cnt0_carry__3_n_0\,
      CO(2) => \delay_cnt0_carry__3_n_1\,
      CO(1) => \delay_cnt0_carry__3_n_2\,
      CO(0) => \delay_cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => delay_cnt(20 downto 17)
    );
\delay_cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__3_n_0\,
      CO(3) => \delay_cnt0_carry__4_n_0\,
      CO(2) => \delay_cnt0_carry__4_n_1\,
      CO(1) => \delay_cnt0_carry__4_n_2\,
      CO(0) => \delay_cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => delay_cnt(24 downto 21)
    );
\delay_cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__4_n_0\,
      CO(3) => \delay_cnt0_carry__5_n_0\,
      CO(2) => \delay_cnt0_carry__5_n_1\,
      CO(1) => \delay_cnt0_carry__5_n_2\,
      CO(0) => \delay_cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => delay_cnt(28 downto 25)
    );
\delay_cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_cnt0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_delay_cnt0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \delay_cnt0_carry__6_n_2\,
      CO(0) => \delay_cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_delay_cnt0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => delay_cnt(31 downto 29)
    );
\delay_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => delay_cnt(0),
      O => delay_cnt_0(0)
    );
\delay_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(10),
      O => delay_cnt_0(10)
    );
\delay_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(11),
      O => delay_cnt_0(11)
    );
\delay_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(12),
      O => delay_cnt_0(12)
    );
\delay_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(13),
      O => delay_cnt_0(13)
    );
\delay_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(14),
      O => delay_cnt_0(14)
    );
\delay_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(15),
      O => delay_cnt_0(15)
    );
\delay_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(16),
      O => delay_cnt_0(16)
    );
\delay_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(17),
      O => delay_cnt_0(17)
    );
\delay_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(18),
      O => delay_cnt_0(18)
    );
\delay_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(19),
      O => delay_cnt_0(19)
    );
\delay_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(1),
      O => delay_cnt_0(1)
    );
\delay_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(20),
      O => delay_cnt_0(20)
    );
\delay_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(21),
      O => delay_cnt_0(21)
    );
\delay_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(22),
      O => delay_cnt_0(22)
    );
\delay_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(23),
      O => delay_cnt_0(23)
    );
\delay_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(24),
      O => delay_cnt_0(24)
    );
\delay_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(25),
      O => delay_cnt_0(25)
    );
\delay_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(26),
      O => delay_cnt_0(26)
    );
\delay_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(27),
      O => delay_cnt_0(27)
    );
\delay_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(28),
      O => delay_cnt_0(28)
    );
\delay_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(29),
      O => delay_cnt_0(29)
    );
\delay_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(2),
      O => delay_cnt_0(2)
    );
\delay_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(30),
      O => delay_cnt_0(30)
    );
\delay_cnt[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(31),
      O => delay_cnt_0(31)
    );
\delay_cnt[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF7FF"
    )
        port map (
      I0 => delay_cnt(18),
      I1 => delay_cnt(19),
      I2 => delay_cnt(17),
      I3 => delay_cnt(16),
      I4 => \delay_cnt[31]_i_6_n_0\,
      O => \delay_cnt[31]_i_2_n_0\
    );
\delay_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => delay_cnt(26),
      I1 => delay_cnt(27),
      I2 => delay_cnt(25),
      I3 => delay_cnt(24),
      I4 => \delay_cnt[31]_i_7_n_0\,
      O => \delay_cnt[31]_i_3_n_0\
    );
\delay_cnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => delay_cnt(2),
      I1 => delay_cnt(3),
      I2 => delay_cnt(0),
      I3 => delay_cnt(1),
      I4 => \delay_cnt[31]_i_8_n_0\,
      O => \delay_cnt[31]_i_4_n_0\
    );
\delay_cnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => delay_cnt(10),
      I1 => delay_cnt(11),
      I2 => delay_cnt(8),
      I3 => delay_cnt(9),
      I4 => \delay_cnt[31]_i_9_n_0\,
      O => \delay_cnt[31]_i_5_n_0\
    );
\delay_cnt[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => delay_cnt(21),
      I1 => delay_cnt(20),
      I2 => delay_cnt(22),
      I3 => delay_cnt(23),
      O => \delay_cnt[31]_i_6_n_0\
    );
\delay_cnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => delay_cnt(29),
      I1 => delay_cnt(28),
      I2 => delay_cnt(31),
      I3 => delay_cnt(30),
      O => \delay_cnt[31]_i_7_n_0\
    );
\delay_cnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => delay_cnt(5),
      I1 => delay_cnt(4),
      I2 => delay_cnt(7),
      I3 => delay_cnt(6),
      O => \delay_cnt[31]_i_8_n_0\
    );
\delay_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => delay_cnt(13),
      I1 => delay_cnt(12),
      I2 => delay_cnt(14),
      I3 => delay_cnt(15),
      O => \delay_cnt[31]_i_9_n_0\
    );
\delay_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(3),
      O => delay_cnt_0(3)
    );
\delay_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(4),
      O => delay_cnt_0(4)
    );
\delay_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(5),
      O => delay_cnt_0(5)
    );
\delay_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(6),
      O => delay_cnt_0(6)
    );
\delay_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(7),
      O => delay_cnt_0(7)
    );
\delay_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(8),
      O => delay_cnt_0(8)
    );
\delay_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \delay_cnt[31]_i_2_n_0\,
      I1 => \delay_cnt[31]_i_3_n_0\,
      I2 => \delay_cnt[31]_i_4_n_0\,
      I3 => \delay_cnt[31]_i_5_n_0\,
      I4 => data0(9),
      O => delay_cnt_0(9)
    );
\delay_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(0),
      Q => delay_cnt(0)
    );
\delay_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(10),
      Q => delay_cnt(10)
    );
\delay_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(11),
      Q => delay_cnt(11)
    );
\delay_cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(12),
      Q => delay_cnt(12)
    );
\delay_cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(13),
      Q => delay_cnt(13)
    );
\delay_cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(14),
      Q => delay_cnt(14)
    );
\delay_cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(15),
      Q => delay_cnt(15)
    );
\delay_cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(16),
      Q => delay_cnt(16)
    );
\delay_cnt_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(17),
      Q => delay_cnt(17)
    );
\delay_cnt_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(18),
      Q => delay_cnt(18)
    );
\delay_cnt_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(19),
      Q => delay_cnt(19)
    );
\delay_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(1),
      Q => delay_cnt(1)
    );
\delay_cnt_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(20),
      Q => delay_cnt(20)
    );
\delay_cnt_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(21),
      Q => delay_cnt(21)
    );
\delay_cnt_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(22),
      Q => delay_cnt(22)
    );
\delay_cnt_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(23),
      Q => delay_cnt(23)
    );
\delay_cnt_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(24),
      Q => delay_cnt(24)
    );
\delay_cnt_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(25),
      Q => delay_cnt(25)
    );
\delay_cnt_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(26),
      Q => delay_cnt(26)
    );
\delay_cnt_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(27),
      Q => delay_cnt(27)
    );
\delay_cnt_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(28),
      Q => delay_cnt(28)
    );
\delay_cnt_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(29),
      Q => delay_cnt(29)
    );
\delay_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(2),
      Q => delay_cnt(2)
    );
\delay_cnt_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(30),
      Q => delay_cnt(30)
    );
\delay_cnt_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(31),
      Q => delay_cnt(31)
    );
\delay_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(3),
      Q => delay_cnt(3)
    );
\delay_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(4),
      Q => delay_cnt(4)
    );
\delay_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(5),
      Q => delay_cnt(5)
    );
\delay_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(6),
      Q => delay_cnt(6)
    );
\delay_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(7),
      Q => delay_cnt(7)
    );
\delay_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(8),
      Q => delay_cnt(8)
    );
\delay_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => rst,
      D => delay_cnt_0(9),
      Q => delay_cnt(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_led_round_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    Led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_led_round_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_led_round_0_0 : entity is "design_1_led_round_0_0,led_round,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_led_round_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_led_round_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_led_round_0_0 : entity is "led_round,Vivado 2018.3";
end design_1_led_round_0_0;

architecture STRUCTURE of design_1_led_round_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_led_round_0_0_led_round
     port map (
      Led(7 downto 0) => Led(7 downto 0),
      clk => clk,
      rst => rst
    );
end STRUCTURE;
