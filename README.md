本练习提供了部分源代码，如果你能看懂，最好使用这些代码节省编程工作量。如果你不能看懂，那么可以自行编写代码。

Alu.v：一个纯组合逻辑的ALU，操作有aluop确定，其定义在包含的ctrl_encode_def.v文件中定义。注意BEQ指令应当使用ALUOp_EQL操作。

Dmem.v：一个简单的data memory模型。注意其初始化时要读取一个文件dmem.txt，如果你想让data memory开始有数据，那么需要在dmem.txt中添加数据，注意第一行对应的是地址0，第二行对应地址4，以此类推。

Imem.v：一个简单的instruction memory模型。和dmem.v类似，使用imem.txt来进行初始化。也就是说，你必须将MIPS指令的机器码逐行放到imem.txt中来执行。MIPS指令的机器码可以手工编写，也可以使用MARS编程器来产生。

Dmem.v和Imem.v中的addr地址输入要注意，其定义为input  [11:2] addr，也就是连接时应不连接mips处理器地址输出的低两位。Addr相当于字地址而不是字节地址。

instruction_def.v定义了大部分MIPS指令的操作码和function字段，以方便编写译码部分进行指令类型判断。

Regfile.v：两读一写的寄存器文件模型。如果使能debug控制，则可以打印寄存器最新值。

Mips.v：设计顶层。里面实例化了ALU、Regfile等模块。

Tb_mips.v：Testbench。里面实例化了mips、imem、dmem等模块以对mips模块进行测试。没有把imem/dmem模块放到mips中是为了在使用quartus布线时节约时间，也更加符合memory与cpu是两个独立芯片的实际情况。
