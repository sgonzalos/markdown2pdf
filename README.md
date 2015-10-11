# markdown2pdf

markdownをpdfへ変換する方法のメモ

## 対象
+ mdを使って文書をつくりたい
+ 配布・展開するのにpdfが必要
+ Texは大きすぎるので入れたくない

## 環境

Windows8.1

## Pandoc

markdownをhtmlへ変換するソフト  

[Pandoc](http://pandoc.org/)

からインストール

## wkhtmltopdf

htmlをpdfへ変換するソフト  

[wkhtmltopdf](http://wkhtmltopdf.org/)

からインストール  
※私の環境では"MSVC 2013"版は動作せず、"MinGW-w64"版にて動作  

## pdf変換

Pandoc、wkhtmltopdf共にコマンドで動作するツールなのでBATファイルを作成

```
pandoc.exe -s %1 --output=%~dpn1.html
"C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf" %~dpn1.html %~dpn1.pdf
pause
```
あとはmarkdownファイルをBATファイルへドロップするのみです  
markdownファイルに並列してhtmlファイルとpdfファイルが作成されます  
