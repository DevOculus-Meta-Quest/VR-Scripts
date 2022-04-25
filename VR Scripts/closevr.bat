@echo off

"%~dp0\nircmd.exe" nircmd.exe killprocess OVRServer_x64.exe
"%~dp0\nircmd.exe" closeprocess vrmonitor.exe

"%~dp0\nircmd.exe" wait 2000

"C:\Program Files (x86)\Steam\steam.exe" -shutdown

"%~dp0\nircmd.exe" wait 2000

"%~dp0\nircmd.exe" closeprocess VirtualMotionCapture.exe
"%~dp0\nircmd.exe" closeprocess VirtualMotionCaptureControlPanel.exe

"%~dp0\nircmd.exe" setdefaultsounddevice "Alto-falantes" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "VOIP-OUT" 2
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 1
"%~dp0\nircmd.exe" setdefaultsounddevice "BM900" 2

"%~dp0\nircmd.exe" setsysvolume 9830 "Alto-falantes"
"%~dp0\nircmd.exe" setsysvolume 65535 "BM900"

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+f1

"%~dp0\nircmd.exe" sendkeypress ctrl+shift+alt+1

EXIT 0