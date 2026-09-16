// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

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