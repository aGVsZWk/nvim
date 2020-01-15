augroup user_plugin_filetype "{{{
    autocmd!
    " Reload vim config automatically
    autocmd BufWritePost $VIM_PATH/{*.vim,*.yaml,vimrc} nested
        \ source $MYVIMRC | redraw

    " Highlight current line only on focused window
    autocmd WinEnter,InsertLeave * set cursorline

    autocmd WinLeave,InsertEnter * set nocursorline

    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g'\"" | endif

    autocmd Syntax * if 5000 < line('$') | syntax sync minlines=200 | endif

    autocmd FileType css setlocal equalprg=csstidy\ -\ --silent=true

    autocmd BufWritePre *.js,*.jsx,*.less,*.html Neoformat

    autocmd FileType javascript,javascriptreact set shiftwidth=2

    autocmd FileType python
        \ setlocal foldmethod=indent expandtab smarttab nosmartindent
        \ | setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80

    " HTML (.gohtml and .tpl for server side)
    autocmd BufNewFile,BufRead *.html,*.htm,*.gohtml,*.tpl  setf html

    " Force write shada on leaving nvim
    autocmd VimLeave * if has('nvim') | wshada! | else | wviminfo! | endif

    " Update filetype on save if empty
    autocmd BufWritePost * nested
        \ if &l:filetype ==# '' || exists('b:ftdetect')
        \ |   unlet! b:ftdetect
        \ |   filetype detect
        \ | endif

    autocmd FileType markdown
        \ setlocal expandtab spell spelllang=en_us,cjk conceallevel=0
        \ | setlocal autoindent formatoptions=tcroqn2 comments=n:>
augroup END "}}}
