SD(m:="", d:=2, x:=-1, y:=-1){
	m:=m!=""?m:"! Empty !"
	s:=RegExMatch(d,"0")
	if (d=-1)
		s:=-1
	d:=d=0?2:d
	x:=x!=-1?x:A_ScreenWidth/2
	y:=y!=-1?y:A_ScreenHeight/2
	c:=0,p:=1,l:=1,r:=0,d*=1000
	Loop{
		p:=RegExMatch(m,"`n",,p+1)
		if (p>0){
			r:=p-r-1
			c:=r>c?r:c
			r:=p
			l++
		}Else{
			r:=(StrLen(m)-r)
			l:=r=0?l-1:l
			c:=r>c?r:c
			Break
		}
	}
	w:=c*12+6,h:=l*24-2
	if !(x~="0"=1)
		x:=x-w/2
	if !(y~="0"=1)
		y:=y-h/2
	Gui SD:New,+AlwaysOnTop +ToolWindow -Caption
	Gui Font,s18 cLime,ProFontWindows
	Gui Add,Text,x4 y0 w%w% h%h% gSDLMB,% m
	Gui Show,NoActivate x%x% y%y% w%w% h%h%,wSD
	WinSet TransColor,1F1F1F,wSD
	if (s=1)
		SetTimer tSD,-%d%
	else if (s=-1)
		return
	else{
		Sleep % d
		Gui SD:Destroy
	}
}

tSD:
SDLMB:
	Gui SD:Destroy
return