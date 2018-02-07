
# Prevent fzf.vim search file listed in .gitignore e.i node_modules et. al
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

