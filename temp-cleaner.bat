@echo off
setlocal enabledelayedexpansion

echo Eliminando temporales de Windows Update
set "WindowsUpdateTemp=%WINDIR%\SoftwareDistribution\Download"
if exist "!WindowsUpdateTemp!" (
    rmdir /q /s "!WindowsUpdateTemp!"
) else (
    echo La carpeta de temporales de Windows Update no existe.
)

echo Eliminando temporales del usuario
set "UserTemp=%TEMP%"
if exist "!UserTemp!" (
    rmdir /q /s "!UserTemp!"
) else (
    echo La carpeta de temporales del usuario no existe.
)

set "UserTempAlt=%USERPROFILE%\AppData\Local\Temp"
if exist "!UserTempAlt!" (
    rmdir /q /s "!UserTempAlt!"
) else (
    echo La carpeta de temporales alternativa del usuario no existe.
)

echo Eliminando paquetes temporales de Nuget
set "NugetPackages=%USERPROFILE%\.nuget\packages"
if exist "!NugetPackages!" (
    rmdir /q /s "!NugetPackages!"
) else (
    echo La carpeta de paquetes temporales de Nuget no existe.
)

pause