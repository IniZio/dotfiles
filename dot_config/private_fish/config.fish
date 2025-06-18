if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias dc="docker compose"

# (newman): Enable direnv
# https://direnv.net/docs/hook.html#fish
set -g direnv_fish_mode eval_after_arrow
direnv hook fish | source
