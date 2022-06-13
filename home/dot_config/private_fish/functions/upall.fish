function upall --description "update everything"
    echo "updating dnf..."
    sudo dnf update -y

    echo "updating fisher..."
    fisher update

    echo "updating flatpak..."
    flatpak update -y
end
