library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        d_done          : in     vl_logic;
        d_hand          : in     vl_logic_vector(5 downto 0);
        p_done          : in     vl_logic;
        p_hand          : in     vl_logic_vector(5 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_lab5_vlg_sample_tst;
