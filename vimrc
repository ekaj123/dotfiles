" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Installing fzf using vim-plug
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Fuzzy finder vim
Plug 'junegunn/fzf.vim'

" HTML5 syntax highlighting
Plug 'othree/html5.vim'

" Vue syntax highlighting
Plug 'posva/vim-vue'

" colorscheme
Plug 'morhetz/gruvbox'

" Airline Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' 
" Pluggin for displaying the git branch of vim-airline
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" VIM CONFIGURATION
syntax on
set number " Display line number
set expandtab
set shiftwidth=2
set softtabstop=2

" GRUVBOX
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='medium'


" AirLine Configuration
let g:airline_theme='minimalist'
"let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
"let g:airline_powerline_fonts = 1

"if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
"endif
"let g:airline_symbols.branch = '⎇'
"let g:airline_left_sep = '»'
"let g:airline#extensions#tabline#left_alt_sep='>'
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#tabs_label = 't'


"FZF
set rtp+=~/.fzf
