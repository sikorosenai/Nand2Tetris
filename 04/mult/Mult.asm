// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

  // initialising i
  @i
  M=1
  // for the case R1 = 0
  @R2
  M=0

(MULT)
  @i
  D=M
  @R1
  
  // i - @R1
  D=D-M
  
  // if i > @R1: jmp to END
  @END
  D;JGT

  // R0 = R2 + R0
  @R2
  D=M
  @R0
  D=D+M
  @R2
  M=D

  @i
  M=M+1
  @MULT
  0;JMP
(END)
  @END
  0;JMP