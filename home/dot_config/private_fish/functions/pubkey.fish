function pubkey
    cat ~/.ssh/id_rsa.pub | copy-to-clipboard; and echo '=> Public key copied to clipboard.'
end
