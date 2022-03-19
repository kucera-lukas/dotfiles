function mkalias --argument key value --description 'Create fish shell alias'
    echo alias $key=$value
    alias $key=$value
    funcsave $key
end
