let g:gutentags_cache_dir = $DATA_PATH . '/tags'
let g:gutentags_project_root = ['.root', '.git', '.svn', '.hg', '.project','go.mod','/usr/local']
let g:gutentags_exclude_project_root = [ '/usr/local' ]
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_new = 0
let g:gutentags_exclude_filetypes = [ 'defx', 'denite', 'vista', 'magit' ]
let g:gutentags_ctags_extra_args = ['--output-format=e-ctags']
let g:gutentags_ctags_exclude = [
      \ '.idea', '.cache', '.tox', '.bundle', 'build', 'dist',
      \ '*/wp-admin', '*/wp-content', '*/wp-includes',
      \ '*/application/vendor', '*/vendor/ckeditor', '*/media/vendor'
      \ ]
