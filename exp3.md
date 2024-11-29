# 实验三：简单TestBench编写

## 1. 实验目的

1. 学习使用VCS进行systemverilog的编译与波形输出
2. 学习使用verdi进行波形观察
3. 学习Makefile的编写

## 2. 设计分析

### 2.1 一位全加器设计(fa.v)

一位全加器采用直接的行为级建模：

```verilog
module fa(a, b, cin, sum, cout);
input a, b, cin;
output sum, cout;
assign {cout, sum} = a + b + cin;
endmodule
```

这种实现方式简洁明了，直接使用加法运算符实现了全加器功能。

### 2.2 四位加法器设计(add4.v)

四位加法器通过例化4个一位全加器并级联实现：

```verilog
module add4(a, b, cin, sum, cout);
input [3:0] a, b;
input cin;
output cout;
output [3:0] sum;
wire [3:1] c;

fa u1(a[0], b[0], cin, sum[0], c[1]);
fa u2(a[1], b[1], c[1], sum[1], c[2]);
fa u3(a[2], b[2], c[2], sum[2], c[3]);
fa u4(a[3], b[3], c[3], sum[3], cout);

endmodule
```

设计特点：
1. 采用模块化设计
2. 进位信号通过wire类型的c[3:1]连接
3. 每个全加器的进位输出连接到下一级的进位输入

### 2.3 八位加法器设计(add8.v)

八位加法���采用了超前进位的设计思想：

```verilog
module add8(a, b, cin, sum, cout);
input [7:0] a, b;
input cin;
output cout;
output [7:0] sum;
wire c4, c8_0, c8_1;
wire [7:4] sum_0, sum_1;

add4 u1(a[3:0], b[3:0], cin, sum[3:0], c4);
add4 low_add(a[7:4], b[7:4], 1'b0, sum_0, c8_0);
add4 high_add(a[7:4], b[7:4], 1'b1, sum_1, c8_1);

assign sum[7:4] = c4?sum_1:sum_0;
assign cout = c4?c8_1:c8_0;

endmodule
```

设计特点：
1. 使用超前进位技术减少延迟
2. 并行计算高4位在进位为0和1时的结果
3. 根据低4位的进位选择最终结果

### 2.4 测试平台设计(addertb.v)

测试平台实现了完整的验证功能：

```verilog
module addertb;
reg [7:0] a_test, b_test;
wire [7:0] sum_test;
reg cin_test;
wire cout_test;
reg [17:0] test;

add8 u1(a_test, b_test, cin_test, sum_test, cout_test);

initial
begin
  for (test = 0; test <= 18'h1ffff; test = test +1) begin
    cin_test = test[16];
    a_test = test[15:8];
    b_test = test[7:0];
    #50;
    if ({cout_test, sum_test} !== (a_test + b_test + cin_test)) begin
      $display("***ERROR at time = %0d ***", $time);
      $display("a = %h, b = %h, sum = %h;  cin = %h, cout = %h",
               a_test, b_test, sum_test, cin_test, cout_test);
      $finish;
    end
    #50;
  end
  $display("*** Testbench Successfully completed! ***");
  $finish;
end
```

测试特点：
1. 使用17位计数器遍历所有可能的输入组合
2. 自动比较计算结果与预期值
3. 提供详细的错误报告
4. 包含波形输出功能

## 3. 验证策略

1. 完整性验证：
   - 遍历所有可能的输入组合
   - 覆盖所有进位情况

2. 正确性验证：
   - 将加法器输出与直接加法结果比较
   - 检查进位传递的正确性

3. 时序验证：
   - 在数据变化后等待50个时间单位确保稳定
   - 使用fsdb波形文件记录所有信号

## 4. 实验结果

1. 功能验证：
   - 完成了所有输入组合的测试
   - 验证了加法器的正确性

2. 波形输出：
   - 成功生成fsdb波形文件
   - 可以使用Verdi查看详细波形
