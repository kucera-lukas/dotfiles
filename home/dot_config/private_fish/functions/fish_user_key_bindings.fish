function fish_user_key_bindings --description 'enable custom keybindings'
    bind ! bind_bang
    bind '$?' bind_status
    bind '$$' bind_self
end
