lui 	x5, 0xF1F2F		#x5寄存器的高20位设置为0xF1F2F
addi	x5, x5, 0x3F4	#将x5寄存器的值设置为0xF1F2F3F4
nop
nop
nop
nop
sb		x5, 0(x0)		#数据内存地址0处的字节设置为0xF4
sb		x5, 1(x0)		#数据内存地址1处的字节设置为0xF4
sh		x5, 2(x0)		#数据内存地址2处的双字节设置为0xF3F4
sw		x5, 4(x0)		#数据内存地址4处的四字节设置为0xF1F2F3F4

