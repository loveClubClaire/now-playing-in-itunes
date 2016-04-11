script MyStuff
    property parent : class "NSObject"
    
    on getVersion()
        return version of application "Finder"
    end getVersion
    
    on firstSelection()
        if (count of (selection of application "Finder" as list)) < 1 then return "<Nothing selected>"
        return POSIX path of (item 1 of (selection of application "Finder" as list) as string)
    end firstSelection
    
    on iTunesPause()
        tell application "iTunes"
            pause
        end tell
    end iTunesPause
    
    on isiTunesPlaying()
        global okflag, theMessage, this_app
        set this_app to current application -- for attachable apps
        set okflag to false
        tell application "Finder"
        if (get name of every process) contains "iTunes" then set okflag to true
            end tell
        if okflag then
            tell application "iTunes"
            if player state is playing then
                return true
            else
                return false
        end if
        end tell
        end if
    end isiTunesPlaying



end script