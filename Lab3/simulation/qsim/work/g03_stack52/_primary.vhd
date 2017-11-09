library verilog;
use verilog.vl_types.all;
entity g03_stack52 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        empty           : out    vl_logic;
        num             : out    vl_logic_vector(5 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        enable          : in     vl_logic;
        value5          : out    vl_logic;
        address         : in     vl_logic_vector(5 downto 0);
        data            : in     vl_logic_vector(5 downto 0);
        value4          : out    vl_logic;
        value3          : out    vl_logic;
        value2          : out    vl_logic;
        value1          : out    vl_logic;
        value0          : out    vl_logic
    );
end g03_stack52;
