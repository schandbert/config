" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Voom outliner
Plug 'vim-voom/VOoM'

" ALE lint https://github.com/w0rp/ale
Plug 'dense-analysis/ale'
Plug 'tpope/vim-surround'

" Plug 'godlygeek/tabular'
Plug 'dhruvasagar/vim-table-mode'
" Plug 'sk1418/HowMuch'

" Fugitive is the premier Vim plugin for Git.
Plug 'tpope/vim-fugitive'

" Color Themes
Plug 'flazz/vim-colorschemes'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lifepillar/vim-solarized8'
Plug 'nanotech/jellybeans.vim'

Plug 'itchyny/lightline.vim'

" On-demand loading
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }

" Tidal cycles
Plug 'tidalcycles/vim-tidal'

" Initialize plugin system
call plug#end()

" local leader
let maplocalleader = ';'

" Indent
set tabstop =4
set softtabstop =4
set shiftwidth =4
set expandtab

set clipboard+=unnamedplus

set termguicolors

" Set Colortheme
set background=dark
colorscheme PaperColor

let g:lightline = {
\   'colorscheme': 'PaperColor',
\}

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'xml': ['remove_trailing_lines', 'trim_whitespace', 'xmllint'],
\   'javascript': ['remove_trailing_lines', 'trim_whitespace', 'eslint']
\}

" Tidal Cycles
let g:tidal_target = 'terminal'
