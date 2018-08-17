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
set hlsearch "highlight search

if has("autocmd")
  " remove white spaces when save
  autocmd BufWritePre * %s/\s\+$//e
  
  " this is a sample
  " autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab

  " figure out what is the below command does
  " link for ref: http://vim.wikia.com/wiki/Snippets_for_JavaScript,_HTML_and_Python
"  autocmd BufRead,BufNewFile *.tmpl,*.htm,*.js inorea <buffer> cfun <c-r>=IMAP_PutTextWithMovement("function <++>(<++>) {\n<++>;\nreturn <++>;\n}")<CR>
"  autocmd BufRead,BufNewFile *.tmpl,*.htm,*.js inorea <buffer> cfor <c-r>=IMAP_PutTextWithMovement("for(<++>; <++>; <++>) {\n<++>;\n}")<CR>
"  autocmd BufRead,BufNewFile *.tmpl,*.htm,*.js inorea <buffer> cif <c-r>=IMAP_PutTextWithMovement("if(<++>) {\n<++>;\n}")<CR>
"  autocmd BufRead,BufNewFile *.tmpl,*.htm,*.js inorea <buffer> cifelse <c-r>=IMAP_PutTextWithMovement("if(<++>) {\n<++>;\n}\nelse {\n<++>;\n}")<CR> 
  
"  autocmd BufRead,BufNewFile *.tmpl,*.js,*.htm,*.vue inorea <buffer> cahref <c-r>=IMAP_PutTextWithMovement('<a href="<++>"><++></a>')<CR>
"  imap <C-q> <C-]> 
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

" vue-vim
" fix syntax hightlighting in *.vue when pressing GG
autocmd FileType vue syntax sync fromstart

"solution to fix colorscheme background mess when inside tmux session
"disable Background Color Erase
set t_ut=


xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction
