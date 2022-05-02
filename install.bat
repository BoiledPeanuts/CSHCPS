mkdir "%temp%\CSHCPS"

curl https://builds.parsecgaming.com/package/parsec-flat-windows32.zip -o "%temp%\CSHCPS\parsec-flat-windows32.zip"

powershell -command "Expand-Archive -Force '%temp%\CSHCPS\parsec-flat-windows32.zip' '%temp%\CSHCPS\'"

del "%temp%\CSHCPS\parsec-flat-windows32.zip"
