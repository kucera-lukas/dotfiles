complete -c tldr -s h -l help -d "show this help message" -f
complete -c tldr -s v -l version -d "show program's version number" -f
complete -c tldr -s u -l update -d "Update the local cache of pages" -f
complete -c tldr -s p -l platform -d "Override the operating system" -xa "linux osx sunos windows common"
complete -c tldr -s l -l list -d "List all commands in the cache" -f
complete -c tldr -s s -l source -d "Override the default page source" -r
complete -c tldr -s c -l color -d "Override color stripping" -f
complete -c tldr -s r -l render -d "Render local markdown files" -r
complete -c tldr -s l -l language -d "Override the default language" -f
complete -c tldr -s m -l markdown -d "Just print the plain page file" -f
complete -c tldr -l print-completion -d "Print shell completion script" -xa "bash zsh tcsh"
