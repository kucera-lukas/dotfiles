if status is-interactive
    # Commands to run in interactive sessions can go here
end

# cargo
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# asdf completions
source ~/.asdf/asdf.fish

# Better cd
zoxide init fish | source
