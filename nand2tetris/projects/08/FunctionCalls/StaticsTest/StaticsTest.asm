//Bootstrap code
@261
D=A
@SP
M=D
@Sys.init
0;JMP
//
//vm_name StaticsTest/Class1.vm
//
//function Class1.set 0
(Class1.set)
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
//pop static 0
@SP
AM=M-1
D=M
@Class1.vm.0
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Class1.vm.1
M=D
//push constant 0
@0
D=A
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
//function Class1.get 0
(Class1.get)
//init LCL
@0
D=A
//function's execution
//push static 0
@Class1.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Class1.vm.1
D=M
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
//vm_name StaticsTest/Sys.vm
//
//function Sys.init 0
(Sys.init)
//init LCL
@0
D=A
//function's execution
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Class1.set 2
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
@2
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Class1.set
0;JMP
(ret_1)
//pop temp 0 // Dumps the return value
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
//push constant 23
@23
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Class2.set 2
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
@2
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Class2.set
0;JMP
(ret_2)
//pop temp 0 // Dumps the return value
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
//call Class1.get 0
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
@Class1.get
0;JMP
(ret_3)
//call Class2.get 0
//push returnAddress
@ret_4
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
@Class2.get
0;JMP
(ret_4)
//label WHILE
(WHILE)
//goto WHILE
@WHILE
0;JMP
//
//vm_name StaticsTest/Class2.vm
//
//function Class2.set 0
(Class2.set)
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
//pop static 0
@SP
AM=M-1
D=M
@Class2.vm.0
M=D
//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Class2.vm.1
M=D
//push constant 0
@0
D=A
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
//function Class2.get 0
(Class2.get)
//init LCL
@0
D=A
//function's execution
//push static 0
@Class2.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Class2.vm.1
D=M
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
