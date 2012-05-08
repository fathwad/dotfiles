syn on
set nu
set t_Co=256
colorscheme ir_black
set ts=4
set mouse=a
set hlsearch

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
