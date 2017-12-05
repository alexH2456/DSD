library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_check_tst is
    port(
        dealer_hand     : in     vl_logic_vector(5 downto 0);
        dealer_led0     : in     vl_logic;
        dealer_led1     : in     vl_logic;
        dealer_led2     : in     vl_logic;
        dealer_wins     : in     vl_logic_vector(1 downto 0);
        game_over       : in     vl_logic;
        led_floor_dealer: in     vl_logic_vector(6 downto 0);
        led_floor_player: in     vl_logic_vector(6 downto 0);
        led_mod_dealer  : in     vl_logic_vector(6 downto 0);
        led_mod_player  : in     vl_logic_vector(6 downto 0);
        num_cards       : in     vl_logic_vector(5 downto 0);
        player_hand     : in     vl_logic_vector(5 downto 0);
        player_led0     : in     vl_logic;
        player_led1     : in     vl_logic;
        player_led2     : in     vl_logic;
        player_wins     : in     vl_logic_vector(1 downto 0);
        state_out       : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_lab5_vlg_check_tst;
