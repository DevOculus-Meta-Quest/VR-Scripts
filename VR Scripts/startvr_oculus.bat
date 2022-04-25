@echo off

@echo Ajustando FOV e ASW:

@echo.

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

@echo Ajustando perfil do MSI Afterburner:

@echo.

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+1

@echo Ajustando entradas e saidas de audio:

@echo.

"%~dp0\nircmd.exe" setdefaultsounddevice "Fones de ouvido" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "VOIP-OUT" 2
"%~dp0\nircmd.exe" setdefaultsounddevice "Headset Microphone" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "Headset Microphone" 2

@echo Iniciando o aplicativo da Oculus:

@echo.

"%~dp0\nircmd.exe" exec min "%PROGRAMFILES%\Oculus\Support\oculus-client\OculusClient.exe"

@echo Iniciando o OBS:

@echo.

START "OBS" /d "C:\OBS Antonio Portable\bin\64bit\" obs64.exe

@echo Aguardando iniciar o AirLink:

:LOOPSTART
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq OculusDash.exe"') DO IF %%x == OculusDash.exe goto FOUND
"%~dp0\nircmd.exe" wait 2000
goto LOOPSTART
:FOUND

@echo.

@echo Iniciado, regulando novamente o FOV e ASW:

@echo.

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

"%~dp0\nircmd.exe" wait 2000

@echo Ajustando volumes dos Quest:

@echo.

"%~dp0\nircmd.exe" setsysvolume 52428 "Fones de ouvido"
"%~dp0\nircmd.exe" setsysvolume 65535 "Headset Microphone"

@echo Mostrando a area de trabalho:

@echo.

powershell -command "& { $x = New-Object -ComObject Shell.Application; $x.ToggleDesktop() }"

@echo Maximizando o OBS:

@echo.

"%~dp0\nircmd.exe" win max process obs64.exe

"%~dp0\nircmd.exe" wait 2000

@echo Maximizando o Ferdi:

@echo.

"%~dp0\nircmd.exe" win max process Ferdi.exe

@echo Ajustando o Voice Attack para VR:

@echo.

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+f2

exit 0