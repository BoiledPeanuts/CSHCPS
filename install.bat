@echo off
setlocal


mkdir "%temp%\CSHCPS"


curl https://builds.parsecgaming.com/package/parsec-flat-windows32.zip -o "%temp%\CSHCPS\parsec-flat-windows32.zip"

tar -xf %temp%\CSHCPS\parsec-flat-windows32.zip
