library verilog;
use verilog.vl_types.all;
entity g03_lab5 is
    port(
        game_over       : out    vl_logic;
        p_done          : in     vl_logic;
        d_done          : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        d_hand          : in     vl_logic_vector(5 downto 0);
        p_hand          : in     vl_logic_vector(5 downto 0);
        init            : out    vl_logic;
        pop_dealer      : out    vl_logic;
        pop_player      : out    vl_logic;
        turn            : out    vl_logic;
        d_wins          : out    vl_logic_vector(1 downto 0);
        p_wins          : out    vl_logic_vector(1 downto 0);
        state           : out    vl_logic_vector(3 downto 0)
    );
end g03_lab5;
