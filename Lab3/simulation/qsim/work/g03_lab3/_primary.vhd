library verilog;
use verilog.vl_types.all;
entity g03_lab3 is
    port(
        altera_reserved_tms: in     vl_logic;
        altera_reserved_tck: in     vl_logic;
        altera_reserved_tdi: in     vl_logic;
        altera_reserved_tdo: out    vl_logic;
        empty           : out    vl_logic;
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        enable          : in     vl_logic;
        mode_floor      : in     vl_logic;
        mode_mod        : in     vl_logic;
        address         : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        \7_segment_floor\: out    vl_logic_vector(6 downto 0);
        \7_segment_mod\ : out    vl_logic_vector(6 downto 0);
        num             : out    vl_logic_vector(5 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end g03_lab3;
