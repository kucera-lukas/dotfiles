function catctb -a file --description 'Copy contents of the given file into the clipboard'
    command cat $file | copy-to-clipboard
end
