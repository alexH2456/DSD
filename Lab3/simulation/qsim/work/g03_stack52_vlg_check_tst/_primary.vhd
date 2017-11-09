library verilog;
use verilog.vl_types.all;
entity g03_stack52_vlg_check_tst is
    port(
        empty           : in     vl_logic;
        full            : in     vl_logic;
        num             : in     vl_logic_vector(5 downto 0);
        value0          : in     vl_logic;
        value1          : in     vl_logic;
        value2          : in     vl_logic;
        value3          : in     vl_logic;
        value4          : in     vl_logic;
        value5          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end g03_stack52_vlg_check_tst;
