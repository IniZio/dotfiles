# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go
export EDITOR="/usr/bin/vim"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export ANDROID_HOME="/usr/lib/android-sdk"
export NPM_TOKEN=""
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#export TERMINAL=/usr/bin/gnome-terminal
export TERMINAL=/usr/bin/tilix

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

export TERM="xterm-256color"
# Grep - green
export GREP_COLOR='1;32'


# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)
#fpath+=($fpath '/usr/local/lib/node_modules/pure-prompt/functions')

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="avit"
#ZSH_THEME="bira"
ZSH_THEME="dracula"
#ZSH_THEME="spaceship"
#ZSH_THEME="linuxer-fancy"
#ZSH_THEME="refined"
#ZSH_THEME="avit"
#ZSH_THEME="spaceship"
#ZSH_THEME="xxf"
#ZSH_THEME="bullet-train"
#ZSH_THEME="random"

# powerline theme options
#POWERLINE_RIGHT_A="exit-status-on-fail"

# bullet-train theme options
BULLETTRAIN_PROMPT_ORDER=(
  context
  git
  dir
)
#BULLETTRAIN_PROMPT_CHAR=":"
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_PROMPT_SEPARATE_LINE="false"
BULLETTRAIN_TIME_BG="black"
BULLETTRAIN_DIR_BG="39"
BULLETTRAIN_DIR_FG="15"
BULLETTRAIN_DIR_CONTEXT_SHOW="true"
BULLETTRAIN_GIT_COLORIZE_DIRTY="false"
BULLETTRAIN_GIT_COLORIZE_DIRTY_BG_COLOR="45"
BULLETTRAIN_GIT_BG="15"
BULLETTRAIN_GIT_PROMPT_CMD=\${\$(git_prompt_info)//\\//\ \ }
BULLETTRAIN_CONTEXT_DEFAULT_USER="iniz"
BULLETTRAIN_IS_SSH_CLIENT=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
# zsh-syntax-highlighting must be last plugin sourced
plugins=(git git-auto-status colorzed-man-pages cp fancy-ctrl-z z zsh-autosuggestions zsh-better-npm-completion docker docker-compose extract zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Make ctrl+z togglable
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -n "$INSIDE_EMACS" ]; then
    export EDITOR=emacsclient
    unset zle_bracketed_paste  # This line
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls="clear"
alias ls='ls -F --color=auto'
alias scribble='cd ~/scribbles/; npm run post'
alias imos='ssh eea258.ee.ust.hk'
alias usthing='ssh usthing@pvs0068.ust.hk -p 22002'
alias ustfetch='ssh -i ~/magic/ustfetch-backend/ustfetch_backend.pem ubuntu@54.202.206.88'
alias analax='ssh -i ~/analax.pem ubuntu@ec2-13-112-8-169.ap-northeast-1.compute.amazonaws.com'
alias comp2021='ssh kcchowac@csl2wk01.cse.ust.hk'
alias pp='pnpm'
alias grep='grep --color=auto'
alias emacs='emacs -nw'
alias copy='xclip -sel clip'
alias rm='rm-p -ri'
alias mv='mv -i'
alias cp='cp -i'
alias wallpaper='~/wallpaper/wallpaper.sh'
alias wall='~/wallpaper/wallpaper.sh'
alias orient='xrandr --output eDP-1  --rotate normal'
alias all='all-nvm'
#alias apt='apt-fast'
alias deadline='gcalcli --calendar Deadline quick'
alias calendar='gcalcli --calendar Life quick'

# conveniently share file with transfer.sh
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
  tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; echo "$(cat $tmpfile)"; rm -f $tmpfile; }

# detach process from terminal
detach () { eval "$*" &> /dev/null &}

killport() {
    if [ ! -n "$1" ] || [ $1 == '--help' ] || [ $1 == '-h' ]
    then
        echo '`killport <PORT>` finds the process listening to the specified port and kills it.'
    else
        process_line=`sudo lsof -i :$1 | tail -1`
        if [ "$process_line" == "" ]
        then
            echo "no processes listening on $1"
        else
            process_name=`echo "$process_line" | awk '{print $1}'`
            echo "killing $process_name"
            sudo kill `echo "$process_line" | awk '{print $2}'`
        fi
    fi
}

# killport() {
#  sudo kill $(fuser -n tcp $1 2> /dev/null)
#}

# systemctl aliases
alias sc='systemctl'
alias sc-services='systemctl list-units --type=service | grep --color -E "active running|$"' ﻿
alias bfg='java -jar ~/bfg.jar'
alias android-studio='/opt/android-studio/bin/studio.sh'

#set -o vi
#figlet Ini Zio
## place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
local node_version="$(nvm version)"
local nvmrc_path="$(nvm_find_nvmrc)"

if [ -n "$nvmrc_path" ]; then
local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

if [ "$nvmrc_node_version" = "N/A" ]; then
nvm install
elif [ "$nvmrc_node_version" != "$node_version" ]; then
nvm use
fi
elif [ "$node_version" != "$(nvm version default)" ]; then
echo "Reverting to nvm default version"
nvm use default
fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
xset m 00

#autoload -U promptinit; promptinit
#prompt pure

source /etc/bash_completion.d/climate_completion
export PATH="/home/iniz/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/bin:$HOME/.local/bin:$PATH"
export PATH="$HOME/Android/Sdk/platform-tools:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$HOME/.linuxbrew/bin:/usr/local/lib/node_modules:$HOME/.nvm/versions/node/v6.10.0/bin:$PATH"
export MANPATH="/home/iniz/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/iniz/.linuxbrew/share/info:$INFOPATH"

eval $(thefuck --alias fk)

zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

#if [ $TERMINIX_ID ] || [ $VTE_VERSION ]; then
#    source /etc/profile.d/vte.sh
#fi

export XDG_DATA_DIRS="/home/linuxbrew/.linuxbrew/share:$XDG_DATA_DIRS"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/iniz/.sdkman"
[[ -s "/home/iniz/.sdkman/bin/sdkman-init.sh" ]] && source "/home/iniz/.sdkman/bin/sdkman-init.sh"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
export TASKDDATA="~/taskd"

PATH="/home/iniz/apache-maven-3.5.3/bin:$PATH"
export PATH="$HOME/.yarn/bin:/home/iniz/miniconda3/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"

# added by travis gem
[ -f /home/iniz/.travis/travis.sh ] && source /home/iniz/.travis/travis.sh
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. /home/iniz/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
