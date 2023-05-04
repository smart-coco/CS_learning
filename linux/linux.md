- [linux 常用命令](#linux-常用命令)
  - [包管理器apt](#包管理器apt)
  - [文件与目录管理命令](#文件与目录管理命令)
  - [文件内容查看](#文件内容查看)
  - [用户和用户组管理](#用户和用户组管理)
    - [用户管理](#用户管理)
    - [用户组管理](#用户组管理)
  - [Shell输入/输出重定向](#shell输入输出重定向)
  - [其他常用命令](#其他常用命令)
- [Linux脚本语法](#linux脚本语法)
  - [基本语法](#基本语法)
  - [流程控制](#流程控制)
  - [函数](#函数)
  - [Shell 文件包含](#shell-文件包含)

# linux 常用命令

## 包管理器apt

- 列出所有已安装的包：apt list --installed
- 查看一些可更新的包：sudo apt update
- 升级安装包：sudo apt upgrade
- 组合:sudo apt update && sudo apt upgrade -y
- 安装包：sudo apt install 包名
- 更新包：sudo apt update 包名
- 删除包：sudo apt remove 包名
- 查找包：apt search 包名
- 清理不再使用的依赖和库文件：sudo apt autoremove

## 文件与目录管理命令

- chown [-R] 属主名[:属组名] 路径
- chmod [-R] xyz 路径
- pwd
- cd 
- ~
- /
- .
- ..
- Desktop
- ls [-ald] [路经]
- touch 
- rm [-fr] 路径
- mkdir [-mp] 路径
- rmdir [-p] 路径
- cp [-i] 源 路径
- mv [-fi] 源 路径

## 文件内容查看

- cat [-bv] 路径
- tac [-bv] 路径
- nl
- less
- more 
- head [-n number] 路径
- tail [-n number] 路径

## 用户和用户组管理

### 用户管理

- useradd
- userdel
- usermod
- passwd

### 用户组管理

- groupadd
- groupdel
- groupmod

## Shell输入/输出重定向

- 重定向命令列表，文件描述符 0 通常是标准输入（STDIN），1 是标准输出（STDOUT），2 是标准错误输出（STDERR）
    | 命令            | 说明                                             |
    | --------------- | ------------------------------------------------ |
    | command > file  | 将输出重定向到 file                              |
    | command < file  | 将输入重定向到 file                              |
    | command >> file | 将输出以追加的方式重定向到 file                  |
    | n > file        | 将文件描述符为 n 的文件重定向到 file             |
    | n >> file       | 将文件描述符为 n 的文件以追加的方式重定向到 file |
    | n >& m          | 将输出文件 m 和 n 合并                           |
    | n <& m          | 将输入文件 m 和 n 合并                           |
    | << tag          | 将开始标记 tag 和结束标记 tag 之间的内容作为输入 |
- 重定向深入
    - 一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：
      - 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据
      - 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据
      - 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息
    - stderr重定向
        - `command 2> file`
        - `command 2< file`
    - stdin 和 stdout 都重定向：`command < file1 > file2`    
    - Here Document
- 管道`|`：在两个命令之间设置管道时，管道符`|`左边命令的输出就变成了右边命令的输入。只要第一个命令向标准输出写入，而第二个命令是从标准输入读取

## 其他常用命令

- echo 
    - -e：开启转义字符
- printf:`printf "字符串" 参数1,参数2..`

# Linux脚本语法

## 基本语法

- 注释
    - \#
    - :<<'  
        内容  
    '
    - :<<!  
        内容  
    !
- 变量定义
- 变量使用
    - $变量名
    - ${变量名}
- 删除变量：unset 变量名
- 运算符
    - 基本运算与逻辑运算符需空格分割开，逻辑运算可用`test [逻辑表达式]`测试
        - 基本运算：+,-,*,/,%,=
        - 逻辑运算
            - 双括号`[[ ]]`：&&，|| 
            - 单括号`[ ]`！,-o,-a
        - 逻辑判断：-eq,-ne,-gt,-lt,-ge,-le,==,！=
        - 字符串逻辑判断运算符，单括号`[ ]`：=,!=,-z,-n,$
        - 文件逻辑判断运算符，单括号`[ ]`：https://www.runoob.com/linux/linux-shell-basic-operators.html
    - 原生bash不支持简单的数学运算，但是可以通过其他命令来实现
        - expr：计算表达式``` `expr 表达式` ```
        - `((表达式))`

- 字符串
    - ""和''的区别
        - 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
        - 单引号字串中不能出现单独一个的单引号（对单引号使用转义符后也不行），但可成对出现，作为字符串拼接使用
        - 双引号里可以有变量和转义字符
    - 获取字符串长度：`${#string}`
    - 提取子字符串：`${string:1:4}`

- 数组
    - 定义：`数组名=(值1 值2 ... 值n)`
    - 访问
        - 访问单个元素：`数组名[n]`
        - 访问数组所有元素：`数组名[@]`或`数组名[*]`
    - 获取数组长度
        - `length=${#数组名[@]}`
        - `length=${#数组名[*]}`
- 关联数组(字典)
    - 定义：`declare -A 数组名`
    - 定义新键值对：`数组名[键]=值`
    - 访问
        - 访问单个元素：`数组名[键]`
        - 访问数组所有元素：`数组名[@]`或`数组名[*]`
        - 访问数组所有键：`!数组名[@]`或`!数组名[*]`
    - 获取数组长度同上
- 

## 流程控制

- if else
    - 语法  
    ```
    if condition
    then
        command1 
        command2
        ...
        commandN 
    [else/(elif command)
        command]
    fi
    ```
- for循环
    - 语法  
    ```
    for var in item1 item2 ... itemN
    do
        command1
        command2
        ...
        commandN
    done
    ```
- while循环  
    - 语法  
    ```
    while condition
    do
        command
    done
    ```
    - 可以使用`break`,`continue`
- case ... esac  
    - 语法  
    ```
    case 值 in
    模式1)
        command1
        command2
        ...
        commandN
        ;;
    模式2)
        command1
        command2
        ...
        commandN
        ;;
    ...
    *)
        command1
        command2
        ...
        commandN
        ;;
    esac
    ```

## 函数

- 语法  
    ```
    [ function ] funname [()]
    {

        action;

        [return int;]

    }
    ```

- 特殊字符 
    | 字符 | 意义                                               |
    | ---- | -------------------------------------------------- |
    | $0   | 脚本名                                             |	
    | $n   | 第n个参数(n从1到9)                                 |
    | $#   | 传递到脚本或函数的参数个数                         |
    | $*   | 以一个单字符串显示所有向脚本传递的参数             |
    | $@   | 与$*相同，但是使用时加引号，并在引号中返回每个参数 |
    | $!   | 后台运行的最后一个进程的ID号                       |
    | $$   | 脚本运行的当前进程ID号                             |
    | $-   | 显示Shell使用的当前选项，与set命令功能相同         |
    | $?   | 上条命令的返回结果                                 |

## Shell 文件包含

- 语法
  - `. filename`
  - `source filename`
  
# ubuntu的一些坑

- 要想移动硬盘上即插即用ubuntu需要安装efi分区引导，工具需要安装boot-repair，可以本地ubuntu安装修复，也可以用启动盘安装修复
- 关闭显卡
	- 临时更改：grub界面按e
	- 永久更改
		- `sudo vi /etc/default/grub`
		- "quiet splash [nomodset]"
		- `sudo update-grub`
- 修显卡驱动
	- 显卡：r9 380x
	- 查看显卡信息`sudo lshw -c video`
	- [https://linuxconfig.org/amd-radeon-ubuntu-20-04-driver-installation]中的方法2
- sudo update-grub：更新grub启动项
- 有了efi分区，不需要boot分区
- `sudo apt install gparted`:`gparted`可以进行ubuntu分区管理
- 安装java  
	```
	sudo apt update
	sudo apt install openjdk-11-jdk
	```
