call pathogen#infect()

syn on
set mouse=a
set t_Co=256
set nu
colorscheme ir_black
set sts=4
set shiftwidth=4
set expandtab
set hlsearch
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2  
set tags=./tags,tags,~/.vimtags
set noswapfile
set nobackup
set wildignore+=*.pyc,*.sqlite
let NERDTreeIgnore = ['\.pyc$']
let g:CommandTCancelMap = '<Esc>'

" easy tags
let g:easytags_autorecurse = 1
let g:easytags_updatetime_autodisable=0
let g:easytags_on_cursorhold = 0
map <Leader>u :syntax off<CR>:UpdateTags -R .<CR>:syntax on<CR>
autocmd FileType python let b:easytags_auto_highlight = 0

au BufRead,BufNewFile *.zsh-theme set filetype=sh

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

map <F2> :NERDTreeToggle<CR>
map <Leader>] :tnext<CR>
map <Leader>[ :tprevious<CR>
map <Leader>. :bnext<CR>
map <Leader>, :bprev<CR>
map <Leader>> :sbnext<CR>
map <Leader>< :sbprev<CR>

" source ~/.vim/bundle/pep8/ftplugin/python_pep8.vim
" source ~/.vim/bundle/python_box/ftplugin/python_box.vim
