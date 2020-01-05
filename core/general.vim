" Enable true color
if has('termguicolors')
    set termguicolors
endif

set nobackup " 覆盖文件时保留备份文件
set noswapfile " 缓冲区是否使用交换文件
" set autoread
" set autowrite
set splitbelow " 分割窗口时新窗口在当前窗口之下

if has('vim_starting')
    set encoding=UTF-8
    scriptencoding UTF-8
endif

set laststatus=2 " 当最近的窗口有状态行时提示
set showtabline=2 " 是否显示标签页行

if has('mac')
    let g:clipboard = {
        \   'name': 'macOS-clipboard',
        \   'copy': {
        \      '+': 'pbcopy',
        \      '*': 'pbcopy',
        \    },
        \   'paste': {
        \      '+': 'pbpaste',
        \      '*': 'pbpaste',
        \   },
        \   'cache_enabled': 0,
        \ }
endif

if has('clipboard')
    set clipboard& clipboard+=unnamedplus
endif

set history=1000
set number
set timeout ttimeout
set cmdheight=2
set timeoutlen=500
set ttimeoutlen=10
set updatetime=100
set undofile " 把撤销信息写入一个文件里
set undodir=~/.tmp/undo
set relativenumber
set backspace=indent,eol,start " 在一行开关按退格键如何处理
" Tabs and Indents {{{
" ----------------
set textwidth=120 " 插入文本的最大宽度
set expandtab " 键入 <Tab> 时使用空格
set tabstop=2       " <Tab> 在文件里使用的空格数
set softtabstop=2   " 编辑时 <Tab> 使用的空格数
set shiftwidth=2    " 缩进列数对齐到 shiftwidth 的整数倍
set smarttab        " 插入 <Tab> 时使用 'shiftwidth'
set autoindent      " 根据上一行决定新行的缩进
set smartindent     " C 程序智能自动缩进
set shiftround      " 缩进列数对齐到 shiftwidth 的整数倍
" }}}

set hidden
set shortmess=aFc
set signcolumn=yes
set completefunc=emoji#complete
set completeopt =longest,menu
set completeopt-=preview
set list
set listchars=tab:»·,nbsp:+,trail:·,extends:→,precedes:←

set ignorecase " 搜索模式时忽略大小写
set smartcase       " 	模式中有大写字母时不忽略大小写
set infercase       " 关键字自动补全的匹配调整大小写
set incsearch       " 输入搜索模式时同时高亮部分的匹配
set hlsearch        " 高亮最近的匹配搜索模式
set wrapscan        " 搜索在文件尾折回文件头
set showmatch       " 插入括号时短暂跳转到匹配的括号
set matchpairs+=<:> " Add HTML "%" 能匹配的字符对
set matchtime=1     " 显示匹配括号的时间 (以十分之一秒计)
set cpoptions-=m    " 设定 Vi-兼容的行为
set grepprg=rg\ --vimgrep\ $* " ":grep" 使用的程序
" set wildignore+=*.so,*~,*/.git/*,*/.svn/*,*/.DS_Store,*/tmp/* " 匹配这些模式的文件不会参与自动补全
set wildignore+=.git,.hg,.svn,.stversions,*.pyc,*.spl,*.o,*.out,*~,%*
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.zip,**/tmp/**,*.DS_Store
set wildignore+=**/node_modules/**,**/bower_modules/**,*/.sass-cache/*
set wildignore+=application/vendor/**,**/vendor/ckeditor/**,media/vendor/**
set wildignore+=__pycache__,*.egg-info,.pytest_cache

if has('conceal')
    set conceallevel=3 concealcursor=niv
endif

" Vim Directories {{{
" ---------------
set undofile swapfile nobackup
set directory=$DATA_PATH/swap//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set undodir=$DATA_PATH/undo//,$DATA_PATH,~/tmp,/var/tmp,/tmp
set backupdir=$DATA_PATH/backup/,$DATA_PATH,~/tmp,/var/tmp,/tmp
set viewdir=$DATA_PATH/view/
set nospell spellfile=$VIM_PATH/spell/en.utf-8.add

if has('nvim')
    set shada='300,<50,@100,s10,h
else
    set viminfo='300,<10,@50,h,n$DATA_PATH/viminfo
endif

" If sudo, disable vim swap/backup/undo/shada/viminfo writing
if $SUDO_USER !=# '' && $USER !=# $SUDO_USER
        \ && $HOME !=# expand('~'.$USER)
        \ && $HOME ==# expand('~'.$SUDO_USER)

    set noswapfile
    set nobackup
    set nowritebackup
    set noundofile
    if has('nvim')
        set shada="NONE"
    else
        set viminfo="NONE"
    endif
endif

" Secure sensitive information, disable backup files in temp directories
if exists('&backupskip')
    set backupskip+=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*
    set backupskip+=.vault.vim
endif

" Disable swap/undo/viminfo/shada files in temp directories or shm
augroup user_secure
    autocmd!
    silent! autocmd BufNewFile,BufReadPre
        \ /tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*/shm/*,/private/var/*,.vault.vim
        \ setlocal noswapfile noundofile nobackup nowritebackup viminfo= shada=
augroup END

if has('folding')
    set foldenable
    set foldmethod=syntax
    set foldlevelstart=99
endif
