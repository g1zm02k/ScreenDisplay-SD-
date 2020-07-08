Err(m:="", d:=2, x:=-1, y:=-1){
	m:=m!=""?m:"! Empty !"
	s:=RegExMatch(d,"0")
	d:=d=0?2:d
	x:=x!=-1?x:A_ScreenWidth/2
	y:=y!=-1?y:A_ScreenHeight/2
	c:=0, p:=1, l:=1, r:=0, d*=1000
	Loop
	{
		p:=RegExMatch(m,"`n",,p+1)
		if (p > 0)
		{
			r:=p-r-1
			c:=r>c?r:c
			r:=p
			l++
		} Else {
			r:=(StrLen(m)-r)
			l:=r=0?l-1:l
			c:=r>c?r:c
			Break
		}
	}
	w:=c*12+6, h:=l*24-2, x:=x-w/2, y:=y-h/2
	Gui Err:New, -SysMenu +AlwaysOnTop +ToolWindow -Caption +Owner
	Gui Font, s18 cRed, ProFontWindows
	Gui Add, Text, x4 y0 w%w% h%h% gErrLMB, % m
	Gui Show, NoActivate x%x% y%y% w%w% h%h%, wErr
	if (s=1)
		SetTimer tErr, -%d%
	else
	{
		Sleep % d
		Gui Err:Destroy
	}
}

tErr:
	Gui Err:Destroy
return

ErrLMB:
	Gui Err:Destroy
return