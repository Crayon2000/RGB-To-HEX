@echo off
set BDS=C:\Program Files\CodeGear\RAD Studio\5.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v2.0.50727

echo Compiling code...
msbuild Color.cbproj /t:Build /p:config="Release Build" /nologo /v:q
if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause