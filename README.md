# MeSsageBox/ToolTip Combo
My own custom ToolTip/MsgBox combo for debugging AHK scripts that I eventually wrote since trying to debug with MsgBox stops everything until 'Okay' is pressed, ToolTips have to be started and stopped, and the custom TT code someone wrote had some minor annoyances that ticked me off enough to write something I'd be more comfortable with...

# Important Note!
This is intended for personal use only, hence the lack of error checking and flair. I also use a dark theme so some modification may be needed for other theme styles - again, personal use, so it's a bit of a bodge-job.

# Installation:
Either #Include the Msb.ahk and/or Err.ahk in your code or drop whichever into your Documents\AutoHotKey\Lib folder and call it normally in your code.
For correct formatting, download and install the ProFontWindows.ttf font file too (Right-Click>Install) or change the metrics/font reference in the ahk files themselves for whatever monospaced font you prefer.

# Use: Msb(Text, Type/Dur, xMid, yMid)

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
 
Can only display one message at a time, the original being overwritten by the next and I have neither the time nor the patience to work out how to implement that level of migraine promotion (hence why I made Err.ahk, which is the same code but with Red text).
