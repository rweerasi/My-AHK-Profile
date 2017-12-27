debug := false
overview := false

CoordMode, Mouse, Screen

Loop {
	
	MouseGetPos, xpos, ypos 
	if (xpos == 0 && ypos == 0) {
		if (not overview) {
			overview := true
			Send {LWin down}{Tab down}{Tab up}{LWin up}
		}
	} else {
		overview := false
	}

	if (debug) {
		ToolTip, X=%xPos% Y=%YPos% Overview=%Overview%
	}
}

