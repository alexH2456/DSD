library verilog;
use verilog.vl_types.all;
entity g03_addr is
    port(
        S0              : out    vl_logic;
        Cin             : in     vl_logic;
        A               : in     vl_logic;
        B               : in     vl_logic;
        Cout            : out    vl_logic
    );
end g03_addr;
