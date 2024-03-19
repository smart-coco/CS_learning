- [数据库及 mysql 简介,版本 5.7.37](#数据库及-mysql-简介版本-5737)
  - [简介](#简介)
  - [MySQL 安装(windows)](#mysql-安装windows)
  - [数据类型](#数据类型)
- [基础操作](#基础操作)
  - [连接数据库](#连接数据库)
  - [总体操作](#总体操作)
  - [create table 语句](#create-table-语句)
  - [alter table 语句](#alter-table-语句)
  - [select 语句](#select-语句)
  - [where 子句](#where-子句)
  - [insert 语句](#insert-语句)
  - [update 语句](#update-语句)
  - [delete 语句](#delete-语句)
- [高级操作](#高级操作)
  - [连接多个表(join)](#连接多个表join)
    - [inner join](#inner-join)
    - [left join](#left-join)
    - [right join](#right-join)
    - [full join(MySql 不支持)](#full-joinmysql-不支持)
  - [union 操作符](#union-操作符)
  - [Mysql 索引](#mysql-索引)
  - [Mysql 外键关联](#mysql-外键关联)
- [MySql 事务](#mysql-事务)
  - [什么是事务](#什么是事务)
  - [MySql 事务控制语句](#mysql-事务控制语句)
  - [MySql 事务处理两种方法](#mysql-事务处理两种方法)
- [Sql 函数](#sql-函数)
  - [MySql 临时表](#mysql-临时表)
- [防 sql 注入](#防-sql-注入)

# 数据库及 mysql 简介,版本 5.7.37

## 简介

- 数据库（Database）是按照数据结构来组织、存储和管理数据的仓库
- MySQL 为关系型数据库(Relational Database Management System),"关系型"可以理解为"表格"的概念
-

## MySQL 安装(windows)

1. 下载 zip 文件并解压
2. 目录下配置`my.ini`文件

```
[client]
# 设置mysql客户端默认字符集
default-character-set=utf8

[mysqld]
# 设置3306端口
port = 3306
# 设置mysql的安装目录
basedir=D:\Environment\mysql-5.7.37
# 设置 mysql数据库的数据的存放目录，MySQL 8+ 不需要以下配置，系统自己生成即可，否则有可能报错
datadir=D:\Environment\mysql-5.7.37\data
# 允许最大连接数
max_connections=20
# 服务端使用的字符集默认为8比特编码的latin1字符集
character-set-server=utf8
# 创建新表时将使用的默认存储引擎
default-storage-engine=INNODB
skip-grant-tables
```

3. 管理员命令打开 cmd
4. 执行初始化数据库`mysqld --initialize --console`
5. 安装 mysqld`mysqld install`
6. 启动 mysql 服务器`net start mysql`
7. 登录`mysql -h 主机名 -u 用户名 -p`登录本机时-h 可以省略,用户名默认为 root
8. 修改 root 账户密码`update mysql.user set authentication_string=password("123456") where user="root";`
9. 注释掉 my.ini 最后一句话,重启 mysql 服务器

## [数据类型](https://www.runoob.com/mysql/mysql-data-types.html)

- 数值类型:严格数值数据类型(INTEGER、SMALLINT、DECIMAL TINYINT、MEDIUMINT BIGINT 和 NUMERIC),近似数值数据类型(FLOAT、REAL 和 DOUBLE PRECISION)
- 日期和时间类型:DATETIME、DATE、TIMESTAMP、TIME 和 YEAR
- 字符串类型:CHAR、VARCHAR、BINARY、VARBINARY、BLOB、TEXT、ENUM 和 SET
- NULL
  - IS NULL: 当列的值是 NULL,此运算符返回 true
  - IS NOT NULL: 当列的值不为 NULL, 运算符返回 true
  - <=>: 比较操作符(不同于 = 运算符),当比较的的两个值相等或者都为 NULL 时返回 true
  - 不能使用 = NULL 或 != NULL 在列中查找 NULL 值
  - NULL 值与任何其它值的比较和运算(即使是 NULL)永远返回 NULL,即 NULL = NULL 返回 NULL,INT+NULL=NULL

# 基础操作

## 连接数据库

`mysql -h localhost -u root -p`

## 总体操作

- 选择数据库 `use <数据库名>;`
- 列出所有数据库 `show datebases;`
- 查看所选数据库所有表 `show tables;`
- 显示数据表的属性 `show columns from <数据表名>;`
- 显示创建数据表的语句 `show create table <数据表名>;`,后续可用 [create table](#create-table-语句) 和`insert into...select`复制表
- 创建数据库 `create database <数据库名>;`
- 删除数据库 `drop database <数据库名>;`
- 删除数据表 `drop table <数据表名>;`
- 执行 sql 文件:
  1. 连接 mysql
  2. 执行 `\. sql文件路径`
- 获取服务器元数据
  - 服务器版本信息 `SELECT VERSION();`
  - 当前数据库名 `SELECT DATABASE();`
  - 当前用户名 `SELECT USER();`
  - 服务器状态 `SHOW STATUS;`
  - 服务器配置变量 `SHOW VARIABLES;`

## create table 语句

- 语法  
  `CREATE TABLE <表名> (<列名> <列类型>,<列名> <列类型>...);`

## alter table 语句

- 修改数据表名或者修改数据表字段
- 修改表名:`ALTER TABLE table_name1 RENAME TO table_name2;`
- 字段删,添,改。[列类型格式](#create-table-语句)
  - 删除以上创建表的字段:`ALTER TABLE table_name DROP field;`
  - 添加字段:`ALTER TABLE table_name ADD field <列类型> [FIRST(设定位第一列)/AFTER 字段名(设定位于某个字段之后)];`
  - 修改字段
    - 更改字段的类型:`ALTER TABLE table_name MODIFY field <列类型>;`
    - 更改字段:`ALTER TABLE table_name CHANGE field1 field2 <列类型>;`
    - 修改字段默认值:`ALTER TABLE table_name ALTER field SET DEFAULT <默认值>;`
    - 删除字段默认值:`ALTER TABLE table_name ALTER field DROP DEFAULT;`
- 创建和删除 Mysql 数据表的索引

## select 语句

- 用于查询数据
- 语法
  `SELECT field1, field2,... FROM table_name1,table_name2... [WHERE Clause] [LIMIT N][ offset m][order by field1, field2,.. ASC|DESC];`
- 查询语句中你可以使用一个或者多个表
- 可以使用星号（\*）来代替其他字段，SELECT 语句会返回表的所有字段数据
- 可以使用 WHERE 语句来包含任何条件
- 可以使用 LIMIT 属性来设定返回的记录数
- 可以通过 OFFSET 指定 SELECT 语句开始查询的数据偏移量。默认情况下偏移量为 0
- 可以使用 [where 子句](#where-子句)设置查询条件
- 可以使用`order by`根据列名进行升序排序,默认 asc 升序,降序使用 desc
- 可以对field字段使用`AVG`,`COUNT`,`DISTINCT`,`LOWER`,`MAX`,`MIN`，`UPPER`等函数
- groud by 语句
  - 根据一个或多个列对结果集进行分组
  - 语法  
    `SELECT column_name1, function(column_name2) FROM table_name [WHERE Clause] GROUP BY column_name1 [WITH ROLLUP];`
  - WITH ROLLUP 可以实现在分组统计数据基础上再进行相同的统计(SUM,AVG,COUNT…)
  - 可以使用[where 子句](#where-子句)
  - function
    - count(\*):column_name1 相同的统计总数
    - sum(column_name2):column_name1 相同的 column_name2 的总数

## where 子句

- 用于在 select,update,delete 数据中设置字段条件
- 语法  
  `where condition1 AND或OR condition2...`
- 可以使用 AND 或者 OR 指定一个或多个条件
- WHERE 子句也可以运用于 SQL 的 DELETE 或者 UPDATE 命令
- WHERE 子句类似于程序语言中的 if 条件，根据 MySQL 表中的字段值用=,!=,>=,<等比较符或 like ,REGEXP ,in,not in ,between,not between, is null,not null 等操作符,或者!,AND,OR,XOR 等逻辑运算符,设置条件来读取指定的数据
- WHERE 子句的字符串比较是不区分大小写的。可以使用 BINARY 关键字来设定 WHERE 子句的字符串比较是区分大小写的
- like 操作符:`field1 LIKE condition1`,`condition`中的通配符:
  - `%`替代 0 个或多个字符,类似正则表达式中的星号 \*
  - `_`替代一个字符
- REGEXP 操作符使用正则表达式:`field1 REGEXP "正则表达式" `
- in 操作符`field1 in (value1,value2...)`:判断是否在集合中
- between/not between 操作符`field1 between/not between value1 and value2`:判断是否在 value1 和 value2 取值范围内(或之外)

## insert 语句

- 用于插入数据
- 语法  
  `INSERT INTO table_name (field1, field2...) VALUES (value1, value2...);`

## update 语句

- 用于更新数据
- 语法  
  `UPDATE table_name SET field1=new-value1, field2=new-value2... [WHERE Clause]`
- 可以同时更新一个或多个字段
- 可以使用 [where 子句](#where-子句)设置字段条件

## delete 语句

- 用于删除数据
- 语法  
  `DELETE FROM table_name [WHERE Clause]`
- 可以使用 [where 子句](#where-子句)设置字段条件

# 高级操作

## 连接多个表(join)

join 子句用于将多个表基于共同字段结合:

- INNER JOIN：如果表中有至少一个匹配，则返回行
- LEFT JOIN：即使右表中没有匹配，也从左表返回所有的行
- RIGHT JOIN：即使左表中没有匹配，也从右表返回所有的行
- FULL JOIN：只要其中一个表中存在匹配，则返回行

### inner join

- INNER JOIN 关键字在表中存在至少一个匹配时返回行  
  <img src="./resource/image/inner%20join.png">
- 语法(innner join 和 join 一样)
  `SELECT table1.field1,table1.field2,table2.field2... FROM table1 INNER JOIN table2 ON table1.field1=table2.field1;`
  等价于:`SELECT table1.field1,table1.field2,table2.field2... FROM table1,table2 where table1.field1=table2.field1;`

### left join

- LEFT JOIN 关键字从左表（table1）返回所有的行，即使右表（table2）中没有匹配。如果右表中没有匹配，则结果为 NULL  
  <img src="./resource/image/left%20join.png">
- 语法
  `SELECT table1.field1,table1.field2,table2.field2... FROM table1 LEFT JOIN table2 ON table1.field1=table2.field1;`

### right join

- RIGHT JOIN 关键字从右表（table2）返回所有的行，即使左表（table1）中没有匹配。如果左表中没有匹配，则结果为 NULL
  <img src="./resource/image/right%20join.png">
- 语法
  `SELECT table1.field1,table1.field2,table2.field2... FROM table1 RIGHT JOIN table2 ON table1.field1=table2.field1;`

### full join(MySql 不支持)

- FULL OUTER JOIN 关键字只要左表（table1）和右表（table2）其中一个表中存在匹配，则返回行  
  <img src="./resource/image/full%20join.png">
- 语法  
  `SELECT table1.field1,table1.field2,table2.field2... FROM table1 FULL OUTER JOIN table2 ON table1.field1=table2.field1;`

## union 操作符

- UNION 操作符用于合并两个或多个 SELECT 语句的结果集
- UNION 内部的每个 SELECT 语句必须拥有相同数量的列
- 列也必须拥有相似的数据类型
- 每个 SELECT 语句中的列的顺序必须相同。
- UNION 结果集中的列名总是等于 UNION 中第一个 SELECT 语句中的列名
- DISTINCT: 可选，删除结果集中重复的数据。默认情况下 UNION 操作符已经删除了重复数据，所以 DISTINCT 修饰符对结果没啥影响。
- ALL: 可选，返回所有结果集，包含重复数据
- 语法
  `select语句1 UNION [ALL | DISTINCT] select语句2;`
  SELECT country, name FROM Websites
  UNION ALL
  SELECT country, app_name FROM apps
  WHERE country='CN'
  ORDER BY country;

## Mysql 索引

- 创建索引
- 撤销索引

## Mysql 外键关联

- 关系型数据库的关键:外键关联
  - 一对一模型
  - 一对多模型
  - 多对多模型
- 外键创建
  - 创建表时创建
    `constraint <约束名> foreign key(<选取的外键>) references <另一个关联的表名>(<关联的主键>);`
  - 创建表后添加
    `alter table student add constraint stfk foreign key (tid) references teacher(id);`

# MySql 事务

## 什么是事务

事务必须满足 4 个条件(ACID):原子性(Atomicity,或称不可分割性),一致性(Consistency),隔离性(Isolation,又称独立性),持久性(Durability)

- 原子性:一个事务(transaction)中的所有操作,要么全部完成,要么全部不完成,不会结束在中间某个环节。事务在执行过程中发生错误,会被回滚(Rollback)到事务开始前的状态,就像这个事务从来没有执行过一样。
- 一致性:在事务开始之前和事务结束以后,数据库的完整性没有被破坏。这表示写入的资料必须完全符合所有的预设规则,这包含资料的精确度,串联性以及后续数据库可以自发性地完成预定的工作。
- 隔离性:数据库允许多个并发事务同时对其数据进行读写和修改的能力,隔离性可以防止多个事务并发执行时由于交叉执行而导致数据的不一致。事务隔离分为不同级别,包括读未提交(Read uncommitted),读提交(read committed),可重复读(repeatable read)和串行化(Serializable)。
- 持久性:事务处理结束后,对数据的修改就是永久的,即便系统故障也不会丢失。

## MySql 事务控制语句

- BEGIN 或 START TRANSACTION 显式地开启一个事务；
- COMMIT 也可以使用 COMMIT WORK，不过二者是等价的。COMMIT 会提交事务，并使已对数据库进行的所有修改成为永久性的；
- ROLLBACK 也可以使用 ROLLBACK WORK，不过二者是等价的。回滚会结束用户的事务，并撤销正在进行的所有未提交的修改；
- SAVEPOINT identifier，SAVEPOINT 允许在事务中创建一个保存点，一个事务中可以有多个 SAVEPOINT；
- RELEASE SAVEPOINT identifier 删除一个事务的保存点，当没有指定的保存点时，执行该语句会抛出一个异常；
- ROLLBACK TO identifier 把事务回滚到标记点；
- SET TRANSACTION 用来设置事务的隔离级别。InnoDB 存储引擎提供事务的隔离级别有 READ UNCOMMITTED、READ COMMITTED、REPEATABLE READ 和 SERIALIZABLE。

## MySql 事务处理两种方法

- 用 BEGIN, ROLLBACK, COMMIT 来实现
  - BEGIN 开始一个事务
  - ROLLBACK 事务回滚
  - COMMIT 事务确认
- 直接用 SET 来改变 MySQL 的自动提交模式
  - SET AUTOCOMMIT=0 禁止自动提交
  - SET AUTOCOMMIT=1 开启自动提交

# [Sql 函数](https://www.runoob.com/mysql/mysql-functions.html)

- 字符串函数
- 数字函数
- date 函数
- 高级函数

## MySql 临时表

# 防 sql 注入

- javascript 函数/正则表达式匹配处理后再提交查找数据库
- 处理 like 的通配字符
