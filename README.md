## 项目简介

### 项目说明

小兔鲜儿体系包含四个端：微信小程序端，H5 端，PC 端，管理后台。

当前仓库是 **uni-app** 开发的**微信小程序端**。

### 项目架构

![项目架构图](./README/images/project_structure.png)

## 项目演示

### 在线演示

项目已上线，微信搜索小程序 **小兔鲜儿** 即可体验。

### 项目截图

<img width="100" src="./README/images/screenshot_1.jpg" alt="">
<img width="100" src="./README/images/screenshot_2.jpg" alt="">
<img width="100" src="./README/images/screenshot_3.jpg" alt="">
<img width="100" src="./README/images/screenshot_4.jpg" alt="">
<img width="100" src="./README/images/screenshot_5.jpg" alt="">
<img width="100" src="./README/images/screenshot_6.jpg" alt="">
<img width="100" src="./README/images/screenshot_7.jpg" alt="">
<img width="100" src="./README/images/screenshot_8.jpg" alt="">
<img width="100" src="./README/images/screenshot_9.jpg" alt="">
<img width="100" src="./README/images/screenshot_10.jpg" alt="">
<img width="100" src="./README/images/screenshot_11.jpg" alt="">
<img width="100" src="./README/images/screenshot_12.jpg" alt="">

## 资料说明

### 接口文档

- 文档地址：https://www.apifox.cn/apidoc/shared-0e6ee326-d646-41bd-9214-29dbf47648fa/doc-1521513

### 在线笔记

- 笔记地址：https://megasu.gitee.io/uni-app-shop-note/

## 小兔鲜儿-微信小程序

### 项目简介

微信小程序端：该项目包含了从首页浏览商品，到商品详情，微信登录，加入购物车，提交订单，微信支付，订单管理等功能。

### 技术栈

- 前端框架：[uni-app](https://uniapp.dcloud.net.cn/) (Vue3 + TS)
- 状态管理：[pinia](https://pinia.vuejs.org/zh/)
- 组件库：[uni-ui](https://uniapp.dcloud.net.cn/component/uniui/uni-ui.html)

### 项目模块

- 项目起步
- 首页模块
- 推荐模块
- 分类模块
- 详情模块
- 登录模块
- 用户模块
- 地址模块
- SKU 模块
- 购物车模块
- 订单模块
- 项目打包

### 开发环境

- Windows 版本 Windows 11 家庭中文版
- 开发工具 VS Code
- Node 版本 v16.15.0
- pnpm 版本 v8.4.0

### 运行程序

1. 安装依赖

```shell
# npm
npm i --registry=https://registry.npmmirror.com

# pnpm
pnpm i --registry=https://registry.npmmirror.com
```

2. 运行程序

```shell
# 微信小程序端
npm run dev:mp-weixin

# H5端
npm run dev:mp-weixin
```

3. 微信开发者工具导入 `/dist/dev/mp-weixin` 目录

### 工程结构解析

```
├── .husky                     # Git Hooks
├── .vscode                    # VS Code 插件 + 设置
├── dist                       # 打包文件夹（可删除重新打包）
├── src                        # 源代码
│   ├── components             # 全局组件
│   ├── composables            # 组合式函数
│   ├── pages                  # 主包页面
│       ├── index               # 首页
│       ├── category            # 分类页
│       ├── cart                # 购物车
│       ├── my                  # 我的
│       ├── goods               # 商品详情
│       └── hot                 # 热门推荐
│       └── login               # 登录页
│   ├── pagesMember            # 分包页面(用户模块)
│       ├── address             # 地址管理
│       ├── address-form        # 地址表单
│       ├── profile             # 用户信息
│       └── settings            # 用户设置
│   ├── pagesOrder             # 分包页面(订单模块)
│       ├── create              # 创建订单
│       ├── detail              # 订单详情
│       ├── list                # 订单列表
│       └── payment             # 支付结果
│   ├── services               # 所有请求
│   ├── static                 # 存放应用引用的本地静态资源的目录
│       ├── images              # 普通图片
│       └── tabs                # tabBar 图片
│   ├── stores                 # 全局 pinia store
│       ├── modules             # 模块
│       └── index.ts            # store 入口
│   ├── styles                 # 全局样式
│       └── fonts.scss          # 字体图标
│   ├── types                  # 类型声明文件
│   ├── utils                  # 全局方法
│   ├── App.vue                # 入口页面
│   ├── main.ts                # Vue初始化入口文件
│   ├── pages.json             # 配置页面路由等页面类信息
│   ├── manifest.json          # 配置appid等打包信息
│   └── uni.scss               # uni-app 内置的常用样式变量
├── .eslintrc.cjs              # eslint 配置
├── .prettierrc.json           # prettier 配置
├── .gitignore                 # git 忽略文件
├── index.html                 # H5 端首页
├── package.json               # package.json 依赖
├── tsconfig.json              # typescript 配置
└── vite.config.ts             # vue-cli 配置
```
