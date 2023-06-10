if status is-interactive
    # Commands to run in interactive sessions can go here
end

# locale
set -gx LC_ALL en_US.UTF-8

# asdf completions
source ~/.asdf/asdf.fish

# java
source ~/.asdf/plugins/java/set-java-home.fish

# vscode
string match -q "$TERM_PROGRAM" vscode and . (code --locate-shell-integration-path fish)

# better cd
zoxide init fish --no-aliases | source

# navi
navi widget fish | source

# load and unload environment variables
direnv hook fish | source

# pack
source (pack completion --shell fish)

# Created by `pipx` on 2023-02-11 22:10:49
set PATH $PATH /home/lkucera/.local/bin
