#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <dirent.h>
#include <stdbool.h>

#define FILE_LEN 50

#include "JackTokenizer.c"

bool compileClass(FILE *fp_input,FILE *fp_output);
bool compileClassVarDec(FILE *fp_input,FILE *fp_output);
bool compileSubroutineDec(FILE *fp_input,FILE *fp_output);
bool compileParameterList(FILE *fp_input,FILE *fp_output);
bool compileSubroutineBody(FILE *fp_input,FILE *fp_output);
bool compileVarDec(FILE *fp_input,FILE *fp_output);
bool compileStatements(FILE *fp_input,FILE *fp_output);
bool compileLet(FILE *fp_input,FILE *fp_output);
bool compileIf(FILE *fp_input,FILE *fp_output);
bool compileWhile(FILE *fp_input,FILE *fp_output);
bool compileDo(FILE *fp_input,FILE *fp_output);
bool compileReturn(FILE *fp_input,FILE *fp_output);
bool compileSubroutineCall(FILE *fp_input,FILE *fp_output);
bool compileExpression(FILE *fp_input,FILE *fp_output);
bool compileTerm(FILE *fp_input,FILE *fp_output);

//`bool compileClass()`:Compiles a complete class,success:true,fail:false
bool compileClass(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //class label
    fprintf(fp_output,"<class>\n");

    //print "class"
    printKey(fp_input,fp_output);
    
    //print className
    printIdentifier(fp_input,fp_output);

    //print "{"
    printSymbol(fp_input,fp_output);

    //递归compileClassVarDec
    if (!compileClassVarDec(fp_input,fp_output))
    {
        printf("Fail:Can not compileClassVarDec\n");
    }

    //递归compileSubroutineDec
    if (!compileSubroutineDec(fp_input,fp_output))
    {
        printf("Fail:Can not compileSubroutineDec\n");
    }

    //print "}"
    printSymbol(fp_input,fp_output);

    //class label
    fprintf(fp_output,"</class>\n");

    return true;
}
//`void compileClassVarDec()`:Compiles a static variable declaration,or a field declaration
bool compileClassVarDec(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //classVarDec label
    fprintf(fp_output,"<classVarDec>\n");

    //print "static" | "field"
    printKey(fp_input,fp_output);

    //print type
    printKey(fp_input,fp_output);

    //print varName
    printIdentifier(fp_input,fp_output);

    //print (,varName)

    //print ";"
    printSymbol(fp_input,fp_output);

    //classVarDec label
    fprintf(fp_output,"</classVarDec>\n");

    return true;
}

//`void compileSubroutineDec()`:Compiles a complete method function,or constructor
bool compileSubroutineDec(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<subroutineDec>\n");

    //print "constructor" | "function" | "method"
    printKey(fp_input,fp_output);

    //print "void" | "type"
    printKey(fp_input,fp_output);

    //print identifier
    printIdentifier(fp_input,fp_output);

    //print "("
    printSymbol(fp_input,fp_output);

    //递归compileParameterList
    if (!compileParameterList(fp_input,fp_output))
    {
        printf("Fail:Can not compileParameterList\n");
    }
    
    //print ")"
    printSymbol(fp_input,fp_output);

    //递归compileSubroutineBody
    if (!compileSubroutineBody(fp_input,fp_output))
    {
        printf("Fail:Can not compileSubroutineBody\n");
    }

    //subroutineDec label
    fprintf(fp_output,"</subroutineDec>\n");

    return true;
}

//`void compileParameterList()`:Compiles a parameter list.Does not handle the enclossing "()"
bool compileParameterList(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<parameterList>\n");

    //print type varName(','type varName)*
    //判断是否有token
    if (hasMoreTokens(fp_input)) 
    {
        //有token
        //判断是否为空参数
        strcpy(word,advance(fp_input));
        if (strcmp(word,")")==0)
        {
            //是空参数,回退")"
            ungetc(')',fp_input);
            return true;
        }else
        {
            //不是空参数,处理parameterlist
            while (1)
            {
                //print type
                printKey(fp_input,fp_output);
                //print varName
                printIdentifier(fp_input,fp_output);
                //查看下个是否是","
                if (hasMoreTokens(fp_input)) 
                {
                    //有token
                    strcpy(word,advance(fp_input));
                    if (strcmp(word,",")!=0)
                    {
                        //下一个不是","
                        //读完参数,回退
                        ungetc(word,fp_input);
                        break;
                    }else
                    {
                        //下一个是","
                        //读完参数,回退
                        ungetc(word,fp_input);
                        //print ","
                        printSymbol(fp_input,fp_output);
                    }
                }else
                {
                    //没有更多token了
                    printf("TokenFail:Can not find token\n");
                    return false;
                }
            }
            return true;
        }
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //subroutineDec label
    fprintf(fp_output,"</parameterList>\n");
}

//`void compileSubroutineBody()`:Compiles a subroutine's body
bool compileSubroutineBody(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<subroutineBody>\n");

    //print "{"
    printSymbol(fp_input,fp_output);

    //compile varDec*

    //print "}"
    printSymbol(fp_input,fp_output);

    //subroutineDec label
    fprintf(fp_output,"</subroutineBody>\n");
}

//`void compileVarDec()`:Compiles a var declaration
bool compileVarDec(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<varDec>\n");

    //print "var"
    printKey(fp_input,fp_output);

    //print "type"
    printKey(fp_input,fp_output);

    //print "varName"
    printIdentifier(fp_input,fp_output);

    //print ",varName"*
    while (1)
    {
        //查看下个是否是","
        if (hasMoreTokens(fp_input)) 
        {
            //有token
            strcpy(word,advance(fp_input));
            if (strcmp(word,",")!=0)
            {
                //下一个不是",",退出while
                //读完参数,回退
                ungetc(word,fp_input);
                break;
            }else
            {
                //下一个是","
                //读完参数,回退
                ungetc(word,fp_input);
                //print ","
                printSymbol(fp_input,fp_output);
            }

            //print "varName"
            printIdentifier(fp_input,fp_output);
        }else
        {
            //没有更多token
            printf("TokenFail:Can not find token\n");
            return false;
        }
    }
    //subroutineDec label
    fprintf(fp_output,"</varDec>\n");
}

//`void compileStatements()`:Compiles a sequence of statement.Does not handle the enclosing "()"
bool compileStatements(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<statements>\n");

    //print statement
    while(1)
    {
        //有token
        if (hasMoreTokens(fp_input))
        {
            strcpy(word,advance(fp_input));
            if (strcmp(word,"let")==0)
            {
                ungetc(word,fp_input);
                compileLet(fp_input,fp_output);
                continue;
            }
            if (strcmp(word,"if")==0)
            {
                ungetc(word,fp_input);
                compileIf(fp_input,fp_output);
                continue;
            }
            if (strcmp(word,"while")==0)
            {
                ungetc(word,fp_input);
                compileWhile(fp_input,fp_output);
                continue;
            }
            if (strcmp(word,"do")==0)
            {
                ungetc(word,fp_input);
                compileDo(fp_input,fp_output);
                continue;
            }
            if (strcmp(word,"return")==0)
            {
                ungetc(word,fp_input);
                compileReturn(fp_input,fp_output);
                continue;
            }
            break;
        }else
        {
            //没有更多token
            printf("TokenFail:Can not find token\n");
            return false;
        }
    }

    //subroutineDec label
    fprintf(fp_output,"</statements>\n");
}

//`void compileLet()`:Compiles a let statement
bool compileLet(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //letstatement label
    fprintf(fp_output,"<letStatement>\n");

    //print "let"
    printKey(fp_input,fp_output);

    //print varName
    printIdentifier(fp_input,fp_output);

    //如果有[expression] 编译[expression]
    if (hasMoreTokens(fp_input))
    {
        strcpy(word,advance(fp_input));
        //文件流回退
        ungetc(word,fp_input);
        if (strcmp(word,"[")==0)
        {
            //print "["
            printSymbol(fp_input,fp_output);

            //compileExpression
            if (!compileExpression(fp_input,fp_output))
            {
                printf("Fail:Can not compileExpression\n");
            }

            //print "]"
            printSymbol(fp_input,fp_output);
        }
    }else
    {
        //没有更多token
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //print "="
    printSymbol(fp_input,fp_output);

    //递归compileExpression
    if (!compileExpression(fp_input,fp_output))
    {
        printf("Fail:Can not compileExpression\n");
    }

    //print ";"
    printSymbol(fp_input,fp_output);

    //letstatement label
    fprintf(fp_output,"</letStatement>\n");
}

//`void compileIf()`:Compiles an if statement,possybly with a trailing else clause
bool compileIf(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //ifstatement label
    fprintf(fp_output,"<ifStatement>\n");

    //print "if"
    printKey(fp_input,fp_output);

    //print "("
    printSymbol(fp_input,fp_output);

    //compile expression
    compileExpression(fp_input,fp_output);

    //print ")"
    printSymbol(fp_input,fp_output);

    //print "{"
    printSymbol(fp_input,fp_output);

    //compile statements
    if (!compileStatements(fp_input,fp_output))
    {
        printf("Fail:Can not compileStatement\n");
    }

    //print "}"
    printSymbol(fp_input,fp_output);

    //如果有else {statements}
    if (hasMoreTokens(fp_input))
    {
        strcpy(word,advance(fp_input));
        //文件流回退
        ungetc(word,fp_input);
        //有else
        if (strcmp(word,"else")==0)
        {
            //print "else"
            printKey(fp_input,fp_output);

            //print "{"
            printSymbol(fp_input,fp_output);

            //compile statements
            if (!compileStatements(fp_input,fp_output))
            {
                printf("Fail:Can not compileStatements\n");
            }

            //print "}"
            printSymbol(fp_input,fp_output);
        }
    }else
    {
        //没有更多token
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //ifstatement label
    fprintf(fp_output,"</ifStatement>\n");
}

//`void compileWhile()`:Compiles a while statement
bool compileWhile(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //whilestatement label
    fprintf(fp_output,"<whileStatement>\n");

    //print "while"
    printKey(fp_input,fp_output);

    //print "("
    printSymbol(fp_input,fp_output);

    //compile expression
    if (!compileExpression(fp_input,fp_output))
    {
        printf("Fail:Can not compileExpression\n");
    }

    //print ")"
    printSymbol(fp_input,fp_output);

    //print "{"
    printSymbol(fp_input,fp_output);

    //compile statements
    if (!compileStatements(fp_input,fp_output))
    {
        printf("Fail:Can not compileStatement\n");
    }

    //print "}"
    printSymbol(fp_input,fp_output);

    //subroutineDec label
    fprintf(fp_output,"</whileStatement>\n");
}

//`void compileDo()`:Compiles a do statement
bool compileDo(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //doStatement label
    fprintf(fp_output,"<doStatement>\n");

    //print do
    printKey(fp_input,fp_output);

    //compile subroutinecall
    if (!compileSubroutineCall(fp_input,fp_output))
    {
        printf("Fail:Can not compileSubroutineCall\n");
    }

    //doStatement label
    fprintf(fp_output,"</doStatement>\n");
}

//`void compileReturn()`:Compiles a return statement
bool compileReturn(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //returnStatement label
    fprintf(fp_output,"<returnStatement>\n");

    //print "return"
    printKey(fp_input,fp_output);

    //print expression?

    //print ";"
    printSymbol(fp_input,fp_output);

    //returnStatement label
    fprintf(fp_output,"</returnStatement>\n");
}

//`void compileSubroutineCall()`:Compiles a Subroutinecall
bool compileSubroutineCall(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //print subroutineName | className|varName
    printIdentifier(fp_input,fp_output);    

    //If "."
    if (hasMoreTokens(fp_input))
    {
        strcpy(word,advance(fp_input));
        //文件流回退
        ungetc(word,fp_input);
        //有else
        if (strcmp(word,".")==0)
        {
            //print "."
            printSymbol(fp_input,fp_output);

            //print subroutineName
            printIdentifier(fp_input,fp_output);
        }
    }else
    {
        //没有更多token
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //print "("
    printSymbol(fp_input,fp_output);

    //(expression(','.expression)*)?
    if (hasMoreTokens(fp_input)) 
    {
        //有token
        //判断是否为空参数
        strcpy(word,advance(fp_input));
        ungetc(word,fp_input);
        if (strcmp(word,")")==0)
        {
            //是空参数
        }else
        {
            //不是空参数,处理expression
            while (1)
            {
                //print expression
                compileExpression(fp_input,fp_output);
                //查看下个是否是","
                if (hasMoreTokens(fp_input)) 
                {
                    //有token
                    strcpy(word,advance(fp_input));
                    ungetc(word,fp_input);
                    if (strcmp(word,",")!=0)
                    {
                        //下一个不是","
                        break;
                    }else
                    {
                        //下一个是","
                        //print ","
                        printSymbol(fp_input,fp_output);
                    }
                }else
                {
                    //没有更多token了
                    printf("TokenFail:Can not find token\n");
                    return false;
                }
            }
            return true;
        }
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //print ")"
    printSymbol(fp_input,fp_output);
}

//`void compileExpression()`:Compiles an expression
bool compileExpression(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<expression>\n");

    //compile term
    compileTerm(fp_input,fp_output);

    //(op term)*
    while (1)
    {
        //查看下个是否是op
        if (hasMoreTokens(fp_input)) 
        {
            //有token
            strcpy(word,advance(fp_input));
            ungetc(word,fp_input);
            if (isOp(word))
            {
                //下一个是op
                //print op
                printSymbol(fp_input,fp_output);
                //compile term
                if (!compileTerm(fp_input,fp_output))
                {
                    printf("Fail:Can not compileTerm\n");
                }
            }else
            {
                //下一个不是op
                break;
            }
        }else
        {
            //没有更多token了
            printf("TokenFail:Can not find token\n");
            return false;
        }
    }

    //subroutineDec label
    fprintf(fp_output,"</expression>\n");
}

//`void compileTerm()`:Compiles a term
bool compileTerm(FILE *fp_input,FILE *fp_output)
{
    char word[FILE_LEN];

    //subroutineDec label
    fprintf(fp_output,"<term>\n");

    //查看下个token
    if (hasMoreTokens(fp_input)) 
    {
        //有token
        strcpy(word,advance(fp_input));
        ungetc(word,fp_input);
        //valconstant
        //strconstant
        //keyword
        //varName varName[expression]
        //subroutineCall
        //(expression)
        //unaryOp term
    }else
    {
        //没有更多token了
        printf("TokenFail:Can not find token\n");
        return false;
    }

    //subroutineDec label
    fprintf(fp_output,"</term>\n");
}