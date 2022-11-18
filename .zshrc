# variable
EDITOR="nvim"
ZSH="$HOME/.oh-my-zsh"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud"
plugins=(git)

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

# customization
alias nvimedit="cd ~/.config/nvim && $EDITOR ." # To edit NEOVIM
alias terminaledit="cd ~/.config/kitty && $EDITOR ." # To Edit Kitty Terminal
alias zshedit="nvim $HOME/.zshrc"

# package manager
alias update="yay -Syuu && sudo pacman -Syuu"
alias remove="yay -Rucns"
alias stats="yay -Ps"
alias clean="yay -Yc"
alias install="yay -S"

# cd
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# dotfiles -> github
alias config='/usr/bin/git --git-dir=/home/ebenezer/.cfg/ --work-tree=/home/ebenezer'
alias add="config add" # add files
alias commit="config commit -m"
alias push="config push"
alias status="config status"

export CHROME_EXECUTABLE='/usr/bin/google-chrome-stable'
export JAVA_HOME='/usr/lib/jvm/default'
export PATH=$JAVA_HOME/bin:$PATH
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/:$PATH
export PATH=$ANDROID_SDK_ROOT/emulator:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools/:$PATH
export PATH=$PATH:/opt/glassfish/bin
