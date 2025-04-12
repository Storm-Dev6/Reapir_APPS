@echo off
title Microsoft Store automatikus javító script
color 1F

echo === Microsoft Store automatikus javitasa indul... ===
timeout /t 2 /nobreak >nul

echo.
echo 1. Store cache torlese...
wsreset.exe
timeout /t 5 /nobreak >nul

echo.
echo 2. Proxy beallitasok visszaallitasa...
netsh winhttp reset proxy

echo.
echo 3. DISM es SFC futtatasa...
DISM /Online /Cleanup-Image /RestoreHealth
sfc /scannow

echo.
echo 4. Microsoft Store ujraregisztralasa...
powershell -Command "Get-AppxPackage -AllUsers *WindowsStore* ^| Foreach {Add-AppxPackage -DisableDevelopmentMode -Register ('$($_.InstallLocation)^)\AppXManifest.xml')}"

echo.
echo 5. Windows App Runtime javitasa (ha szukseges)...
for /d %%i in ("C:\Program Files\WindowsApps\Microsoft.WindowsAppRuntime*" ) do (
    powershell -Command "Try { Add-AppxPackage -DisableDevelopmentMode -Register '%%i\AppxManifest.xml' } Catch { }"
)

echo.
echo === Kesz! Kerlek inditsd ujra a gepet. ===
pause
