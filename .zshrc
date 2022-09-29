ZSH="$HOME/.oh-my-zsh"
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git)

ZSH_CACHE_DIR="$HOME/.cache/oh-my-zsh"
if [[ ! -d "$ZSH_CACHE_DIR" ]]; then
  mkdir "$ZSH_CACHE_DIR"
fi

source "$ZSH"/oh-my-zsh.sh

# other
alias nv="nvim"
alias la="ls -alF"
alias h="history|grep"
alias c="clear" # I know about ctrl l etc.
alias logout="killall -KILL -u $USER"
alias files="nemo"
alias files.="nemo ."
alias help="cat ~/.zshrc | less"
alias q="exit"
alias src="source /home/ebenezer/.zshrc"
alias vsc="code ."
alias vscd="code"
alias modalac="nvim ~/.config/alacritty"

alias edit="nvim ~/.config/kitty"
# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
alias ........="cd ../../../.."


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias dots='/usr/bin/git --git-dir=/home/ebenezer/.cfg/ --work-tree=/home/ebenezer'
