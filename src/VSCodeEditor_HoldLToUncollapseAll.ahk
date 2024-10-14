; -------------------------------------------------------------------------------------------------------------------------------------
; OVERVIEW


    ; Date created: 28.04.2023
    ; Easily expand all your VSCode explorer folds just by holding L


; -------------------------------------------------------------------------------------------------------------------------------------


#Requires AutoHotkey v2.0
; BEFORE USING THE SCRIPT. MAKE SURE YOU HAVE CLOSED ALL YOUR VSCODE TABS
; THIS SCRIPT WAS WRITTEN IN 2023, I MAY NOT SUPPORT NEWER VERSIONS OF VSCODE  

; Because the only key USED IN THIS SCRIPT, that can interact with the "Do You want to save changes" window is SPACE, then 99% the not closed editor tabs' changes are going to be saved.
MsgBox "CLOSE ALL EDITOR WINDOWS UNLESS YOU WANT TO SUFFER THE CONSEQUENCES AND LOSE DATA"


UserHasBeenWarned := 0


UncollapseOnce() {
    Send "{Ctrl Down}w{Ctrl Up}{Space}{Ctrl Down}w{Ctrl Up}"
    Sleep 100
    Send "{Ctrl Down}w{Ctrl Up}{Down}{Ctrl Down}w{Ctrl Up}"
    Sleep 100
}


#MaxThreadsPerHotkey 1
l:: {
    global UserHasBeenWarned
    if UserHasBeenWarned = 0 {
        MsgBox "CLOSE ALL VSCODE TABS UNLESS YOU WANT TO SUFFER THE CONSEQUENCES; If You didn't - Stop holding L; If You did - Click Enter"
        UserHasBeenWarned := 1
    }

    loop {
        if GetKeyState("l") {
            UncollapseOnce()
        }

        else {
            UserHasBeenWarned := 0
            break
        }
    }
}


Esc:: ExitApp
