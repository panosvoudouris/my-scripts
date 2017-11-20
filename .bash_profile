parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home"
export PS1="\[\e[0;32m\]\w\[\033[1;33m\]\$(parse_git_branch)\[\e[0m\] \[\e[0;32m\]> \[\e[0m\]"
export M2_HOME="/usr/local/apache-maven-3.3.9"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH="~/Library/Python/2.7/bin/:$M2:/usr/local/bin/npm:$PATH"

alias l='ls -a'
alias ll='ls -al'
alias ggpi='cd /Volumes/pihome/git'
alias gg='cd ~/git'
alias gs='git status'
alias gf='git fetch --all && git branch --all && git status'
alias gfp='git fetch --all && git pull && git branch --all && git status'
alias watch='npm run watch'
alias pullmaster='git pull origin master'
alias rebase='git rebase master'
alias graph='git log --oneline --graph --decorate'
alias stash='git stash'
alias gadd='git add .'
alias branches='git branch --all'
alias prune='git fetch --all --prune && git branch --all'
alias globalnpm='npm list -g --depth=0 && echo "npm" && npm --version && echo "node" && node --version'
alias npmi='npm set progress=false && npm i && npm set progress=true'

eval $(gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info)
export GPG_TTY=$(tty)
export GPG_AGENT_INFO

export NVM_DIR="/Users/panos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.git-completion.bash

