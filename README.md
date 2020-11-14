# SD - Screen Display/ToolTip Combo (original name: MSB - MeSsageBox)
My own custom ToolTip/MsgBox combo for debugging AHK scripts that I eventually wrote since trying to debug with MsgBox stops everything until 'Okay' is pressed, ToolTips have to be started and stopped, and the custom TT code someone wrote had some minor annoyances that ticked me off enough to write something I'd be more comfortable with...

# Important Note!
This is intended for personal use only, hence the lack of error checking and flair. I also use a dark theme so some modification may be needed for other theme styles - again, personal use, so it's a bit of a bodge-job.

'Msb-Commented.ahk' (original function name) has line-by-line descriptions of what does what so you can easily modify it yourself if you want to!

# Installation:
Either #Include the SD.ahk's full path (and/or Err.ahk/Msb.ahk) in your code or drop whichever into your Documents\AutoHotKey\Lib folder and call it normally in your code (no need for #Include).
For correct formatting, download and install the ProFontWindows.ttf font file too (Right-Click>Install) or change the metrics/font reference in the ahk files themselves for whatever monospaced font you prefer (I may implement standard font metrics but again, it's not high on my list since it does what I need it to).

# Use: SD(Text[, Type/Dur, xMid, yMid])

Text(default: '! Empty !')
 - Obvious really, uses standard formatting rules.
 - Defaults to '! Empty !' since being inadvertently passed a null variable which may cause the user to think it's stopped working otherwise.
 
Type/Dur(default: Sleep/2sec)
 - Time to display (in seconds - decimal fractions can also be used).
 - Uses the Sleep command unless preceeded by a '0', in which case it will use SetTimer (e.g. 09=Timer/9s or .4=Sleep/400ms).
 - Message can also be dismissed early by clicking on it (Sleep will still pause the program though until I work out a suitable fix).
 
xMid(default: Screen Centre)
 - Horizontal position to display the message.
 - Will centre the window on the x coordinate unless preceeded by a '0', in which case the x coordinate refers to the leftmost edge.
 
yMid(default: Screen Centre)
 - Vertical position to display the message.
 - Will centre the window on the y coordinate unless preceeded by a '0', in which case the y coordinate refers to the topmost edge.

Can only display one message at a time, the original being overwritten by the next since I have neither the time nor the patience to work out how to implement that level of migraine promotion (hence why I made Err.ahk, which is the same code but with Red text (and the original Msb.ahk).
