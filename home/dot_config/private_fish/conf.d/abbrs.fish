if not set -q fish_initialized
    # commands
    abbr -a -- g git
    abbr -a -- mkdir 'mkdir -p -v'
    abbr -a -- mv 'mv -i'
    abbr -a -- tree 'tree -dirsfirst -F'

    ## modern unix

    # bat
    abbr -a -- cat 'bat --plain --paging=never'

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

    ## Git

    # Branch (b)
    abbr --add gbx git branch -d
    abbr --add gbX git branch -D
    abbr --add gbm git branch -m
    abbr --add gbM git branch -M
    abbr --add gbs git show-branch
    abbr --add gbS git show-branch -a

    # Commit (c)
    abbr --add gc git commit --verbose
    abbr --add gca git commit --verbose --all
    abbr --add gcm git commit --message
    abbr --add gco git checkout
    abbr --add gcb git checkout -b
    abbr --add gcO git checkout --patch
    abbr --add gcf git commit --amend --reuse-message HEAD
    abbr --add gcF git commit --verbose --amend
    abbr --add gcp git cherry-pick --ff
    abbr --add gcP git cherry-pick --no-commit
    abbr --add gcr git revert
    abbr --add gcR git reset "HEAD^"
    abbr --add gcs git show

    # Conflict (C)
    abbr --add gCl git status | sed -n "s/^.*both [a-z]*ed: *//p"
    abbr --add gCo git checkout --ours --
    abbr --add gCt git checkout --theirs --

    # Data (d)
    abbr --add gd git ls-files
    abbr --add gdc git ls-files --cached
    abbr --add gdx git ls-files --deleted
    abbr --add gdm git ls-files --modified
    abbr --add gdu git ls-files --other --exclude-standard
    abbr --add gdk git ls-files --killed
    abbr --add gdi git status --porcelain --short --ignored \| sed -n \"s\/\^!! \/\/p\"

    # Fetch (f)
    abbr --add gf git fetch
    abbr --add gfc git clone
    abbr --add gfm git pull
    abbr --add gfr git pull --rebase

    # Grep (g)
    abbr --add gg git grep
    abbr --add ggi git grep --ignore-case
    abbr --add ggl git grep --files-with-matches
    abbr --add ggL git grep --files-without-matches
    abbr --add ggv git grep --invert-match
    abbr --add ggw git grep --word-regexp

    # Index (i)
    abbr --add gia git add
    abbr --add giA git add --patch
    abbr --add giu git add --update
    abbr --add gid git diff --no-ext-diff --cached
    abbr --add giD git diff --no-ext-diff --cached --word-diff
    abbr --add gir git reset
    abbr --add giR git reset --patch
    abbr --add gix git rm -r --cached
    abbr --add giX git rm -rf --cached

    # Log (l)
    abbr --add gls git log --topo-order --stat --pretty=format:\"%C\(bold\)Commit:%C\(reset\) %C\(green\)%H%C\(red\)%d%n%C\(bold\)Author:%C\(reset\) %C\(cyan\)%an \<%ae\>%n%C\(bold\)Date:%C\(reset\) %C\(blue\)%ai \(%ar\)%C\(reset\)%n%+B\" --show-signature
    abbr --add gld git log --topo-order --stat --patch --full-diff --pretty=format:\"%C\(bold\)Commit:%C\(reset\) %C\(green\)%H%C\(red\)%d%n%C\(bold\)Author:%C\(reset\) %C\(cyan\)%an \<%ae\>%n%C\(bold\)Date:%C\(reset\) %C\(blue\)%ai \(%ar\)%C\(reset\)%n%+B\" --show-signature
    abbr --add glo git log --topo-order --pretty=format:\"%C\(green\)%h%C\(reset\) %s%C\(red\)%d%C\(reset\)%n\" --show-signature
    abbr --add glg git log --topo-order --all --graph --pretty=format:\"%C\(green\)%h%C\(reset\) %s%C\(red\)%d%C\(reset\)%n\" --show-signature
    abbr --add glb git log --topo-order --pretty=format:\"%C\(green\)%h%C\(reset\) %s%n%C\(blue\)\(%ar by %an\)%C\(red\)%d%C\(reset\)%n\" --show-signature
    abbr --add glc git shortlog --summary --numbered

    # Merge (m)
    abbr --add gm git merge
    abbr --add gmc git merge --continue
    abbr --add gmC git merge --no-commit
    abbr --add gmF git merge --no-ff
    abbr --add gma git merge --abort
    abbr --add gmt git mergetool

    # Push (p)
    abbr --add gp git push
    abbr --add gpf git push --force
    abbr --add gpa git push --all
    abbr --add gpA git push --all \&\& git push --tags
    abbr --add gpt git push --tags

    # Rebase (r)
    abbr --add gr git rebase
    abbr --add gra git rebase --abort
    abbr --add grc git rebase --continue
    abbr --add gri git rebase --interactive
    abbr --add gro git rebase --onto
    abbr --add grs git rebase --skip

    # Remote (R)
    abbr --add gR git remote
    abbr --add gRl git remote --verbose
    abbr --add gRa git remote add
    abbr --add gRx git remote rm
    abbr --add gRm git remote rename
    abbr --add gRu git remote update
    abbr --add gRp git remote prune
    abbr --add gRs git remote show

    # Stash (s)
    abbr --add gs git stash
    abbr --add gsa git stash apply
    abbr --add gsx git stash drop
    abbr --add gsl git stash list
    abbr --add gsd git stash show --patch --stat
    abbr --add gsp git stash pop
    abbr --add gss git stash save --include-untracked
    abbr --add gsS git stash save --patch --no-keep-index
    abbr --add gsw git stash save --include-untracked --keep-index

    # Submodule (S)
    abbr --add gS git submodule
    abbr --add gSa git submodule add
    abbr --add gSf git submodule foreach
    abbr --add gSi git submodule init
    abbr --add gSI git submodule update --init --recursive
    abbr --add gSl git submodule status
    abbr --add gSs git submodule sync
    abbr --add gSu git submodule foreach git pull origin master

    # Working Copy (w)
    abbr --add gws git status --short
    abbr --add gwS git status
    abbr --add gwd git diff --no-ext-diff
    abbr --add gwD git diff --no-ext-diff --word-diff
    abbr --add gwr git reset --soft
    abbr --add gwR git reset --hard
    abbr --add gwc git clean -n
    abbr --add gwC git clean -f
    abbr --add gwx git rm -r
    abbr --add gwX git rm -rf

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

    # flatpak
    abbr -a -- bitwarden 'flatpak run com.bitwarden.desktop'
    abbr -a -- discord 'flatpak run com.discordapp.Discord'
    abbr -a -- insomnia 'flatpak run rest.insomnia.Insomnia'
    abbr -a -- rdm 'flatpak run dev.rdm.RDM'
    abbr -a -- slack 'flatpak run com.slack.Slack'
    abbr -a -- telegram 'flatpak run org.telegram.desktop'
    abbr -a -- zoom 'flatpak run us.zoom.Zoom'
    abbr -a -- tuple 'flatpak run app.tuple.app'
    abbr -a -- kolourpaint 'flatpak run org.kde.kolourpaint'

    # terraform
    abbr -a -- tf terraform

    # chezmoi
    abbr -a -- cz chezmoi

    # mypy
    abbr -a -- mypy 'mypy --strict'

    # utilities
    abbr --add -- activate '. venv/bin/activate.fish'
    abbr --add -- cddl 'cd $HOME/Downloads'
    abbr --add -- cdgr 'cd (git root)'
    abbr --add -- czsc 'cd $HOME/School'
    abbr --add -- cdcz 'cd (chezmoi source-path)'
    abbr --add -- ip-addr 'curl api.ipify.org'
    abbr --add -- isodate 'date +%Y-%m-%d'
    abbr --add -- isodatetime 'date +"%Y-%m-%dT%H:%M:%S"'
    abbr --add -- pip-purge 'pip freeze --exclude-editable | xargs pip uninstall -y'

    set -U fish_initialized
end
