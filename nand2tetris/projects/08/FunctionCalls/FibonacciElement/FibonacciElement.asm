//Bootstrap code
@261
D=A
@SP
M=D
@Sys.init
0;JMP
//
//vm_name FibonacciElement/Main.vm
//
//function Main.fibonacci 0
(Main.fibonacci)
//init LCL
@0
D=A
//function's execution
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt                     // checks if n<2
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_0
D;JLT
@SP
A=M-1
M=0
(JLT_0)
//if-goto IF_TRUE
@SP
AM=M-1
D=M
@IF_TRUE
D;JNE
//goto IF_FALSE
@IF_FALSE
0;JMP
//label IF_TRUE          // if n<2, return n
(IF_TRUE)
//push argument 0        
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//return
//endFrame=LCL
@LCL
D=M
@endFrame
M=D
//retAddr=*(endFrame-5)
@endFrame
D=M
@5
A=D-A
D=M
@retAddr
M=D
//*ARG=pop()
@SP
AM=M-1
D=M
@ARG
A=M
M=D
//SP=ARG+1
@ARG
D=M+1
@SP
M=D
//THAT=*(endFrame-1)
@endFrame
A=M-1
D=M
@THAT
M=D
//THIS=*(endFrame-2)
@2
D=A
@endFrame
A=M-D
D=M
@THIS
M=D
//ARG=*(endFrame-3)
@3
D=A
@endFrame
A=M-D
D=M
@ARG
M=D
//LCL=*(endFrame-4)
@4
D=A
@endFrame
A=M-D
D=M
@LCL
M=D
//goto retAddr
@retAddr
A=M
0;JMP
//label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)
(IF_FALSE)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Main.fibonacci 1  // computes fib(n-2)
//push returnAddress
@ret_1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JMP
(ret_1)
//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Main.fibonacci 1  // computes fib(n-1)
//push returnAddress
@ret_2
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JMP
(ret_2)
//add                    // returns fib(n-1) + fib(n-2)
@SP
AM=M-1
D=M
A=A-1
M=D+M
//return
//endFrame=LCL
@LCL
D=M
@endFrame
M=D
//retAddr=*(endFrame-5)
@endFrame
D=M
@5
A=D-A
D=M
@retAddr
M=D
//*ARG=pop()
@SP
AM=M-1
D=M
@ARG
A=M
M=D
//SP=ARG+1
@ARG
D=M+1
@SP
M=D
//THAT=*(endFrame-1)
@endFrame
A=M-1
D=M
@THAT
M=D
//THIS=*(endFrame-2)
@2
D=A
@endFrame
A=M-D
D=M
@THIS
M=D
//ARG=*(endFrame-3)
@3
D=A
@endFrame
A=M-D
D=M
@ARG
M=D
//LCL=*(endFrame-4)
@4
D=A
@endFrame
A=M-D
D=M
@LCL
M=D
//goto retAddr
@retAddr
A=M
0;JMP
//
//vm_name FibonacciElement/Sys.vm
//
//function Sys.init 0
(Sys.init)
//init LCL
@0
D=A
//function's execution
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Main.fibonacci 1   // computes the 4'th fibonacci element
//push returnAddress
@ret_3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push LCL
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
//push ARG
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THIS
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//push THAT
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
//ARG=SP-5-nArgs
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Main.fibonacci
0;JMP
(ret_3)
//label WHILE
(WHILE)
//goto WHILE              // loops infinitely
@WHILE
0;JMP
