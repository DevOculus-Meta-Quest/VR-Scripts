# VR-Scripts

A collection of startup and close scripts for automating the usage of Oculus/Meta Quest with Link/Airlink and SteamVR.

By default, the start vr script starts with OBS and VMC, so there are options to start without OBS.

# How it works?

Just execute the desired batch file so it can automate many startup or close tasks.

# StartVR running SteamVR:

1. Set Oculus Debug tools fov and ASW settings
2. Set MSI AfterBurner profile to 1
3. Set default audio output devices for the Quest
4. Start Oculus Client
5. Start Steam client
6. Start OBS
7. Waits for Link/Airlink to startuo (oculusdash.exe)
8. Set Oculus Debug tools fov and ASW settings (just to make sure ASW is correct)
9. Set audio devices volume
10. Start SteamVR
11. Start Virtual Motion Capture
12. Show desktop
13. Maximize OBS
14. Maximize ElectronIM

# CloseVR:

1. Close SteamVR
2. Kills Link/Airlink connection
3. Close Steam client
4. Close Virtual Motion Capture
5. Set default audio output devices
6. Set audio devices volume
7. Close Oculus Client
8. Set Oculus Debug tools fov and ASW default settings
9. et MSI AfterBurner profile to 1

# Variants

There are a couple of variants for the startup scrip, in case you are running a game that needs different FOV and ASW settings, like FS2020, for not starting OBS and to not start SteamVR in case you are playing an Oculus library game.

# Script editing

Off course you will need to change those batch files to match your hadrware and settings, feel free to add or remove any lines as you please.

# NirCMD

To accomplish many of those tasks, I am using a tool called NirCmd, an amazing tool that simplifies everything and helps with chaning core windows settings without much of a hassle. https://www.nirsoft.net/utils/nircmd2.html
