execute pathogen#infect()

syntax on
filetype plugin indent on

set number
set nocompatible
" indent settings
set expandtab
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4


set tw=0

"remove toolbar scrollbar in macvim
if has("gui_running")
    set guioptions-=T
    set guioptions-=r 
endif

" Syntax Highlighting "

" salt
au BufNewFile,BufRead *.sls set filetype=yaml


" no backup files
set nobackup
set noswapfile

" shortcuts
:let mapleader = ","

map <LEADER>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>s :sp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>v :vsp <C-R>=expand("%:p:h") . "/" <CR>

nmap <LEADER>r :tabedit $MYVIMRC<CR>
nmap <LEADER>o :TagbarToggle<CR>
nmap <LEADER>sv :source $MYVIMRC<CR>
nmap <LEADER>w :%s/\s\+$//<CR>
nmap <LEADER>t :CtrlP<CR>
nmap <LEADER>b :CtrlPBuffer<CR>
nmap <LEADER>sql :DBExecSQLUnderCursor<CR>
nmap <LEADER>po :%s/"/'/g<CR>:%s/$/\\n"/g<CR>:%s/^/"/<CR>:%s/\t//g<CR>

set complete=.,t,i,b,w,k
set completeopt=longest
set visualbell

let g:jedi#popup_select_first = 0
imap <silent> <S-Insert> <C-O>:set noai<CR><C-R>+<C-O>:set ai<CR>


"line number width
set nuw=1

autocmd BufWritePost *.py call Flake8()


set clipboard+=unnamed
nnoremap <LEADER>p :set invpaste paste?<CR>
set pastetoggle=<LEADER>p
set showmode

set nofoldenable    " disable folding
