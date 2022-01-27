# VR-Scripts

A collection of startup and close scripts for automating the usage of Oculus/Meta Quest with Link/Airlink and SteamVR.

By default, the start vr script starts with OBS and VMC, so there are options to start without OBS.

# But, why?

There are many tweeks, apps to start and checks I have to do before start playing PCVR with the Meta Quest 2. Those scripts helped me a lot, so I can just run it up and forget. The idea to start the script and put my headset on, start Airlink and enjoy. When I'm done, I just run closevr and i will close all apps, games and set my default desktop settings for my personal use.

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

# Oculus DT CLI

I am also including the original Oculus Debug Tool CLI exe file - https://www.virustotal.com/gui/file/e4dc214497b4daf264d21e926c738649f969ac21c31eaf72671c510508ddc0a9
