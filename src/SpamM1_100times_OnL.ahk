﻿; -------------------------------------------------------------------------------------------------------------------------------------
; OVERVIEW


    ; Date created: Around 10.04.2023
    ; Mouse M1 spammer, that clicks 100 times after clicking L. Made in under a minute


; -------------------------------------------------------------------------------------------------------------------------------------


#Requires AutoHotkey v2.0


l:: {
    c := 0
    while (c < 100) {
        Click
        c += 1
    }
}