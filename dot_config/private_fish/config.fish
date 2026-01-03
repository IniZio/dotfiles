if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias dc="docker compose"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"

fish_add_path "$HOME/.local/bin"

# (newman): Enable direnv
# https://direnv.net/docs/hook.html#fish
set -g direnv_fish_mode eval_after_arrow
direnv hook fish | source

set -e GIT_DIR
set -e GIT_WORKTREE

fenv source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh" > /dev/null

mise activate fish | source

eval "$(/opt/homebrew/bin/brew shellenv)"
