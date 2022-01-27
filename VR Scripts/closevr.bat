@echo off

"%~dp0\nircmd.exe" closeprocess vrmonitor.exe

TIMEOUT /T 1

"%~dp0\nircmd.exe" killprocess OVRServer_x64.exe

"C:\Program Files (x86)\Steam\steam.exe" -shutdown

TIMEOUT /T 1

"%~dp0\nircmd.exe" closeprocess VirtualMotionCapture.exe
"%~dp0\nircmd.exe" closeprocess VirtualMotionCaptureControlPanel.exe

"%~dp0\nircmd.exe" setdefaultsounddevice "Alto-falantes" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "VOIP-OUT" 2
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 2

"%~dp0\nircmd.exe" setsysvolume 19660 "Alto-falantes"
"%~dp0\nircmd.exe" setsysvolume 65535 "BM900"

TIMEOUT /T 10

"%~dp0\nircmd.exe" closeprocess OculusClient.exe

"%~dp0\OculusDebugToolCLI.exe" -f odt_regular.txt

"C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe" -profile1

EXIT 0