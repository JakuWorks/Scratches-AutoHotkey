; -------------------------------------------------------------------------------------------------------------------------------------
; OVERVIEW


    ; Date created: 28.04.2023
    ; This is a simple AutoHotkey v2.0 script I made to count all my password manager passwords entries.


    ; Keybinds:
    ;
    ;  TAB  :  Increase count by 1
    ;
    ;  C  :  Display current count and reset it
    ;        If used for counting password manager entries, hold/click tab until you are selecting the first thing AFTER all your entries
    ;
    ;  Shift + C  :  Display current count+1 and reset it
    ;                If used for counting password manager entries, hold/click tab until you are AT the last entry
    ;
    ;  Shift + Esc  :  Stop script


; -------------------------------------------------------------------------------------------------------------------------------------


#Requires AutoHotkey v2.0


Count := 0


#MaxThreadsPerHotkey 1
$Tab:: {
    global Count := Count + 1
    SendInput "{Tab}"
}


C:: {
    Global Count
    MsgBox Count
    Count := 0
}


+C:: {
    Global Count
    MsgBox Count + 1
    Count := 0
}


+Esc:: {
    ExitApp
}
