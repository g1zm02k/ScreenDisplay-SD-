# MeSsageBox/ToolTip Combo
My own custom ToolTip/MsgBox combo for debugging AHK scripts - intended for personal use only, hence the lack of error checking and flair.

Installation:
Either #Include the Msb.ahk and/or Err.ahk in your code or drop whichever into your Documents\AuotHotKey\Lib folder and call it normally in your code. For correct formatting, download and install the ProFontWindows.ttf file too (Right-Click>Install) or change the metrics in the ahk files themselves for whatever monospaced font you prefer.

Use:
# Msb(Text, Type/Dur, xMid, yMid)
Text(default: '! Empty !')
 - Obvious really, uses standard formatting rules.
 - Defaults to '! Empty !' since being passed a null variable may cause the user to think it's stopped working otherwise.
 
Type/Dur(default: Sleep/2sec)
 - Time to display (in seconds - decimal fractions can also be used).
 - Uses the Sleep command unless preceeded by a '0', in which case it will use SetTimer (e.g. 09=Timer/9s or .4=Sleep/400ms).
 - Message can also be dismissed early by clicking on it.
 
xMid(default: Screen Centre)
 - Horizontal position to display the message - currently only supports being centred on that point rather than the leftmost edge.
 
yMid(default: Screen Centre)
 - Vertical position to display the message - currently only supports being centred on that point rather than the topmost edge.
 
Can only display one message at a time, the original being overwritten by the next (hence why I made Err.ahk, which is the same code but with Lime text).
