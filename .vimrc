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
set noswapfile
set nobackup
set wildignore+=*.pyc,*.sqlite
filetype plugin on
set ofu=syntaxcomplete#Complete

vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
nnoremap <Leader>sl :so ~/.vimsessions/def_session.vim<CR>
nnoremap <Leader>. :bnext<CR>
nnoremap <Leader>, :bprev<CR>
nnoremap <Leader>> :sbnext<CR>
nnoremap <Leader>< :sbprev<CR>
nnoremap <Leader>/ :noh<CR>
nnoremap <Leader>n :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <Leader>q :tabclose<CR>

au BufRead,BufNewFile *.zsh-theme set filetype=sh

" plugins

" ack
map <Leader>aq :Ack 

" command-t
map <Leader>T :CommandTFlush<CR>
let g:CommandTMaxHeight = 20
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']   " up/down arrows
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" nerdtree
let NERDTreeIgnore = ['\.pyc$']
map <F2> :TlistClose<CR>:NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " close nerdtree when its last

" taglist
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_Exit_OnlyWindow = 1   " close taglist when its last
let Tlist_File_Fold_Auto_Close = 1
map <F3> :NERDTreeClose<CR>:Tlist<CR>
autocmd BufWritePost * :TlistUpdate

" syntastic
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['python'] }
let g:syntastic_enable_highlighting = 0
map <Leader>e :Errors<CR>
map <F4> :SyntasticCheck<CR>

" to checkout...
" easytags, snipmate, snipemu
