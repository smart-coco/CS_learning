#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>

#define LOGIC_COMMAND_TEMP1 "@SP\nAM=M-1\nD=M\n"
#define LOGIC_COMMAND_TEMP2 "@SP\nA=M-1\nM=0\n"
#define LOGIC_COMMAND_TEMP3 "A=A-1\nD=M-D\nM=-1\n"
#define MAX_C 50
#define N 30

char *words[N];    //memory of words after parser
char *segmentp_map(char *s);
char *compute_command[]={"add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"};
char *compute_table[]={"@SP\nAM=M-1\nD=M\nA=A-1\nM=D+M\n","@SP\nAM=M-1\nD=M\nA=A-1\nM=M-D\n","@SP\nA=M-1\nM=-M\n",\
"\n","\n","\n",\
"@SP\nAM=M-1\nD=M\nA=A-1\nM=D&M\n","@SP\nAM=M-1\nD=M\nA=A-1\nM=D|M\n","@SP\nA=M-1\nM=!M\n"};
int eq_n=0,gt_n=0,lt_n=0,ret_n=1;

int parser(char *line)
{
    int p=0,index=0,l=strlen(line);
    char *pointer=line;
    for (int i=0;i<l;i++)
    {
        words[i]=malloc(sizeof(char)*MAX_C);
        if ((line[i]==' ' && line[i-1]==' ') || (line[i]=='/' && line[i-1]=='/') || line[i-1]==9) break;
        if (line[i]==' ' || line[i]==13 || line[i]==9 || line[i]==10)
        {
            strncpy(words[index],pointer,i-p);
            words[index][i-p]='\0';
            index++;
            pointer=pointer+(i-p+1);
            p=i+1;
        }
    }
    //return the number of words
    return index;
}
int codewriter(int n,FILE *fp1,char *vm_name)
{
    //Arithmetic/Logical commands 
    int i;
    if (n==1 && (strcmp(words[0],"return")!=0))
    {
        for (i=0;i<9;i++)
        {
            if (strcmp(words[0],compute_command[i])==0)
            {
                char symbol[MAX_C];
                //eg
                if (i==3)
                {
                    sprintf(symbol,"JEQ_%d",eq_n);
                    eq_n++;
                    fprintf(fp1,"%s%s@%s\nD;JEQ\n%s(%s)\n",LOGIC_COMMAND_TEMP1,LOGIC_COMMAND_TEMP3,symbol,LOGIC_COMMAND_TEMP2,symbol);
                }
                //gt
                if (i==4)
                {
                    sprintf(symbol,"JGT_%d",gt_n);
                    gt_n++;
                    fprintf(fp1,"%s%s@%s\nD;JGT\n%s(%s)\n",LOGIC_COMMAND_TEMP1,LOGIC_COMMAND_TEMP3,symbol,LOGIC_COMMAND_TEMP2,symbol);
                }
                //lt
                if (i==5)
                {
                    sprintf(symbol,"JLT_%d",gt_n);
                    gt_n++;
                    fprintf(fp1,"%s%s@%s\nD;JLT\n%s(%s)\n",LOGIC_COMMAND_TEMP1,LOGIC_COMMAND_TEMP3,symbol,LOGIC_COMMAND_TEMP2,symbol);
                }
                //other
                if ((i>=0 && i<=2) || (i<=8 && i>=6)) 
                {
                    fprintf(fp1,"%s",compute_table[i]);  
                }
                break;
            }
        }
        if (i==9)
        {
            printf("Can not find command\n");
            return 1;
        }
        return 0;
    }
    //Memory segments commands
    if (strcmp(words[0],"push")==0 || strcmp(words[0],"pop")==0) 
    {
        char symbol[MAX_C];
        //segments:this,that,local,argument
        if (strcmp(words[1],"this")==0 || strcmp(words[1],"that")==0 || strcmp(words[1],"local")==0 || strcmp(words[1],"argument")==0)
        {
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@%s\nD=A\n@%s\nD=D+M\n@addr\nM=D\n@SP\nM=M-1\nA=M\nD=M\n@addr\nA=M\nM=D\n",words[2],segmentp_map(words[1]));
            }
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@%s\nD=A\n@%s\nA=D+M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2],segmentp_map(words[1]));
            }
        }
        //segment:pointer
        if (strcmp(words[1],"pointer")==0)
        {
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@SP\nAM=M-1\nD=M\n@%s\nM=D\n",segmentp_map(words[2]));
            }
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@%s\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",segmentp_map(words[2]));
            }
        }
        //segment:temp
        if (strcmp(words[1],"temp")==0)
        {
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@5\nD=A\n@%s\nD=D+A\n@addr\nM=D\nA=M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2]);
            }
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@5\nD=A\n@%s\nD=D+A\n@addr\nM=D\n@SP\nAM=M-1\nD=M\n@addr\nA=M\nM=D\n",words[2]);
            }
        }
        //segment:static
        if (strcmp(words[1],"static")==0)
        {
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@SP\nAM=M-1\nD=M\n@%s.%s\nM=D\n",vm_name,words[2]);
            }
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@%s.%s\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",vm_name,words[2]);
            }
        }
        //segment:constant
        if (strcmp(words[1],"constant")==0)
        {
            fprintf(fp1,"@%s\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2]);
        }
        return 0;
    }
    //branch commands
    if (strcmp(words[0],"if-goto")==0)
    {
        fprintf(fp1,"@SP\nAM=M-1\nD=M\n@%s\nD;JNE\n",words[1]);
    }
    if (strcmp(words[0],"goto")==0)
    {
        fprintf(fp1,"@%s\n0;JMP\n",words[1]);
    }
    if (strcmp(words[0],"label")==0)
    {
        fprintf(fp1,"(%s)\n",words[1]);
    }
    //function commands
    if (strcmp(words[0],"function")==0)
    {
        //declares a label for the function entry
        fprintf(fp1,"(%s)\n",words[1]);
        //nVars=number of local variables,D=nVars
        fprintf(fp1,"//init LCL\n");
        fprintf(fp1,"@%s\nD=A\n",words[2]);
        //initializes the local variables to 0
        for (int i=0;i<atoi(words[2]);i++)
        {
            //push 0
            fprintf(fp1,"//push 0\n@0\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n");
        }
        fprintf(fp1,"//function's execution\n");
    }
    if (strcmp(words[0],"call")==0)
    {
        char *push_x="D=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n";
        //push returnAddress //Using the label declared below to determine the return address
        fprintf(fp1,"//push returnAddress\n");
        fprintf(fp1,"@ret_%d\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",ret_n);
        //push LCL //Saves LCL of the caller
        fprintf(fp1,"//push LCL\n@LCL\n%s",push_x);
        //push ARG //Saves ARG of the caller
        fprintf(fp1,"//push ARG\n@ARG\n%s",push_x);
        //push THIS //Saves THIS of the caller
        fprintf(fp1,"//push THIS\n@THIS\n%s",push_x);
        //push THAT //Saves THAT of the caller
        fprintf(fp1,"//push THAT\n@THAT\n%s",push_x);
        //ARG=SP-5-nArgs //Repositions ARG
        fprintf(fp1,"//ARG=SP-5-nArgs\n");
        fprintf(fp1,"@SP\nD=M\n@5\nD=D-A\n@%s\nD=D-A\n@ARG\nM=D\n",words[2]);
        //LCL=SP //Repositions LCL
        fprintf(fp1,"//LCL=SP\n");
        fprintf(fp1,"@SP\nD=M\n@LCL\nM=D\n");
        //goto functionName //Transfers control to the called function
        fprintf(fp1,"//goto functionName\n");
        fprintf(fp1,"@%s\n0;JMP\n",words[1]);
        //(returnAddress) //Declares a label for the retur-address
        fprintf(fp1,"(ret_%d)\n",ret_n++);
    }
    if (strcmp(words[0],"return")==0)
    {
        //endFrame=LCL //endframe is a temporary variable
        fprintf(fp1,"//endFrame=LCL\n");
        fprintf(fp1,"@LCL\nD=M\n@endFrame\nM=D\n");
        //retAddr=*(endFrame-5) //gets the return address
        fprintf(fp1,"//retAddr=*(endFrame-5)\n");
        fprintf(fp1,"@endFrame\nD=M\n@5\nA=D-A\nD=M\n@retAddr\nM=D\n");
        //*ARG=pop() //Repositions the return value for the caller
        fprintf(fp1,"//*ARG=pop()\n");
        fprintf(fp1,"@SP\nAM=M-1\nD=M\n@ARG\nA=M\nM=D\n");
        //SP=ARG+1 //Repositions SP of the caller
        fprintf(fp1,"//SP=ARG+1\n");
        fprintf(fp1,"@ARG\nD=M+1\n@SP\nM=D\n");
        //THAT=*(endFrame-1) //Restores THAT of the caller
        fprintf(fp1,"//THAT=*(endFrame-1)\n");
        fprintf(fp1,"@endFrame\nA=M-1\nD=M\n@THAT\nM=D\n");
        //THIS=*(endFrame -2) //Restores THIS of the caller
        fprintf(fp1,"//THIS=*(endFrame-2)\n");
        fprintf(fp1,"@2\nD=A\n@endFrame\nA=M-D\nD=M\n@THIS\nM=D\n");
        //ARG=*(endFrame-3) //Restores ARG of the caller
        fprintf(fp1,"//ARG=*(endFrame-3)\n");
        fprintf(fp1,"@3\nD=A\n@endFrame\nA=M-D\nD=M\n@ARG\nM=D\n");
        //LCL=*(endFrame-4) //Restores LCL of the caller
        fprintf(fp1,"//LCL=*(endFrame-4)\n");
        fprintf(fp1,"@4\nD=A\n@endFrame\nA=M-D\nD=M\n@LCL\nM=D\n");
        //goto retAddr //goes to retun address in the caller's code
        fprintf(fp1,"//goto retAddr\n");
        fprintf(fp1,"@retAddr\nA=M\n0;JMP\n");
    }
}
char *segmentp_map(char *s)
{
    char *ret=malloc(sizeof(char)*MAX_C);
    ret="can not find segmentp";
    if (strcmp(s,"this")==0){
        ret="THIS";
        return ret;
    }
    if (strcmp(s,"that")==0){
        ret="THAT";
        return ret;
    }
    if (strcmp(s,"argument")==0){
        ret="ARG";
        return ret;
    }
    if (strcmp(s,"local")==0){
        ret="LCL";
        return ret;
    }
    if (strcmp(s,"0")==0){
        ret="THIS";
        return ret;
    }
    if (strcmp(s,"1")==0){
        ret="THAT";
        return ret;
    }
    return ret;
}
