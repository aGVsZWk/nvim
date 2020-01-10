## NVIM 个人配置

### 自定义键位

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
