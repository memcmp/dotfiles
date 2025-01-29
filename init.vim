"" Ward off unexpected things that your distro might have made, as
"" well as sanely reset options when re-sourcing .vimrc
set nocompatible

call plug#begin()

Plug 'lifepillar/vim-solarized8'
"" better syntax highlighting for python
Plug 'JazzCore/vim-python-syntax'


Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"" Git wrapper
Plug 'tpope/vim-fugitive'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Syntax Highlighter for .ts files
Plug 'leafgarland/typescript-vim'
" Syntax Highlighter for tsx
Plug 'ianks/vim-tsx'


" syntax highlighting for javascript
Plug 'othree/yajs.vim'

" syntax checking
Plug 'dense-analysis/ale'

" autocompletion
Plug 'Shougo/deoplete.nvim'

Plug 'plasticboy/vim-markdown'

Plug 'github/copilot.vim'

call plug#end()

"" To UPGRADE call :PlugUpgrade


" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on
"
"" Enable syntax highlighting
syntax enable

"
"
"command! -bang -nargs=* Rg
"  \ call fzf#vim#grep(
"  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
"  \   fzf#vim#with_preview(), <bang>0)
"
let g:fzf_layout = { 'down': '20' }
"
set conceallevel=2

syntax enable
set expandtab
set tabstop=4
set shiftwidth=4

autocmd FileType typescript setlocal ts=2 sw=2 expandtab
autocmd FileType typescriptreact setlocal ts=2 sw=2 expandtab
autocmd FileType typescript.tsx setlocal ts=2 sw=2 expandtab

""End dein Scripts-------------------------
"
" shortcuts
:let mapleader = ","

map <LEADER>e :e <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>s :sp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>v :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <LEADER>t :FZF <CR>
map <LEADER>f :Rg <CR>
map <LEADER>d :ALEGoToDefinition -vsplit<CR>
map <LEADER>r :ALEFindReferences -relative<CR>
map <LEADER>h :ALEHover<CR>
map <LEADER>g :vertical Git<CR>


autocmd FileType markdown map <LEADER>d ge<CR>
autocmd FileType markdown map k gk
autocmd FileType markdown map j gj
autocmd FileType markdown setlocal linebreak


" no backup files
set nobackup
set noswapfile

set nofoldenable    " disable folding
set nu 				" line numbering
set clipboard+=unnamed " use system clipboard

if has("nvim")
  set termguicolors
endif 

colorscheme solarized8_flat
"
"
" minimum setting
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('ignore_sources', {'typescript': ['around', 'buffer'], 'javascript': ['buffer', 'around'], 'markdown': ['around', 'buffer']})
"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" select first completion
set completeopt=noinsert


let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 'on_save'
let g:ale_list_window_size = 5
let g:ale_set_highlights = 0
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'typescript': ['eslint', 'prettier'],
\   'dart': ['dart-format'],
\   'css': ['prettier'],
\}
let g:ale_linters = {
\   'typescript': ['eslint', 'tsserver'],
\   'dart': ['analysis_server', 'dart_analyze', 'language_server'],
\   'tex': [],
\   'cpp': [],
\}

let g:ale_lint_delay = 200
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_insert_leave = 0

let g:ale_completion_autoimport = 1
call deoplete#custom#option('sources', {
\ 'typescript': ['ale'],
\})
autocmd FileType tex
       \ call deoplete#custom#buffer_option('auto_complete', v:false)
