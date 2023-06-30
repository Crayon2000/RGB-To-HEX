@echo off
set BDS=C:\Program Files (x86)\Embarcadero\Studio\22.0
set path=%path%;C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319

echo Compiling Win32 code...
msbuild Color.cbproj /target:Build /property:"Config=Release";"Platform=Win32" /nologo /v:q
if errorlevel 1 goto error

echo Compiling Win64 code...
msbuild Color.cbproj /target:Build /property:"Config=Release";"Platform=Win64" /nologo /v:q
if errorlevel 1 goto error

echo Build successful.
goto end
:error
echo Build incomplete!
:end
pause