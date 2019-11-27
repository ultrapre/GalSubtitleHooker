# GalgameSubtitleHooker
use local translation file to output subtitle on screen when hooking out text from Galgame.

effect：run game with auto subtitle. support auto, skip and jump etc action.

![1574867581397](assets/1574867581397.png)

base on：

main hooker project

https://github.com/Artikash/Textractor

local translation extension（load 2 utf-8 txt and build a hash map，and send target sentence out to GDI+ subtitle）

<https://github.com/Artikash/Example-Extension> 

GDI+ subtitle

https://github.com/beausoft/desktop-draw-lrc