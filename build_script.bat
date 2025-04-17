@echo off
:: Build script for Metin2 launcher
echo Building launcher...
:: Build commands here, assuming Visual Studio build is already set up
:: For example:
:: msbuild "Metin2Launcher.sln" /p:Configuration=Release
echo Build completed!

:: Sign the executable
"C:\Program Files (x86)\Windows Kits\10\bin\10.0.26100.0\x64\signtool.exe" sign ^
    /f "C:\Users\Hitsukaya\Desktop\certifcate-launcher\certificat.pfx" ^
    /p nyx2123 ^
    /tr http://timestamp.digicert.com ^
    /td sha256 ^
    /fd sha256 ^
    "C:\Users\Hitsukaya\Desktop\certifcate-launcher\Metin2Release.exe"

echo Launcher signed successfully!
pause
