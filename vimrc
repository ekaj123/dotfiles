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
Plug 'edkolev/tmuxline.vim'

" Pluggin for displaying the git branch of vim-airline
Plug 'tpope/vim-fugitive'

" Snippet engine
Plug 'SirVer/ultisnips'

" Snippets
Plug 'honza/vim-snippets'

" YouCompleteMe
Plug 'Valloric/YouCompleteMe'

" syntastic
Plug 'vim-syntastic/syntastic'

" Initialize plugin system
call plug#end()

" source $HOME/dotfiles/vim/visual-at.vim

" VIM CONFIGURATION
syntax on
set number                        " Display line number
set relativenumber
set nrformats+=alpha              " alphabet increment ctrl+a
set softtabstop=2
set shiftwidth=2
set expandtab
set hlsearch                      " highlight search
set hidden                        " prevent to remove undo and don't show warning when switching buffer
set backspace=indent,eol,start    " fix backspace problem
set directory^=$HOME/.vim/tmp//   " vim swap files
set encoding=utf-8                " The encoding displayed.
set fileencoding=utf-8            " The encoding written to file.

" MAPPING
nnoremap <F3> :noh<CR>

" fzf.vim
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>l :Lines<CR>

if has("autocmd")
  " remove white spaces when save
  " documentation: http://vim.wikia.com/wiki/Remove_unwanted_spaces
  autocmd BufWritePre * %s/\s\+$//e

  " vue-vim
  " fix syntax hightlighting in *.vue when pressing GG
  autocmd FileType vue syntax sync fromstart
endif

" GRUVBOX
let g:gruvbox_italic=0
let g:gruvbox_italicize_comments=1
let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox

" AirLine Configuration
let g:airline_theme = 'molokai'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = '㏑'

" Tmux Line
" let g:tmuxline_powerline_separators = 0
" let g:airline#extensions#tmuxline#enabled = 0

" YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

"FZF
set rtp+=~/.fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)

" transparent background
hi Normal guibg=NONE ctermbg=NONE

" bracket highlighting
hi MatchParen cterm=none ctermbg=black ctermfg=blue

"solution to fix colorscheme background mess when inside tmux session
"disable Background Color Erase
set t_ut=

xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
