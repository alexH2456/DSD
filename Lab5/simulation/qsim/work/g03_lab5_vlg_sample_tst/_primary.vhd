library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        legal_play      : in     vl_logic;
        reset           : in     vl_logic;
        turn            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_lab5_vlg_sample_tst;
