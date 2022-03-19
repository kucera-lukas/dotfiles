function last-download --description 'Get last downloaded file'
    echo ~/Downloads/(ls -t ~/Downloads/ | head -1)
end
