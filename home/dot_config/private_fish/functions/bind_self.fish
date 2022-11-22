function bind_self --description 'enable $$'
    commandline -i (echo '$fish_pid')
end
