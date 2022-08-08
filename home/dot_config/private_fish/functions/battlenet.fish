function battlenet --description 'Open Blizzard Battle.net'
    # fix for Hearthstone tavern door infinite loading
    remove -f Games/battlenet/drive_c/Program\ Files\ \(x86\)/Hearthstone/Hearthstone_Data/Plugins/x86/LocationAPI.dll

    lutris battlenet
end
