#include <stdio.h>
#include <string.h>
#include <stdlib.h>
//#define LOCAL "MemoryAccess"
#define LOCAL "StackArithmetic"
#define MAX_C 30
#define N 10
#define LOGIC_COMMAND_TEMP1 "@SP\nAM=M-1\nD=M\n"
#define LOGIC_COMMAND_TEMP2 "@SP\nA=M-1\nM=0\n"
#define LOGIC_COMMAND_TEMP3 "A=A-1\nD=M-D\nM=-1\n"

char *words[N];//memory of words after parser
int parser(char *line);
int codewriter(int n,FILE *fp1);
char *segmentp_map(char *s);
char *compute_command[]={"add", "sub", "neg", "eq", "gt", "lt", "and", "or", "not"};
char *compute_table[]={"@SP\nAM=M-1\nD=M\nA=A-1\nM=D+M\n","@SP\nAM=M-1\nD=M\nA=A-1\nM=M-D\n","@SP\nA=M-1\nM=-M\n",\
"\n","\n","\n",\
"@SP\nAM=M-1\nD=M\nA=A-1\nM=D&M\n","@SP\nAM=M-1\nD=M\nA=A-1\nM=D|M\n","@SP\nA=M-1\nM=!M"};
int eq_n=0,gt_n=0,lt_n=0;

int main(int argc,char *argv[])
{
    //Open the file
    if (argc!=2){
      printf("参数不对\n");
      return -1;
    }
    char file_in[50];
    char file_out[50];
    sprintf(file_in,"./%s/%s/%s.vm",LOCAL,argv[1],argv[1]);
    sprintf(file_out,"./%s/%s/%s.asm",LOCAL,argv[1],argv[1]);
    //printf("%s %s\n",file_in,file_out);
    FILE *fp=fopen(file_in,"r");
    if(fp == NULL) {
      return(-1);
    }
    FILE *fp1=fopen(file_out,"w");

    char line[MAX_C];
    for (int i=0;i<N;i++)
    {
        words[i]=malloc(sizeof(char)*MAX_C);
    }
    while(1){
        fgets(line,100,fp); 
        if (feof(fp)) break;
        if (line[1]=='\n' || (line[0]=='/' && line[1]=='/')) continue; 
        int n=parser(line);
        //printf("%d\n",n);
        //for (int i=0;i<n;i++)
        //{
            //printf("%s ",words[i]);
        //}
        //printf("\n");
        fprintf(fp1,"//%s",line);
        codewriter(n,fp1);
    }
    fclose(fp);
    fclose(fp1);
}

int parser(char *line)
{
    int p=0,index=0;
    char *pointer=line;
    for (int i=0;i<strlen(line);i++)
    {
        if (line[i]==' ' || line[i]==13)
        {
            strncpy(words[index],pointer,i-p);
            words[index][i-p]='\0';
            //printf("%s\n",words[index]);
            index++;
            pointer=pointer+(i-p+1);
            p=i+1;
        }
    }
    //return the number of words
    return index;
}
int codewriter(int n,FILE *fp1)
{
    int i;
    //Arithmetic/Logical commands 
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
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@5\nD=A\n@%s\nD=D+A\n@addr\nM=D\nA=M\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2]);
            }
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@5\nD=A\n@%s\nD=D+A\n@addr\nM=D\n@SP\nAM=M-1\nD=M\n@addr\nA=M\nM=D\n",words[2]);
            }
        }
        //segment:static
        if (strcmp(words[1],"static")==0)
        {
            if (strcmp(words[0],"pop")==0){
                fprintf(fp1,"@SP\nAM=M-1\nD=M\n@Foo.%s\nM=D\n",words[2]);
            }
            if (strcmp(words[0],"push")==0){
                fprintf(fp1,"@Foo.%s\nD=M\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2]);
            }
        }
        //segment:constant
        if (strcmp(words[1],"constant")==0)
        {
            fprintf(fp1,"@%s\nD=A\n@SP\nA=M\nM=D\n@SP\nM=M+1\n",words[2]);
        }
        return 0;
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