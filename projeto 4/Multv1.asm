@R1
D=M
@i
M=D

@sum
M=0

(LOOP)
    @i
    D=M
    @STOP
    D;JEQ

    @R0
    D=M
    @sum
    M=D+M

    @i
    M=M-1

    @LOOP
    0;JMP

(STOP)
    @sum
    D=M
    @R2
    M=D

(END)
    @END
    0;JMP