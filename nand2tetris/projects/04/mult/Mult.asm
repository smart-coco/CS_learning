@R0   //a=R0
D=M
@a
M=D
@R1   //b=R1
D=M
@b
M=D
@R2   //R2=0
M=0
@ym   //ym=1
M=1
@i   //i=0
M=0
(Loop)  
        @16     //(Loop)if i=16 goto End
        D=A
        @i
        D=D-M
        @End
        D;JEQ   
        @ym    //   temp=b&ym
        D=M
        @b
        D=D&M
        @temp    
        M=D
        @Branch //if temp=0 goto Branch
        D;JEQ
        @n      //temp1=a     temp1左移i次
        M=0
        @a
        D=M
        @temp1
        M=D
        (Loop1) 
                @i
                D=M
                @n
                D=D-M
                @End1
                D;JEQ
                @temp1
                D=M
                M=D+M
                @n
                M=M+1
                @Loop1
                0;JMP  
        (End1)
        @temp1       //      R2=R2+temp1
        D=M
        @R2
        M=D+M       
        (Branch)    //(Branch)
                @ym         // ym=ym+ym
                D=M
                M=D+M
                @i          //   i++
                M=M+1
                @Loop       //   goto Loop
                0;JMP    
(End)       //(End)                
@End        //goto End
0;JMP