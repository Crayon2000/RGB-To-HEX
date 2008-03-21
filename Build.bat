@echo off
set BDS=C:\Program Files\CodeGear\RAD Studio\5.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727
set path=%path%;D:\Programmes

echo Compiling code...
msbuild Color.cbproj /t:Build /p:config="Release Build" /nologo /v:q
if errorlevel 1 goto error

echo Compressing executable...
upx --best --force -qq color.exe
if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause