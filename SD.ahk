SD(m:="",d:=.5,x:=-1,y:=-1,f:=15,t:=0){               ;Msg,Dly,xPos,yPos,Size,Trans
  Static z
  Gui SD:Destroy
  s:=RegExMatch(d,"0"),s:=(d=-1)?-1:s,d:=(d=0)?1:d    ;0x=Timer|x=Sleep|-1=Stay
  Gui z:Default
  Gui z:-DPIScale
  Gui Font,% "s" f,Consolas
  Gui Add,Text,vz,% m
  GuiControlGet z,Pos
  w:=zw+8,h:=zh+2
  Gui z:Destroy
  x:=x!=-1?x:"0" A_ScreenWidth/2,x:=x~="0"=1?x-w/2:x
  y:=y!=-1?y:"0" A_ScreenHeight/2,y:=y~="0"=1?y-h/2:y
  Gui SD:New,+AlwaysOnTop +ToolWindow -Caption
  Gui Font,% "s" f " cLime",Consolas
  Gui Color,000000
  Gui Add,Text,x4 y-1 w%w% h%h% gSDLMB,% m
  Gui Show,% "NoActivate x" x " y" y " w" w " h" h-2,wSD
  If (t=1)
    WinSet TransColor,000000 255,wSD
  If (s=1){
    SetTimer tSD,% d*=-1000
  }Else If (s=-1)
    Return
  Else{
    Sleep % d*1000
    Gui SD:Destroy
  }
}
tSD:
SDLMB:
  Gui SD:Destroy
Return