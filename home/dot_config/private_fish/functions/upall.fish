function upall --description "dnf and flatpak update"
    echo "updating dnf..."
    sudo dnf update -y

    echo "updating flatpak..."
    flatpak update -y

end
