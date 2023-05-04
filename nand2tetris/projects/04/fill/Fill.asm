(Loop) //(Loop)
    @SCREEN //  i=screen
    D=A
    @i
    M=D
    @KBD //if keyboard=0 goto Branch
    D=M
    @Branch
    D;JEQ
    (Loop1) //  (Loop1)
        @i //  if i=(screen+8192) goto End
        D=M
        @SCREEN
        D=D-A
        @8192
        D=D-A
        @End
        D;JEQ
        @i    //      ram[i]=-1
        A=M
        M=-1
        @i //      i++
        M=M+1
        @Loop1 //  goto Loop1
        0;JMP
    (Branch) //(Branch)
    (Loop2)    //  (Loop2)
        @i     //  if i=(screen+8192) goto End
        D=M
        @SCREEN
        D=D-A
        @8192
        D=D-A
        @End
        D;JEQ
        @i //      ram[i]=0
        A=M
        M=0
        @i //      i++
        M=M+1
        @Loop2 //  goto Loop2
        0;JMP
    (End) //(End)
@Loop  //goto Loop
0;JMP