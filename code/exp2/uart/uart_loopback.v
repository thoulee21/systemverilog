
module uart_loopback(
    input       sys_clk,
    input       sys_rst_n,
    input       uart_rxd,

    output      uart_txd
);

//parameter define
parameter CLK_FREQ = 50000000;    //定义系统时钟频率
parameter UART_BPS = 115200  ;    //定义串口波特率


wire         uart_rx_done;    //UART接收完成信号
wire  [7:0]  uart_rx_data;    //UART接收数据

uart_rx     #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BPS  (UART_BPS)
    )
    u_uart_rx(
        .rx_clk              (sys_clk),
        .rst_n               (sys_rst_n),
        .uart_rxd            (uart_rxd),
        .uart_rx_done        (uart_rx_done),
        .uart_rx_data        (uart_rx_data)
    
);

uart_tx #(
    .CLK_FREQ  (CLK_FREQ),
    .UART_BPS  (UART_BPS)
)
u_uart_tx(
        .tx_clk              (sys_clk),
        .rst_n               (sys_rst_n),
        .uart_tx_en          (uart_rx_done),                       
        .uart_tx_data        (uart_rx_data),
        .uart_txd            (uart_txd),
        .uart_tx_busy        ()
);


endmodule
