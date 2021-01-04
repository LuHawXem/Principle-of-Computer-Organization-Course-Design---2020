# Principle of Computer Composition Course Design - 2020
### 广州大学计算机组成原理课程设计

#### 1. 课程设计的题目

设计并实现具有以下16条指令的指令集结构的模型计算机：

| 编号 | 助记符       | 机器指令码                       | 说明                               |
| ---- | ------------ | -------------------------------- | ---------------------------------- |
| 0    | SUB  Rd,Rs   | 0000  RdRs                       | Rd-Rs→Rd                           |
| 1    | ADD Rd,Rs    | 0001  RdRs                       | Rd+Rs→Rd                           |
| 2    | AND Rd,Rs    | 0010  RdRs                       | Rd&Rs→Rd （Rd和Rs相与）            |
| 3    | DEC Rd       | 0011  Rd00                       | 将Rd值减1                          |
| 4    | CLR Rd       | 0100  Rd00                       | 将Rd清零                           |
| 5    | RL Rd        | 0101  Rd00                       | Rd循环左移一位                     |
| 6    | RRC Rd       | 0110  Rd00                       | Rd带进位右移一位                   |
| 7    | MOV Rd,Rs    | 0111  RdRs                       | Rs→Rd                              |
| 8    | LDI  Rd,*    | 1000  Rd00  XXXXXXXX             | 将指令中的立即数（第二字节）送入Rd |
| 9    | OUT   IOH,Rs | 1001 00Rs                        | Rs→i/o(数据开关)高字节             |
| 10   | LDA   Rd,M   | 1010  Rd00  XXXXXXXX    XXXXXXXX | [M] →Rd                            |
| 11   | STA   M,Rs   | 1011  00Rs  XXXXXXXX  XXXXXXXX   | Rs→[M]                             |
| 12   | JMP M        | 1100  0000  XXXXXXXX  XXXXXXXX   | [M]→PC,即跳转到M所指单元           |
| 13   | JZ M         | 1101  0000  XXXXXXXX  XXXXXXXX   | 当Z=1时，跳转到M所指单元           |
| 14   | JC M         | 1110  0000  XXXXXXXX  XXXXXXXX   | 当CY=1时，跳转到M所指单元          |
| 15   | HALT         | 1111  0000                       | 停机                               |



#### 2. 检查方式

用所给的测试程序check20_1.asm测试13条非转移指令，check20_2.asm测试三条转移指令。

检查方法：在测试程序中#LOAD"本人的.IS"微指令程序，实验箱电源关闭重启并连接，装载后选择“运行”或“单步”执行。

check20_1.asm运行的正确结果为：寄存器R0R1R2R3分别显示00112233，IOH显示33。

check20_2.asm运行的正确结果为：寄存器R0R1R2R3分别显示00112233，如果显示EE则执行有错误。



#### 3. Tips

此处给出本人实现的微指令程序IS文件，实测运行无误，仅供参考，请在下载之后仔细阅读微指令代码，以理解设计思路，切勿应付了事（以免被老师问到答不上来）