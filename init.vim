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

  " Add or remove your plugins here:
  " call dein#add('Shougo/neosnippet.vim')
  " call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
  call dein#add('nvie/vim-flake8')

  " autocompletion
  call dein#add('davidhalter/jedi-vim')

  " colorscheme
  call dein#add('lifepillar/vim-solarized8')

  " better syntax highlighting for python
  call dein#add('JazzCore/vim-python-syntax')

  call dein#add('vim-airline/vim-airline')

  call dein#add('tpope/vim-fugitive')

  call dein#add('junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

syntax enable

"End dein Scripts-------------------------
"
set tabstop=4

" shortcuts
:let mapleader = ","

map <LEADER>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>s :sp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>v :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>t :FZF <CR>

" no backup files
set nobackup
set noswapfile

" call flake8 when writing python
autocmd BufWritePost *.py call Flake8()

set nofoldenable    " disable folding
set nu 				" line numbering
set clipboard+=unnamed " use system clipboard

let python_highlight_all = 1 "better python syntax highlighting
let g:jedi#popup_on_dot = 0
let g:jedi#force_py_version = 3
let g:jedi#smart_auto_mappings = 0 " don't automatically add the import stmt

if has("nvim")
  set termguicolors
endif 

colorscheme solarized8_dark
" alternative solarized8_light