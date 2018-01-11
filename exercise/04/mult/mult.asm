// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
 //R2 = 0
 @0
 D=A
 @R2
 M=D
//R0 >0 的時候才會繼續執行
(LOOP)
    @R0
    D=M
    @END
    D;JLE
// R2=R2+R1
    @R1
    D=M
    @R2
    M=M+D
//R1 =R1-1
    @R1
    M=M-1
    @LOOP
    0;JMP
(END)
    @END
    0;JMP  