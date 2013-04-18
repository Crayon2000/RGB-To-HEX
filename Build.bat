@echo off
set BDS=D:\Embarcadero\RAD Studio\10.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v3.5
set path=%path%;D:\Programmes

echo Compiling Win32 code...
msbuild Color.cbproj /target:Build /property:"Config=Release";"Platform=Win32" /nologo /v:q
if errorlevel 1 goto error

echo Compressing Win32 executable...
rem upx --best --force -qq .\Win32\Release\color.exe
BCBStriper .\Win32\Release\color.exe
if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause