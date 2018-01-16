alias h="helm"
alias k="kubectl"
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias git-root='cd $(git rev-parse --show-cdup)'
alias be="bundle exec"
alias ss="~/screenshot.sh"
alias ta="tmux attach"


export GOBIN=$HOME/go/bin
export KK=$HOME/go/src/github.com/nii236/kk
export KUBECONFIG=$HOME/.kube/admin.conf
export VAULT_ADDR=https://vaultstore.theninja.life
export EDITOR=vim
export GOPATH=/home/nii236/go
export GOWORK=/home/nii236/go/src/github.com/blockninja
export ZSH=/home/nii236/.oh-my-zsh
export PATH="/opt:/usr/local/bin:/home/nii236/go/bin:/usr/local/go/bin:/home/nii236/bin:/home/nii236/.local/bin:$PATH"
export MONO=/home/nii236/go/src/github.com/blockninja/monocular
export FRAG=/home/nii236/go/src/github.com/blockninja/fragmentcloud
export R=/home/nii236/go/src/github.com/blockninja/raijin

ZSH_THEME="steeef"

plugins=(git)

export NVM_DIR="/home/nii236/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source $ZSH/oh-my-zsh.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
