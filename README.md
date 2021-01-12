# GalgameSubtitleHooker
use local translation file to output subtitle on screen when hooking out text from Galgame.

effect：run game with auto subtitle. support auto, skip and jump etc action.

![1574867581397](assets/1574867581397.png)


Download:

Qt重制 测试版本（双架构）

https://github.com/silas1037/Textractor/releases/tag/vSilas0.1

新版本 （仅x86）

v4.14.1 https://github.com/ultrapre/GalgameSubtitleHooker/releases/tag/v4.14.1

旧版本 （仅x86）

v4.7.4 https://github.com/ultrapre/GalgameSubtitleHooker/releases/tag/v4.7.4


How to Use:

1. learn how to use Textractor, to hook the game, and to load and remove the extension. ([project](https://github.com/Artikash/Textractor)  or [video](https://www.bilibili.com/video/BV1oJ411X7Mb/))
2. get ready for jpdic.txt and put into same direct with Textractor.exe, which includes the texts extracted from game (Not supply tools Here, you can find them in FuckGalEngine so on.).
3. get ready for zhdic.txt and put into same direct with Textractor.exe, which includes the texts translated from jpdic.txt, both of them has the same number of line, spited by '\n' or '\r\n' and encoded with 'utf-8'.
4. start the textractor and load "ExampleExtension-CLI+subtitle.dll", start and hook the galgame. CLI means texts will outputs in command line, and subtitle means the subtitle in GDI format.
5. if CLI and subtitle do not show the text got in zhdic.txt, check whether the text in jpdic.txt **completely** match sentence hooked from game.('「そだよ」'　does not match 'そだよ' )
6. If you want to shutdown CLI or subtitle, just change the dll loaded to 'ExampleExtension-CLI.dll' or 'ExampleExtension-subtitle.dll', after remove the unwanted dll.





base on：

<https://github.com/ultrapre/Example-Extension> 

main hooker project

https://github.com/Artikash/Textractor

local translation extension（load 2 utf-8 txt and build a hash map，and send target sentence out to GDI+ subtitle）

<https://github.com/Artikash/Example-Extension> 

GDI+ subtitle

https://github.com/beausoft/desktop-draw-lrc


