// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

@SCREEN
D=A
@addr
M=D // Addres da Screen

@8192
D=A
@n
M=D // n = Ram[8192]

@i
M=0 // settando i = 0

(LOOP_TECLA)
    @i
    M=0 // Resetando o i

    @SCREEN
    D=A
    @addr
    M=D // Resetando o addres

    @KBD
    D=M 

    @BLACK
    D;JNE // if KBD != 0 goto BLACK

    @WHITE
    0;JMP // else goto WHITE

(BLACK)
    @i
    D=M
    @n
    D=D-M // i - n
    @LOOP_TECLA
    D;JEQ // if i - n == 0 goto LOOP

    @addr
    A=M
    M=-1 // Setando o RAM[addr] = -1 (Preto)
    @addr
    M=M+1 // addr = addr + 1

    @i
    M=M+1 

    @BLACK
    0;JMP // Vai ficar voltando pro Loop interno do pintar de preto ate acabar

(WHITE)
    @i
    D=M
    @n
    D=D-M // i - n
    @LOOP_TECLA
    D;JEQ // if i - n == 0 goto LOOP_TECLA

    @addr
    A=M
    M=0 // Setando o RAM[addr] = 0 (Branco)
    @addr
    M=M+1 // addr = addr + 1

    @i
    M=M+1

    @WHITE
    0;JMP // vai ficar voltando pro loop do pintar de branco ate acabar