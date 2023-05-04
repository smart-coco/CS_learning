#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//Init
char *mapSymbol[2000]={"R0","R1","R2","R3","R4","R5","R6","R7","R8","R9","R10","R11","R12","R13","R14","R15","SCREEN","KBD","SP","LCL","ARG","THIS","THAT"};
int mapValue[2000]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16384,24576,0,1,2,3,4};
int mapPoint=23,mapAddress=16;
char *mapComp[28]={"0","1","-1","D","A","!D","!A","-D","-A","D+1","A+1","D-1","A-1",\
"D+A","D-A","A-D","D&A","D|A","M","!M","-M","M+1","M-1","D+M","D-M","M-D","D&M","D|M"};
char *mapCompValue[28]={"0101010","0111111","0111010","0001100","0110000","0001101",\
"0110001","0001111","0110011","0011111","0110111","0001110","0110010","0000010","0010011",\
"0000111","0000000","0010101","1110000","1110001","1110011","1110111","1110010","1000010",\
"1010011","1000111","1000000","1010101"};
char *mapJump[8]={"","JGT","JEQ","JGE","JLT","JNE","JLE","JMP"};
char *mapJumpValue[8]={"000","001","010","011","100","101","110","111"};
char *mapDest[8]={"","M","D","MD","A","AM","AD","AMD"};
char *mapDestValue[8]={"000","001","010","011","100","101","110","111"};

int retMap(char *str);
char *getBinary(int value);
char *getDest(char *dest);
char *getComp(char *comp);
char *getJump(char *jump);

int main(int argc,char *argv[]){
    //Open the file
    if (argc!=2){
      printf("参数不对\n");
      return -1;
    }
    FILE *fp=fopen(argv[1],"r");
    if(fp == NULL) {
      return(-1);
    }
    FILE *fp1=fopen("./tmp/temp.asm","w");
    //First pass
    char line[100];
    int lineNumber=0,i,j;
    while(1){
      fgets(line,100,fp); 
      if (feof(fp)) break;
      char temp[100];
      int p=0;
      for (i=0;i<strlen(line);i++){
        //deal comment
        if (line[i]=='/' && line[i+1]=='/') {temp[p++]='&'; temp[p++]='\n'; break;} 
        //deal sapce
        if (line[i]!=' ') temp[p++]=line[i];
      }
      temp[p]='\0';
      //deal label symbol
      if (temp[0]=='('){
        if (temp[strlen(temp)-3]==')'){
          char stemp[100];
          for (j=1;j<(strlen(temp)-3);j++) stemp[j-1]=temp[j];
          stemp[j-1]='\0';
          if (retMap(stemp)==-1){
            mapSymbol[mapPoint]=malloc(sizeof(char)*100);
            strcat(mapSymbol[mapPoint],stemp);
            mapValue[mapPoint]=lineNumber;
            mapPoint++;
          }
        }else printf("(lable) 语法错误\n");
      }else{
        //deal the blank line
        if (strlen(temp)>2){
          fprintf(fp1,"%s",temp);
          lineNumber++;
        }
      }
    }
    fclose(fp);
    fclose(fp1);
    /*for (int i=0;i<mapPoint;i++){
      printf("%s %d\n",mapSymbol[i],mapValue[i]);
    }
    printf("%d\n",mapPoint);*/
    //Second pass
    fp1=fopen("./tmp/temp.asm","r");
    FILE *fp2=fopen("./tmp/binary.hack","w+");
    while(1){
        char stemp[100];
        fgets(line,100,fp1); 
        if (feof(fp1)) break;
        if (line[0]=='@'){//A-instruction
          for (j=1;j<(strlen(line)-2);j++) stemp[j-1]=line[j];
          stemp[j-1]='\0';
          int value;
          //is variable?
          if (strspn(stemp,"0123456789")==strlen(stemp)) value=atoi(stemp);
          else value=retMap(stemp);
          if (value==-1){
            mapSymbol[mapPoint]=malloc(sizeof(char)*50);
            strcpy(mapSymbol[mapPoint],stemp);
            mapValue[mapPoint]=mapAddress;
            value=mapAddress;
            mapPoint++;
            mapAddress++;
          }
          //translate to binary code
          fprintf(fp2,"0%s\n",getBinary(value));
        }else{//C-instruction
          int index_equal=strchr(line,'=')-line;
          int index_colon=strchr(line,';')-line;
          index_equal=index_equal>15 || index_equal<0?-1:index_equal;
          index_colon=index_colon>15 || index_colon<0?-1:index_colon;
          char dest[100]="";
          char comp[100]="";
          char jump[100]="";
          int l=0,r=strlen(line)-3;
          //get dest
          if (index_equal!=-1){
            for (i=0;i<index_equal;i++){
              dest[i]=line[i];
            }
            dest[i]='\0';
            l=index_equal+1;
          } 
          //get jump
          if (index_colon!=-1){
            for (i=index_colon+1;i<strlen(line)-2;i++){
              jump[i-index_colon-1]=line[i];
            }
            jump[i-index_colon-1]='\0';
            r=index_colon-1;
          }
          //get comp
          for (i=l;i<=r;i++) comp[i-l]=line[i];
          comp[i-l]='\0';
          //printf("len:%d line:%s dest:%s comp:%s jump:%s\n",strlen(line),line,dest,comp,jump);
          fprintf(fp2,"111%s%s%s\n",getComp(comp),getDest(dest),getJump(jump));
          //printf("%s 111%s%s%s\n",line,getComp(comp),getDest(dest),getJump(jump));
        }
    }
    /*printf("Map:\n");
    for (int i=0;i<mapPoint;i++){
      printf("%s %d\n",mapSymbol[i],mapValue[i]);
    }*/
    fclose(fp1);
    fclose(fp2);
}

int retMap(char *str){
  for (int i=0;i<mapPoint;i++){
    if (strcmp(str,mapSymbol[i])==0){
      return mapValue[i];
    }
  }
  return -1;
}
char *getBinary(int value){
  char *ret=malloc(sizeof(char)*16);
  ret[15]='\0';
  for (int i=14;i>=0;i--){
    ret[i]=value%2+'0';
    value=value/2;
  }
  return ret;
}
char *getDest(char *dest){
 for (int i=0;i<8;i++){
    if (strcmp(dest,mapDest[i])==0){
      return mapDestValue[i];
    }
  }
  return "-1";
}
char *getJump(char *jump){
 for (int i=0;i<8;i++){
    if (strcmp(jump,mapJump[i])==0){
      return mapJumpValue[i];
    }
  }
  return "-1";
}
char *getComp(char *comp){
 for (int i=0;i<28;i++){
    if (strcmp(comp,mapComp[i])==0){
      return mapCompValue[i];
    }
  }
  return "-1";
}