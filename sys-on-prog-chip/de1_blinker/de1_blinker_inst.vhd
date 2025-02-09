	component de1_blinker is
		port (
			centaines_external_connection_export   : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			clk_clk                                : in  std_logic                    := 'X';             -- clk
			dizaines_external_connection_export    : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			led_external_connection_export         : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_1_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_2_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_3_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			seven_seg_4_external_connection_export : out std_logic_vector(7 downto 0);                    -- export
			switcher_external_connection_export    : in  std_logic_vector(3 downto 0) := (others => 'X'); -- export
			unites_external_connection_export      : in  std_logic_vector(3 downto 0) := (others => 'X')  -- export
		);
	end component de1_blinker;

	u0 : component de1_blinker
		port map (
			centaines_external_connection_export   => CONNECTED_TO_centaines_external_connection_export,   --   centaines_external_connection.export
			clk_clk                                => CONNECTED_TO_clk_clk,                                --                             clk.clk
			dizaines_external_connection_export    => CONNECTED_TO_dizaines_external_connection_export,    --    dizaines_external_connection.export
			led_external_connection_export         => CONNECTED_TO_led_external_connection_export,         --         led_external_connection.export
			seven_seg_1_external_connection_export => CONNECTED_TO_seven_seg_1_external_connection_export, -- seven_seg_1_external_connection.export
			seven_seg_2_external_connection_export => CONNECTED_TO_seven_seg_2_external_connection_export, -- seven_seg_2_external_connection.export
			seven_seg_3_external_connection_export => CONNECTED_TO_seven_seg_3_external_connection_export, -- seven_seg_3_external_connection.export
			seven_seg_4_external_connection_export => CONNECTED_TO_seven_seg_4_external_connection_export, -- seven_seg_4_external_connection.export
			switcher_external_connection_export    => CONNECTED_TO_switcher_external_connection_export,    --    switcher_external_connection.export
			unites_external_connection_export      => CONNECTED_TO_unites_external_connection_export       --      unites_external_connection.export
		);

