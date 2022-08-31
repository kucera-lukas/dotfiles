function pdf-to-png -a pdf -a png --description 'Convert given PDF file to PNG via pdftoppm from the Poppler utilities'
    pdftoppm -png $pdf >$png
end
