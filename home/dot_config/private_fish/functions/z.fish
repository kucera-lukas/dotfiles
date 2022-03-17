function z --argument dir --description 'Jump to directory with z and list its contents'
    echo testing
    z $dir && exa
end
