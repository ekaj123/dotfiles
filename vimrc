syntax on
colorscheme monokai

" Display line number
set number

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

" Color Scheme
Plug 'crusoexia/vim-monokai'

" Initialize plugin system
call plug#end()

set rtp+=~/.fzf

