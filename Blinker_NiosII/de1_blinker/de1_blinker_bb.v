
module de1_blinker (
	calibration_external_connection_export,
	centaines_external_connection_export,
	clk_clk,
	dizaines_external_connection_export,
	led_external_connection_export,
	milliers_external_connection_export,
	seven_seg_1_external_connection_export,
	seven_seg_2_external_connection_export,
	seven_seg_3_external_connection_export,
	seven_seg_4_external_connection_export,
	switcher_external_connection_export,
	unites_external_connection_export);	

	output	[2:0]	calibration_external_connection_export;
	input	[3:0]	centaines_external_connection_export;
	input		clk_clk;
	input	[3:0]	dizaines_external_connection_export;
	output	[7:0]	led_external_connection_export;
	input	[3:0]	milliers_external_connection_export;
	output	[7:0]	seven_seg_1_external_connection_export;
	output	[7:0]	seven_seg_2_external_connection_export;
	output	[7:0]	seven_seg_3_external_connection_export;
	output	[7:0]	seven_seg_4_external_connection_export;
	input	[3:0]	switcher_external_connection_export;
	input	[3:0]	unites_external_connection_export;
endmodule
