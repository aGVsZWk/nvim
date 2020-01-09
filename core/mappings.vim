" Window-control prefix
nnoremap  [Window]   <Nop>
nmap      s [Window]

" 切换 buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> [n :bnext<CR>

" Start new line from any cursor position in insert-mode
inoremap <C-o> <C-o>o

" Start an external command with a single bang
nnoremap ! :!

" Allow misspellings
cnoreabbrev qw wq
cnoreabbrev Wq wq
cnoreabbrev WQ wq
cnoreabbrev Qa qa
cnoreabbrev Bd bd
cnoreabbrev bD bd

" Improve scroll, credits: https://github.com/Shougo
noremap <expr> <C-f> max([winheight(0) - 2, 1])
	\ ."\<C-d>".(line('w$') >= line('$') ? "L" : "M")
noremap <expr> <C-b> max([winheight(0) - 2, 1])
	\ ."\<C-u>".(line('w0') <= 1 ? "H" : "M")
nnoremap <expr> zz (winline() == (winheight(0)+1) / 2) ?
	\ 'zt' : (winline() == 1) ? 'zb' : 'zz'
noremap <expr> <C-e> (line("w$") >= line('$') ? "j" : "3\<C-e>")
noremap <expr> <C-y> (line("w0") <= 1         ? "k" : "3\<C-y>")

" Fast saving from all modes
nnoremap <silent><Leader>w :write<CR>
vnoremap <silent><Leader>w <Esc>:write<CR>
nnoremap <silent><C-s> :<C-u>write<CR>
vnoremap <silent><C-s> :<C-u>write<CR>
cnoremap <silent><C-s> <C-u>write<CR>

" Drag current line/s vertically and auto-indent
nnoremap <Leader>k :m-2<CR>
nnoremap <Leader>j :m+<CR>
vnoremap <Leader>k :m'<-2<CR>gv=gv
vnoremap <Leader>j :m'>+<CR>gv=gv

" Duplicate lines
nnoremap <Leader>d m`YP``
vnoremap <Leader>d YPgv

nnoremap <silent> [Window]v  :<C-u>split<CR>
nnoremap <silent> [Window]g  :<C-u>vsplit<CR>
nnoremap <silent> [Window]t  :tabnew<CR>
nnoremap <silent> [Window]o  :<C-u>only<CR>
nnoremap <silent> [Window]b  :b#<CR>
nnoremap <silent> [Window]c  :close<CR>
nnoremap <silent> [Window]x  :<C-u>call <SID>window_empty_buffer()<CR>
" Split current buffer, go to previous window and previous buffer
nnoremap <silent> [Window]sv :split<CR>:wincmd p<CR>:e#<CR>
nnoremap <silent> [Window]sg :vsplit<CR>:wincmd p<CR>:e#<CR>

function! s:window_empty_buffer()
	let l:current = bufnr('%')
	if ! getbufvar(l:current, '&modified')
		enew
		silent! execute 'bdelete '.l:current
	endif
endfunction

" Write buffer (save)
noremap <Leader>w :w<CR>
imap ,w <esc>:w<CR>


" 退出快捷键
inoremap jj <Esc>`^
noremap <leader>e :q<cr>
noremap <leader>E :qa!<cr>
noremap <leader>b :bd<cr>
noremap <leader>r :e!<cr>  " reload without save
