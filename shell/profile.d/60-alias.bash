# bash-aliases

# Edit Xresources
alias exr='$EDITOR $HOME/.Xresources'
# Edit bash config
alias ebc='$EDITOR $DOTFILES/shell/bashrc && source $DOTFILES/shell/bashrc && echo "bash config updated !"'
# Edit bash profile
alias ebp='$EDITOR $DOTFILES/shell/bash_profile && source $DOTFILES/shell/bash_profile && echo "bash profile updated !"'
# Edit Vimrc
alias evc='$EDITOR $DOTFILES/vim/vimrc'
# Edit hotkeys
alias ehk='$EDITOR $DOTFILES/config/sxhkd/sxhkdrc'

# Source bash profile
alias sbp='source $DOTFILES/shell/bash_profile'
# Source bash config
alias sbc='source $DOTFILES/shell/bashrc'
