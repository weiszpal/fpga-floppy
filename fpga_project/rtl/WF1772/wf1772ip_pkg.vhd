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
---- This is the package file containing the component              ----
---- declarations.                                                  ----
----                                                                ----
----                                                                ----
---- To Do:                                                         ----
---- -                                                              ----
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
--   Initial Release.
-- Revision 2K6B  2006/11/05 WF
--   Modified Source to compile with the Xilinx ISE.
-- Revision 2K8A  2008/07/14 WF
--   Minor changes.
--   Removed CRC_BUSY.
-- Revision 2K15B  2015/12/24 WF
--   Switched data type bit to std_logic.
--

library ieee;
use ieee.std_logic_1164.all;

package WF1772IP_PKG is
-- component declarations:
component WF1772IP_AM_DETECTOR
	port(
		CLK			: in std_logic;
		RESETn		: in std_logic;
		DDEn		: in std_logic;
		DATA		: in std_logic;
		DATA_STRB	: in std_logic;
		ID_AM		: out std_logic;
		DATA_AM		: out std_logic;
		DDATA_AM	: out std_logic
	);
end component;

component WF1772IP_CONTROL
	port(
		CLK				: in std_logic;
		RESETn			: in std_logic;
		A1, A0			: in std_logic;
		RWn				: in std_logic;
		CSn				: in std_logic;
		DDEn			: in std_logic;
		DR				: in std_logic_vector(7 downto 0);
		CMD				: in std_logic_vector(7 downto 0);
		DSR				: in std_logic_vector(7 downto 0);
		TR				: in std_logic_vector(7 downto 0);
		SR				: in std_logic_vector(7 downto 0);
		MO				: out std_logic;
		WR_PR			: out std_logic;
		SPINUP_RECTYPE	: out std_logic;
		SEEK_RNF		: out std_logic;
		CRC_ERRFLAG		: out std_logic;
		LOST_DATA_TR00	: out std_logic;
		DRQ				: out std_logic;
		DRQ_IPn			: out std_logic;
		BUSY			: out std_logic;
		AM_2_DISK		: out std_logic;
		ID_AM			: in std_logic;
		DATA_AM			: in std_logic;
		DDATA_AM		: in std_logic;
		CRC_ERR			: in std_logic;
		CRC_PRES		: out std_logic;
		TR_PRES			: out std_logic;
		TR_CLR			: out std_logic;
		TR_INC			: out std_logic;
		TR_DEC			: out std_logic;
		SR_LOAD			: out std_logic;
		SR_INC			: out std_logic;
		TRACK_NR		: out std_logic_vector(7 downto 0);
		DR_CLR			: out std_logic;
		DR_LOAD			: out std_logic;
		SHFT_LOAD_SD	: out std_logic;
		SHFT_LOAD_ND	: out std_logic;
		CRC_2_DISK		: out std_logic;
		DSR_2_DISK		: out std_logic;
		FF_2_DISK		: out std_logic;
		PRECOMP_EN		: out std_logic;
		DATA_STRB 		: in std_logic;
		DISK_RWn		: out std_logic;
		WPRTn			: in std_logic;
		TRACK00n		: in std_logic;
		IPn				: in std_logic;
		DIRC			: out std_logic;
		STEP			: out std_logic;
		WG				: out std_logic;
		INTRQ			: out std_logic
	);
end component;

component WF1772IP_CRC_LOGIC
	port(
		CLK			: in std_logic;
		RESETn		: in std_logic;
		DDEn		: in std_logic;
		DISK_RWn	: in std_logic;
		ID_AM		: in std_logic;
		DATA_AM		: in std_logic;
		DDATA_AM	: in std_logic;
		SD			: in std_logic;
		CRC_STRB	: in std_logic;
		CRC_2_DISK	: in std_logic;
		CRC_PRES	: in std_logic;
		CRC_SDOUT	: out std_logic;
		CRC_ERR		: out std_logic
	);
end component;

component WF1772IP_DIGITAL_PLL
	port(
		CLK			: in std_logic;
		RESETn		: in std_logic;
		DDEn		: in std_logic;
		HDTYPE		: in std_logic;
		DISK_RWn	: in std_logic;
		RDn			: in std_logic;
		PLL_D		: out std_logic;
		PLL_DSTRB	: out std_logic
	);
end component;

component WF1772IP_REGISTERS
	port(
		CLK				: in std_logic;
		RESETn			: in std_logic;
		CSn				: in std_logic;
		ADR				: in std_logic_vector(1 downto 0);
		RWn				: in std_logic;
		DATA_IN			: in std_logic_vector (7 downto 0);
		DATA_OUT		: out std_logic_vector (7 downto 0);
		DATA_EN			: out std_logic;
		CMD				: out std_logic_vector(7 downto 0);
		SR				: out std_logic_vector(7 downto 0);
		TR				: out std_logic_vector(7 downto 0);
		DSR				: out std_logic_vector(7 downto 0);
		DR				: out std_logic_vector(7 downto 0);
		SD_R			: in std_logic;
		DATA_STRB		: in std_logic;
		DR_CLR			: in std_logic;
		DR_LOAD			: in std_logic;
		TR_PRES			: in std_logic;
		TR_CLR			: in std_logic;
		TR_INC			: in std_logic;
		TR_DEC			: in std_logic;
		TRACK_NR 		: in std_logic_vector(7 downto 0);
		SR_LOAD			: in std_logic;
		SR_INC			: in std_logic;
		SHFT_LOAD_SD	: in std_logic;
		SHFT_LOAD_ND	: in std_logic;
		MOTOR_ON		: in std_logic;
		WRITE_PROTECT	: in std_logic;
		SPINUP_RECTYPE	: in std_logic;
		SEEK_RNF		: in std_logic;
		CRC_ERRFLAG		: in std_logic;
		LOST_DATA_TR00	: in std_logic;
		DRQ				: in std_logic;
		DRQ_IPn			: in std_logic;
		BUSY			: in std_logic;
		DDEn			: in std_logic
	);
end component;

component WF1772IP_TRANSCEIVER
	port(
		CLK				: in std_logic;
		RESETn			: in std_logic;
		DDEn			: in std_logic;
		HDTYPE			: in std_logic;
		ID_AM			: in std_logic;
		DATA_AM			: in std_logic;
		DDATA_AM		: in std_logic;
		SHFT_LOAD_SD	: in std_logic;
		DR				: in std_logic_vector(7 downto 0);
		PRECOMP_EN		: in std_logic;
		AM_TYPE			: in std_logic;
		AM_2_DISK		: in std_logic;
		CRC_2_DISK		: in std_logic;
		DSR_2_DISK		: in std_logic;
		FF_2_DISK		: in std_logic;
		SR_SDOUT		: in std_logic;
		CRC_SDOUT		: in std_logic;
		WRn				: out std_logic;
		PLL_DSTRB		: in std_logic;
		PLL_D			: in std_logic;
		WDATA 			: out std_logic;
		DATA_STRB 		: out std_logic;
		SD_R			: out std_logic
	);
end component;
end WF1772IP_PKG;
