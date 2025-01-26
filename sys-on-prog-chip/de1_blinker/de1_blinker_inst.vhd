	component de1_blinker is
		port (
			clk_clk                                : in  std_logic                    := 'X';             -- clk
			led_external_connection_export         : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_1_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_2_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_3_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_4_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			switcher_external_connection_export    : in  std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component de1_blinker;

	u0 : component de1_blinker
		port map (
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			led_external_connection_export         => CONNECTED_TO_led_external_connection_export,         --         led_external_connection.export
			seven_seg_1_external_connection_export => CONNECTED_TO_seven_seg_1_external_connection_export, -- seven_seg_1_external_connection.export
			seven_seg_2_external_connection_export => CONNECTED_TO_seven_seg_2_external_connection_export, -- seven_seg_2_external_connection.export
			seven_seg_3_external_connection_export => CONNECTED_TO_seven_seg_3_external_connection_export, -- seven_seg_3_external_connection.export
			seven_seg_4_external_connection_export => CONNECTED_TO_seven_seg_4_external_connection_export, -- seven_seg_4_external_connection.export
			switcher_external_connection_export    => CONNECTED_TO_switcher_external_connection_export     --    switcher_external_connection.export
		);

