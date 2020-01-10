## NVIM 个人配置

### 特性

- 快速启动

- 模块化插件配置

- 基于 dein 懒加载大部分插件

- 易于使用，前端的配置多些

- 基于 coc 的自动补全

- 基于 zfz 的搜索功能

- one dark 主题，也可以自由替换喜欢的主题

### 自定义键位

### 文件结构

```
.
├── README.md
├── autoload
│   ├── etc
│   │   ├── providers
│   │   │   └── dein.vim
│   │   └── util.vim
│   ├── etc.vim
│   └── onedark.vim
├── coc-extensions // coc 配置
│   └── repl.js
├── coc-settings.json // coc 配置
├── colors // 主题
│   └── onedark.vim
├── core // 核心配置
│   ├── all.vim // 插件按钮映射配置
│   ├── dein
│   │   └── plugins.yaml // 插件管理配置
│   ├── filetype.vim // 文件类型配置
│   ├── general.vim // 常规配置
│   ├── mappings.vim // 常规键盘映射
│   └── vimrc // 初始化文件
├── init.vim // nvim入口文件
└── layers
├── +completion
│   ├── coc // coc 插件配置
│   │   └── config.vim
│   └── fzf // fzf 插件配置
│   └── config.vim
├── +lang // 语言配置
│   └── go // go 语言配置
│   └── config.vim
├── +tools
│   ├── choosewin // 窗口选择工具配置
│   │   └── config.vim
│   ├── neoformat // 格式化工具配置
│   │   └── config.vim
│   ├── vim-gutentags // tag 生成配置
│   │   └── config.vim
│   └── vista // tag侧边栏配置
│   └── config.vim
└── +ui
├── buffet // 顶栏配置
│   └── config.vim
├── defx // 文件管理器配置
│   └── config.vim
├── indentline // 状态栏配置
│   └── config.vim
└── startify // 开屏页配置
└── config.vim
```

#### 通用

| 快捷键      | 模式 | 描述                         |
| ----------- | ---- | ---------------------------- |
| Space       | all  | Leader                       |
| ;           | all  | Local Leader                 |
| [ + b       | n    | :bprevious 切换上一个 buffer |
| [ + n       | n    | :bnext 切换下一个 buffer     |
| !           | n    | :! 快速输入强制执行命令      |
| leader + w  | all  | 快速保存                     |
| leader + j  | n, v | 向下拖动一行                 |
| leader + k  | n, v | 向上拖动一行                 |
| leader + d  | n, v | 重复当前行                   |
| leader + cp | n    | 重复当前段落                 |

#### 窗口

| 快捷键 | 模式 | 描述                          |
| ------ | ---- | ----------------------------- |
| s + v  | n    | 水平分屏                      |
| s + g  | n    | 垂直分屏                      |
| s + t  | n    | 打开一个新的 buffer (:tabnew) |
| s + o  | n    | 关闭其他 buffer (:only)       |
| s + b  | n    | 上一个 buffer (:b#)           |
| s + c  | n    | 关闭当前 buffer (:close)      |

#### Plugin: Defx

| 快捷键                 | 模式 | 描述                           |
| ---------------------- | ---- | ------------------------------ |
| LocalLeader + e        | n    | 打开或者关闭文件管理器         |
| LocalLeader + a        | n    | 打开文件管理器并定位到当前文件 |
| **Within Defx window** |      |                                |
| h                      | n    | 折叠目录数                     |
| j / k                  | n    | 上下移动光标                   |
| <Return> / l / e       | n    | 切换折腾展开目录或者打开文件   |
| \<Space>               | n    | 选择当前文件或者文件夹         |
| \*                     | n    | 反转选择 all                   |
| & / \\                 | n    | 移动至项目根目录               |
| ~                      | n    | 移动至用户根目录               |
| st                     | n    | 在新 tab 中打开文件            |
| sv                     | n    | 在垂直分屏中打开文件           |
| sg                     | n    | 在水平分屏中打开文件           |
| y                      | n    | 复制路径                       |
| q                      | n    | 关闭文件管理器                 |
| c                      | n    | 复制文件                       |
| m                      | n    | 移动文件                       |
| p                      | n    | 粘贴文件                       |
| r                      | n    | 重命名文件                     |
| dd                     | n    | 移动至回收站                   |
| K                      | n    | 新建文件夹                     |
| N                      | n    | 新建文件                       |
| <BS> / u               | n    | 上一层                         |

#### Plugin: fzf

| 快捷键          | 模式 | 描述                   |
| --------------- | ---- | ---------------------- |
| LocalLeader + b | n    | 搜索 Buffer (:Buffers) |
| LocalLeader + f | n    | 搜索 文件 (:Files)     |
| LocalLeader + g | n    | 搜索 文件内容 (:Rg)    |
| LocalLeader + t | n    | 搜索 Tags (:Tags)      |
| ctrl + t        | n    | 新 tab 页面打开        |
| ctrl + x        | n    | 垂直分屏打开           |
| ctrl + v        | n    | 水平分屏打开           |
