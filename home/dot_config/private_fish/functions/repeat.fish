function repeat --description 'Repeat $argv every second'
    while true
        $argv
        sleep 1
    end
end
