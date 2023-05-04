//Bootstrap code
@261
D=A
@SP
M=D
@Sys.init
0;JMP
//
//vm_name Sys/String.vm
//
//function String.new 0
(String.new)
//init LCL
@0
D=A
//function's execution
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.alloc 1
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
@Memory.alloc
0;JMP
(ret_1)
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
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
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
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
@Sys.error
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_1
D;JGT
@SP
A=M-1
M=0
(JGT_1)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//call Array.new 1
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
@Array.new
0;JMP
(ret_3)
//pop this 1
@1
D=A
@THIS
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
//label IF_FALSE1
(IF_FALSE1)
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
//pop this 0
@0
D=A
@THIS
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
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
//push pointer 0
@THIS
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
//function String.dispose 0
(String.dispose)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_2
D;JGT
@SP
A=M-1
M=0
(JGT_2)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Array.dispose 1
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
@Array.dispose
0;JMP
(ret_4)
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
//label IF_FALSE0
(IF_FALSE0)
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push returnAddress
@ret_5
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
@Memory.deAlloc
0;JMP
(ret_5)
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
//function String.length 0
(String.length)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 2
@2
D=A
@THIS
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
//function String.charAt 0
(String.charAt)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_3
D;JLT
@SP
A=M-1
M=0
(JLT_3)
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_4
D;JGT
@SP
A=M-1
M=0
(JGT_4)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_0
D;JEQ
@SP
A=M-1
M=0
(JEQ_0)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_6
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
@Sys.error
0;JMP
(ret_6)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push this 1
@1
D=A
@THIS
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function String.setCharAt 0
(String.setCharAt)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_5
D;JLT
@SP
A=M-1
M=0
(JLT_5)
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_6
D;JGT
@SP
A=M-1
M=0
(JGT_6)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_1
D;JEQ
@SP
A=M-1
M=0
(JEQ_1)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_7
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
@Sys.error
0;JMP
(ret_7)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push this 1
@1
D=A
@THIS
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//function String.appendChar 0
(String.appendChar)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_2
D;JEQ
@SP
A=M-1
M=0
(JEQ_2)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_8
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
@Sys.error
0;JMP
(ret_8)
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
//label IF_FALSE0
(IF_FALSE0)
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push this 2
@2
D=A
@THIS
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop this 2
@2
D=A
@THIS
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
//push pointer 0
@THIS
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
//function String.eraseLastChar 0
(String.eraseLastChar)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_3
D;JEQ
@SP
A=M-1
M=0
(JEQ_3)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_9
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
@Sys.error
0;JMP
(ret_9)
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
//label IF_FALSE0
(IF_FALSE0)
//push this 2
@2
D=A
@THIS
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
//pop this 2
@2
D=A
@THIS
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
//function String.intValue 5
(String.intValue)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_4
D;JEQ
@SP
A=M-1
M=0
(JEQ_4)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//label IF_FALSE0
(IF_FALSE0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_5
D;JEQ
@SP
A=M-1
M=0
(JEQ_5)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop local 4
@4
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label IF_FALSE1
(IF_FALSE1)
//label WHILE_EXP0
(WHILE_EXP0)
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
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_7
D;JLT
@SP
A=M-1
M=0
(JLT_7)
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
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push this 1
@1
D=A
@THIS
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_8
D;JLT
@SP
A=M-1
M=0
(JLT_8)
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
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_9
D;JGT
@SP
A=M-1
M=0
(JGT_9)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//not
@SP
A=M-1
M=!M
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
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_10
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
@Math.multiply
0;JMP
(ret_10)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//push constant 1
@1
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
//pop local 0
@0
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
//label IF_FALSE2
(IF_FALSE2)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
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
//neg
@SP
A=M-1
M=-M
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
//label IF_FALSE3
(IF_FALSE3)
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
//function String.setInt 4
(String.setInt)
//init LCL
@4
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_6
D;JEQ
@SP
A=M-1
M=0
(JEQ_6)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_11
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
@Sys.error
0;JMP
(ret_11)
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
//label IF_FALSE0
(IF_FALSE0)
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_12
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
@Array.new
0;JMP
(ret_12)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_10
D;JLT
@SP
A=M-1
M=0
(JLT_10)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
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
//neg
@SP
A=M-1
M=-M
//pop argument 1
@1
D=A
@ARG
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
//label IF_FALSE1
(IF_FALSE1)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_11
D;JGT
@SP
A=M-1
M=0
(JGT_11)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_13
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
@Math.divide
0;JMP
(ret_13)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_14
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
@Math.multiply
0;JMP
(ret_14)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
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
//pop local 0
@0
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
//pop argument 1
@1
D=A
@ARG
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
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
//pop local 0
@0
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
//label IF_FALSE2
(IF_FALSE2)
//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_12
D;JLT
@SP
A=M-1
M=0
(JLT_12)
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_15
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
@Sys.error
0;JMP
(ret_15)
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
//label IF_FALSE3
(IF_FALSE3)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_7
D;JEQ
@SP
A=M-1
M=0
(JEQ_7)
//if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE
//goto IF_FALSE4
@IF_FALSE4
0;JMP
//label IF_TRUE4
(IF_TRUE4)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
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
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
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
//goto IF_END4
@IF_END4
0;JMP
//label IF_FALSE4
(IF_FALSE4)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop this 2
@2
D=A
@THIS
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
//label WHILE_EXP1
(WHILE_EXP1)
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_13
D;JLT
@SP
A=M-1
M=0
(JLT_13)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push this 1
@1
D=A
@THIS
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
//push this 2
@2
D=A
@THIS
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push this 2
@2
D=A
@THIS
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop this 2
@2
D=A
@THIS
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
//goto WHILE_EXP1
@WHILE_EXP1
0;JMP
//label WHILE_END1
(WHILE_END1)
//label IF_END4
(IF_END4)
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
//call Array.dispose 1
//push returnAddress
@ret_16
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
@Array.dispose
0;JMP
(ret_16)
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
//function String.newLine 0
(String.newLine)
//init LCL
@0
D=A
//function's execution
//push constant 128
@128
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
//function String.backSpace 0
(String.backSpace)
//init LCL
@0
D=A
//function's execution
//push constant 129
@129
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
//function String.doubleQuote 0
(String.doubleQuote)
//init LCL
@0
D=A
//function's execution
//push constant 34
@34
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
//
//vm_name Sys/Array.vm
//
//function Array.new 0
(Array.new)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_14
D;JGT
@SP
A=M-1
M=0
(JGT_14)
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_17
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
@Sys.error
0;JMP
(ret_17)
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
//label IF_FALSE0
(IF_FALSE0)
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
//call Memory.alloc 1
//push returnAddress
@ret_18
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
@Memory.alloc
0;JMP
(ret_18)
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
//function Array.dispose 0
(Array.dispose)
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
//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D
//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Memory.deAlloc 1
//push returnAddress
@ret_19
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
@Memory.deAlloc
0;JMP
(ret_19)
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
//
//vm_name Sys/Screen.vm
//
//function Screen.init 1
(Screen.init)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Screen.vm.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop static 2
@SP
AM=M-1
D=M
@Screen.vm.2
M=D
//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_20
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
@Array.new
0;JMP
(ret_20)
//pop static 0
@SP
AM=M-1
D=M
@Screen.vm.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.vm.0
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_15
D;JLT
@SP
A=M-1
M=0
(JLT_15)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push constant 1
@1
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
//pop local 0
@0
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
//push static 0
@Screen.vm.0
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
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Screen.clearScreen 1
(Screen.clearScreen)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 8192
@8192
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_16
D;JLT
@SP
A=M-1
M=0
(JLT_16)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push static 1
@Screen.vm.1
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
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
//pop local 0
@0
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Screen.updateLocation 0
(Screen.updateLocation)
//init LCL
@0
D=A
//function's execution
//push static 2
@Screen.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//push static 1
@Screen.vm.1
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
//push static 1
@Screen.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
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
//push static 1
@Screen.vm.1
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
//push static 1
@Screen.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label IF_END0
(IF_END0)
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
//function Screen.setColor 0
(Screen.setColor)
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
//pop static 2
@SP
AM=M-1
D=M
@Screen.vm.2
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
//function Screen.drawPixel 3
(Screen.drawPixel)
//init LCL
@3
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_17
D;JLT
@SP
A=M-1
M=0
(JLT_17)
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
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_18
D;JGT
@SP
A=M-1
M=0
(JGT_18)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_19
D;JLT
@SP
A=M-1
M=0
(JLT_19)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_20
D;JGT
@SP
A=M-1
M=0
(JGT_20)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_21
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
@Sys.error
0;JMP
(ret_21)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_22
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
@Math.divide
0;JMP
(ret_22)
//pop local 0
@0
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_23
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
@Math.multiply
0;JMP
(ret_23)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_24
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
@Math.multiply
0;JMP
(ret_24)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.updateLocation 2
//push returnAddress
@ret_25
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
@Screen.updateLocation
0;JMP
(ret_25)
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
//function Screen.drawConditional 0
(Screen.drawConditional)
//init LCL
@0
D=A
//function's execution
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//call Screen.drawPixel 2
//push returnAddress
@ret_26
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
@Screen.drawPixel
0;JMP
(ret_26)
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
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
//call Screen.drawPixel 2
//push returnAddress
@ret_27
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
@Screen.drawPixel
0;JMP
(ret_27)
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
//label IF_END0
(IF_END0)
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
//function Screen.drawLine 11
(Screen.drawLine)
//init LCL
@11
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
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_21
D;JLT
@SP
A=M-1
M=0
(JLT_21)
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_22
D;JGT
@SP
A=M-1
M=0
(JGT_22)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_23
D;JLT
@SP
A=M-1
M=0
(JLT_23)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_24
D;JGT
@SP
A=M-1
M=0
(JGT_24)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_28
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
@Sys.error
0;JMP
(ret_28)
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
//label IF_FALSE0
(IF_FALSE0)
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Math.abs 1
//push returnAddress
@ret_29
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
@Math.abs
0;JMP
(ret_29)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Math.abs 1
//push returnAddress
@ret_30
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
@Math.abs
0;JMP
(ret_30)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_25
D;JLT
@SP
A=M-1
M=0
(JLT_25)
//pop local 6
@6
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
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_26
D;JLT
@SP
A=M-1
M=0
(JLT_26)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_27
D;JLT
@SP
A=M-1
M=0
(JLT_27)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//pop local 4
@4
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
@0
D=A
@ARG
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
//pop argument 2
@2
D=A
@ARG
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
//pop local 4
@4
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop argument 1
@1
D=A
@ARG
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
//pop argument 3
@3
D=A
@ARG
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
//label IF_FALSE1
(IF_FALSE1)
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//pop local 4
@4
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
//pop local 0
@0
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 8
@8
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_28
D;JGT
@SP
A=M-1
M=0
(JGT_28)
//pop local 7
@7
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
//goto IF_END2
@IF_END2
0;JMP
//label IF_FALSE2
(IF_FALSE2)
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
//pop local 0
@0
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 8
@8
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_29
D;JGT
@SP
A=M-1
M=0
(JGT_29)
//pop local 7
@7
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
//label IF_END2
(IF_END2)
//push constant 2
@2
D=A
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
//call Math.multiply 2
//push returnAddress
@ret_31
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
@Math.multiply
0;JMP
(ret_31)
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 5
@5
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
//push constant 2
@2
D=A
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
//call Math.multiply 2
//push returnAddress
@ret_32
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
@Math.multiply
0;JMP
(ret_32)
//pop local 9
@9
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
//push constant 2
@2
D=A
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Math.multiply 2
//push returnAddress
@ret_33
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
@Math.multiply
0;JMP
(ret_33)
//pop local 10
@10
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
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawConditional 3
//push returnAddress
@ret_34
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawConditional
0;JMP
(ret_34)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_30
D;JLT
@SP
A=M-1
M=0
(JLT_30)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_31
D;JLT
@SP
A=M-1
M=0
(JLT_31)
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 9
@9
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
//pop local 5
@5
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
//goto IF_END3
@IF_END3
0;JMP
//label IF_FALSE3
(IF_FALSE3)
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 10
@10
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
//pop local 5
@5
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
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE
//goto IF_FALSE4
@IF_FALSE4
0;JMP
//label IF_TRUE4
(IF_TRUE4)
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
//pop local 0
@0
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
//goto IF_END4
@IF_END4
0;JMP
//label IF_FALSE4
(IF_FALSE4)
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
//push constant 1
@1
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
//pop local 0
@0
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
//label IF_END4
(IF_END4)
//label IF_END3
(IF_END3)
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
//push constant 1
@1
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
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.drawConditional 3
//push returnAddress
@ret_35
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawConditional
0;JMP
(ret_35)
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Screen.drawRectangle 9
(Screen.drawRectangle)
//init LCL
@9
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_32
D;JGT
@SP
A=M-1
M=0
(JGT_32)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_33
D;JGT
@SP
A=M-1
M=0
(JGT_33)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_34
D;JLT
@SP
A=M-1
M=0
(JLT_34)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_35
D;JGT
@SP
A=M-1
M=0
(JGT_35)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_36
D;JLT
@SP
A=M-1
M=0
(JLT_36)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_37
D;JGT
@SP
A=M-1
M=0
(JGT_37)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_36
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
@Sys.error
0;JMP
(ret_36)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_37
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
@Math.divide
0;JMP
(ret_37)
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_38
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
@Math.multiply
0;JMP
(ret_38)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 7
@7
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_39
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
@Math.divide
0;JMP
(ret_39)
//pop local 4
@4
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
//push argument 2
@2
D=A
@ARG
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_40
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
@Math.multiply
0;JMP
(ret_40)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 8
@8
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
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//not
@SP
A=M-1
M=!M
//pop local 6
@6
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
//push local 8
@8
D=A
@LCL
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop local 5
@5
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_41
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
@Math.multiply
0;JMP
(ret_41)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop local 0
@0
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_38
D;JGT
@SP
A=M-1
M=0
(JGT_38)
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_8
D;JEQ
@SP
A=M-1
M=0
(JEQ_8)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//call Screen.updateLocation 2
//push returnAddress
@ret_42
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
@Screen.updateLocation
0;JMP
(ret_42)
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
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
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.updateLocation 2
//push returnAddress
@ret_43
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
@Screen.updateLocation
0;JMP
(ret_43)
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
//push constant 1
@1
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
//pop local 0
@0
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
//label WHILE_EXP1
(WHILE_EXP1)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_39
D;JLT
@SP
A=M-1
M=0
(JLT_39)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.updateLocation 2
//push returnAddress
@ret_44
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
@Screen.updateLocation
0;JMP
(ret_44)
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
//push constant 1
@1
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
//pop local 0
@0
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
//goto WHILE_EXP1
@WHILE_EXP1
0;JMP
//label WHILE_END1
(WHILE_END1)
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.updateLocation 2
//push returnAddress
@ret_45
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
@Screen.updateLocation
0;JMP
(ret_45)
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
//label IF_END1
(IF_END1)
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
//push constant 1
@1
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
//pop argument 1
@1
D=A
@ARG
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
//push constant 32
@32
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 0
@0
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Screen.drawHorizontal 11
(Screen.drawHorizontal)
//init LCL
@11
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
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.min 2
//push returnAddress
@ret_46
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
@Math.min
0;JMP
(ret_46)
//pop local 7
@7
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
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Math.max 2
//push returnAddress
@ret_47
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
@Math.max
0;JMP
(ret_47)
//pop local 8
@8
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
//neg
@SP
A=M-1
M=-M
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_40
D;JGT
@SP
A=M-1
M=0
(JGT_40)
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
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_41
D;JLT
@SP
A=M-1
M=0
(JLT_41)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 512
@512
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_42
D;JLT
@SP
A=M-1
M=0
(JLT_42)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//push local 8
@8
D=A
@LCL
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
//neg
@SP
A=M-1
M=-M
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_43
D;JGT
@SP
A=M-1
M=0
(JGT_43)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.max 2
//push returnAddress
@ret_48
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
@Math.max
0;JMP
(ret_48)
//pop local 7
@7
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
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.min 2
//push returnAddress
@ret_49
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
@Math.min
0;JMP
(ret_49)
//pop local 8
@8
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
//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_50
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
@Math.divide
0;JMP
(ret_50)
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
//push local 7
@7
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_51
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
@Math.multiply
0;JMP
(ret_51)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 9
@9
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
//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_52
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
@Math.divide
0;JMP
(ret_52)
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
//push local 8
@8
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
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_53
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
@Math.multiply
0;JMP
(ret_53)
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 10
@10
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
//push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//not
@SP
A=M-1
M=!M
//pop local 5
@5
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
//push local 10
@10
D=A
@LCL
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push static 0
@Screen.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop local 4
@4
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_54
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
@Math.multiply
0;JMP
(ret_54)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop local 0
@0
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 6
@6
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
//push local 6
@6
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
//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_9
D;JEQ
@SP
A=M-1
M=0
(JEQ_9)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//call Screen.updateLocation 2
//push returnAddress
@ret_55
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
@Screen.updateLocation
0;JMP
(ret_55)
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
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
//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Screen.updateLocation 2
//push returnAddress
@ret_56
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
@Screen.updateLocation
0;JMP
(ret_56)
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
//push constant 1
@1
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
//pop local 0
@0
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_44
D;JLT
@SP
A=M-1
M=0
(JLT_44)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//call Screen.updateLocation 2
//push returnAddress
@ret_57
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
@Screen.updateLocation
0;JMP
(ret_57)
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
//push constant 1
@1
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
//pop local 0
@0
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//call Screen.updateLocation 2
//push returnAddress
@ret_58
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
@Screen.updateLocation
0;JMP
(ret_58)
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
//label IF_END1
(IF_END1)
//label IF_FALSE0
(IF_FALSE0)
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
//function Screen.drawSymetric 0
(Screen.drawSymetric)
//init LCL
@0
D=A
//function's execution
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
//push argument 3
@3
D=A
@ARG
A=D+M
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
//push argument 2
@2
D=A
@ARG
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
//push argument 2
@2
D=A
@ARG
A=D+M
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
//call Screen.drawHorizontal 3
//push returnAddress
@ret_59
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawHorizontal
0;JMP
(ret_59)
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
//push argument 3
@3
D=A
@ARG
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
//push argument 2
@2
D=A
@ARG
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
//push argument 2
@2
D=A
@ARG
A=D+M
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
//call Screen.drawHorizontal 3
//push returnAddress
@ret_60
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawHorizontal
0;JMP
(ret_60)
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
//push argument 2
@2
D=A
@ARG
A=D+M
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
//push argument 3
@3
D=A
@ARG
A=D+M
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
//push argument 3
@3
D=A
@ARG
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
//call Screen.drawHorizontal 3
//push returnAddress
@ret_61
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawHorizontal
0;JMP
(ret_61)
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
//push argument 2
@2
D=A
@ARG
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
//push argument 3
@3
D=A
@ARG
A=D+M
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
//push argument 3
@3
D=A
@ARG
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
//call Screen.drawHorizontal 3
//push returnAddress
@ret_62
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
@3
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawHorizontal
0;JMP
(ret_62)
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
//function Screen.drawCircle 3
(Screen.drawCircle)
//init LCL
@3
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_45
D;JLT
@SP
A=M-1
M=0
(JLT_45)
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
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_46
D;JGT
@SP
A=M-1
M=0
(JGT_46)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_47
D;JLT
@SP
A=M-1
M=0
(JLT_47)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_48
D;JGT
@SP
A=M-1
M=0
(JGT_48)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_63
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
@Sys.error
0;JMP
(ret_63)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push argument 2
@2
D=A
@ARG
A=D+M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_49
D;JLT
@SP
A=M-1
M=0
(JLT_49)
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
//push argument 2
@2
D=A
@ARG
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
//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_50
D;JGT
@SP
A=M-1
M=0
(JGT_50)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push argument 2
@2
D=A
@ARG
A=D+M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_51
D;JLT
@SP
A=M-1
M=0
(JLT_51)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push argument 2
@2
D=A
@ARG
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
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_52
D;JGT
@SP
A=M-1
M=0
(JGT_52)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_64
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
@Sys.error
0;JMP
(ret_64)
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
//label IF_FALSE1
(IF_FALSE1)
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//push argument 2
@2
D=A
@ARG
A=D+M
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
//call Screen.drawSymetric 4
//push returnAddress
@ret_65
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawSymetric
0;JMP
(ret_65)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_53
D;JGT
@SP
A=M-1
M=0
(JGT_53)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_54
D;JLT
@SP
A=M-1
M=0
(JLT_54)
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//call Math.multiply 2
//push returnAddress
@ret_66
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
@Math.multiply
0;JMP
(ret_66)
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 3
@3
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
//goto IF_END2
@IF_END2
0;JMP
//label IF_FALSE2
(IF_FALSE2)
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//call Math.multiply 2
//push returnAddress
@ret_67
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
@Math.multiply
0;JMP
(ret_67)
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 5
@5
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
//label IF_END2
(IF_END2)
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
//push constant 1
@1
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
//pop local 0
@0
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
//call Screen.drawSymetric 4
//push returnAddress
@ret_68
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
@4
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Screen.drawSymetric
0;JMP
(ret_68)
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//
//vm_name Sys/Output.vm
//
//function Output.init 0
(Output.init)
//init LCL
@0
D=A
//function's execution
//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 4
@SP
AM=M-1
D=M
@Output.vm.4
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push returnAddress
@ret_69
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
@String.new
0;JMP
(ret_69)
//pop static 3
@SP
AM=M-1
D=M
@Output.vm.3
M=D
//call Output.initMap 0
//push returnAddress
@ret_70
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
@Output.initMap
0;JMP
(ret_70)
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
//call Output.createShiftedMap 0
//push returnAddress
@ret_71
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
@Output.createShiftedMap
0;JMP
(ret_71)
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
//function Output.initMap 0
(Output.initMap)
//init LCL
@0
D=A
//function's execution
//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_72
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
@Array.new
0;JMP
(ret_72)
//pop static 5
@SP
AM=M-1
D=M
@Output.vm.5
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_73
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_73)
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_74
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_74)
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
//push constant 33
@33
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_75
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_75)
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
//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_76
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_76)
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
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_77
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_77)
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
//push constant 36
@36
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_78
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_78)
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
//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_79
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_79)
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
//push constant 38
@38
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_80
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_80)
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
//push constant 39
@39
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_81
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_81)
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
//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_82
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_82)
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
//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_83
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_83)
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
//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_84
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_84)
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
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_85
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_85)
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
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_86
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_86)
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
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_87
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_87)
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
//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_88
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_88)
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
//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_89
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_89)
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
//push constant 48
@48
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_90
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_90)
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
//push constant 49
@49
D=A
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
//push constant 14
@14
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_91
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_91)
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
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_92
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_92)
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
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_93
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_93)
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
//push constant 52
@52
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_94
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_94)
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
//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_95
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_95)
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
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_96
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_96)
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
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_97
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_97)
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
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_98
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_98)
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
//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_99
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_99)
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
//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_100
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_100)
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
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_101
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_101)
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
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_102
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_102)
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
//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_103
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_103)
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
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_104
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_104)
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
//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_105
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_105)
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
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_106
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_106)
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
//push constant 65
@65
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_107
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_107)
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
//push constant 66
@66
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_108
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_108)
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
//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_109
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_109)
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
//push constant 68
@68
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_110
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_110)
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
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_111
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_111)
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
//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 11
@11
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_112
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_112)
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
//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_113
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_113)
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
//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_114
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_114)
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
//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_115
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_115)
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
//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_116
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_116)
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
//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_117
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_117)
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
//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_118
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_118)
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
//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_119
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_119)
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
//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_120
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_120)
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
//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_121
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_121)
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
//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_122
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_122)
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
//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_123
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_123)
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
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_124
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_124)
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
//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_125
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_125)
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
//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_126
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_126)
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
//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_127
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_127)
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
//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_128
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_128)
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
//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_129
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_129)
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
//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_130
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_130)
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
//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_131
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_131)
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
//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_132
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_132)
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
//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_133
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_133)
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
//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
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
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_134
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_134)
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
//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_135
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_135)
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
//push constant 94
@94
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
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_136
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_136)
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
//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_137
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_137)
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
//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
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
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_138
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_138)
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
//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_139
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_139)
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
//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
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
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_140
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_140)
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
//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_141
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_141)
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
//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_142
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_142)
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
//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_143
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_143)
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
//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_144
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_144)
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
//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_145
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_145)
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
//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_146
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_146)
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
//push constant 105
@105
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_147
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_147)
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
//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_148
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_148)
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
//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
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
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_149
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_149)
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
//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 14
@14
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_150
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_150)
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
//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_151
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_151)
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
//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_152
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_152)
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
//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_153
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_153)
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
//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_154
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_154)
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
//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_155
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_155)
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
//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_156
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_156)
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
//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_157
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_157)
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
//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_158
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_158)
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
//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_159
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_159)
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
//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_160
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_160)
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
//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_161
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_161)
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
//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
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
//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_162
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_162)
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
//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 24
@24
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_163
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_163)
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
//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 27
@27
D=A
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
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_164
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_164)
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
//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 56
@56
D=A
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
//push constant 12
@12
D=A
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
//push constant 7
@7
D=A
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
//push constant 12
@12
D=A
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
//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_165
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_165)
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
//push constant 124
@124
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 12
@12
D=A
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_166
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_166)
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
//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 7
@7
D=A
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
//push constant 12
@12
D=A
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
//push constant 56
@56
D=A
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
//push constant 12
@12
D=A
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
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_167
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_167)
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
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.create 12
//push returnAddress
@ret_168
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
@12
D=D-A
@ARG
M=D
//LCL=SP
@SP
D=M
@LCL
M=D
//goto functionName
@Output.create
0;JMP
(ret_168)
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
//function Output.create 1
(Output.create)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_169
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
@Array.new
0;JMP
(ret_169)
//pop local 0
@0
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
//push static 5
@Output.vm.5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 6
@6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 7
@7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 8
@8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 9
@9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 10
@10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push argument 11
@11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//function Output.createShiftedMap 4
(Output.createShiftedMap)
//init LCL
@4
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
//function's execution
//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_170
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
@Array.new
0;JMP
(ret_170)
//pop static 6
@SP
AM=M-1
D=M
@Output.vm.6
M=D
//push constant 0
@0
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_55
D;JLT
@SP
A=M-1
M=0
(JLT_55)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push static 5
@Output.vm.5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_171
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
@Array.new
0;JMP
(ret_171)
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
//push static 6
@Output.vm.6
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 0
@0
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
//label WHILE_EXP1
(WHILE_EXP1)
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_56
D;JLT
@SP
A=M-1
M=0
(JLT_56)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_172
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
@Math.multiply
0;JMP
(ret_172)
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
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
//goto WHILE_EXP1
@WHILE_EXP1
0;JMP
//label WHILE_END1
(WHILE_END1)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_10
D;JEQ
@SP
A=M-1
M=0
(JEQ_10)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 32
@32
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 1
@1
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
//label IF_END0
(IF_END0)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Output.getMap 1
(Output.getMap)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_57
D;JLT
@SP
A=M-1
M=0
(JLT_57)
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
//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_58
D;JGT
@SP
A=M-1
M=0
(JGT_58)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
@0
D=A
@ARG
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
//label IF_FALSE0
(IF_FALSE0)
//push static 2
@Output.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//push static 5
@Output.vm.5
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
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
//push static 6
@Output.vm.6
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label IF_END1
(IF_END1)
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
//function Output.drawChar 4
(Output.drawChar)
//init LCL
@4
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
//call Output.getMap 1
//push returnAddress
@ret_173
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
@Output.getMap
0;JMP
(ret_173)
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
//push static 1
@Output.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_59
D;JLT
@SP
A=M-1
M=0
(JLT_59)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//push static 2
@Output.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//push static 4
@Output.vm.4
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
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
//push static 4
@Output.vm.4
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 255
@255
D=A
@SP
A=M
M=D
@SP
M=M+1
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
//label IF_END0
(IF_END0)
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
//push static 4
@Output.vm.4
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 32
@32
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
//pop local 0
@0
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
//push constant 1
@1
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Output.moveCursor 0
(Output.moveCursor)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_60
D;JLT
@SP
A=M-1
M=0
(JLT_60)
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
//push constant 22
@22
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_61
D;JGT
@SP
A=M-1
M=0
(JGT_61)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_62
D;JLT
@SP
A=M-1
M=0
(JLT_62)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_63
D;JGT
@SP
A=M-1
M=0
(JGT_63)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_174
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
@Sys.error
0;JMP
(ret_174)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.divide 2
//push returnAddress
@ret_175
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
@Math.divide
0;JMP
(ret_175)
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Math.multiply 2
//push returnAddress
@ret_176
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
@Math.multiply
0;JMP
(ret_176)
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push static 0
@Output.vm.0
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
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
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
//push static 0
@Output.vm.0
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
//call Math.multiply 2
//push returnAddress
@ret_177
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
@Math.multiply
0;JMP
(ret_177)
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_11
D;JEQ
@SP
A=M-1
M=0
(JEQ_11)
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.drawChar 1
//push returnAddress
@ret_178
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
@Output.drawChar
0;JMP
(ret_178)
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
//function Output.printChar 0
(Output.printChar)
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
//call String.newLine 0
//push returnAddress
@ret_179
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
@String.newLine
0;JMP
(ret_179)
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_12
D;JEQ
@SP
A=M-1
M=0
(JEQ_12)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//call Output.println 0
//push returnAddress
@ret_180
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
@Output.println
0;JMP
(ret_180)
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
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
//call String.backSpace 0
//push returnAddress
@ret_181
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
@String.backSpace
0;JMP
(ret_181)
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_13
D;JEQ
@SP
A=M-1
M=0
(JEQ_13)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//call Output.backSpace 0
//push returnAddress
@ret_182
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
@Output.backSpace
0;JMP
(ret_182)
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
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
//call Output.drawChar 1
//push returnAddress
@ret_183
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
@Output.drawChar
0;JMP
(ret_183)
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
//push static 2
@Output.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
//push static 0
@Output.vm.0
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push static 1
@Output.vm.1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//label IF_FALSE2
(IF_FALSE2)
//push static 0
@Output.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_14
D;JEQ
@SP
A=M-1
M=0
(JEQ_14)
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
//call Output.println 0
//push returnAddress
@ret_184
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
@Output.println
0;JMP
(ret_184)
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
//goto IF_END3
@IF_END3
0;JMP
//label IF_FALSE3
(IF_FALSE3)
//push static 2
@Output.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//label IF_END3
(IF_END3)
//label IF_END1
(IF_END1)
//label IF_END0
(IF_END0)
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
//function Output.printString 2
(Output.printString)
//init LCL
@2
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
//call String.length 1
//push returnAddress
@ret_185
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
@String.length
0;JMP
(ret_185)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_64
D;JLT
@SP
A=M-1
M=0
(JLT_64)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//call String.charAt 2
//push returnAddress
@ret_186
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
@String.charAt
0;JMP
(ret_186)
//call Output.printChar 1
//push returnAddress
@ret_187
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
@Output.printChar
0;JMP
(ret_187)
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
//push constant 1
@1
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
//pop local 0
@0
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Output.printInt 0
(Output.printInt)
//init LCL
@0
D=A
//function's execution
//push static 3
@Output.vm.3
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//call String.setInt 2
//push returnAddress
@ret_188
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
@String.setInt
0;JMP
(ret_188)
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
//push static 3
@Output.vm.3
D=M
@SP
A=M
M=D
@SP
M=M+1
//call Output.printString 1
//push returnAddress
@ret_189
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
@Output.printString
0;JMP
(ret_189)
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
//function Output.println 0
(Output.println)
//init LCL
@0
D=A
//function's execution
//push static 1
@Output.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 352
@352
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
//push static 0
@Output.vm.0
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
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//push static 1
@Output.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_15
D;JEQ
@SP
A=M-1
M=0
(JEQ_15)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//label IF_FALSE0
(IF_FALSE0)
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
//function Output.backSpace 0
(Output.backSpace)
//init LCL
@0
D=A
//function's execution
//push static 2
@Output.vm.2
D=M
@SP
A=M
M=D
@SP
M=M+1
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push static 0
@Output.vm.0
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_65
D;JGT
@SP
A=M-1
M=0
(JGT_65)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push static 0
@Output.vm.0
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
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push static 1
@Output.vm.1
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
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Output.vm.0
M=D
//push static 1
@Output.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_16
D;JEQ
@SP
A=M-1
M=0
(JEQ_16)
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//label IF_FALSE2
(IF_FALSE2)
//push static 1
@Output.vm.1
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 321
@321
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
//pop static 1
@SP
AM=M-1
D=M
@Output.vm.1
M=D
//label IF_END1
(IF_END1)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//pop static 2
@SP
AM=M-1
D=M
@Output.vm.2
M=D
//label IF_END0
(IF_END0)
//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.drawChar 1
//push returnAddress
@ret_190
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
@Output.drawChar
0;JMP
(ret_190)
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
//
//vm_name Sys/Sys.vm
//
//function Sys.init 0
(Sys.init)
//init LCL
@0
D=A
//function's execution
//call Memory.init 0
//push returnAddress
@ret_191
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
@Memory.init
0;JMP
(ret_191)
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
//call Math.init 0
//push returnAddress
@ret_192
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
@Math.init
0;JMP
(ret_192)
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
//call Screen.init 0
//push returnAddress
@ret_193
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
@Screen.init
0;JMP
(ret_193)
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
//call Output.init 0
//push returnAddress
@ret_194
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
@Output.init
0;JMP
(ret_194)
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
//call Keyboard.init 0
//push returnAddress
@ret_195
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
@Keyboard.init
0;JMP
(ret_195)
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
//call Main.main 0
//push returnAddress
@ret_196
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
@Main.main
0;JMP
(ret_196)
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
//call Sys.halt 0
//push returnAddress
@ret_197
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
@Sys.halt
0;JMP
(ret_197)
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
//function Sys.halt 0
(Sys.halt)
//init LCL
@0
D=A
//function's execution
//label WHILE_EXP0
(WHILE_EXP0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Sys.wait 1
(Sys.wait)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_66
D;JLT
@SP
A=M-1
M=0
(JLT_66)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_198
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
@Sys.error
0;JMP
(ret_198)
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
//label IF_FALSE0
(IF_FALSE0)
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_67
D;JGT
@SP
A=M-1
M=0
(JGT_67)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label WHILE_EXP1
(WHILE_EXP1)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_68
D;JGT
@SP
A=M-1
M=0
(JGT_68)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
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
//pop local 0
@0
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
//goto WHILE_EXP1
@WHILE_EXP1
0;JMP
//label WHILE_END1
(WHILE_END1)
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
//pop argument 0
@0
D=A
@ARG
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Sys.error 0
(Sys.error)
//init LCL
@0
D=A
//function's execution
//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
//push returnAddress
@ret_199
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
@Output.printChar
0;JMP
(ret_199)
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
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
//push returnAddress
@ret_200
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
@Output.printChar
0;JMP
(ret_200)
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
//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
//push returnAddress
@ret_201
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
@Output.printChar
0;JMP
(ret_201)
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
//call Output.printInt 1
//push returnAddress
@ret_202
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
@Output.printInt
0;JMP
(ret_202)
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
//call Sys.halt 0
//push returnAddress
@ret_203
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
@Sys.halt
0;JMP
(ret_203)
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
//
//vm_name Sys/Keyboard.vm
//
//function Keyboard.init 0
(Keyboard.init)
//init LCL
@0
D=A
//function's execution
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
//function Keyboard.keyPressed 0
(Keyboard.keyPressed)
//init LCL
@0
D=A
//function's execution
//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Memory.peek 1
//push returnAddress
@ret_204
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
@Memory.peek
0;JMP
(ret_204)
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
//function Keyboard.readChar 2
(Keyboard.readChar)
//init LCL
@2
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
//function's execution
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Output.printChar 1
//push returnAddress
@ret_205
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
@Output.printChar
0;JMP
(ret_205)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_17
D;JEQ
@SP
A=M-1
M=0
(JEQ_17)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_69
D;JGT
@SP
A=M-1
M=0
(JGT_69)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//call Keyboard.keyPressed 0
//push returnAddress
@ret_206
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
@Keyboard.keyPressed
0;JMP
(ret_206)
//pop local 0
@0
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_70
D;JGT
@SP
A=M-1
M=0
(JGT_70)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//label IF_FALSE0
(IF_FALSE0)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
//call String.backSpace 0
//push returnAddress
@ret_207
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
@String.backSpace
0;JMP
(ret_207)
//call Output.printChar 1
//push returnAddress
@ret_208
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
@Output.printChar
0;JMP
(ret_208)
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
//call Output.printChar 1
//push returnAddress
@ret_209
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
@Output.printChar
0;JMP
(ret_209)
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
//function Keyboard.readLine 5
(Keyboard.readLine)
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
//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1
//call String.new 1
//push returnAddress
@ret_210
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
@String.new
0;JMP
(ret_210)
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
//call Output.printString 1
//push returnAddress
@ret_211
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
@Output.printString
0;JMP
(ret_211)
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
//call String.newLine 0
//push returnAddress
@ret_212
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
@String.newLine
0;JMP
(ret_212)
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
//call String.backSpace 0
//push returnAddress
@ret_213
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
@String.backSpace
0;JMP
(ret_213)
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//not
@SP
A=M-1
M=!M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//call Keyboard.readChar 0
//push returnAddress
@ret_214
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
@Keyboard.readChar
0;JMP
(ret_214)
//pop local 0
@0
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
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_18
D;JEQ
@SP
A=M-1
M=0
(JEQ_18)
//pop local 4
@4
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
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_19
D;JEQ
@SP
A=M-1
M=0
(JEQ_19)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//call String.eraseLastChar 1
//push returnAddress
@ret_215
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
@String.eraseLastChar
0;JMP
(ret_215)
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
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
//call String.appendChar 2
//push returnAddress
@ret_216
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
@String.appendChar
0;JMP
(ret_216)
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
//label IF_END1
(IF_END1)
//label IF_FALSE0
(IF_FALSE0)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Keyboard.readInt 2
(Keyboard.readInt)
//init LCL
@2
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
//call Keyboard.readLine 1
//push returnAddress
@ret_217
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
@Keyboard.readLine
0;JMP
(ret_217)
//pop local 0
@0
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
//call String.intValue 1
//push returnAddress
@ret_218
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
@String.intValue
0;JMP
(ret_218)
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
//call String.dispose 1
//push returnAddress
@ret_219
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
@String.dispose
0;JMP
(ret_219)
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
//vm_name Sys/Memory.vm
//
//function Memory.init 0
(Memory.init)
//init LCL
@0
D=A
//function's execution
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop static 0
@SP
AM=M-1
D=M
@Memory.vm.0
M=D
//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Memory.vm.0
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
//push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Memory.vm.0
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
//push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//function Memory.peek 0
(Memory.peek)
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
//push static 0
@Memory.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//function Memory.poke 0
(Memory.poke)
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
//push static 0
@Memory.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//function Memory.alloc 2
(Memory.alloc)
//init LCL
@2
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_71
D;JLT
@SP
A=M-1
M=0
(JLT_71)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_220
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
@Sys.error
0;JMP
(ret_220)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_20
D;JEQ
@SP
A=M-1
M=0
(JEQ_20)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop argument 0
@0
D=A
@ARG
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
//label IF_FALSE1
(IF_FALSE1)
//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 16383
@16383
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_72
D;JLT
@SP
A=M-1
M=0
(JLT_72)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_73
D;JLT
@SP
A=M-1
M=0
(JLT_73)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_21
D;JEQ
@SP
A=M-1
M=0
(JEQ_21)
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
//push constant 16382
@16382
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_74
D;JGT
@SP
A=M-1
M=0
(JGT_74)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//push constant 0
@0
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_22
D;JEQ
@SP
A=M-1
M=0
(JEQ_22)
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//pop local 0
@0
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
//goto IF_END2
@IF_END2
0;JMP
//label IF_FALSE2
(IF_FALSE2)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//push constant 0
@0
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push constant 2
@2
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
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_23
D;JEQ
@SP
A=M-1
M=0
(JEQ_23)
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//push constant 2
@2
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto IF_END3
@IF_END3
0;JMP
//label IF_FALSE3
(IF_FALSE3)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label IF_END3
(IF_END3)
//label IF_END2
(IF_END2)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 16379
@16379
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_75
D;JGT
@SP
A=M-1
M=0
(JGT_75)
//if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE
//goto IF_FALSE4
@IF_FALSE4
0;JMP
//label IF_TRUE4
(IF_TRUE4)
//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_221
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
@Sys.error
0;JMP
(ret_221)
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
//label IF_FALSE4
(IF_FALSE4)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_76
D;JGT
@SP
A=M-1
M=0
(JGT_76)
//if-goto IF_TRUE5
@SP
AM=M-1
D=M
@IF_TRUE5
D;JNE
//goto IF_FALSE5
@IF_FALSE5
0;JMP
//label IF_TRUE5
(IF_TRUE5)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push constant 2
@2
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
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_24
D;JEQ
@SP
A=M-1
M=0
(JEQ_24)
//if-goto IF_TRUE6
@SP
AM=M-1
D=M
@IF_TRUE6
D;JNE
//goto IF_FALSE6
@IF_FALSE6
0;JMP
//label IF_TRUE6
(IF_TRUE6)
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
//push constant 3
@3
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 4
@4
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto IF_END6
@IF_END6
0;JMP
//label IF_FALSE6
(IF_FALSE6)
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
//push constant 3
@3
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label IF_END6
(IF_END6)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 2
@2
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label IF_FALSE5
(IF_FALSE5)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 2
@2
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
//function Memory.deAlloc 2
(Memory.deAlloc)
//init LCL
@2
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//pop local 0
@0
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
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
//push constant 0
@0
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_25
D;JEQ
@SP
A=M-1
M=0
(JEQ_25)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto IF_END0
@IF_END0
0;JMP
//label IF_FALSE0
(IF_FALSE0)
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
//push constant 0
@0
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push constant 2
@2
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
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_26
D;JEQ
@SP
A=M-1
M=0
(JEQ_26)
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
//push constant 2
@2
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto IF_END1
@IF_END1
0;JMP
//label IF_FALSE1
(IF_FALSE1)
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//push constant 1
@1
D=A
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label IF_END1
(IF_END1)
//label IF_END0
(IF_END0)
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
//
//vm_name Sys/Math.vm
//
//function Math.init 1
(Math.init)
//init LCL
@1
D=A
//push 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//function's execution
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_222
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
@Array.new
0;JMP
(ret_222)
//pop static 1
@SP
AM=M-1
D=M
@Math.vm.1
M=D
//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Array.new 1
//push returnAddress
@ret_223
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
@Array.new
0;JMP
(ret_223)
//pop static 0
@SP
AM=M-1
D=M
@Math.vm.0
M=D
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 0
@Math.vm.0
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_77
D;JLT
@SP
A=M-1
M=0
(JLT_77)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push constant 1
@1
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
//pop local 0
@0
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
//push static 0
@Math.vm.0
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Math.abs 0
(Math.abs)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_78
D;JLT
@SP
A=M-1
M=0
(JLT_78)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//neg
@SP
A=M-1
M=-M
//pop argument 0
@0
D=A
@ARG
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
//label IF_FALSE0
(IF_FALSE0)
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
//function Math.multiply 5
(Math.multiply)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_79
D;JLT
@SP
A=M-1
M=0
(JLT_79)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_80
D;JGT
@SP
A=M-1
M=0
(JGT_80)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_81
D;JGT
@SP
A=M-1
M=0
(JGT_81)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_82
D;JLT
@SP
A=M-1
M=0
(JLT_82)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
//pop local 4
@4
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
//call Math.abs 1
//push returnAddress
@ret_224
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
@Math.abs
0;JMP
(ret_224)
//pop argument 0
@0
D=A
@ARG
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
//call Math.abs 1
//push returnAddress
@ret_225
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
@Math.abs
0;JMP
(ret_225)
//pop argument 1
@1
D=A
@ARG
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_83
D;JLT
@SP
A=M-1
M=0
(JLT_83)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//pop argument 0
@0
D=A
@ARG
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
//pop argument 1
@1
D=A
@ARG
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
//label IF_FALSE0
(IF_FALSE0)
//label WHILE_EXP0
(WHILE_EXP0)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_84
D;JLT
@SP
A=M-1
M=0
(JLT_84)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_27
D;JEQ
@SP
A=M-1
M=0
(JEQ_27)
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop local 0
@0
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//label IF_FALSE1
(IF_FALSE1)
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
//add
@SP
AM=M-1
D=M
A=A-1
M=D+M
//pop argument 0
@0
D=A
@ARG
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
//push constant 1
@1
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//neg
@SP
A=M-1
M=-M
//pop local 0
@0
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
//label IF_FALSE2
(IF_FALSE2)
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
//function Math.divide 4
(Math.divide)
//init LCL
@4
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
//function's execution
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JEQ_28
D;JEQ
@SP
A=M-1
M=0
(JEQ_28)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_226
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
@Sys.error
0;JMP
(ret_226)
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
//label IF_FALSE0
(IF_FALSE0)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_85
D;JLT
@SP
A=M-1
M=0
(JLT_85)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_86
D;JGT
@SP
A=M-1
M=0
(JGT_86)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_87
D;JGT
@SP
A=M-1
M=0
(JGT_87)
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_88
D;JLT
@SP
A=M-1
M=0
(JLT_88)
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//or
@SP
AM=M-1
D=M
A=A-1
M=D|M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//push static 1
@Math.vm.1
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
//call Math.abs 1
//push returnAddress
@ret_227
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
@Math.abs
0;JMP
(ret_227)
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//call Math.abs 1
//push returnAddress
@ret_228
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
@Math.abs
0;JMP
(ret_228)
//pop argument 0
@0
D=A
@ARG
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_89
D;JLT
@SP
A=M-1
M=0
(JLT_89)
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
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
//push constant 32767
@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_90
D;JLT
@SP
A=M-1
M=0
(JLT_90)
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
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//push constant 1
@1
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
//push static 1
@Math.vm.1
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push temp 0
@5
D=A
@0
D=D+A
@addr
M=D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1
//pop that 0
@0
D=A
@THAT
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
//push constant 1
@1
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_91
D;JGT
@SP
A=M-1
M=0
(JGT_91)
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
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE2
@SP
AM=M-1
D=M
@IF_TRUE2
D;JNE
//goto IF_FALSE2
@IF_FALSE2
0;JMP
//label IF_TRUE2
(IF_TRUE2)
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
//push constant 1
@1
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
//pop local 0
@0
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
//label IF_FALSE2
(IF_FALSE2)
//label IF_FALSE1
(IF_FALSE1)
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
//label WHILE_EXP1
(WHILE_EXP1)
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_92
D;JGT
@SP
A=M-1
M=0
(JGT_92)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END1
@SP
AM=M-1
D=M
@WHILE_END1
D;JNE
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_93
D;JGT
@SP
A=M-1
M=0
(JGT_93)
//not
@SP
A=M-1
M=!M
//if-goto IF_TRUE3
@SP
AM=M-1
D=M
@IF_TRUE3
D;JNE
//goto IF_FALSE3
@IF_FALSE3
0;JMP
//label IF_TRUE3
(IF_TRUE3)
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//push static 1
@Math.vm.1
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
A=D+M
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
//pop argument 0
@0
D=A
@ARG
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
//label IF_FALSE3
(IF_FALSE3)
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
//pop local 0
@0
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
//goto WHILE_EXP1
@WHILE_EXP1
0;JMP
//label WHILE_END1
(WHILE_END1)
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
//if-goto IF_TRUE4
@SP
AM=M-1
D=M
@IF_TRUE4
D;JNE
//goto IF_FALSE4
@IF_FALSE4
0;JMP
//label IF_TRUE4
(IF_TRUE4)
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
//neg
@SP
A=M-1
M=-M
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
//label IF_FALSE4
(IF_FALSE4)
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
//function Math.sqrt 4
(Math.sqrt)
//init LCL
@4
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_94
D;JLT
@SP
A=M-1
M=0
(JLT_94)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1
//call Sys.error 1
//push returnAddress
@ret_229
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
@Sys.error
0;JMP
(ret_229)
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
//label IF_FALSE0
(IF_FALSE0)
//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1
//pop local 0
@0
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
//label WHILE_EXP0
(WHILE_EXP0)
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
//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
//neg
@SP
A=M-1
M=-M
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_95
D;JGT
@SP
A=M-1
M=0
(JGT_95)
//not
@SP
A=M-1
M=!M
//if-goto WHILE_END0
@SP
AM=M-1
D=M
@WHILE_END0
D;JNE
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
//push static 0
@Math.vm.0
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
//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D
//push that 0
@0
D=A
@THAT
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
//call Math.multiply 2
//push returnAddress
@ret_230
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
@Math.multiply
0;JMP
(ret_230)
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
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_96
D;JGT
@SP
A=M-1
M=0
(JGT_96)
//not
@SP
A=M-1
M=!M
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
//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_97
D;JLT
@SP
A=M-1
M=0
(JLT_97)
//not
@SP
A=M-1
M=!M
//and
@SP
AM=M-1
D=M
A=A-1
M=D&M
//if-goto IF_TRUE1
@SP
AM=M-1
D=M
@IF_TRUE1
D;JNE
//goto IF_FALSE1
@IF_FALSE1
0;JMP
//label IF_TRUE1
(IF_TRUE1)
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
//label IF_FALSE1
(IF_FALSE1)
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
//pop local 0
@0
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
//goto WHILE_EXP0
@WHILE_EXP0
0;JMP
//label WHILE_END0
(WHILE_END0)
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
//function Math.max 0
(Math.max)
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
//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JGT_98
D;JGT
@SP
A=M-1
M=0
(JGT_98)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//pop argument 1
@1
D=A
@ARG
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
//label IF_FALSE0
(IF_FALSE0)
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
//function Math.min 0
(Math.min)
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
//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@JLT_99
D;JLT
@SP
A=M-1
M=0
(JLT_99)
//if-goto IF_TRUE0
@SP
AM=M-1
D=M
@IF_TRUE0
D;JNE
//goto IF_FALSE0
@IF_FALSE0
0;JMP
//label IF_TRUE0
(IF_TRUE0)
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
//pop argument 1
@1
D=A
@ARG
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
//label IF_FALSE0
(IF_FALSE0)
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
