"dein Scripts-----------------------------
" Required:
filetype plugin indent on

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/philipp/.config/nvim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/philipp/.config/nvim/bundles')
  call dein#begin('/Users/philipp/.config/nvim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/philipp/.config/nvim/bundles/repos/github.com/Shougo/dein.vim')

  " autocompletion
  " call dein#add('davidhalter/jedi-vim')

  " colorscheme
  call dein#add('lifepillar/vim-solarized8')

  " better syntax highlighting for python
  call dein#add('JazzCore/vim-python-syntax')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('tpope/vim-fugitive')

  call dein#add('junegunn/fzf', { 'dir': '/usr/local/opt/fzf' })

  " syntax highlighting for javascript
  call dein#add('othree/yajs.vim')

  call dein#add('vim-scripts/dbext.vim')

  " syntax checking
  call dein#add('dense-analysis/ale')

  " autocompletion
  call dein#add('Shougo/deoplete.nvim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

syntax enable
set expandtab
set tabstop=4
set shiftwidth=4

"End dein Scripts-------------------------
"
" shortcuts
:let mapleader = ","

map <LEADER>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>s :sp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>v :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>t :FZF <CR>

" no backup files
set nobackup
set noswapfile

set nofoldenable    " disable folding
set nu 				" line numbering
set clipboard+=unnamed " use system clipboard

let g:python3_host_prog = '/usr/local/bin/python3'

let python_highlight_all = 1 "better python syntax highlighting
"let g:jedi#popup_on_dot = 0
"let g:jedi#force_py_version = 3
let g:jedi#smart_auto_mappings = 0 " don't automatically add the import stmt
" Disable jedi autocompletion so deoplete can handle it
let g:jedi#completions_enabled = 0

" minimum setting
let g:deoplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" select first completion
set completeopt=noinsert


if has("nvim")
  set termguicolors
endif 

set background=light
colorscheme solarized8_flat
" alternative solarized8_dark


let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 'on_save'
let g:ale_list_window_size = 5
let g:ale_set_highlights = 0


let g:dbext_default_buffer_lines = 20

let g:dbext_default_profile_crate = 'type=CRATE:host=localhost:port=4200'
let g:dbext_default_profile = 'crate'
