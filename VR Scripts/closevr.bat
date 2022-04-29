@echo off

title "Fechando tudo"

"%~dp0\nircmd.exe" win close ititle "Shortcuts"

@echo Fechando Link:

@echo.

"%~dp0\nircmd.exe" nircmd.exe killprocess OVRServer_x64.exe

@echo Fechando SteamVR:

@echo.

"%~dp0\nircmd.exe" closeprocess vrmonitor.exe

"%~dp0\nircmd.exe" wait 2000

@echo Fechando Steam:

@echo.

"C:\Program Files (x86)\Steam\steam.exe" -shutdown

"%~dp0\nircmd.exe" wait 2000

@echo Fechando VMC:

@echo.

"%~dp0\nircmd.exe" closeprocess VirtualMotionCapture.exe
"%~dp0\nircmd.exe" closeprocess VirtualMotionCaptureControlPanel.exe

@echo Ajustando entradas e saidas de audio:

@echo.

"%~dp0\nircmd.exe" setdefaultsounddevice "Alto-falantes" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "VOIP-OUT" 2
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 2

@echo Ajustando volumes da caixa de som:

@echo.

"%~dp0\nircmd.exe" setsysvolume 9830 "Alto-falantes"
"%~dp0\nircmd.exe" setsysvolume 65535 "BM900"

@echo Ajustando o Voice Attack para padrao:

@echo.

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+f1

@echo Ajustando perfil do MSI Afterburner:

@echo.

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+1

"%~dp0\nircmd.exe" wait 6000

@echo Fechando o aplicativo da Oculus:

@echo.

"%~dp0\nircmd.exe" closeprocess OculusClient.exe

@echo Tudo pronto! Fechando...

@echo.

timeout /t 5

exit 0