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
---- This is the top level file.                                    ----
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
--   The flag is no active '0'. Thanks to Jorma
--   Oksanen for the information.
-- Revision 2K7B  2006/12/29 WF
--   Introduced several improvements based on a very good examination
--   of the pll code by Jean Louis-Guerin.
-- Revision 2K8B  2008/12/24 WF
--   Rewritten this top level file as a wrapper for the top_soc file.
-- Revision 2K15B  2015/12/24 WF
--   Switched data type bit to std_logic.
--

library work;
use work.WF1772IP_PKG.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity WF1772IP_TOP is
	port (
		CLK			: in std_logic; -- 16MHz clock!
		MRn			: in std_logic;
		CSn			: in std_logic;
		RWn			: in std_logic;
		A1, A0		: in std_logic;
		
		--DATA		: inout std_logic_vector(7 downto 0);
		DATA_IN		: in std_logic_vector(7 downto 0);
		DATA_OUT	: out std_logic_vector(7 downto 0);
		
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
end entity WF1772IP_TOP;
	
architecture STRUCTURE of WF1772IP_TOP is
component WF1772IP_TOP_SOC
	port (
		CLK			: in std_logic;
		RESETn		: in std_logic;
		CSn			: in std_logic;
		RWn			: in std_logic;
		A1, A0		: in std_logic;
		DATA_IN		: in std_logic_vector(7 downto 0);
		DATA_OUT		: out std_logic_vector(7 downto 0);
		DATA_EN		: out std_logic;
		RDn			: in std_logic;
		TR00n		: in std_logic;
		IPn			: in std_logic;
		WPRTn		: in std_logic;
		DDEn		: in std_logic;
		HDTYPE		: in std_logic;
		MO			: out std_logic;
		WG			: out std_logic;
		WD			: out std_logic;
		STEP		: out std_logic;
		DIRC		: out std_logic;
		DRQ			: out std_logic;
		INTRQ		: out std_logic
	);
end component;
signal DATA_OUT_G : std_logic_vector(7 downto 0);
signal DATA_EN  : std_logic;
begin
    DATA_OUT <= DATA_OUT_G when DATA_EN = '1' else (others => 'Z');

    I_1772: WF1772IP_TOP_SOC
        port map(
            CLK         => CLK,
            RESETn      => MRn,
            CSn         => CSn,
            RWn         => RWn,
            A1          => A1,
            A0          => A0,
            DATA_IN     => DATA_IN,
            DATA_OUT    => DATA_OUT_G,
            DATA_EN     => DATA_EN,
            RDn         => RDn,
            TR00n       => TR00n,
            IPn         => IPn,
            WPRTn       => WPRTn,
            DDEn        => DDEn,
            HDTYPE      => HDTYPE,
            MO          => MO,
            WG          => WG,
            WD          => WD,
            STEP        => STEP,
            DIRC        => DIRC,
            DRQ         => DRQ,
            INTRQ       => INTRQ
        );
end architecture STRUCTURE;