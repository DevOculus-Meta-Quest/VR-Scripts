@echo off

SETLOCAL EnableExtensions
set dash=OculusDash.exe

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

"%PROGRAMFILES(X86)%\MSI Afterburner\MSIAfterburner.exe" -profile1

"%~dp0\nircmd.exe" setdefaultsounddevice "Fones de ouvido" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "VOIP-OUT" 2
"%~dp0\nircmd.exe" setdefaultsounddevice "Headset Microphone" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "Headset Microphone" 2

"%~dp0\nircmd.exe" exec min "%PROGRAMFILES%\Oculus\Support\oculus-client\OculusClient.exe"

:LOOPSTART
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %dash%"') DO IF %%x == %dash% goto FOUND
TIMEOUT /T 2
goto LOOPSTART
:FOUND

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

powershell -command "& { $x = New-Object -ComObject Shell.Application; $x.ToggleDesktop() }"

TIMEOUT /T 2

"%~dp0\nircmd.exe" setsysvolume 52428 "Fones de ouvido"
"%~dp0\nircmd.exe" setsysvolume 65535 "Headset Microphone"

"%~dp0\nircmd.exe" win max process ElectronIM.exe

exit 0