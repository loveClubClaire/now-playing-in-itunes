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


    on getInfoFromiTunes__(anExemptArtist as string,aNowPlayingFilepath as string)
        tell application "iTunes"
            set my_current_track to (a reference to current track)
            set art_comp to ""
        if (get artist of my_current_track) is not anExemptArtist then
            if (get artist of my_current_track) is not "" then
                set art_comp to (get artist of my_current_track) as string
            end if
            set theMessage to "Title: " & (get name of my_current_track) & "\n" & "Artist: " & art_comp
            set the_file to aNowPlayingFilepath
            try
                set dataStream to open for access file the_file with write permission
                set eof of dataStream to 0
                write theMessage to dataStream starting at eof as text
                close access dataStream
            on error
                try
                    close access file the_file
                end try
            end try
        end if -- aritst is wcnuradio
            return true
        end tell
    end getInfoFromiTunes__


end script