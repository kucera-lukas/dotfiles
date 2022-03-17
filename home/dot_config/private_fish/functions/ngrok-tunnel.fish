function ngrok-tunnel --argument port --description 'Expose given port via ngrok'
    ngrok http --region=eu --hostname=lukas-kucera.eu.ngrok.io $port
end
