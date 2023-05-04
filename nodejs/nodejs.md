- [nodejs 简介与安装](#nodejs-简介与安装)
  - [简介](#简介)
  - [安装](#安装)
  - [node 常用命令](#node-常用命令)
- [npm 插件](#npm-插件)
  - [npm 常用命令](#npm-常用命令)
  - [npm 发布模块](#npm-发布模块)
- [node 模块](#node-模块)
  - [fs 模块(node 文件系统)](#fs-模块node-文件系统)
  - [util 模块](#util-模块)
  - [OS 模块](#os-模块)
  - [Path 模块](#path-模块)
  - [Net 模块](#net-模块)
  - [DNS 模块](#dns-模块)
  - [Domain 模块](#domain-模块)
  - [http 模块](#http-模块)
  - [webpack 模块](#webpack-模块)
  - [express 模块](#express-模块)
    - [简介](#简介-1)
    - [创建服务器端](#创建服务器端)
    - [路由设置](#路由设置)
    - [添加路由中间键统一管理路由](#添加路由中间键统一管理路由)
    - [解决跨域访问](#解决跨域访问)
    - [设置静态文件路径:添加处理静态文件的功能](#设置静态文件路径添加处理静态文件的功能)
  - [serve 模块(用于本地发布前端项目)](#serve-模块用于本地发布前端项目)
- [nodejs 多进程](#nodejs-多进程)
- [nodejs 连接 mysql](#nodejs-连接-mysql)

# nodejs 简介与安装

## 简介

node.js 是一个基于 chrome V8 引擎的 JavaScript 运行环境。作为前端的开发环境和服务端的动态编程语言

## 安装

- 官网下载:`https://nodejs.org/en/download/`
- 二进制压缩包解压
- 配置环境变量

## node 常用命令

- 配置环境变量后
- cmd 窗口`node -v`显示 nodejs 版本
- `node`进入 node 命令行

# npm 插件

nodejs 自带 npm。npm 是包管理工具。npm 包平台`https://www.npmjs.com/`

## npm 常用命令

- `npm -v`显示 npm 版本
- `npm init`初始化工程文件的 npm 包管理模块
- `npm install 模块名`在工程文件中安装模块,`npm install 模块名 -g`全局安装模块,`npm install`则可以根据 package 文件自动安装模块
- `npm config set registry https://registry.npm.taobao.org`设置镜像代理

## npm 发布模块

- [npm 官网](https://www.npmjs.com/)注册账号
- `npm adduser`登录
- `npm publish`发布,要先换回原先代理`npm config set registry https://registry.npmjs.org`

# node 模块

## fs 模块(node 文件系统)

- 导入
  ```javasrcript
  var fs = require("fs")
  ```
- 模块方法  
  方法均有同步和异步两种,异步的方法函数最后一个参数为回调函数,回调函数的第一个参数包含了错误信息(error)。异步方法性能更高，速度更快，而且没有阻塞。
  - 读取文件(read,read,read)
  - 打开文件
  - 获取文件信息
  - 写文件
  - 关闭文件
  - 截取文件
  - 删除文件
  - 创建文件
  - 读取目录
  - 删除目录

## util 模块

## OS 模块

## Path 模块

## Net 模块

## DNS 模块

## Domain 模块

## http 模块

## webpack 模块

打包

## express 模块

### 简介

[Express4.x API 中文版](https://www.runoob.com/w3cnote/express-4-x-api.html)

### 创建服务器端

```javascript
var express = require("express");
var app = express();
var server = app.listen(8081);
```

### 路由设置

- 路由用于确定应用程序如何响应对特定端点的客户机请求，包含一个 URI(或路径)和一个特定的 HTTP 请求方法(GET、POST 等)。每个路由可以具有一个或多个处理程序函数，这些函数在路由匹配时执行。相同路由位置,不同响应方法时,先定义的执行

- 添加路由语法

  ```javascript
  /*通用语法:
  - app 是 express 的实例。
  - METHOD 是 HTTP 请求方法。
  - PATH 是服务器上的路径。
  - HANDLER 是在路由匹配时执行的函数。*/
  app.METHOD(PATH, HANDLER);

  //添加get路由方法
  app.get("/", function (req, res) {
    // --
  });
  ```

- Express 应用使用回调函数的参数： request 和 response 对象来处理请求和响应的数据

  - Request 对象表示 HTTP 请求，包含了请求查询字符串，参数，内容，HTTP 头部等属性。
  - Response 对象表示 HTTP 响应，即在接收到请求时向客户端发送的 HTTP 响应数据。

- 获取 get 请求的参数:`req.query`
- 获取 post 请求的参数:
  - 创建 application/x-www-form-urlencoded 编码解析
    ```javascript
    var bodyParser = require("body-parser");
    var urlencodedParser = bodyParser.urlencoded({ extended: false });
    app.post("/login", urlencodedParser, function (req, res) {});
    ```
  - 获取 post 请求的参数:`req.body`
  - 客户端记得引入 qs 模块用 qs.stringify()处理对象

### 添加路由中间键统一管理路由

- 新建`api.js`文件存放路由

  ```javascript
  const express = require("express");
  const router = express.Router();
  module.exports = router;

  router.METHOD(PATH, HANDLER);
  //...
  ```

- server.js 文件

  ```javascript
  const api = require("./api");
  app.use("/", api);
  ```

### 解决跨域访问

- 什么是跨域访问:在前端领域中，跨域是指浏览器允许向服务器发送跨域请求，从而克服 Ajax 只能同源使用的限制
- 方法 1:后端响应添加头部

  ```javascript
  app.all("*", function (req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Content-Type");
    res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
    //res.header("X-Powered-By",' 3.2.1');
    //res.header("Content-Type", "application/json;charset=utf-8");
    next();
  });
  ```

- 方法 2:安装跨域资源共享（CORS）

### 设置静态文件路径:添加处理静态文件的功能

```javascript
var express = require("express");
var app = express();
app.use("/public", express.static("public")); //  /public目录下的静态文件而已直接访问
```

## serve 模块(用于本地发布前端项目)

- 预先`npm run build`创建好项目
- build 目录可以移走
- 管理员权限打开 cmd,并切换到 build 目录下
- `npm install -g serve`
- `serve -s ./`实际上`./`是`index.html`所在目录地址

# nodejs 多进程

# nodejs 连接 mysql

- 安装驱动
  `cnpm install mysql`

- 连接数据库
  ```javascript
  var mysql = require("mysql");
  var connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "123456",
    database: "test",
  });
  connection.connect();
  ```
