if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

set -x EDITOR nvim
set -x GPG_TTY (tty)

alias docker-compose="docker compose"
alias dc="docker compose"

fish_add_path /opt/homebrew/bin/

fish_add_path $ANDROID_HOME/tools
fish_add_path $ANDROID_HOME/platform-tools

# dotfiles management
# reference: https://www.atlassian.com/git/tutorials/dotfiles
alias dots="GIT_WORK_TREE=~ GIT_DIR=$HOME/.dotfiles"
dots git config --local status.showUntrackedFiles no
