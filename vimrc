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

" Snippet engine
Plug 'SirVer/ultisnips'

" Snippets
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" source $HOME/dotfiles/vim/visual-at.vim

" VIM CONFIGURATION
syntax on
set number " Display line number
set nrformats+=alpha " alphabet increment ctrl+a
set expandtab
set shiftwidth=2
set softtabstop=2

"autocomplete pairs
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap /* /**/<Esc>i

if has("autocmd")
  " this is a sample
  " autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd BufRead,BufNewFile *.tmpl,*.js,*.htm,*.vue inorea <buffer> cahref <c-r>=IMAP_PutTextWithMovement('<a href="<++>"><++></a>')<CR>
endif

" GRUVBOX
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1

" AirLine Configuration
let g:airline_theme='minimalist'
let g:airline#extensions#branch#enabled=1

"transparent background
hi Normal guibg=NONE ctermbg=NONE

"FZF
set rtp+=~/.fzf
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)

"solution to fix colorscheme background mess when inside tmux session
"disable Background Color Erase
set t_ut=

" commented don't know what this is
"imap <C-q> <C-]> 



xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
