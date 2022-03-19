function backup --argument filename --description 'Backup given file'
    cp $filename $filename.bak
end
