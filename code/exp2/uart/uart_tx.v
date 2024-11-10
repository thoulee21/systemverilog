
module uart_tx(
    input                   tx_clk,
    input                   rst_n,
    input                   uart_tx_en,
    input        [7:0]      uart_tx_data,

    output      reg         uart_txd,
    output      reg         uart_tx_busy
);      

reg [7:0]            tx_data_t;
reg [15:0]           baud_cnt;
reg [3:0]            tx_cnt;



parameter CLK_FREQ = 50000000;              
parameter UART_BPS = 115200  ;              
localparam BAUD_CNT_MAX = CLK_FREQ/UART_BPS; //根据波特率和时钟频率能算出波特率最大值



//当uart_tx_en为高时，寄存输入的并行数据，并拉高BUSY信号
always @(posedge tx_clk or negedge rst_n) begin
    if(!rst_n) begin
        tx_data_t <= 8'b0;
        uart_tx_busy <= 1'b0;
    end
    //发送使能时，寄存要发送的数据，并拉高BUSY信号
    else if(uart_tx_en) begin
        tx_data_t <= uart_tx_data;
        uart_tx_busy <= 1'b1;
    end
    //当计数到停止位结束时，停止发送过程
    else if(tx_cnt == 4'd9 && baud_cnt == BAUD_CNT_MAX - 1) begin
        tx_data_t <= 8'b0;     //清空发送数据寄存器
        uart_tx_busy <= 1'b0;  //并拉低BUSY信号
    end
    else begin
        tx_data_t <= tx_data_t;
        uart_tx_busy <= uart_tx_busy;
    end
end

//对波特计数器赋值
always @(posedge tx_clk or negedge rst_n) begin
    if(!rst_n)
        baud_cnt <= 16'd0;
    else if(uart_tx_en)
        baud_cnt <= 16'd0;  
    else if(uart_tx_busy) begin
            if (baud_cnt < (BAUD_CNT_MAX-1))
                baud_cnt <= baud_cnt + 16'd1; 
            else
                baud_cnt <= 16'd0;
    end
    else 
        baud_cnt <= 16'd0; 
end
//tx_cnt进行赋值
always @(posedge tx_clk or negedge rst_n) begin
    if(!rst_n) 
        tx_cnt <= 4'd0;
    else if(uart_tx_en)  
        tx_cnt <= 16'd0;         
    else if(uart_tx_busy) begin             //处于发送过程时tx_cnt才进行计数
        if(baud_cnt == BAUD_CNT_MAX - 1'b1) //当波特率计数器计数到一个波特率周期时
            tx_cnt <= tx_cnt + 1'b1;        //发送数据计数器加1
        else
            tx_cnt <= tx_cnt;
    end
    else
        tx_cnt <= 4'd0;                     //发送过程结束时计数器清零
end



//对uart_txd赋值
always @(posedge tx_clk or negedge rst_n) begin
    if(!rst_n) 
        uart_txd <= 1'b1;
    else if(uart_tx_busy) begin
        case(tx_cnt) 
            4'd0 : uart_txd <= 1'b0        ; //起始位
            4'd1 : uart_txd <= tx_data_t[0]; //数据位最低位
            4'd2 : uart_txd <= tx_data_t[1];
            4'd3 : uart_txd <= tx_data_t[2];
            4'd4 : uart_txd <= tx_data_t[3];
            4'd5 : uart_txd <= tx_data_t[4];
            4'd6 : uart_txd <= tx_data_t[5];
            4'd7 : uart_txd <= tx_data_t[6];
            4'd8 : uart_txd <= tx_data_t[7]; //数据位最高位
            4'd9 : uart_txd <= 1'b1        ; //停止位
            default : uart_txd <= 1'b1;
        endcase
    end
    else
        uart_txd <= 1'b1;                    //空闲时发送端口为高电平
end


endmodule
