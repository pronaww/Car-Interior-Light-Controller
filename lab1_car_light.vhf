--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : lab1_car_light.vhf
-- /___/   /\     Timestamp : 08/01/2017 15:26:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl lab1_car_light.vhf -w /home/btech/cs1160369/Lab/lab1_car_light.sch
--Design Name: lab1_car_light
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity lab1_car_light is
   port ( D1      : in    std_logic; 
          D2      : in    std_logic; 
          D3      : in    std_logic; 
          D4      : in    std_logic; 
          SW_DOOR : in    std_logic; 
          SW_OFF  : in    std_logic; 
          SW_ON   : in    std_logic; 
          INVALID : out   std_logic; 
          LIGHT   : out   std_logic);
end lab1_car_light;

architecture BEHAVIORAL of lab1_car_light is
   attribute BOX_TYPE   : string ;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_35 : std_logic;
   signal XLXN_38 : std_logic;
   signal XLXN_40 : std_logic;
   signal XLXN_63 : std_logic;
   signal XLXN_64 : std_logic;
   signal XLXN_66 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>SW_OFF,
                I1=>SW_ON,
                O=>XLXN_38);
   
   XLXI_2 : AND2
      port map (I0=>SW_DOOR,
                I1=>SW_ON,
                O=>XLXN_35);
   
   XLXI_3 : AND2
      port map (I0=>SW_OFF,
                I1=>SW_DOOR,
                O=>XLXN_33);
   
   XLXI_9 : AND3
      port map (I0=>XLXN_7,
                I1=>XLXN_8,
                I2=>SW_ON,
                O=>XLXN_6);
   
   XLXI_10 : OR2
      port map (I0=>XLXN_6,
                I1=>XLXN_10,
                O=>LIGHT);
   
   XLXI_11 : INV
      port map (I=>SW_DOOR,
                O=>XLXN_7);
   
   XLXI_12 : INV
      port map (I=>SW_OFF,
                O=>XLXN_8);
   
   XLXI_14 : OR4
      port map (I0=>D4,
                I1=>D3,
                I2=>D2,
                I3=>D1,
                O=>XLXN_9);
   
   XLXI_15 : AND4
      port map (I0=>SW_DOOR,
                I1=>XLXN_9,
                I2=>XLXN_16,
                I3=>XLXN_22,
                O=>XLXN_10);
   
   XLXI_16 : INV
      port map (I=>SW_ON,
                O=>XLXN_22);
   
   XLXI_17 : INV
      port map (I=>SW_OFF,
                O=>XLXN_16);
   
   XLXI_18 : OR4
      port map (I0=>XLXN_33,
                I1=>XLXN_35,
                I2=>XLXN_38,
                I3=>XLXN_40,
                O=>INVALID);
   
   XLXI_22 : INV
      port map (I=>SW_ON,
                O=>XLXN_66);
   
   XLXI_23 : INV
      port map (I=>SW_OFF,
                O=>XLXN_64);
   
   XLXI_24 : INV
      port map (I=>SW_DOOR,
                O=>XLXN_63);
   
   XLXI_25 : AND3
      port map (I0=>XLXN_63,
                I1=>XLXN_64,
                I2=>XLXN_66,
                O=>XLXN_40);
   
end BEHAVIORAL;


