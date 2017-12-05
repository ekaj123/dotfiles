set nocompatible              " be iMproved, required

syntax on 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"set rtp+=~/.vim/bundle/html5.vim
"set rtp+=~/.vim/bundle/vim-javascript


call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" " Plugin 'L9'
" " Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Install L9 and avoid a Naming conflict if you've already installed a
" " different version somewhere else.
" " Plugin 'ascenator/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()            " required
filetype plugin indent on    " required
" "show existing tab with 4 spaces width
set tabstop=4
" "when indenting with '>', use 4 spaces width
set shiftwidth=4
" "On pressing tab, insert 4 spaces
"set expandtab


" "To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line


" html5.vim configuration
" event-handler attributes support:
let g:html5_event_handler_attributes_complete = 1
" RDFa attributes support:
let g:html5_rdfa_attributes_complete = 1
" microdata attributes support:
let g:html5_microdata_attributes_complete = 1
" WAI-ARIA attribute support:
let g:html5_aria_attributes_complete = 1
