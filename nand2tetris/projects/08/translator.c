#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include "operator.c"

#define MAX_C 50

void handle(char *vm_name,char *in_file,FILE *fp); //deal one .vm file
int main(int argc,char *argv[])
{
    if (argc!=2){
      printf("参数不对\n");
      return -1;
    }

    char in_file[MAX_C];
    strcpy(in_file,argv[1]);
    int in_len=strlen(in_file);
    char out_file[MAX_C*3];
    sprintf(out_file,"%s/%s.asm",in_file,in_file);

    // 打开指定目录
    DIR *dir;
    struct dirent *entry;
    dir = opendir(in_file);

    // 遍历目录中的所有文件
    //启动写出文件
    FILE *fp=fopen(out_file,"w");
    //写入bootstrap code:SP=261;Call Sys.init
    fprintf(fp,"//Bootstrap code\n");
    fprintf(fp,"@261\nD=A\n@SP\nM=D\n@Sys.init\n0;JMP\n");
    while ((entry = readdir(dir)) != NULL)
    {
        // 如果文件名以".vm"结尾，则打印文件名
        if (strlen(entry->d_name) >= 3 && strcmp(entry->d_name + strlen(entry->d_name) - 3, ".vm") == 0)
        {
            //sprintf(vm_name,"%s/%s",in_file,entry->d_name);
            //handle(vm_name,fp);
            handle(entry->d_name,in_file,fp);
        }
    }
    // 关闭目录
    fclose(fp);
    closedir(dir);
}
void handle(char *vm_name,char *in_file,FILE *fp)
{
    char vm_dir[MAX_C*10];
    sprintf(vm_dir,"%s/%s",in_file,vm_name);
    fprintf(fp,"//\n//vm_name %s\n//\n",vm_dir);
    char line[MAX_C*3];
    FILE *fp1=fopen(vm_dir,"r");
    while(1){
        fgets(line,100,fp1); 
        if (feof(fp1)) break;
        if (line[1]=='\n' || (line[0]=='/' && line[1]=='/')) continue; 
        //parser
        fprintf(fp,"//%s",line);
        int m=parser(line);
        //printf("%d\n",m);
        //for (int i=0;i<m;i++)
        //{
            //printf("%s\n",words[i]);
        //}
        //codewrite
        codewriter(m,fp,vm_name);
    }
    fclose(fp1);
    return;
}