// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP0)
@16384
D=A
@SCREEM
M=D
@LOOP1
0;JMP
(LOOP1)
@24576
D=M
@LOOP2
D;JEQ
@24576
D=A
@SCREEM
D=M-D
@LOOP1
D;JEQ
@SCREEM
A=M
M=-1
@SCREEM
D=M
@1
D=D+A
@SCREEM
M=D
@LOOP1
0;JMP

(LOOP2)
@16384
D=A
@SCREEM
M=D
@LOOP3
0;JMP
(LOOP3)
@24576
D=M
@LOOP0
D;JGT
@24576
D=A
@SCREEM
D=M-D
@LOOP1
D;JGT
@SCREEM
A=M
M=0
@SCREEM
D=M
@1
D=D+A
@SCREEM
M=D
@LOOP3
0;JMP
