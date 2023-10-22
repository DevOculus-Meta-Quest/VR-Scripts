@echo off

title Iniciando VR pela Steam com OBS

"%~dp0\nircmd.exe" win min ititle "Shortcuts"

@echo Ajustando FOV e ASW:

@echo.

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

title Iniciando VR pela Steam com OBS

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

@echo Iniciando a Steam:

@echo.

"%~dp0\nircmd.exe" exec min "%PROGRAMFILES(X86)%\Steam\steam.exe"

"%~dp0\nircmd.exe" wait 2000

"%~dp0\nircmd.exe" win min ititle "Oculus"

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

title Iniciando VR pela Steam com OBS

"%~dp0\nircmd.exe" wait 3000

@echo Ajustando volumes dos Quest:

@echo.

"%~dp0\nircmd.exe" setsysvolume 52428 "Fones de ouvido"
"%~dp0\nircmd.exe" setsysvolume 65535 "Headset Microphone"

@echo Iniciando a SteamVR:

@echo.

START steam://rungameid/250820

"%~dp0\nircmd.exe" wait 3000

@echo Iniciando o aplicativo Virtual Motion Capture:

@echo.

"%~dp0\nircmd.exe" exec min "C:\OBS Antonio Portable\my stuff\Virtual Motion Capture\VirtualMotionCapture.exe"

"%~dp0\nircmd.exe" wait 10000

@echo Mostrando a area de trabalho:

@echo.

powershell -command "& { $x = New-Object -ComObject Shell.Application; $x.ToggleDesktop() }"

"%~dp0\nircmd.exe" wait 1000

@echo Maximizando o OBS:

@echo.

"%~dp0\nircmd.exe" win max process obs64.exe

"%~dp0\nircmd.exe" wait 1000

@echo Maximizando o Ferdi:

@echo.

"%~dp0\nircmd.exe" win max process Ferdi.exe

@echo Ajustando o Voice Attack para VR:

@echo.

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+f2

@echo Tudo pronto! Bom jogo!

@echo.

"%~dp0\nircmd.exe" wait 5000

exit 0