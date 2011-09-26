@echo off
set BDS=C:\Program Files\Embarcadero\RAD Studio\9.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v3.5
set path=%path%;D:\Programmes

echo Compiling code...
msbuild Color.cbproj /t:Build /p:"Config=Release" /nologo /v:q
if errorlevel 1 goto error

echo Compressing executable...
rem upx --best --force -qq .\Release\color.exe
BCBStriper .\Release\color.exe
if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause