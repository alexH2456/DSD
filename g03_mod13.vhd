-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Oct 07 17:33:22 2017"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY g03_mod13 IS 
	PORT
	(
		A :  IN  STD_LOGIC_VECTOR(5 DOWNTO 0);
		Amod13 :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		floor :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END g03_mod13;

ARCHITECTURE bdf_type OF g03_mod13 IS 

COMPONENT g03_8bitaddr
	PORT(A7 : IN STD_LOGIC;
		 A6 : IN STD_LOGIC;
		 A5 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 B7 : IN STD_LOGIC;
		 B6 : IN STD_LOGIC;
		 B5 : IN STD_LOGIC;
		 B4 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S7 : OUT STD_LOGIC;
		 S6 : OUT STD_LOGIC;
		 S5 : OUT STD_LOGIC;
		 S4 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT g03_6bitaddr
	PORT(A5 : IN STD_LOGIC;
		 A4 : IN STD_LOGIC;
		 A3 : IN STD_LOGIC;
		 A2 : IN STD_LOGIC;
		 A1 : IN STD_LOGIC;
		 A0 : IN STD_LOGIC;
		 B5 : IN STD_LOGIC;
		 B4 : IN STD_LOGIC;
		 B3 : IN STD_LOGIC;
		 B2 : IN STD_LOGIC;
		 B1 : IN STD_LOGIC;
		 B0 : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 S5 : OUT STD_LOGIC;
		 S4 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 C0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Amod_ALTERA_SYNTHESIZED13 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	floor_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_35 <= '0';
SYNTHESIZED_WIRE_11 <= '1';
SYNTHESIZED_WIRE_36 <= '0';
SYNTHESIZED_WIRE_37 <= '0';



b2v_inst : g03_8bitaddr
PORT MAP(A7 => SYNTHESIZED_WIRE_35,
		 A6 => SYNTHESIZED_WIRE_35,
		 A5 => A(5),
		 A4 => A(4),
		 A3 => A(3),
		 A2 => A(2),
		 A1 => A(1),
		 A0 => A(0),
		 B7 => A(5),
		 B6 => A(4),
		 B5 => A(3),
		 B4 => A(2),
		 B3 => A(1),
		 B2 => A(0),
		 B1 => SYNTHESIZED_WIRE_35,
		 B0 => SYNTHESIZED_WIRE_35,
		 Cin => SYNTHESIZED_WIRE_35,
		 S7 => floor_ALTERA_SYNTHESIZED(1),
		 S6 => floor_ALTERA_SYNTHESIZED(0),
		 C0 => floor_ALTERA_SYNTHESIZED(2));


b2v_inst10 : g03_6bitaddr
PORT MAP(A5 => A(5),
		 A4 => A(4),
		 A3 => A(3),
		 A2 => A(2),
		 A1 => A(1),
		 A0 => A(0),
		 B5 => SYNTHESIZED_WIRE_5,
		 B4 => SYNTHESIZED_WIRE_6,
		 B3 => SYNTHESIZED_WIRE_7,
		 B2 => SYNTHESIZED_WIRE_8,
		 B1 => SYNTHESIZED_WIRE_9,
		 B0 => SYNTHESIZED_WIRE_10,
		 Cin => SYNTHESIZED_WIRE_11,
		 S3 => Amod_ALTERA_SYNTHESIZED13(3),
		 S2 => Amod_ALTERA_SYNTHESIZED13(2),
		 S1 => Amod_ALTERA_SYNTHESIZED13(1),
		 S0 => Amod_ALTERA_SYNTHESIZED13(0));


SYNTHESIZED_WIRE_5 <= NOT(SYNTHESIZED_WIRE_12);



SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_13);



SYNTHESIZED_WIRE_7 <= NOT(SYNTHESIZED_WIRE_14);



SYNTHESIZED_WIRE_8 <= NOT(SYNTHESIZED_WIRE_15);



SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_16);



SYNTHESIZED_WIRE_10 <= NOT(SYNTHESIZED_WIRE_17);







b2v_inst8 : g03_6bitaddr
PORT MAP(A5 => floor_ALTERA_SYNTHESIZED(2),
		 A4 => floor_ALTERA_SYNTHESIZED(1),
		 A3 => floor_ALTERA_SYNTHESIZED(0),
		 A2 => SYNTHESIZED_WIRE_36,
		 A1 => SYNTHESIZED_WIRE_36,
		 A0 => SYNTHESIZED_WIRE_36,
		 B5 => SYNTHESIZED_WIRE_36,
		 B4 => floor_ALTERA_SYNTHESIZED(2),
		 B3 => floor_ALTERA_SYNTHESIZED(1),
		 B2 => floor_ALTERA_SYNTHESIZED(0),
		 B1 => SYNTHESIZED_WIRE_36,
		 B0 => SYNTHESIZED_WIRE_36,
		 Cin => SYNTHESIZED_WIRE_36,
		 S5 => SYNTHESIZED_WIRE_30,
		 S4 => SYNTHESIZED_WIRE_29,
		 S3 => SYNTHESIZED_WIRE_28,
		 S2 => SYNTHESIZED_WIRE_27,
		 S1 => SYNTHESIZED_WIRE_26,
		 S0 => SYNTHESIZED_WIRE_25);


b2v_inst9 : g03_6bitaddr
PORT MAP(A0 => SYNTHESIZED_WIRE_25,
		 A1 => SYNTHESIZED_WIRE_26,
		 A2 => SYNTHESIZED_WIRE_27,
		 A3 => SYNTHESIZED_WIRE_28,
		 A4 => SYNTHESIZED_WIRE_29,
		 A5 => SYNTHESIZED_WIRE_30,
		 B0 => floor_ALTERA_SYNTHESIZED(0),
		 B1 => floor_ALTERA_SYNTHESIZED(1),
		 B2 => floor_ALTERA_SYNTHESIZED(2),
		 B3 => SYNTHESIZED_WIRE_37,
		 B4 => SYNTHESIZED_WIRE_37,
		 B5 => SYNTHESIZED_WIRE_37,
		 Cin => SYNTHESIZED_WIRE_37,
		 S0 => SYNTHESIZED_WIRE_17,
		 S1 => SYNTHESIZED_WIRE_16,
		 S2 => SYNTHESIZED_WIRE_15,
		 S3 => SYNTHESIZED_WIRE_14,
		 S4 => SYNTHESIZED_WIRE_13,
		 S5 => SYNTHESIZED_WIRE_12);

Amod13 <= Amod_ALTERA_SYNTHESIZED13;
floor <= floor_ALTERA_SYNTHESIZED;

END bdf_type;