@echo off
setlocal

mkdir "%temp%\CSHCPS\npp"

curl https://github.com/BoiledPeanuts/CSHCPS/blob/main/npp.zip?raw=true -o "%temp%\CSHCPS\npp\npp.zip" 

powershell -command "Expand-Archive -Force '%temp%\CSHCPS\npp\npp.zip' '%temp%\CSHCPS\npp\'"

del "%temp%\CSHCPS\npp\npp.zip"
