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

# customization
alias cedit="nvim ~/.config/nvim/" # To edit NEOVIM
alias tedit="nvim ~/.config/kitty/" # To Edit Kitty Terminal
alias zedit="nvim $HOME/.zshrc"

# package manager
alias update="yay -Syu"
alias yremove="yay -Rucns"
alias ystats="yay -Ps"
alias clean="yay -Yc"
alias install="yay -S"

# cd
alias ..="cd .."
alias ....="cd ../.."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# dotfiles -> github
alias config='/usr/bin/git --git-dir=/home/ebenezer/.cfg/ --work-tree=/home/ebenezer'
alias add="config add" # add files
alias commit="config commit -m"
alias push="config push"
alias status="config status"
# android path
export ANDROID_HOME=$HOME/android
export PATH=$ANDROID_HOME/cmdline-tools/tools/bin/:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH
export PATH=$ANDROID_HOME/platform-tools/:$PATH
