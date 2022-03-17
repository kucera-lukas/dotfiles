function pip-purge --description "Remove all packages installed by pip"
    pip freeze --exclude-editable | xargs pip uninstall -y
end
