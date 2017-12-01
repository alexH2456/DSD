library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_check_tst is
    port(
        d_wins          : in     vl_logic_vector(1 downto 0);
        game_over       : in     vl_logic;
        init            : in     vl_logic;
        p_wins          : in     vl_logic_vector(1 downto 0);
        pop_dealer      : in     vl_logic;
        pop_player      : in     vl_logic;
        state           : in     vl_logic_vector(3 downto 0);
        turn            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g03_lab5_vlg_check_tst;
