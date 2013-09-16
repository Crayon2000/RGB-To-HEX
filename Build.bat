@echo off
set BDS=D:\Program Files\Embarcadero\RAD Studio\12.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319
set path=%path%;D:\Programmes

echo Compiling Win32 code...
msbuild Color.cbproj /target:Build /property:"Config=Release";"Platform=Win32" /nologo /v:q
if errorlevel 1 goto error

echo Compiling Win64 code...
msbuild Color.cbproj /target:Build /property:"Config=Release";"Platform=Win64" /nologo /v:q
if errorlevel 1 goto error

echo Compressing Win32 executable...
rem upx --best --force -qq .\Win32\Release\color.exe
BCBStriper .\Win32\Release\color.exe
if errorlevel 1 goto error

rem echo Compressing Win64 executable...
rem upx --best --force -qq .\Win64\Release\color.exe
rem BCBStriper .\Win32\Release\color.exe
rem if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause