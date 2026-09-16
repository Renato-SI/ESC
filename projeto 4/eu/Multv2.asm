@i
M=0
@R2
M=0

(LOOP)
    @i
    D=M   // I DO FOR
    @R1
    D=D-M // Se i - n == 0, chegamos ao fim
    @END
    D;JGE

    @R0
    D=M   // Valor a ser multiplicado
    @R2
    M=D+M  // Chama R2 e soma com o valor de R0
    @i
    M=M+1  // Incrementa I

    @LOOP  // Voltar pra prÃ³xima iteraÃ§Ã£o
    0;JMP

(END)
    @END
    0;JMP