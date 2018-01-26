# tmux
#   * ncurses 6.0 https://www.gnu.org/software/ncurses/
#   * libevent 2.x. 	http://libevent.org
# tmux-ressurect					 -done
# vim
# vim-plug  #vim packages manager			 -done
# git
# xclip
# fzf - fuzzy finder
# fzf.vim
# openssh-server
# silversearcher-ag https://github.com/ggreer/the_silver_searcher



DOTFILES=$(pwd)

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +q +q!

# install tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-resurrect $HOME/.tmux-resurrect
run-shell $HOME/.tmux-resurrect/resurrect.tmux

# VIM
ln -sf $DOTFILES/vimrc $HOME/.vimrc

# TMUX
ln -sf $DOTFILES/tmux.conf $HOME/.tmux.conf

# ALIASES
ln -sf $DOTFILES/bash_aliases $HOME/.bash_aliases

