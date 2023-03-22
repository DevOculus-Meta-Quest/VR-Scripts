# VR-Scripts

A comprehensive collection of startup and shutdown scripts designed to streamline the Oculus/Meta Quest experience with Link/Airlink and SteamVR. By automating the process of starting and closing multiple apps, these scripts enable you to simply run them and enjoy your VR gaming experience without the hassle of manual setup.

*Note: The default start VR script launches OBS and VMC. Options are available to start without OBS if needed.*

## Why Use VR-Scripts?

Setting up the Meta Quest 2 for PCVR gaming involves numerous tweaks, app launches, and checks. These scripts simplify the process, allowing you to start your VR experience with minimal effort. Simply run the script, put on your headset, activate Airlink, and enjoy. When you're finished, run the `closevr` script to close all apps, games, and return your desktop settings to their default state.

## How Does It Work?

To automate various startup or shutdown tasks, simply execute the appropriate batch file.

### StartVR with SteamVR:

1. Configure Oculus Debug Tool FOV and ASW settings.
2. Set MSI AfterBurner profile to 1.
3. Set default audio output devices for the Quest.
4. Start Oculus Client.
5. Start Steam client.
6. Start OBS.
7. Wait for Link/Airlink to startup (oculusdash.exe).
8. Configure Oculus Debug Tool FOV and ASW settings again (to ensure correct ASW settings).
9. Set audio device volume.
10. Start SteamVR.
11. Start Virtual Motion Capture.
12. Show desktop.
13. Maximize OBS.
14. Maximize Ferdi.

### CloseVR:

1. Close SteamVR.
2. Terminate Link/Airlink connection.
3. Close Steam client.
4. Close Virtual Motion Capture.
5. Set default audio output devices.
6. Set audio device volume.
7. Close Oculus Client.
8. Restore Oculus Debug Tool FOV and ASW default settings.
9. Set MSI AfterBurner profile to 1.

## Variants

Several variants of the startup script are available for games requiring different FOV and ASW settings, such as FS2020, or if you prefer not to start OBS or SteamVR when playing Oculus library games.

## Customizing Scripts

Feel free to modify these batch files to suit your hardware and preferences. Add or remove lines as necessary.

## NirCMD

Many tasks are accomplished using NirCmd, a versatile tool for easily changing core Windows settings. Download NirCmd here: https://www.nirsoft.net/utils/nircmd2.html

## Oculus Debug Tool CLI

The original Oculus Debug Tool CLI executable file is also included. Download link: https://www.virustotal.com/gui/file/e4dc214497b4daf264d21e926c738649f969ac21c31eaf72671c510508ddc0a9

## Shortcuts

A few shortcuts are provided, enabling you to change their icons and force the command prompt window to start minimized.

![image](https://user-images.githubusercontent.com/25224882/151407584-9508d7c4-2e13-4afd-9dbf-213406de23d1.png)
