 export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
if [[ ! -d "$ZSH_CACHE_DIR" ]]; then
  mkdir "$ZSH_CACHE_DIR"
fi

source "$ZSH"/oh-my-zsh.sh

# other
alias nv="nvim"
alias la="ls -alF"
alias h="history | grep"
alias c="clear" # I know about ctrl l etc.
alias logout="killall -KILL -u $USER"
alias files="nemo"
alias files.="nemo ."
alias help="cat ~/.zshrc | less"
alias q="exit"
alias src="source /home/ebenezer/.zshrc" 
alias internet="ping google.com"
alias off="poweroff"

alias update="yay -Syuu && sudo pacman -Syuu"
alias remove="yay -Rucns"
alias stats="yay -Ps"
alias clean="yay -Yc"
alias install="yay -S"

#github
alias giti="git init"
alias gitcl="git clone" #requries url
alias gitcb="git branch --show-current"
alias gitcnb="git branch" #requires name to create new branch
alias gitccb="git checkout -b"
alias gitcmb="git merge" # requries branch name to merge
alias gitlog="git loi" #logs the data of the current branch
alias gitcs="git status"
alias gitca="git add" # requries files
alias gitcaa="git add -A"
alias gitcc="git commit -m" # requries message
alias gitcce="git commit -m '{(_--_)}'"
alias gitcp="git push origin master" #default set master
alias gitcpp="git push"
alias gitcpl="git pull"
alias gitcf="git fetch"
alias gitcbf="git fetch" #requries branch name
alias gitcname="git config --global user.name" # Enter yourname
alias gitcemail="git config --global user.email" # Enter your email

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

