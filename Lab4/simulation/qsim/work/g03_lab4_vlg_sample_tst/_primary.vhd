library verilog;
use verilog.vl_types.all;
entity g03_lab4_vlg_sample_tst is
    port(
        play            : in     vl_logic_vector(5 downto 0);
        top             : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end g03_lab4_vlg_sample_tst;
