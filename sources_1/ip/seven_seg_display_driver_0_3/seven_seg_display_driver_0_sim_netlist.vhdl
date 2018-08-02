-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Thu Aug  2 11:25:48 2018
-- Host        : vivado running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/craig/vivado/uart_ctrl/uart_ctrl.srcs/sources_1/ip/seven_seg_display_driver_0_3/seven_seg_display_driver_0_sim_netlist.vhdl
-- Design      : seven_seg_display_driver_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_seg_display_driver_0_pwm is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    lum_2_sp_1 : in STD_LOGIC;
    lum : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seven_seg_display_driver_0_pwm : entity is "pwm";
end seven_seg_display_driver_0_pwm;

architecture STRUCTURE of seven_seg_display_driver_0_pwm is
  signal \an_mux[3]_i_3_n_0\ : STD_LOGIC;
  signal \an_mux[3]_i_4_n_0\ : STD_LOGIC;
  signal \an_mux[3]_i_6_n_0\ : STD_LOGIC;
  signal lum_2_sn_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \r_pwm_cntr[7]_i_2_n_0\ : STD_LOGIC;
  signal \r_pwm_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_pwm_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_pwm_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_pwm_cntr_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an_mux[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_pwm_cntr[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_pwm_cntr[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \r_pwm_cntr[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_pwm_cntr[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \r_pwm_cntr[7]_i_1\ : label is "soft_lutpair1";
begin
  lum_2_sn_1 <= lum_2_sp_1;
\an_mux[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70707F707F707F7F"
    )
        port map (
      I0 => \an_mux[3]_i_3_n_0\,
      I1 => \an_mux[3]_i_4_n_0\,
      I2 => lum_2_sn_1,
      I3 => p_0_in(3),
      I4 => lum(3),
      I5 => \an_mux[3]_i_6_n_0\,
      O => SS(0)
    );
\an_mux[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => p_0_in(3),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \an_mux[3]_i_3_n_0\
    );
\an_mux[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[3]\,
      I1 => \r_pwm_cntr_reg_n_0_[2]\,
      I2 => \r_pwm_cntr_reg_n_0_[1]\,
      O => \an_mux[3]_i_4_n_0\
    );
\an_mux[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD4D4D44DD4DDD4D"
    )
        port map (
      I0 => p_0_in(2),
      I1 => lum(2),
      I2 => p_0_in(1),
      I3 => lum(1),
      I4 => lum(0),
      I5 => p_0_in(0),
      O => \an_mux[3]_i_6_n_0\
    );
\r_pwm_cntr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[0]\,
      O => \p_0_in__0\(0)
    );
\r_pwm_cntr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[0]\,
      I1 => \r_pwm_cntr_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\r_pwm_cntr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[0]\,
      I1 => \r_pwm_cntr_reg_n_0_[1]\,
      I2 => \r_pwm_cntr_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\r_pwm_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[1]\,
      I1 => \r_pwm_cntr_reg_n_0_[0]\,
      I2 => \r_pwm_cntr_reg_n_0_[2]\,
      I3 => \r_pwm_cntr_reg_n_0_[3]\,
      O => \p_0_in__0\(3)
    );
\r_pwm_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[2]\,
      I1 => \r_pwm_cntr_reg_n_0_[0]\,
      I2 => \r_pwm_cntr_reg_n_0_[1]\,
      I3 => \r_pwm_cntr_reg_n_0_[3]\,
      I4 => p_0_in(0),
      O => \p_0_in__0\(4)
    );
\r_pwm_cntr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \r_pwm_cntr_reg_n_0_[3]\,
      I1 => \r_pwm_cntr_reg_n_0_[1]\,
      I2 => \r_pwm_cntr_reg_n_0_[0]\,
      I3 => \r_pwm_cntr_reg_n_0_[2]\,
      I4 => p_0_in(0),
      I5 => p_0_in(1),
      O => \p_0_in__0\(5)
    );
\r_pwm_cntr[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_pwm_cntr[7]_i_2_n_0\,
      I1 => p_0_in(2),
      O => \p_0_in__0\(6)
    );
\r_pwm_cntr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \r_pwm_cntr[7]_i_2_n_0\,
      I1 => p_0_in(2),
      I2 => p_0_in(3),
      O => \p_0_in__0\(7)
    );
\r_pwm_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => p_0_in(1),
      I1 => \r_pwm_cntr_reg_n_0_[3]\,
      I2 => \r_pwm_cntr_reg_n_0_[1]\,
      I3 => \r_pwm_cntr_reg_n_0_[0]\,
      I4 => \r_pwm_cntr_reg_n_0_[2]\,
      I5 => p_0_in(0),
      O => \r_pwm_cntr[7]_i_2_n_0\
    );
\r_pwm_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \r_pwm_cntr_reg_n_0_[0]\,
      R => '0'
    );
\r_pwm_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \r_pwm_cntr_reg_n_0_[1]\,
      R => '0'
    );
\r_pwm_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \r_pwm_cntr_reg_n_0_[2]\,
      R => '0'
    );
\r_pwm_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \r_pwm_cntr_reg_n_0_[3]\,
      R => '0'
    );
\r_pwm_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => p_0_in(0),
      R => '0'
    );
\r_pwm_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => p_0_in(1),
      R => '0'
    );
\r_pwm_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => p_0_in(2),
      R => '0'
    );
\r_pwm_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => p_0_in(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_seg_display_driver_0_seven_seg_display_driver is
  port (
    an_mux : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_mux : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp_mux : out STD_LOGIC;
    lum : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    dp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    disp_buf : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of seven_seg_display_driver_0_seven_seg_display_driver : entity is "seven_seg_display_driver";
end seven_seg_display_driver_0_seven_seg_display_driver;

architecture STRUCTURE of seven_seg_display_driver_0_seven_seg_display_driver is
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry_i_1__0_n_0\ : STD_LOGIC;
  signal \_carry_i_1__1_n_0\ : STD_LOGIC;
  signal \_carry_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \_carry_i_4_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \an_mux[3]_i_5_n_0\ : STD_LOGIC;
  signal dp_mux0 : STD_LOGIC;
  signal get_display_digit_return : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pwm_n_0 : STD_LOGIC;
  signal \r_refresh_cntr[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_refresh_cntr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_refresh_cntr_reg_n_0_[9]\ : STD_LOGIC;
  signal \seg_mux[0]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[1]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[2]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[3]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[4]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[5]_i_1_n_0\ : STD_LOGIC;
  signal \seg_mux[6]_i_1_n_0\ : STD_LOGIC;
  signal selector : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_refresh_cntr_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_refresh_cntr_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \an_mux[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \an_mux[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \an_mux[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \an_mux[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \seg_mux[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg_mux[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg_mux[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \seg_mux[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg_mux[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg_mux[5]_i_1\ : label is "soft_lutpair4";
begin
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \_carry_i_1__0_n_0\,
      S(2) => \_carry_i_2_n_0\,
      S(1) => \_carry_i_3_n_0\,
      S(0) => \_carry_i_4_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \_carry_i_1__1_n_0\,
      S(2) => \_carry_i_2__0_n_0\,
      S(1) => \_carry_i_3__0_n_0\,
      S(0) => \_carry_i_4__0_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \NLW__carry__1_CO_UNCONNECTED\(3),
      CO(2) => dp_mux0,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3 downto 0) => \NLW__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \_carry_i_1_n_0\,
      S(1) => \_carry_i_2__1_n_0\,
      S(0) => \_carry_i_3__1_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_1_n_0\
    );
\_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_1__0_n_0\
    );
\_carry_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_1__1_n_0\
    );
\_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_2_n_0\
    );
\_carry_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_2__0_n_0\
    );
\_carry_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_2__1_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_3_n_0\
    );
\_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_3__0_n_0\
    );
\_carry_i_3__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_3__1_n_0\
    );
\_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04020180"
    )
        port map (
      I0 => selector(0),
      I1 => selector(1),
      I2 => dp(2),
      I3 => dp(0),
      I4 => dp(1),
      O => \_carry_i_4_n_0\
    );
\_carry_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => dp(1),
      I1 => dp(0),
      I2 => dp(2),
      O => \_carry_i_4__0_n_0\
    );
\an_mux[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => selector(1),
      I1 => selector(0),
      O => p_1_in(0)
    );
\an_mux[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => selector(1),
      I1 => selector(0),
      O => p_1_in(1)
    );
\an_mux[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => selector(0),
      I1 => selector(1),
      O => p_1_in(2)
    );
\an_mux[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => selector(1),
      I1 => selector(0),
      O => p_1_in(3)
    );
\an_mux[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => lum(1),
      I1 => lum(0),
      I2 => lum(3),
      I3 => lum(2),
      O => \an_mux[3]_i_5_n_0\
    );
\an_mux_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => an_mux(0),
      S => pwm_n_0
    );
\an_mux_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => an_mux(1),
      S => pwm_n_0
    );
\an_mux_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => an_mux(2),
      S => pwm_n_0
    );
\an_mux_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => an_mux(3),
      S => pwm_n_0
    );
dp_mux_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => dp_mux0,
      Q => dp_mux,
      R => '0'
    );
pwm: entity work.seven_seg_display_driver_0_pwm
     port map (
      SS(0) => pwm_n_0,
      clk => clk,
      lum(3 downto 0) => lum(3 downto 0),
      lum_2_sp_1 => \an_mux[3]_i_5_n_0\
    );
\r_refresh_cntr[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_refresh_cntr_reg_n_0_[0]\,
      O => \r_refresh_cntr[0]_i_2_n_0\
    );
\r_refresh_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[0]_i_1_n_7\,
      Q => \r_refresh_cntr_reg_n_0_[0]\,
      R => '0'
    );
\r_refresh_cntr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_refresh_cntr_reg[0]_i_1_n_0\,
      CO(2) => \r_refresh_cntr_reg[0]_i_1_n_1\,
      CO(1) => \r_refresh_cntr_reg[0]_i_1_n_2\,
      CO(0) => \r_refresh_cntr_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_refresh_cntr_reg[0]_i_1_n_4\,
      O(2) => \r_refresh_cntr_reg[0]_i_1_n_5\,
      O(1) => \r_refresh_cntr_reg[0]_i_1_n_6\,
      O(0) => \r_refresh_cntr_reg[0]_i_1_n_7\,
      S(3) => \r_refresh_cntr_reg_n_0_[3]\,
      S(2) => \r_refresh_cntr_reg_n_0_[2]\,
      S(1) => \r_refresh_cntr_reg_n_0_[1]\,
      S(0) => \r_refresh_cntr[0]_i_2_n_0\
    );
\r_refresh_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[8]_i_1_n_5\,
      Q => \r_refresh_cntr_reg_n_0_[10]\,
      R => '0'
    );
\r_refresh_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[8]_i_1_n_4\,
      Q => \r_refresh_cntr_reg_n_0_[11]\,
      R => '0'
    );
\r_refresh_cntr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[12]_i_1_n_7\,
      Q => \r_refresh_cntr_reg_n_0_[12]\,
      R => '0'
    );
\r_refresh_cntr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_refresh_cntr_reg[8]_i_1_n_0\,
      CO(3) => \r_refresh_cntr_reg[12]_i_1_n_0\,
      CO(2) => \r_refresh_cntr_reg[12]_i_1_n_1\,
      CO(1) => \r_refresh_cntr_reg[12]_i_1_n_2\,
      CO(0) => \r_refresh_cntr_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_refresh_cntr_reg[12]_i_1_n_4\,
      O(2) => \r_refresh_cntr_reg[12]_i_1_n_5\,
      O(1) => \r_refresh_cntr_reg[12]_i_1_n_6\,
      O(0) => \r_refresh_cntr_reg[12]_i_1_n_7\,
      S(3) => \r_refresh_cntr_reg_n_0_[15]\,
      S(2) => \r_refresh_cntr_reg_n_0_[14]\,
      S(1) => \r_refresh_cntr_reg_n_0_[13]\,
      S(0) => \r_refresh_cntr_reg_n_0_[12]\
    );
\r_refresh_cntr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[12]_i_1_n_6\,
      Q => \r_refresh_cntr_reg_n_0_[13]\,
      R => '0'
    );
\r_refresh_cntr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[12]_i_1_n_5\,
      Q => \r_refresh_cntr_reg_n_0_[14]\,
      R => '0'
    );
\r_refresh_cntr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[12]_i_1_n_4\,
      Q => \r_refresh_cntr_reg_n_0_[15]\,
      R => '0'
    );
\r_refresh_cntr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[16]_i_1_n_7\,
      Q => \r_refresh_cntr_reg_n_0_[16]\,
      R => '0'
    );
\r_refresh_cntr_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_refresh_cntr_reg[12]_i_1_n_0\,
      CO(3) => \r_refresh_cntr_reg[16]_i_1_n_0\,
      CO(2) => \r_refresh_cntr_reg[16]_i_1_n_1\,
      CO(1) => \r_refresh_cntr_reg[16]_i_1_n_2\,
      CO(0) => \r_refresh_cntr_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_refresh_cntr_reg[16]_i_1_n_4\,
      O(2) => \r_refresh_cntr_reg[16]_i_1_n_5\,
      O(1) => \r_refresh_cntr_reg[16]_i_1_n_6\,
      O(0) => \r_refresh_cntr_reg[16]_i_1_n_7\,
      S(3) => selector(0),
      S(2) => \r_refresh_cntr_reg_n_0_[18]\,
      S(1) => \r_refresh_cntr_reg_n_0_[17]\,
      S(0) => \r_refresh_cntr_reg_n_0_[16]\
    );
\r_refresh_cntr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[16]_i_1_n_6\,
      Q => \r_refresh_cntr_reg_n_0_[17]\,
      R => '0'
    );
\r_refresh_cntr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[16]_i_1_n_5\,
      Q => \r_refresh_cntr_reg_n_0_[18]\,
      R => '0'
    );
\r_refresh_cntr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[16]_i_1_n_4\,
      Q => selector(0),
      R => '0'
    );
\r_refresh_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[0]_i_1_n_6\,
      Q => \r_refresh_cntr_reg_n_0_[1]\,
      R => '0'
    );
\r_refresh_cntr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[20]_i_1_n_7\,
      Q => selector(1),
      R => '0'
    );
\r_refresh_cntr_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_refresh_cntr_reg[16]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r_refresh_cntr_reg[20]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_r_refresh_cntr_reg[20]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \r_refresh_cntr_reg[20]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => selector(1)
    );
\r_refresh_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[0]_i_1_n_5\,
      Q => \r_refresh_cntr_reg_n_0_[2]\,
      R => '0'
    );
\r_refresh_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[0]_i_1_n_4\,
      Q => \r_refresh_cntr_reg_n_0_[3]\,
      R => '0'
    );
\r_refresh_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[4]_i_1_n_7\,
      Q => \r_refresh_cntr_reg_n_0_[4]\,
      R => '0'
    );
\r_refresh_cntr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_refresh_cntr_reg[0]_i_1_n_0\,
      CO(3) => \r_refresh_cntr_reg[4]_i_1_n_0\,
      CO(2) => \r_refresh_cntr_reg[4]_i_1_n_1\,
      CO(1) => \r_refresh_cntr_reg[4]_i_1_n_2\,
      CO(0) => \r_refresh_cntr_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_refresh_cntr_reg[4]_i_1_n_4\,
      O(2) => \r_refresh_cntr_reg[4]_i_1_n_5\,
      O(1) => \r_refresh_cntr_reg[4]_i_1_n_6\,
      O(0) => \r_refresh_cntr_reg[4]_i_1_n_7\,
      S(3) => \r_refresh_cntr_reg_n_0_[7]\,
      S(2) => \r_refresh_cntr_reg_n_0_[6]\,
      S(1) => \r_refresh_cntr_reg_n_0_[5]\,
      S(0) => \r_refresh_cntr_reg_n_0_[4]\
    );
\r_refresh_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[4]_i_1_n_6\,
      Q => \r_refresh_cntr_reg_n_0_[5]\,
      R => '0'
    );
\r_refresh_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[4]_i_1_n_5\,
      Q => \r_refresh_cntr_reg_n_0_[6]\,
      R => '0'
    );
\r_refresh_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[4]_i_1_n_4\,
      Q => \r_refresh_cntr_reg_n_0_[7]\,
      R => '0'
    );
\r_refresh_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[8]_i_1_n_7\,
      Q => \r_refresh_cntr_reg_n_0_[8]\,
      R => '0'
    );
\r_refresh_cntr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_refresh_cntr_reg[4]_i_1_n_0\,
      CO(3) => \r_refresh_cntr_reg[8]_i_1_n_0\,
      CO(2) => \r_refresh_cntr_reg[8]_i_1_n_1\,
      CO(1) => \r_refresh_cntr_reg[8]_i_1_n_2\,
      CO(0) => \r_refresh_cntr_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_refresh_cntr_reg[8]_i_1_n_4\,
      O(2) => \r_refresh_cntr_reg[8]_i_1_n_5\,
      O(1) => \r_refresh_cntr_reg[8]_i_1_n_6\,
      O(0) => \r_refresh_cntr_reg[8]_i_1_n_7\,
      S(3) => \r_refresh_cntr_reg_n_0_[11]\,
      S(2) => \r_refresh_cntr_reg_n_0_[10]\,
      S(1) => \r_refresh_cntr_reg_n_0_[9]\,
      S(0) => \r_refresh_cntr_reg_n_0_[8]\
    );
\r_refresh_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \r_refresh_cntr_reg[8]_i_1_n_6\,
      Q => \r_refresh_cntr_reg_n_0_[9]\,
      R => '0'
    );
\seg_mux[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4092"
    )
        port map (
      I0 => get_display_digit_return(2),
      I1 => get_display_digit_return(3),
      I2 => get_display_digit_return(0),
      I3 => get_display_digit_return(1),
      O => \seg_mux[0]_i_1_n_0\
    );
\seg_mux[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B680"
    )
        port map (
      I0 => get_display_digit_return(1),
      I1 => get_display_digit_return(0),
      I2 => get_display_digit_return(3),
      I3 => get_display_digit_return(2),
      O => \seg_mux[1]_i_1_n_0\
    );
\seg_mux[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80C2"
    )
        port map (
      I0 => get_display_digit_return(1),
      I1 => get_display_digit_return(2),
      I2 => get_display_digit_return(3),
      I3 => get_display_digit_return(0),
      O => \seg_mux[2]_i_1_n_0\
    );
\seg_mux[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8942"
    )
        port map (
      I0 => get_display_digit_return(0),
      I1 => get_display_digit_return(1),
      I2 => get_display_digit_return(3),
      I3 => get_display_digit_return(2),
      O => \seg_mux[3]_i_1_n_0\
    );
\seg_mux[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D4C"
    )
        port map (
      I0 => get_display_digit_return(1),
      I1 => get_display_digit_return(0),
      I2 => get_display_digit_return(3),
      I3 => get_display_digit_return(2),
      O => \seg_mux[4]_i_1_n_0\
    );
\seg_mux[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5910"
    )
        port map (
      I0 => get_display_digit_return(3),
      I1 => get_display_digit_return(2),
      I2 => get_display_digit_return(1),
      I3 => get_display_digit_return(0),
      O => \seg_mux[5]_i_1_n_0\
    );
\seg_mux[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4019"
    )
        port map (
      I0 => get_display_digit_return(3),
      I1 => get_display_digit_return(2),
      I2 => get_display_digit_return(0),
      I3 => get_display_digit_return(1),
      O => \seg_mux[6]_i_1_n_0\
    );
\seg_mux[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => disp_buf(7),
      I1 => disp_buf(3),
      I2 => disp_buf(15),
      I3 => selector(1),
      I4 => selector(0),
      I5 => disp_buf(11),
      O => get_display_digit_return(3)
    );
\seg_mux[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => disp_buf(6),
      I1 => disp_buf(2),
      I2 => disp_buf(14),
      I3 => selector(1),
      I4 => selector(0),
      I5 => disp_buf(10),
      O => get_display_digit_return(2)
    );
\seg_mux[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => disp_buf(4),
      I1 => disp_buf(0),
      I2 => disp_buf(12),
      I3 => selector(1),
      I4 => selector(0),
      I5 => disp_buf(8),
      O => get_display_digit_return(0)
    );
\seg_mux[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => disp_buf(5),
      I1 => disp_buf(1),
      I2 => disp_buf(13),
      I3 => selector(1),
      I4 => selector(0),
      I5 => disp_buf(9),
      O => get_display_digit_return(1)
    );
\seg_mux_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[0]_i_1_n_0\,
      Q => seg_mux(0),
      R => '0'
    );
\seg_mux_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[1]_i_1_n_0\,
      Q => seg_mux(1),
      R => '0'
    );
\seg_mux_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[2]_i_1_n_0\,
      Q => seg_mux(2),
      R => '0'
    );
\seg_mux_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[3]_i_1_n_0\,
      Q => seg_mux(3),
      R => '0'
    );
\seg_mux_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[4]_i_1_n_0\,
      Q => seg_mux(4),
      R => '0'
    );
\seg_mux_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[5]_i_1_n_0\,
      Q => seg_mux(5),
      R => '0'
    );
\seg_mux_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \seg_mux[6]_i_1_n_0\,
      Q => seg_mux(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity seven_seg_display_driver_0 is
  port (
    clk : in STD_LOGIC;
    disp_buf : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dp : in STD_LOGIC_VECTOR ( 2 downto 0 );
    lum : in STD_LOGIC_VECTOR ( 3 downto 0 );
    an_mux : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg_mux : out STD_LOGIC_VECTOR ( 6 downto 0 );
    dp_mux : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of seven_seg_display_driver_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of seven_seg_display_driver_0 : entity is "seven_seg_display_driver_0,seven_seg_display_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of seven_seg_display_driver_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of seven_seg_display_driver_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of seven_seg_display_driver_0 : entity is "seven_seg_display_driver,Vivado 2018.2";
end seven_seg_display_driver_0;

architecture STRUCTURE of seven_seg_display_driver_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
begin
inst: entity work.seven_seg_display_driver_0_seven_seg_display_driver
     port map (
      an_mux(3 downto 0) => an_mux(3 downto 0),
      clk => clk,
      disp_buf(15 downto 0) => disp_buf(15 downto 0),
      dp(2 downto 0) => dp(2 downto 0),
      dp_mux => dp_mux,
      lum(3 downto 0) => lum(3 downto 0),
      seg_mux(6 downto 0) => seg_mux(6 downto 0)
    );
end STRUCTURE;
