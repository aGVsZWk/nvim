if dein#tap('defx.nvim')
	nnoremap <silent> <LocalLeader>e
		\ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>
	nnoremap <silent> <LocalLeader>a
		\ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>
endif

if dein#tap('vim-easymotion')
	" nmap ss <Plug>(easymotion-s2)
  nmap ss <Plug>(easymotion-overwin-f2)
  map  <Leader>f <Plug>(easymotion-bd-f)
  nmap <Leader>f <Plug>(easymotion-overwin-f)
  " JK motions: Line motions
  map <Leader>l <Plug>(easymotion-lineforward)
  map <Leader>h <Plug>(easymotion-linebackward)
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)
  " Move to line
  map <Leader>L <Plug>(easymotion-bd-jk)
  nmap <Leader>L <Plug>(easymotion-overwin-line)
  " Move to word
  map  <Leader>w <Plug>(easymotion-bd-w)
  nmap <Leader>w <Plug>(easymotion-overwin-w)

  map  / <Plug>(easymotion-sn)
  omap / <Plug>(easymotion-tn)

  " These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
  " Without these mappings, `n` & `N` works fine. (These mappings just provide
  " different highlight method and have some other features )
  map  n <Plug>(easymotion-next)
  map  N <Plug>(easymotion-prev)
  
endif

if dein#tap('fzf.vim')
        nnoremap <silent> <leader>bb :Buffers<CR>
        nnoremap <silent> <LocalLeader>f :call Fzf_dev()<CR>
        nnoremap <silent> <localleader>g :Rg<CR>
        nnoremap <silent> <leader>fw :Rg <C-R><C-W><CR>
endif

" if dein#tap('LeaderF')
"   let g:Lf_ShortcutF = "<localleader>f"
"   noremap <localleader>b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
"   noremap <localleader>m :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
"   noremap <localleader>t :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
"   noremap <localleader>l :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
"   noremap <localleader>g :<C-U><C-R>=printf("Leaderf rg %s", "")<CR><CR>
" endif

if dein#tap('caw.vim')
    function! InitCaw() abort
		if ! &l:modifiable
			silent! nunmap <buffer> gc
			silent! xunmap <buffer> gc
			silent! nunmap <buffer> gcc
			silent! xunmap <buffer> gcc
		else
			nmap <buffer> gc <Plug>(caw:prefix)
			xmap <buffer> gc <Plug>(caw:prefix)
			nmap <buffer> gcc <Plug>(caw:hatpos:toggle)
			xmap <buffer> gcc <Plug>(caw:hatpos:toggle)
		endif
	endfunction
	autocmd FileType * call InitCaw()
	call InitCaw()
endif

if dein#tap('vista.vim')
        nnoremap <silent><leader>t :Vista!!<CR>
endif

if dein#tap('coc.nvim')
        " Using CocList
        " Show all diagnostics
        nnoremap <silent> <leader>cd  :<C-u>CocList diagnostics<cr>
        " Manage extensions
        nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
        " Show commands
        nnoremap <silent> <leader>cc  :<C-u>CocList commands<cr>
        " Find symbol of current document
        nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
        " Search workspace symbols
        nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
        " Do default action for next item.
        nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
        " Do default action for previous item.
        nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
        " Resume latest coc list
        nnoremap <silent> <leader>cr  :<C-u>CocListResume<CR>
        " Use `[c` and `]c` for navigate diagnostics
        nmap <silent> ]c <Plug>(coc-diagnostic-prev)
        nmap <silent> [c <Plug>(coc-diagnostic-next)
        " Remap for rename current word
        nmap <leader>cn <Plug>(coc-rename)
        " Remap for format selected region
        vmap <leader>cf  <Plug>(coc-format-selected)
        nmap <leader>cf  <Plug>(coc-format-selected)
        " Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
        xmap <leader>ca  <Plug>(coc-codeaction-selected)
        nmap <leader>ca  <Plug>(coc-codeaction-selected)
        " Remap for do codeAction of current line
        nmap <leader>ac  <Plug>(coc-codeaction)
        " Fix autofix problem of current line
        nmap <leader>qf  <Plug>(coc-fix-current)
        " Remap keys for gotos
        nmap <silent> gd <Plug>(coc-definition)
        nmap <silent> gy <Plug>(coc-type-definition)
        nmap <silent> gi <Plug>(coc-implementation)
        nmap <silent> gr <Plug>(coc-references)
        " Use K for show documentation in float window
        nnoremap <silent> K :call CocActionAsync('doHover')<CR>
        " use <c-space> for trigger completion.
        inoremap <silent><expr> <c-space> coc#refresh()
        nmap [g <Plug>(coc-git-prevchunk)
        nmap ]g <Plug>(coc-git-nextchunk)
        " show chunk diff at current position
        nmap gs <Plug>(coc-git-chunkinfo)
        " show commit contains current position
        nmap gm <Plug>(coc-git-commit)
        nnoremap <silent> <leader>cg  :<C-u>CocList --normal gstatus<CR>
        " float window scroll
		nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
		nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
        " multiple cursors
        nmap <silent> <C-c> <Plug>(coc-cursors-position)
        nmap <expr> <silent> <C-m> <SID>select_current_word()
        xmap <silent> <C-d> <Plug>(coc-cursors-range)
        " use normal command like `<leader>xi(`
        nmap <leader>x  <Plug>(coc-cursors-operator)

        function! s:select_current_word()
            if !get(g:, 'coc_cursors_activated', 0)
                return "\<Plug>(coc-cursors-word)"
            endif
            return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
        endfunc

        nnoremap <silent> <leader>cm ::CocSearch -w 
        nnoremap <silent> <leader>cw ::CocSearch  
        " use normal command like `<leader>xi(`
        nmap <leader>x  <Plug>(coc-cursors-operator)
        " coc-explorer
        " noremap <silent> <leader>j :execute 'CocCommand explorer' .
        "    \ ' --toggle' .
        "    \ ' --sources=buffer+,file+' .
        "    \ ' --file-columns=git,selection,icon,clip,indent,filename,size ' . expand('%:p:h')<CR>
endif
