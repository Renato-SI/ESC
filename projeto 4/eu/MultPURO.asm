@R1
D=M
@i
M=D     // i = R1

@sum
M=0

(LOOP)
    @i
    D=M
    @STOP
    D;JEQ   // if  i == 0 goTo (STOP)

    @R0
    D=M     // Termo Multiplicador
    @sum
    M=D+M   // sum = R0 + sum (i vezes)

    @i
    M=M-1   // i = i - 1

    @LOOP
    0;JMP 

(STOP)
    @sum
    D=M
    @R2
    M=D // R2 = sum

(END)
    @END
    0;JMP