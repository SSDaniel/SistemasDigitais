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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "04/23/2019 02:40:11"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Adder IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	s : OUT std_logic_vector(7 DOWNTO 0);
	cin : IN std_logic;
	cout : OUT std_logic
	);
END Adder;

-- Design Ports Information
-- s[0]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[4]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[5]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[6]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[7]	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- cin	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cout	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- a[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_cout : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:0:adds|int_sig~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|cout~combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|ALT_INV_s~combout\ : std_logic;
SIGNAL \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|ALT_INV_s~combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
s <= ww_s;
ww_cin <= cin;
cout <= ww_cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|s~combout\;
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|ALT_INV_s~combout\ <= NOT \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|s~combout\;

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LCCOMB_X1_Y8_N0
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:0:adds|int_sig\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:0:adds|int_sig~combout\ = \a~combout\(0) $ (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datac => \b~combout\(0),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:0:adds|int_sig~combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X1_Y8_N10
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|s~combout\ = \a~combout\(1) $ (\b~combout\(1) $ (((\a~combout\(0)) # (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|s~combout\);

-- Location: LCCOMB_X1_Y8_N20
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ = (\a~combout\(1) & ((\a~combout\(0)) # ((!\b~combout\(1)) # (!\b~combout\(0))))) # (!\a~combout\(1) & (!\b~combout\(1) & ((\a~combout\(0)) # (!\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \a~combout\(1),
	datad => \b~combout\(1),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LCCOMB_X1_Y8_N14
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|s~combout\ = \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ $ (\a~combout\(2) $ (\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\,
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|s~combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X1_Y8_N8
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout~combout\ = (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ & ((\a~combout\(2)) # (!\b~combout\(2)))) # 
-- (!\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ & (\a~combout\(2) & !\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\,
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout~combout\);

-- Location: LCCOMB_X1_Y8_N2
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|s~combout\ = \a~combout\(3) $ (\b~combout\(3) $ (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datac => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|s~combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCCOMB_X1_Y8_N12
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\ = (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ & ((\a~combout\(2)) # (!\b~combout\(2)))) # 
-- (!\ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\ & (\a~combout\(2) & !\b~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|cout~combout\,
	datab => \a~combout\(2),
	datac => \b~combout\(2),
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\);

-- Location: LCCOMB_X1_Y8_N6
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\ = (\a~combout\(3) & ((\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\) # (!\b~combout\(3)))) # (!\a~combout\(3) & (!\b~combout\(3) & 
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \b~combout\(3),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~0_combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\);

-- Location: LCCOMB_X1_Y8_N24
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|s~combout\ = \b~combout\(4) $ (\a~combout\(4) $ (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|s~combout\);

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X1_Y8_N26
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\ = (\b~combout\(4) & (\a~combout\(4) & \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\)) # (!\b~combout\(4) & ((\a~combout\(4)) # 
-- (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \a~combout\(4),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|cout~1_combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\);

-- Location: LCCOMB_X1_Y8_N4
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|s~combout\ = \a~combout\(5) $ (\b~combout\(5) $ (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|s~combout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCCOMB_X1_Y8_N30
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\ = (\a~combout\(5) & ((\ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\) # (!\b~combout\(5)))) # (!\a~combout\(5) & (!\b~combout\(5) & 
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(5),
	datac => \b~combout\(5),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\);

-- Location: LCCOMB_X1_Y8_N16
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|s~combout\ = \b~combout\(6) $ (\a~combout\(6) $ (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|s~combout\);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LCCOMB_X1_Y8_N18
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\ = (\b~combout\(6) & (\a~combout\(6) & \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\)) # (!\b~combout\(6) & ((\a~combout\(6)) # 
-- (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(6),
	datac => \a~combout\(6),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\);

-- Location: LCCOMB_X1_Y8_N28
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|s~combout\ = \a~combout\(7) $ (\b~combout\(7) $ (\ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \b~combout\(7),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|s~combout\);

-- Location: LCCOMB_X1_Y8_N22
\ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|cout\ : cycloneii_lcell_comb
-- Equation(s):
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|cout~combout\ = (\a~combout\(7) & ((\ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\) # (!\b~combout\(7)))) # (!\a~combout\(7) & (!\b~combout\(7) & 
-- \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(7),
	datac => \b~combout\(7),
	datad => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|cout~combout\,
	combout => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|cout~combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:0:adds|int_sig~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:1:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:2:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:3:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:4:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(4));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:5:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(5));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:6:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(6));

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|ALT_INV_s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(7));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cin);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\cout~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ripple_add_sub_architecture:RippleAdderSubArch|addGen:7:adds|cout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_cout);
END structure;


