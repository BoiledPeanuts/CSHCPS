@echo off
setlocal


mkdir "%temp%\CSHCPS"


curl https://builds.parsecgaming.com/package/parsec-flat-windows32.zip -o "%temp%\CSHCPS\parsec-flat-windows32.zip"
Call :UnZipFile "%temp%\CSHCPS\" "%temp%\CSHCPS\parsec-flat-windows32.zip"


:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
