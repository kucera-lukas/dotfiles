function z --description 'Jump to directory with zoxide and list its contents' --wraps __zoxide_z
    __zoxide_z $argv && exa
end
