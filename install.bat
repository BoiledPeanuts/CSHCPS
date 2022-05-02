@echo off
setlocal

mkdir "%temp%\Parsec"

curl https://raw.githubusercontent.com/chrismin13/parsec-download-script/main/script.bat -o "%temp%\Parsec\script.bat"
