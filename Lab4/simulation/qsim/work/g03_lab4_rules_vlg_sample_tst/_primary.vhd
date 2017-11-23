library verilog;
use verilog.vl_types.all;
entity g03_lab4_rules_vlg_sample_tst is
    port(
        current_hand    : in     vl_logic_vector(5 downto 0);
        next_card       : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end g03_lab4_rules_vlg_sample_tst;
