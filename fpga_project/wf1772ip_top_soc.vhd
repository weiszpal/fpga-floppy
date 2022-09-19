------------------------------------------------------------------------
----                                                                ----
---- WD1772 compatible floppy disk controller IP Core.              ----
----                                                                ----
---- This file is part of the SUSKA ATARI clone project.            ----
---- http://www.experiment-s.de                                     ----
----                                                                ----
---- Description:                                                   ----
---- Floppy disk controller with all features of the Western        ----
---- Digital WD1772-02 controller.                                  ----
----                                                                ----
---- Top level file for use in systems on programmable chips.       ----
----                                                                ----
----                                                                ----
---- To Do:                                                         ----
---- - Test of the FM portion of the code (if there is any need).   ----
---- - Test of the read track command.                              ----
---- - Test of the read address command.                            ----
----                                                                ----
---- Author(s):                                                     ----
---- - Wolfgang Foerster, wf@experiment-s.de; wf@inventronik.de     ----
----                                                                ----
------------------------------------------------------------------------
----                                                                ----
---- Copyright © 2006... Wolfgang Foerster - Inventronik GmbH.      ----
----                                                                ----
---- This source file may be used and distributed without           ----
---- restriction provided that this copyright statement is not      ----
---- removed from the file and that any derivative work contains    ----
---- the original copyright notice and the associated disclaimer.   ----
----                                                                ----
---- This source file is free software; you can redistribute it     ----
---- and/or modify it under the terms of the GNU Lesser General     ----
---- Public License as published by the Free Software Foundation;   ----
---- either version 2.1 of the License, or (at your option) any     ----
---- later version.                                                 ----
----                                                                ----
---- This source is distributed in the hope that it will be         ----
---- useful, but WITHOUT ANY WARRANTY; without even the implied     ----
---- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR        ----
---- PURPOSE. See the GNU Lesser General Public License for more    ----
---- details.                                                       ----
----                                                                ----
---- You should have received a copy of the GNU Lesser General      ----
---- Public License along with this source; if not, download it     ----
---- from http://www.gnu.org/licenses/lgpl.html                     ----
----                                                                ----
------------------------------------------------------------------------
-- 
-- Revision History
-- 
-- Revision 2006A  2006/06/03 WF
--   Initial Release: the MFM portion for HD and DD floppies is tested.
--   The FM mode (DDEn = '1') is not completely tested due to the lack 
--   of FM drives.
-- Revision 2K6B  2006/11/05 WF
--   Modified Source to compile with the Xilinx ISE.
--   Fixed the polarity of the precompensation flag.
--   The flag is no active '0'. Thanks to Jorma Oksanen for the information.
--   Top level file provided for SOC (systems on programmable chips).
-- Revision 2K7B  2006/12/29 WF
--   Introduced several improvements based on a very good examination
--   of the pll code by Jean Louis-Guerin.
-- Revision 2K8A  2008/07/14 WF
--   Minor changes.
-- Revision 2K8B  2009/12/24 WF
--   Bugfixes in the controller due to hanging state machine.
--   Removed CRC_BUSY.
-- Revision 2K15B  2015/12/24 WF
--   Switched data type bit to std_logic.
--

library work;
use work.WF1772IP_PKG.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity WF1772IP_TOP_SOC is
	port (
		CLK			: in std_logic; -- 16MHz clock!
		RESETn		: in std_logic;
		CSn			: in std_logic;
		RWn			: in std_logic;
		A1, A0		: in std_logic;
		DATA_IN		: in std_logic_vector(7 downto 0);
		DATA_OUT	: out std_logic_vector(7 downto 0);
		DATA_EN		: out std_logic;
		RDn			: in std_logic;
		TR00n		: in std_logic;
		IPn			: in std_logic;
		WPRTn		: in std_logic;
		DDEn		: in std_logic;
		HDTYPE		: in std_logic; -- '0' = DD disks, '1' = HD disks.
		MO			: out std_logic;
		WG			: out std_logic;
		WD			: out std_logic;
		STEP		: out std_logic;
		DIRC		: out std_logic;
		DRQ			: out std_logic;
		INTRQ		: out std_logic
	);
end entity WF1772IP_TOP_SOC;
	
architecture STRUCTURE of WF1772IP_TOP_SOC is
signal CMD_I			: std_logic_vector(7 downto 0);
signal DR_I				: std_logic_vector(7 downto 0);
signal DSR_I			: std_logic_vector(7 downto 0);
signal TR_I				: std_logic_vector(7 downto 0);
signal SR_I				: std_logic_vector(7 downto 0);
signal ID_AM_I			: std_logic;
signal DATA_AM_I		: std_logic;
signal DDATA_AM_I		: std_logic;
signal AM_TYPE_I		: std_logic;
signal AM_2_DISK_I		: std_logic;
signal DATA_STRB_I		: std_logic;
signal BUSY_I			: std_logic;
signal DRQ_I			: std_logic;
signal DRQ_IPn_I		: std_logic;
signal LD_TR00_I		: std_logic;
signal SP_RT_I			: std_logic;
signal SEEK_RNF_I		: std_logic;
signal WR_PR_I			: std_logic;
signal MO_I				: std_logic;
signal PLL_DSTRB_I		: std_logic;
signal PLL_D_I			: std_logic;
signal CRC_SD_I			: std_logic;
signal CRC_ERR_I		: std_logic;
signal CRC_PRES_I		: std_logic;
signal CRC_ERRFLAG_I	: std_logic;
signal SD_R_I			: std_logic;
signal CRC_SDOUT_I		: std_logic;
signal SHFT_LOAD_SD_I	: std_logic;
signal SHFT_LOAD_ND_I	: std_logic;
signal WR_In			: std_logic;
signal TR_PRES_I		: std_logic;
signal TR_CLR_I			: std_logic;
signal TR_INC_I			: std_logic;
signal TR_DEC_I			: std_logic;
signal SR_LOAD_I		: std_logic;
signal SR_INC_I			: std_logic;
signal DR_CLR_I			: std_logic;
signal DR_LOAD_I		: std_logic;
signal TRACK_NR_I		: std_logic_vector(7 downto 0);
signal CRC_2_DISK_I		: std_logic;
signal DSR_2_DISK_I		: std_logic;
signal FF_2_DISK_I		: std_logic;
signal PRECOMP_EN_I		: std_logic;
signal DISK_RWn_I		: std_logic;
signal WDATA_I			: std_logic;
begin
	-- Some signals copied to the outputs:
    WD <= not WR_In;
	MO <= MO_I;
	DRQ <= DRQ_I;

	-- Write deleted data address mark in MFM mode in 'Write Sector' command in
	-- case of asserted command bit 0.
	AM_TYPE_I <= '0' when CMD_I(7 downto 5) = "101" and CMD_I(0) = '1' else '1';

	-- The CRC unit is used during read from disk and write to disk.
	-- This is the data multiplexer for the data stream to encode.
	CRC_SD_I <= SD_R_I when DISK_RWn_I = '1' else WDATA_I;

	I_CONTROL: WF1772IP_CONTROL
		port map(
            CLK				=> CLK,
			RESETn			=> RESETn,
			A1				=> A0,
			A0				=> A1,
			RWn				=> RWn,
			CSn				=> CSn,
			DDEn			=> DDEn,
			DR				=> DR_I,
			CMD				=> CMD_I,
			DSR				=> DSR_I,
			TR				=> TR_I,
			SR				=> SR_I,
			MO				=> MO_I,
			WR_PR			=> WR_PR_I,
			SPINUP_RECTYPE	=> SP_RT_I,
			SEEK_RNF		=> SEEK_RNF_I,
			CRC_ERRFLAG		=> CRC_ERRFLAG_I,
			LOST_DATA_TR00	=> LD_TR00_I,
			DRQ				=> DRQ_I,
			DRQ_IPn			=> DRQ_IPn_I,
			BUSY			=> BUSY_I,
			AM_2_DISK		=> AM_2_DISK_I,
			ID_AM			=> ID_AM_I,
			DATA_AM			=> DATA_AM_I,
			DDATA_AM		=> DDATA_AM_I,
			CRC_ERR			=> CRC_ERR_I,
			CRC_PRES		=> CRC_PRES_I,
			TR_PRES			=> TR_PRES_I,
			TR_CLR			=> TR_CLR_I,
			TR_INC			=> TR_INC_I,
			TR_DEC			=> TR_DEC_I,
			SR_LOAD			=> SR_LOAD_I,
			SR_INC			=> SR_INC_I,
			TRACK_NR		=> TRACK_NR_I,
			DR_CLR			=> DR_CLR_I,
			DR_LOAD			=> DR_LOAD_I,
			SHFT_LOAD_SD	=> SHFT_LOAD_SD_I,
			SHFT_LOAD_ND	=> SHFT_LOAD_ND_I,
			CRC_2_DISK		=> CRC_2_DISK_I,
			DSR_2_DISK		=> DSR_2_DISK_I,
			FF_2_DISK		=> FF_2_DISK_I,
			PRECOMP_EN		=> PRECOMP_EN_I,
			DATA_STRB		=> DATA_STRB_I,
			DISK_RWn		=> DISK_RWn_I,
			WPRTn			=> WPRTn,
			TRACK00n		=> TR00n,
			IPn				=> IPn,
			DIRC			=> DIRC,
			STEP			=> STEP,
			WG				=> WG,
			INTRQ			=> INTRQ
		);

	I_REGISTERS: WF1772IP_REGISTERS
		port map(
			CLK				=> CLK,
			RESETn			=> RESETn,
			CSn				=> CSn,
			ADR(1)			=> A1,
			ADR(0)			=> A0,
			RWn				=> RWn,
			DATA_IN			=> DATA_IN,
			DATA_OUT		=> DATA_OUT,
			DATA_EN			=> DATA_EN,
			CMD				=> CMD_I,
			TR				=> TR_I,
			SR				=> SR_I,
			DSR				=> DSR_I,
			DR				=> DR_I,
			SD_R			=> SD_R_I,
			DATA_STRB		=> DATA_STRB_I,
			DR_CLR			=> DR_CLR_I,
			DR_LOAD			=> DR_LOAD_I,
			TR_PRES			=> TR_PRES_I,
			TR_CLR			=> TR_CLR_I,
			TR_INC			=> TR_INC_I,
			TR_DEC			=> TR_DEC_I,
			TRACK_NR		=> TRACK_NR_I,
			SR_LOAD			=> SR_LOAD_I,
			SR_INC			=> SR_INC_I,
			SHFT_LOAD_SD	=> SHFT_LOAD_SD_I,
			SHFT_LOAD_ND	=> SHFT_LOAD_ND_I,
			MOTOR_ON		=> MO_I,
			WRITE_PROTECT	=> WR_PR_I,
			SPINUP_RECTYPE	=> SP_RT_I,
			SEEK_RNF		=> SEEK_RNF_I,
			CRC_ERRFLAG		=> CRC_ERRFLAG_I,
			LOST_DATA_TR00	=> LD_TR00_I,
			DRQ				=> DRQ_I,
			DRQ_IPn			=> DRQ_IPn_I,
			BUSY			=> BUSY_I,
			DDEn			=> DDEn
		);

	I_DIGITAL_PLL: WF1772IP_DIGITAL_PLL
		port map(
			CLK			=> CLK,
			RESETn		=> RESETn,
			DDEn		=> DDEn,
			HDTYPE 		=> HDTYPE,
			DISK_RWn	=> DISK_RWn_I,
			RDn			=> RDn,
			PLL_D		=> PLL_D_I,
			PLL_DSTRB	=> PLL_DSTRB_I
		);

	I_AM_DETECTOR: WF1772IP_AM_DETECTOR
		port map(
			CLK			=> CLK,
			RESETn		=> RESETn,
			DDEn		=> DDEn,
			DATA		=> PLL_D_I,
			DATA_STRB	=> PLL_DSTRB_I,
			ID_AM		=> ID_AM_I,
			DATA_AM		=> DATA_AM_I,
			DDATA_AM	=> DDATA_AM_I
		);

	I_CRC_LOGIC: WF1772IP_CRC_LOGIC
		port map(
			CLK			=> CLK,
			RESETn		=> RESETn,
			DDEn		=> DDEn,
			DISK_RWn	=> DISK_RWn_I,
			ID_AM		=> ID_AM_I,
			DATA_AM		=> DATA_AM_I,
			DDATA_AM	=> DDATA_AM_I,
			SD			=> CRC_SD_I,
			CRC_STRB	=> DATA_STRB_I,
			CRC_2_DISK	=> CRC_2_DISK_I,
			CRC_PRES	=> CRC_PRES_I,
			CRC_SDOUT	=> CRC_SDOUT_I,
			CRC_ERR		=> CRC_ERR_I
		);

	I_TRANSCEIVER: WF1772IP_TRANSCEIVER
		port map(
			CLK				=> CLK,
			RESETn			=> RESETn,
			DDEn			=> DDEn,
			HDTYPE 			=> HDTYPE,
			ID_AM			=> ID_AM_I,
			DATA_AM			=> DATA_AM_I,
			DDATA_AM		=> DDATA_AM_I,
			SHFT_LOAD_SD	=> SHFT_LOAD_SD_I,
			DR				=> DR_I,
			PRECOMP_EN		=> PRECOMP_EN_I,
			AM_TYPE			=> AM_TYPE_I,
			AM_2_DISK		=> AM_2_DISK_I,
			CRC_2_DISK		=> CRC_2_DISK_I,
			DSR_2_DISK		=> DSR_2_DISK_I,
			FF_2_DISK		=> FF_2_DISK_I,
			SR_SDOUT		=> DSR_I(7),
			CRC_SDOUT		=> CRC_SDOUT_I,
			WRn				=> WR_In,
			WDATA			=> WDATA_I,
			PLL_DSTRB		=> PLL_DSTRB_I,
			PLL_D			=> PLL_D_I,
			DATA_STRB		=> DATA_STRB_I,
			SD_R			=> SD_R_I
		);
end architecture STRUCTURE;