library verilog;
use verilog.vl_types.all;
entity g03_lab5 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        game_over       : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        hit             : in     vl_logic;
        stay            : in     vl_logic;
        led_mode        : in     vl_logic;
        new_hand        : in     vl_logic;
        dealer_led0     : out    vl_logic;
        dealer_led1     : out    vl_logic;
        dealer_led2     : out    vl_logic;
        player_led0     : out    vl_logic;
        player_led1     : out    vl_logic;
        player_led2     : out    vl_logic;
        dealer_hand     : out    vl_logic_vector(5 downto 0);
        dealer_wins     : out    vl_logic_vector(1 downto 0);
        led_floor_dealer: out    vl_logic_vector(6 downto 0);
        led_floor_player: out    vl_logic_vector(6 downto 0);
        led_mod_dealer  : out    vl_logic_vector(6 downto 0);
        led_mod_player  : out    vl_logic_vector(6 downto 0);
        num_cards       : out    vl_logic_vector(5 downto 0);
        player_hand     : out    vl_logic_vector(5 downto 0);
        player_wins     : out    vl_logic_vector(1 downto 0);
        state_out       : out    vl_logic_vector(3 downto 0)
    );
end g03_lab5;
