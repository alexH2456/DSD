library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        hit             : in     vl_logic;
        led_mode        : in     vl_logic;
        new_hand        : in     vl_logic;
        reset           : in     vl_logic;
        stay            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_lab5_vlg_sample_tst;
