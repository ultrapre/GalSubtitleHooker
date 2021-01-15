#SingleInstance force
#include <Subtitle>





if A_Args.Length() > 0
{
    ;MsgBox % "脚本需要至少 3 个参数, 但实际只接收到" A_Args.Length() "个."
    ;MsgBox % "arg1 "A_Args[1]
    ;MsgBox % "arg2 "A_Args[2]
    a := new Subtitle()
    TextLine := SubStr(A_Args[1], 1, 34)"`r`n"SubStr(A_Args[1],  35)
    a.Render(TextLine, "x:center y:90% c:Off", "s:32.7 f:(Garamond) color:White outline:(stroke:1 glow:4 tint:Black) dropShadow:(blur:5px color:White opacity:0.5 size:5)")
    return
    ;ExitApp
}
;if A_Args.Length() = 0
;{
;	ExitApp
;}
!7:: ExitApp
