function upall --description "update everything"
    echo "updating dnf..."
    sudo dnf update -y

    echo "updating fisher..."
    fisher update

    echo "updating flatpak..."
    flatpak update -y

    echo "updating asdf..."
    asdf update

    echo "updating asdf plugins..."
    asdf plugin update --all

    echo "updating pipx applications..."
    pipx upgrade-all

    echo "updating rust toolchains and rustup..."
    rustup update

    echo "updating cargo executables..."
    cargo install-update -a
end
