;课程设计检查程序2,含3条跳转指令：jz,jc,jmp
#LOAD "LuHawXem.IS"  ;预调入指令系统/微程序，用自己的微程序文件名称

org   0

start:
ldi r0,12h
sub r0,r0
jz p1
ldi r0,0eeh
p1:ldi r1,11h
ldi r2,0ffh
add r1,r2
jc p2
ldi r1,0eeh
jmp p3
p2:ldi r1,11h
p3:ldi r2,22h
ldi r3,011h
add r3,r2
jc p4
jmp p5
p4:ldi r2,0eeh
p5:halt

end
