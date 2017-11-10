library verilog;
use verilog.vl_types.all;
entity g03_lab3_vlg_sample_tst is
    port(
        address         : in     vl_logic_vector(5 downto 0);
        clock           : in     vl_logic;
        enable          : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        mode_floor      : in     vl_logic;
        mode_mod        : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end g03_lab3_vlg_sample_tst;
