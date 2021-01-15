#include <Subtitle>
;如果用utf-8格式文本请带BOM，不然会乱码
fp := FileOpen("0.txt", "r")
a := new Subtitle()

!F1:: Reload
return

!1::Suspend

;F6::
;TextLine = "中文测试"
;If StrLen(TextLine) >34
;{
;TextLine := SubStr(TextLine, 1, 34)"`r`n"SubStr(TextLine,  35)
;}
;a.Render(TextLine, "x:center y:77% c:Off", "s:32.7 f:(Garamond) color:White outline:(stroke:1 glow:4 tint:Black) dropShadow:(blur:5px color:White opacity:0.5 size:5)")
;;a.Screenshot("MyFile.png")
;return



$c::
IfWinActive, ahk_class PPSSPPWnd
{
send {x down}
sleep 100
send {x up}
goto PutText
}
else
{
send,c
}
return

$v::
IfWinActive, ahk_class PPSSPPWnd
{
goto PutText
}
else
{
send,v
}
return

PutText:
TextLine := fp.ReadLine()
TextLine := StrReplace(TextLine, "“", "「")
TextLine := StrReplace(TextLine, "”", "」")
If StrLen(TextLine) >34
{
TextLine := SubStr(TextLine, 1, 34)"`r`n"SubStr(TextLine,  35)
}
a.Render(TextLine, "x:center y:77% c:Off", "s:32.7 f:(Garamond) color:White outline:(stroke:1 glow:4 tint:Black) dropShadow:(blur:5px color:White opacity:0.5 size:5)")
;a.Screenshot("MyFile.png")
return


;Loop, read, G:\DOWNLOAD\Subtitle-master\Subtitle-master\001.txt
;{
;	MsgBox, Field number %A_Index% is %A_LoopReadLine%.
;    ;Loop, parse, A_LoopReadLine, %A_Tab%
;    ;{
;    ;    MsgBox, Field number %A_Index% is %A_LoopField%.
;    ;}
;}