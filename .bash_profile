export WORKON_HOME=~/Envs
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_73.jdk/Contents/Home"
export PS1="\[\e[0;32m\]\w \[\e[0;32m\]> \[\e[0m\]"
export GNUPGHOME="$HOME/.gnupg"
export M2_HOME="/usr/local/apache-maven-3.3.9"
export M2="$M2_HOME/bin"
export MAVEN_OPTS="-Xms256m -Xmx512m"
export PATH="./:$HOME/aem/vault-cli-3.1.16/bin:/usr/local/bin/npm:/usr/local/bin:$HOME/.node/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv

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

. /Library/Developer/CommandLineTools/usr/share/git-core/git-completion.bash
source /usr/local/bin/virtualenvwrapper.sh

export NVM_DIR="/Users/panos/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
