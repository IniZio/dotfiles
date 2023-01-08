if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish
set -x EDITOR vim

alias docker-compose="docker compose"

# dotfiles management
# reference: https://www.atlassian.com/git/tutorials/dotfiles
alias dots="GIT_WORK_TREE=~ GIT_DIR=$HOME/.dotfiles"
dots git config --local status.showUntrackedFiles no
