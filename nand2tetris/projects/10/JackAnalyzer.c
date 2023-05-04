#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include <stdbool.h>

#define FILE_LEN 50

#include "CompilationEngine.c"

//deal one .jack file
void handle(char *jack_name,char *input_dir); 
int main(int argc,char *argv[])
{
    if (argc!=2 || strlen(argv[1])>100){
      printf("usage:./a.out fileDir\n");
      return -1;
    }

    // 获取输入文件目录
    char input_dir[FILE_LEN];
    strcpy(input_dir,argv[1]);

    // 打开指定目录
    DIR *dir;
    struct dirent *entry;
    dir = opendir(input_dir);

    // 遍历目录中的所有文件
    while ((entry = readdir(dir)) != NULL)
    {
        // 如果文件名以".jack"结尾
        if (strlen(entry->d_name)>=5 && strcmp(entry->d_name+strlen(entry->d_name)-5,".jack")==0)
        {
            handle(entry->d_name,input_dir);
        }
    }
    // 关闭目录
    closedir(dir);
}

void handle(char *jack_name,char *input_dir) 
{
    char jack_dir[FILE_LEN*5];
    char xml_dir[FILE_LEN*5];
    char middle_dir[FILE_LEN*5];

    sprintf(jack_dir,"%s/%s",input_dir,jack_name);
    sprintf(middle_dir,"%s/m%s",input_dir,jack_name);
    int len=strlen(jack_name);
    strncpy(&jack_name[len-5],".xml",5);
    sprintf(xml_dir,"%s/out_%s",input_dir,jack_name);
    
    //read and wirte
    FILE *fp_input=fopen(jack_dir,"r");
    FILE *middle_input=fopen(middle_dir,"w");
    FILE *fp_output=fopen(xml_dir,"w");

    //deal comment
    char c,d;
    int state=0;
    while ((c = fgetc(fp_input)) != EOF) {
        // 如果在正常状态下遇到注释开始符号，则切换到注释状态
        if (state == 0 && c == '/') {
            d = fgetc(fp_input);
            if (d == '/') {
                state = 2; // 单行注释
            } else if (d == '*') {
                state = 1; // 多行注释
            } else {
                fputc(c, middle_input);
                fputc(d, middle_input);
            }
        } else if (state == 1 && c == '*') {
            // 如果在注释状态下遇到注释结束符号，则切换回正常状态
            d = fgetc(fp_input);
            if (d == '/') {
                state = 0;
            }
        } else if (state == 2 && c == '\n') {
            // 如果在单行注释状态下遇到换行符，则切换回正常状态
            fputc(c, middle_input);
            state = 0;
        } else {
            // 如果不在注释状态下，则将字符写入输出文件
            if (state == 0) {
                fputc(c, middle_input);
            }
        }
    }
    fclose(middle_input);
    //重新打开中间文件
    middle_input=fopen(middle_dir,"r");
    
    //begin compile
    compileClass(middle_input,fp_output);
    while(hasMoreTokens(middle_input))
    {
        printf("%s\n",advance(middle_input));
    }
    //关闭打开的文件
    fclose(middle_input);
    remove(middle_dir);
    fclose(fp_input);
    fclose(fp_output);
    return;
}