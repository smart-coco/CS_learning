//Bootstrap code
@261
D=A
@SP
M=D
@Sys.init
0;JMP
//
//vm_name NestedCall/Sys.vm
//
//function Sys.init 0
(Sys.init)
//init LCL
@0
D=A
//function's execution
//push constant 4000	// test THIS and THAT context save
@4000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5000
@5000
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//call Sys.main 0
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
@0
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Sys.main
0;JMP
(ret_1)
//pop temp 1
@5
D=A
@1
D=D+A
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//label LOOP
(LOOP)
//goto LOOP
@LOOP
0;JMP
//function Sys.main 5
(Sys.main)
//init LCL
@5
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
//push constant 4001
@4001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5001
@5001
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push constant 200
@200
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 1
@1
D=A
@LCL
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 2
@2
D=A
@LCL
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 3
@3
D=A
@LCL
D=D+M
@addr
M=D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.add12 1
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
@Sys.add12
0;JMP
(ret_2)
//pop temp 0
@5
D=A
@0
D=D+A
@addr
M=D
@SP
AM=M-1
D=M
@addr
A=M
M=D
//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//add
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
//function Sys.add12 0
(Sys.add12)
//init LCL
@0
D=A
//function's execution
//push constant 4002
@4002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push constant 5002
@5002
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//add
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
