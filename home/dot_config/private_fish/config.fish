if status is-interactive
    # Commands to run in interactive sessions can go here
end

# locale
set -gx LC_ALL en_US.UTF-8

# cargo
set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# asdf completions
source ~/.asdf/asdf.fish

# java
source ~/.asdf/plugins/java/set-java-home.fish

# better cd
zoxide init fish --no-aliases | source

# navi
navi widget fish | source

# load and unload environment variables
direnv hook fish | source

# flyctl
set -x PATH $HOME/.fly/bin $PATH

# pack
source (pack completion --shell fish)

# broot
source $HOME/.config/broot/launcher/bash/br
