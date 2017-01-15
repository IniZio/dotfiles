# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/bin:/usr/local/bin:$GOPATH/bin:/usr/lib/go/bin/:$HOME/.linuxbrew/bin

#export TERMINAL=/usr/bin/pantheon-terminal

# Path to your oh-my-zsh installation.
export ZSH=/home/iniz/.oh-my-zsh

export TERM="xterm-256color"

# zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="mh"
#ZSH_THEME="powerline"
ZSH_THEME="bullet-train"
#ZSH_THEME="random"

# powerline theme options
#POWERLINE_RIGHT_A="exit-status-on-fail"

# bullet-train theme options
#BULLETTRAIN_PROMPT_CHAR=":"
BULLETTRAIN_PROMPT_CHAR=""
BULLETTRAIN_PROMPT_SEPARATE_LINE="false"
BULLETTRAIN_TIME_BG="yellow"
BULLETTRAIN_DIR_CONTEXT_SHOW="true"
BULLETTRAIN_GIT_COLORIZE_DIRTY="true"
BULLETTRAIN_CONTEXT_DEFAULT_USER="iniz"

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
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

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
plugins=(git git-auto-status colorzed-man-pages cp fancy-ctrl-z z)

source $ZSH/oh-my-zsh.sh

# Make ctrl+z togglable
#fancy-ctrl-z () {
#  if [[ $#BUFFER -eq 0 ]]; then
#    BUFFER="fg"
#    zle accept-line
#  else
#    zle push-input
#    zle clear-screen
#  fi
#}
#zle -N fancy-ctrl-z
#bindkey '^Z' fancy-ctrl-z
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cls="clear"
alias scribble='cd /home/iniz/Source/thoughts/posts; npm run post'
alias imos='ssh kcchowac@eea258.ee.ust.hk'

figlet IniZio

#. /etc/profile.d/z.sh
#source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh  
