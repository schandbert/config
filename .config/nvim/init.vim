" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" ALE lint https://github.com/w0rp/ale
Plug 'w0rp/ale'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'

Plug 'sk1418/HowMuch'

"Plug 'flazz/vim-colorschemes'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'lifepillar/vim-solarized8'
Plug 'nanotech/jellybeans.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree' , { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

set termguicolors

" gruvbox
"set background=dark
"let g:gruvbox_contrast_dark="hard"
"colorscheme gruvbox
"let g:airline_theme="gruvbox"

" papercolor theme
set background=dark
colorscheme PaperColor
let g:airline_theme="simple"

" markdown
let g:vim_markdown_folding_level = 2

" This feature allows the ge command to follow named anchors in links of the form file#anchor or just #anchor, where file may omit the .md extension as usual. Two variables control its operation:
let g:vim_markdown_follow_anchor = 1

"vim-markdown automatically insert the indent. By default, the number of spaces of indent is 4. If you'd like to change the number as 2, just write:
let g:vim_markdown_new_list_item_indent = 2 

