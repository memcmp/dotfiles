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
  call dein#add('davidhalter/jedi-vim')

  " colorscheme
  call dein#add('lifepillar/vim-solarized8')

  " better syntax highlighting for python
  call dein#add('JazzCore/vim-python-syntax')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('tpope/vim-fugitive')

  call dein#add('junegunn/fzf', { 'dir': '/usr/local/opt/fzf' })

  call dein#add('vim-syntastic/syntastic')

  " syntax highlighting for javascript
  call dein#add('othree/yajs.vim')

  call dein#add('vim-scripts/dbext.vim')

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

let python_highlight_all = 1 "better python syntax highlighting
let g:jedi#popup_on_dot = 0
let g:jedi#force_py_version = 3
let g:jedi#smart_auto_mappings = 0 " don't automatically add the import stmt

if has("nvim")
  set termguicolors
endif 

colorscheme solarized8_light_flat
" alternative solarized8_dark

" Open error list
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:airline#extensions#syntastic#enabled = 1

let g:syntastic_javascript_checkers = ['eslint'] " requires npm install eslint -g && eslint --init to work globally
" Point syntastic checker at locally installed `eslint` if it exists.
if executable('node_modules/.bin/eslint')
  let g:syntastic_javascript_eslint_exec = 'node_modules/.bin/eslint'
endif

let g:dbext_default_buffer_lines = 20

let g:dbext_default_profile_crate = 'type=CRATE:host=localhost:port=4200'
let g:dbext_default_profile = 'crate'
