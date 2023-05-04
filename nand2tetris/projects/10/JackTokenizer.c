#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <ctype.h>

#define FILE_LEN 50

const char op_table[9]={'+','-','*','/','&','|','<','>','='};
const char symbol_table[19]={'{','}','(',')','[',']','.',',',';',\
'+','-','*','/','&','|','<','>','=','~'};
const char *key_table[21]={"class","constructor","function","method"\
,"field","static","var","int","char","boolean","void","true","false",\
"null","this","let","do","if","else","while","return"};

bool isOp(char c);
bool isSymbol(char c);
bool isKey(char *token);
bool isStr(char *token);
bool isIdentifier(char *token);
bool isInt(char *token);

bool printKey(FILE *fp_input,FILE *fp_output);
bool printIdentifier(FILE *fp_input,FILE *fp_output);
bool printSymbol(FILE *fp_input,FILE *fp_output);
bool printIntVal(FILE *fp_input,FILE *fp_output);
bool printStrVal(FILE *fp_input,FILE *fp_output);

bool hasMoreTokens(FILE *fp_input);
char *advance(FILE *fp_input);
int tokenType(char *token);

//读入c判断是否在op表中
bool isOp(char c)
{
    for (int i = 0; i < 9; i++) {
        if (c == op_table[i]) {
            return true; // 返回true表示字符在符号表中
        }
    }
    return false; // 返回false表示字符不在符号表中
}
//读入c判断是否在字符表中
bool isSymbol(char c)
{
    for (int i = 0; i < 19; i++) {
        if (c == symbol_table[i]) {
            return true; // 返回true表示字符在符号表中
        }
    }
    return false; // 返回false表示字符不在符号表中
}

//读入token判断是keyword中
bool isKey(char *token)
{
    for (int i = 0; i < 21; i++) {
        if (strcmp(token,key_table[i])==0) {
            return true; // 返回true表示token在key表中
        }
    }
    return false; // 返回false表示token不在key表中
}

//读入token判断是字符串
bool isStr(char *token)
{
    if (token[0]=='"' && token[strlen(token)-1]=='"') {
        return true; // 返回true表示是字符串
    }
    return false; // 返回false表示是字符串
}

//读入token判断是否是关键字
bool isIdentifier(char *token)
{
    if (isdigit(token[0])) return false;
    int len=strlen(token);
    for (int i=0;i<len;i++)
    {
        if (!isalnum(token[i]) && token[i]!='_') return false;
    }
    return true;
}

//读入token判断是否是数字
bool isInt(char *token)
{
    int len=strlen(token);
    for (int i=0;i<len;i++)
    {
        if (isdigit(token[i])) return false;
    }
    return true;
}

//`bool hasMoreTokens(FILE *fp_input)`:Are there more tokens in the input?
bool hasMoreTokens(FILE *fp_input)
{
    char c;
    //循环取字符,直到读到的字符不为无效字符
    do 
    {
        c=fgetc(fp_input);
        if (c==EOF)
        {
            return false;
        }
    }while (c==' ' || c=='\n' || c==13 || c==9);
    //不为无效字符时候停止并回退一个字符
    ungetc(c,fp_input);
    //printf("current %c\n",c);

    return true;
}

//`char *advance(FILE *fp_input)`:If hasMoreTokens is true,gets the next token frome the input and makes it the current token.
char *advance(FILE *fp_input)
{
    char *ret=malloc(sizeof(char)*FILE_LEN);
    //读取字符
    char c=fgetc(fp_input);
    //如果为symbol
    if (isSymbol(c))
    {
        ret[0]=c;
        ret[1]='\0';
        return ret;
    }else
    {
        if (c=='"') //如果是字符串
        {
            ret[0]=c;
            int len=1;
            do 
            {
                c=fgetc(fp_input);
                //如果到了末尾
                if (c==EOF)
                {
                    printf("End of the file,but need '\"'\n");
                    ret[len]='\0';
                    return ret;
                }else //如果没到末尾
                {
                    ret[len++]=c;
                }
            }while (c!='"');
            return ret;
        }
        else //如果不是符号,或字符串，循环读，直到为symbol或无效字符
        {
            ret[0]=c;
            int len=1;
            //循环取字符,直到读到的字符不为无效字符,或symbol
            do 
            {
                c=fgetc(fp_input);
                //如果到了末尾
                if (c==EOF)
                {
                    printf("End of the file\n");
                    ret[len]='\0';
                    return ret;
                }else //如果没到末尾
                {
                    
                    ret[len++]=c;
                }
            }while (c!=' ' && c!='\n' && c!=13 && c!=9 && isSymbol(c)==false);
            //不为无效字符时候停止并回退一个字符
            ungetc(c,fp_input);
            ret[--len]='\0';
            return ret;
        }
    }
    
    return "advance fault\n";
}

//`LexicalType tokenType(char *token)`:Returns the type of the current token,as a constant.
int tokenType(char *token)
{
    int len=strlen(token);
    //token为字符串,return 1
    if (isStr(token))
    {
        return 1;
    }
    ////token为字符,return 2
    if (isSymbol(token[0]) && strlen(token)==1)
    {
        return 2;
    }
    //token为数字
    if (isInt(token))
    {

    }
    //最后情况为变量
    return 5;
}

//输出key
bool printKey(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];
    //是否有token
    if (hasMoreTokens(fp_input)) 
    {
        //是否是keyword
        strcpy(word,advance(fp_input));
        if (isKey(word))
        {
            //是keyword
            fprintf(fp_output,"<keyword>%s</keyword>\n",word);
            return true;
        }else
        {
            //不是keyword
            printf("Fail:Can not find key\n");
            return false;
        }
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find key\n");
        return false;
    }
}

//输出identifier
bool printIdentifier(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];
    //是否有token
    if (hasMoreTokens(fp_input)) 
    {
        //是否是identifier
        strcpy(word,advance(fp_input));
        if (isIdentifier(word))
        {
            //是identifier
            fprintf(fp_output,"<identifier>%s</identifier>\n",word);
            return true;
        }else
        {
            //不是identifier
            printf("Fail:Can not find a identifier\n");
            return false;
        }
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find a identifier\n");
        return false;
    }
}

//输出symbol
bool printSymbol(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];
    //是否有token
    if (hasMoreTokens(fp_input)) 
    {
        //是否是symbol
        strcpy(word,advance(fp_input));
        if (isSymbol(word))
        {
            //是symbol
            fprintf(fp_output,"<symbol>%s</symbol>\n",word);
            return true;
        }else
        {
            //不是symbol 
            printf("Fail:Can not find a Symbol\n");
            return false;
        }
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find a symbol\n");
        return false;
    }
}
//输出intVal
bool printIntVal(FILE *fp_input,FILE *fp_output)
{}

//输出strVal
bool printStrVal(FILE *fp_input,FILE *fp_output)
{}
