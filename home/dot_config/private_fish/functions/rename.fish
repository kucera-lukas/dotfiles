function rename --argument new_name --description 'Rename directory'
    set current (basename $PWD)
    cd ..
    move -n $current $new_name
    cd $new_name
end
