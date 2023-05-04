- [基础语法](#基础语法)
  - [数据类型](#数据类型)
    - [动态数据类型特性](#动态数据类型特性)
    - [基本类型](#基本类型)
    - [对象(Object)](#对象object)
    - [类型转换](#类型转换)
    - [function 函数](#function-函数)
    - [正则表达式(Regular Expression)(regexp)](#正则表达式regular-expressionregexp)
  - [输出数据](#输出数据)
  - [this 的用法](#this-的用法)
  - [调用 JavaScript 代码](#调用-javascript-代码)
  - [JavaScript 错误-throw,try,catch](#javascript-错误-throwtrycatch)
- [JSON](#json)
- [模块化](#模块化)
  - [优点](#优点)
  - [主流规范](#主流规范)
    - [同步加载:CommonJS](#同步加载commonjs)
    - [异步加载:AMD 和 CMD](#异步加载amd-和-cmd)
      - [AMD(Asynchronous Module Definition)规范](#amdasynchronous-module-definition规范)
      - [CMD(Common Module Definition)规范](#cmdcommon-module-definition规范)
- [多线程](#多线程)
- [面向对象](#面向对象)
- [HTML DOM(文档对象模型)](#html-dom文档对象模型)
  - [HTML DOM(文档对象模型)简介](#html-dom文档对象模型简介)
  - [查找 HTML 元素](#查找-html-元素)
  - [改变 HTML 元素的内容和属性](#改变-html-元素的内容和属性)
  - [改变 CSS](#改变-css)
  - [HTML DOM 事件](#html-dom-事件)
    - [事件类型](#事件类型)
    - [对 HTML DOM 事件反应](#对-html-dom-事件反应)
    - [HTML DOM EventListener](#html-dom-eventlistener)
- [BOM(浏览器对象模型)](#bom浏览器对象模型)
- [JavaScript 库](#javascript-库)

# 基础语法

## 数据类型

### 动态数据类型特性

- 变量可赋值不同类型数据
- const,不加,var 与 let 区别
  - 全局变量都为 window 的对象:可以 window.变量名访问
  - 函数内不加情况下定义为全局变量,其余为局部变量
  - const 定义常量,不可再更改
  - var 定义的变量可以用 var 重复定义
  - let 定义的变量不可再重复定义,且声明变量只在声明所在代码块内有效
- typeof 数据:查看数据类型
- 声明提升:函数和变量的声明被提到顶部(不含初始化)
- [关于 let,var,const 更多](https://www.runoob.com/js/js-let-const.html)

### 基本类型

- number 数值
- string 字符串

  - 字符串定义,访问与连接

    ```javascript
    s = "hello word";
    s[0];
    s[2];
    //字符串用+连接
    s2 = "hello " + "world";
    ```

  - 内置 length 求长度

    ```javascript
    s.length;
    ```

  - 转义字符表

    | 代码 | 输出        |
    | ---- | ----------- |
    | \\'  | 单引号      |
    | \\"  | 双引号      |
    | \\\\ | 反斜杠      |
    | \n   | 换行        |
    | \r   | 回车        |
    | \t   | tab(制表符) |
    | \b   | 退格符      |
    | \f   | 换页符      |

  - 字符串对象(String)
    - 创建
      ```javascript
      var s = new String("john");
      typeof s;
      ```
    - [字符串对象方法](https://www.runoob.com/jsref/jsref-obj-string.html)

- boolean 布尔类型
- null 空
  - 定义为空
    ```javascript
    var a = null;
    ```
- undefined 未定义
  - 未定义
    ```javascript
    var a;
    ```
- Symbol

### 对象(Object)

- 基本对象

  - 定义一个对象
    ```javascript
    var person = {
      firstName: "John",
      lastName: "Doe",
      id: 5566,
      //定义方法
      fullName: function () {
        return this.firstName + " " + this.lastName;
      },
    };
    ```
  - 访问对象属性
    ```javascript
    person.firstName;
    person.id;
    //访问函数
    name = person.fullName;
    //使用函数
    name = person.fullName();
    ```

- Array 组

  - 定义一个组
    ```javascript
    var arr1 = [40, 100, "12", [3, "a"], { a: 10, b: 12 }];
    var arr2 = new Array(40, 100, "12", [3, "a"], { a: 10, b: 12 });
    ```
  - 访问组元素
    ```javascript
    arr1[0];
    arr1[1] = "a";
    ```

- Set 集合
- Map 映射
- RegExp 正则
- Date 日期

### 类型转换

- 转字符串

  - 全局方法 String(),数字,布尔转字符串

    ```javascript
    String(123); //数字转字符串
    String(false); //布尔转字符串
    ```

  - Number 方法 toString(),数字转字符串

    ```javascript
    (123).toString(); //数字转字符串
    ```

    [更多的 Number 方法](https://www.runoob.com/jsref/jsref-obj-number.html)

  - Date 方法 Date(),返回字符串

    ```javascript
    Date(); //直接返回字符串
    ```

    [更多的 Date 方法](https://www.runoob.com/jsref/jsref-obj-date.html)

- 转数字
  - 全局方法 Number()
    ```javascript
    Number("3.14"); //字符串转数字
    Number("123");
    Number(false); //布尔转数字
    var d = new Date();
    Number(d); //日期转数字
    ```
    [更多的 Number 方法](https://www.runoob.com/jsref/jsref-obj-number.html)

### function 函数

- 定义一个函数,两种方式
  ```javascrpt
  //方式1
  function myFunction(a,b){
      return a*b;
  }
  //方式2(箭头函数都没有自己的 this。 不适合定义一个 对象的方法)
  myFunction=(a,b)=>{
      return a*b;
  }
  ```
- 函数的自我调用

  ```javascript
  (function () {
    var x = "Hello!!"; //定义+自我调用一次
  })();
  ```

- 函数的对象方法
  |方法|描述|
  |---|---|
  |toString|函数转字符串描述|

- 函数还有很多少用的奇怪特性[详情](https://www.runoob.com/js/js-function-definition.html)

### 正则表达式(Regular Expression)(regexp)

[完整 RegExp 参考手册](https://www.runoob.com/jsref/jsref-obj-regexp.html)

- 语法

  - 修饰符  
    | 修饰符 | 描述 |
    | ------ | ---------------------------- |
    | i | 不区分大小写 |
    | g | 执行全局搜索(查找所有匹配项) |
    | m | 执行多行匹配 |

    ```javascript
    var pattern = /runoob/i;
    ```

  - 正则表达式模式
    - 方括号用于查找某个范围内的字符
      |表达式|描述|
      |---|---|
      |[abc]|查找方括号之间的任何字符|
      |[0-9]|查找任何从 0 至 9 的数字|
      |(x\|y)|查找任何以\|分隔的选项|'
    - 元字符是拥有特殊含义的字符
      |元字符|描述|
      |---|---|
      |\\d|查找数字|
      |\\s|查找空白字符|
      |\\b|匹配单词边界|
      |\\uxxxx|查找以十六进制数 xxxx 规定的 Unicode 字符
    - 量词
      |量词|描述|
      |---|---|
      |n+|匹配任何包含至少一个 n 的字符串|
      |n\*|匹配任何包含零个或多个 n 的字符串|
      |n?|匹配任何包含零个或一个 n 的字符串|

- 常用方法 search(),replace(),test(),exec()
  ```javascript
  //需要搜索的字符串.search(正则表达式),检索字符串中与正则表达式匹配的子串,并返回子串起始位置
  var pattern = /runoob/i;
  "sfwefwefrunOobfewf".search(p); //返回8
  //需要替换的字符串.replace(正则表达式,替换成的串),替换字符串中与正则表达式匹配的子串
  s.replace(/microsoft/i, "Runoob"); //替换s中符合正则表达式的字串成"Runoob"
  //需要搜索的字符串.test(正则表达式),检测字符串是否符合某个模式,如果字符串中含有匹配的文本,则返回 true,否则返回false。
  patt.test("/runoob/i"); //看patt串中是否有正则表达式/runoob/i子串
  //正则表达式.exec(需要搜索的字符串),检索字符串中的正则表达式匹配,返回一个数组,其中存放匹配的结果。如果未找到匹配,则返回值为 null。
  /e/.exec("The best things in life are free!");
  ```

## 输出数据

- 使用 DOM(详细见 DOM)

- 使用 window.alert()弹出警告框。

  ```html
  <script>
    window.alert(5 + 6);
  </script>
  ```

- 使用 console.log()写入到浏览器的控制台。
  ```markdown
  <script>
      console.log("输出到控制台");
  </script>
  ```

## this 的用法

- 有对象就指向调用对象
- 没调用对象就指向全局对象
- 用 new 构造就指向新对象
- 通过 apply 或 call 或 bind 来改变 this 的所指
- 理解[`Function.prototype.bind()`](https://www.smashingmagazine.com/2014/01/understanding-javascript-function-prototype-bind/)

## 调用 JavaScript 代码

- 内部调用

  ```html
  <script>
    function myFunction() {
      document.write("我的第一个 JavaScript 函数");
    }
  </script>
  <button type="button" onclick="myFunction()">尝试一下</button>
  ```

- 外部调用

  ```html
  <script src="myScript.js"></script>
  <!-- myFunction()存在于myScript.js文件中,且与index.html在同一目录下 -->
  <button type="button" onclick="myFunction()">尝试一下</button>
  ```

## JavaScript 错误-throw,try,catch

[和 Java 的类似,暂时先不学](https://www.runoob.com/js/js-errors.html)

# JSON

详细可以看[JSON 教程](https://www.runoob.com/json/json-tutorial.html)

- JSON 数据格式

  键值对格式

  ```javascript
  //键值对格式
  "name":"Runoob";
  ```

- JSON 对象
  大括号内存键值对

  ```javasript
  {
    "name":"Runoob";
    "url":"www.runoob.com";
  }
  ```

- JSON 数组
  中括号框住对象,逗号分隔内容
  ```javasript
  "sites":[
      {"name":"Runoob", "url":"www.runoob.com"},
      {"name":"Google", "url":"www.google.com"},
      {"name":"Taobao", "url":"www.taobao.com"}
  ]
  ```
- JSON 字符串转 JavaScript 对象:JSON.parse()
  ```javasript
  //1.创建 JSON 数据格式的 JavaScript 字符串
  var text = '{ "sites" : [' +
  '{ "name":"Runoob" , "url":"www.runoob.com" },' +
  '{ "name":"Google" , "url":"www.google.com" },' +
  '{ "name":"Taobao" , "url":"www.taobao.com" } ]}';
  //2.使用 JSON.parse()将字符串转 JavaScript 对象
  var obj = JSON.parse(text);
  ```
- JavaScript 值转 JSON 字符串:JSON.stringify()

# 模块化

## 优点

- 实现代码的可复用，具有独立的作用域，避免全局变量被污染
- 便于代码编写和维护，提高开发效率
- 实现按需加载

## 主流规范

### 同步加载:CommonJS

- 创建模块
  - 函数定义
  - `exports.接口名称=函数名;`
- 调用
  - 加载模块:`const 被调用模块名称=require("被调用模块路径")`
  - 调用模块:`被调用模块名称.export的接口名`

### 异步加载:AMD 和 CMD

#### AMD(Asynchronous Module Definition)规范

#### CMD(Common Module Definition)规范

- 特点:依赖就近

# 多线程

[和 Java 的类似,暂时先不学](https://www.runoob.com/js/js-async.html)

# 面向对象

[和 Java 的类似,暂时先不学,类](https://www.runoob.com/js/js-class-intro.html)
[和 Java 的类似,暂时先不学,对象](https://www.runoob.com/js/js-objects.html)

# HTML DOM(文档对象模型)

## HTML DOM(文档对象模型)简介

- 当网页被加载时，浏览器会创建页面的文档对象模型(Document Object Model)HTML DOM 模型被构造为对象的树：
  <img src="./resource/image/HTML%20DOM树.png">
  通过可编程的对象模型，JavaScript 获得了足够的能力来创建动态的 HTML
  - JavaScript 能够改变页面中的所有 HTML 元素和属性
  - JavaScript 能够改变页面中的所有 CSS 样式
  - JavaScript 能够对页面中的所有事件做出反应

## 查找 HTML 元素

- 通过 id 查找 HTML 元素
  本例查找 id="intro" 的元素
  ```javascript
  <p id="intro">你好世界!</p>
  <script>
    x=document.getElementById("intro"); document.write("<p>文本来自 id 为 intro 段落: " + x.innerHTML + "</p>")
  </script>;
  ```
- 通过标签名查找 HTML 元素
  本例查找 id="main" 的元素，然后查找 id="main" 元素中的所有 <p> 元素
  ```javascript
  <div id="main">
  <p> DOM 是非常有用的。</p>
  <p>该实例展示了  <b>getElementsByTagName</b> 方法</p>
  </div>
  <script>
  var x=document.getElementById("main");
  var y=x.getElementsByTagName("p");
  document.write('id="main"元素中的第一个段落为：' + y[0].innerHTML);
  </script>
  ```
- 通过类名找到 HTML 元素
  本例通过 getElementsByClassName 函数来查找 class="intro" 的元素
  ```javascript
  <p class="intro">你好世界!</p>
  <p>该实例展示了 <b>getElementsByClassName</b> 方法!</p>
  <script>
  x=document.getElementsByClassName("intro");
  document.write("<p>文本来自 class 为 intro 段落: " + x[0].innerHTML + "</p>");
  </script>
  ```

## 改变 HTML 元素的内容和属性

- document.write()可用于直接向 HTML 输出流写内容

  ```javascript
  <script>document.write(Date());</script>
  ```

- 使用 innerHTML 属性改变 HTML 内容

  ```javascript
  <script>document.getElementById(id).innerHTML=新的 HTML;</script>
  ```

- 使用 attribute 改变 HTML 属性

  ```javascript
  <script>document.getElementById(id).attribute = 新属性值;</script>
  ```

## 改变 CSS

- 改变 HTML 样式

  ```javascript
  document.getElementById(id).style.property = 新样式;
  ```

## HTML DOM 事件

### 事件类型

- 常见 html 事件
  |事件|描述|
  |---|---|
  |onchange|HTML 元素改变|
  |onclick|用户点击 HTML 元素|
  |onmouseover|鼠标指针移动到指定的元素上时发生|
  |onmouseout|用户从一个 HTML 元素上移开鼠标时发生|
  |onkeydown|用户按下键盘按键|
  |onload|浏览器已完成页面的加载|
  |onsubmit|表单提交时触发|
  更多事件列表:[JavaScript 参考手册 - HTML DOM 事件](https://www.runoob.com/jsref/dom-obj-event.html)

### 对 HTML DOM 事件反应

- 进行验证的方式
  - [直接利用 DOM 获取值判断验证](https://www.runoob.com/js/js-form-validation.html)
  - [JavaScript 验证 API](https://www.runoob.com/js/js-validation-api.html)
- 向一个 HTML 事件属性添加 JavaScript 代码

  ```javascript
  //直接添加JavaScript代码
  <h1 onclick="this.innerHTML='Ooops!'">点击文本!</h1>
  //添加调用一个JavaScript函数
  <script>
    function changetext(id) {
      id.innerHTML = "Ooops!";
    }
  </script>
  <h1 onclick="changetext(this)">点击文本!</h1>
  ```

- 向 HTML 元素分配事件
  向 button 元素分配 onclick 事件

  ```html
  <script>
    document.getElementById("myBtn").onclick = function () {
      displayDate();
    };
  </script>
  ```

### HTML DOM EventListener

# BOM(浏览器对象模型)

[暂时先不学](https://www.runoob.com/js/js-window.html)

# JavaScript 库
