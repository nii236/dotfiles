alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"
alias gs="git status"
alias gb="git branch"
alias gc="git checkout"
alias git-root='cd $(git rev-parse --show-cdup)'
alias be="bundle exec"
alias ss="~/screenshot.sh"
alias ta="tmux attach"


unsetopt correct_all
export DISABLE_AUTO_TITLE=true
export EDITOR=nvim
export LD_LIBRARY_PATH="/usr/local/lib"
export GOPATH=/Users/nii236/Go
export GO15VENDOREXPERIMENT=1
export ERA=/Users/nii236/Go/src/gitlab.thefrontiergroup.net.au/golang/
export GOWORK=/Users/nii236/Go/src/github.com/nii236
export SIP=/Users/nii236/Go/src/github.com/athletifit/
export BN=/Users/nii236/Go/src/src.blockninja.io
export GOBIN=/Users/nii236/Go/bin
export GO15VENDOREXPERIMENT=1
export ANDROID_HOME=/usr/local/opt/android-sdk
export LOLCOMMITS_FORK=true
export LOLCOMMITS_DELAY=3
autoload -U compinit
compinit
fpath=(/path/to/timetrap-1.x.y/gem/completions/zsh $fpath)

removeBranchesWithPrefix() {
  git for-each-ref --format="%(refname:short)" refs/heads/$1\* | xargs git branch -d
}

# Path to your oh-my-zsh installation.
export ZSH=/Users/nii236/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="steeef"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git git-flow brew bundler sublime vi-mode)
plugins=(git)
# User configuration

export PATH="/Users/nii236/bin:/Users/nii236/Go/bin:/Library/TeX/texbin:/usr/local/sbin/:/Users/nii236/anaconda/bin:/Users/nii236/.dnx/runtimes/dnx-mono.1.0.0-beta4/bin:/Users/nii236/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/nii236/miniconda3/bin:/usr/local/go/bin:/usr/local/share/dotnet:/Users/nii236/anaconda3/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s "/Users/nii236/.gvm/scripts/gvm" ]] && source "/Users/nii236/.gvm/scripts/gvm"

[ -s "/Users/nii236/.dnx/dnvm/dnvm.sh" ] && . "/Users/nii236/.dnx/dnvm/dnvm.sh" # Load dnvm

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /Users/nii236/.travis/travis.sh ] && source /Users/nii236/.travis/travis.sh

export NVM_DIR="/Users/nii236/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH="/usr/local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/nii236/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/nii236/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/nii236/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/nii236/Downloads/google-cloud-sdk/completion.zsh.inc'
fi
