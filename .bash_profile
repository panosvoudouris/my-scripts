source ~/.git-completion.sh
export GIT_PS1_SHOWDIRTYSTATE=1

export WORKON_HOME=~/Envs
export PS1='\[\e[0;32m\]\w \[\e[0;32m\]> \[\e[0m\]'
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_65.jdk/Contents/Home
export GNUPGHOME="$HOME/.gnupg"
export PATH="./:/usr/local/bin/npm:/usr/local/bin:$HOME/.node/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv

GPG_TTY=$(tty)
export GPG_TTY

alias l='ls -a'
alias ll='ls -al'
alias ggpi='cd /Volumes/pihome/git'
alias gg='cd ~/git'
alias ggb='cd ~/git/buildit'
alias ggl='cd ~/git/lbg'
alias gs='git status'
alias gf='git fetch --all && git branch --all && git status'
alias gfp='git fetch --all && git pull && git branch --all && git status'
alias graph='git log --oneline --graph --decorate'
alias gadd='git add .'
alias branches='git branch --all'
alias prune='git fetch --all --prune && git branch --all'
alias globalnpm='npm list -g --depth=0 && echo "npm" && npm --version && echo "node" && node --version'
alias flushdns='dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="/Users/panos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
