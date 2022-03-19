function search --description 'Search $argv on Google'
    open 'https://google.com/search?q='(echo $argv)
end
