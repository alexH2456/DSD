library verilog;
use verilog.vl_types.all;
entity g03_lab3 is
    port(
        empty           : out    vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        address         : in     vl_logic_vector(5 downto 0);
        data            : in     vl_logic_vector(5 downto 0);
        mode            : in     vl_logic_vector(1 downto 0);
        full            : out    vl_logic;
        num             : out    vl_logic_vector(5 downto 0);
        value           : out    vl_logic_vector(5 downto 0)
    );
end g03_lab3;
