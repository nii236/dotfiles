alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias git-root='cd $(git rev-parse --show-cdup)'
alias be="bundle exec"
alias ss="~/screenshot.sh"
alias ta="tmux attach"

export EDITOR=vim
export GOPATH=/home/nii236/go
export GOWORK=/home/nii236/go/src/github.com/blockninja
export ZSH=/home/nii236/.oh-my-zsh
export PATH="/usr/local/bin:/home/nii236/go/bin:/usr/local/go/bin:/home/nii236/bin:$PATH"

ZSH_THEME="steeef"

plugins=(git)

export NVM_DIR="/home/nii236/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source $ZSH/oh-my-zsh.sh
