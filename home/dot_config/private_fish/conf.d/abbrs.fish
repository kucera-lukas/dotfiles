if not set -q fish_initialized
    # commands
    abbr -a -- g git
    abbr -a -- mkdir 'mkdir -p -v'
    abbr -a -- mv 'mv -i'
    abbr -a -- tree 'tree -dirsfirst -F'

    ## modern unix

    # fd
    abbr -a -- find fd

    # zoxide
    abbr -a -- cd z

    # exa
    abbr -a -- ls exa
    abbr -a -- ll 'exa --long --all --group --git'
    abbr -a -- lt 'exa --long --all --group --header --tree --level'

    # dust
    abbr --add du dust

    # duf
    abbr --add df duf

    # procs
    abbr --add ps procs

    # functions
    abbr -a -- bak backup
    abbr -a -- cp copy
    abbr -a -- ctb copy-to-clipboard
    abbr -a -- ev echo-variable
    abbr -a -- lu last-used
    abbr -a -- mc mkcd
    abbr -a -- ldl last-download
    abbr -a -- res restore
    abbr -a -- rm remove

    # terraform
    abbr -a -- tf terraform

    # chezmoi
    abbr -a -- cz chezmoi

    # mypy
    abbr -a -- mypy 'mypy --strict'

    # utilities
    abbr --add -- activate '. venv/bin/activate.fish'
    abbr --add -- cdgr 'cd (git root)'
    abbr --add -- ip-addr 'curl api.ipify.org'
    abbr --add -- isodate 'date +%Y-%m-%d'
    abbr --add -- isodatetime 'date +"%Y-%m-%dT%H:%M:%S"'
    abbr --add -- pip-purge 'pip freeze --exclude-editable | xargs pip uninstall -y'

    set -U fish_initialized
end
