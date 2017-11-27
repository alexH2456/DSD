library verilog;
use verilog.vl_types.all;
entity g03_lab5_vlg_check_tst is
    port(
        done            : in     vl_logic;
        request_deal    : in     vl_logic;
        state           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end g03_lab5_vlg_check_tst;
