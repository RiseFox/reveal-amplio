# reveal-amplio
Audio modification

http://4pda.ru/forum/index.php?showtopic=819137

Requires a device running Android 4 and / or above, the availability of CustomRecovery (TWRP and / or FlashFire) INSTALLATION:
To install only on a clean (non-audiomodified) system
It is recommended that you make the BackUp at least a System folder
Install the archive via CustomRecovery
It is advisable to implement Wipe Dalvik / Cache
Restart device

DELETE:
Or flash ROM of the same version, without Wipe over the existing one (the system folder will be replaced)
Or clean the System folder and restore the BackUp folder of System
REMOVAL IN MANUAL MODE (Root required):
Delete stitched files from the archive by the path system \ etc \ init.d (file names: dejitter, mediaprocess, proc)
Delete the build.prop file, replace the file name build.prop.bak with build.prop (located in the system folder)
Delete the audio_policy.conf file, replace the audio_policy.conf.bak file name with audio_policy.conf (located in the system \ etc folder)
Delete the file audio_effects.conf, replace the file name audio_effects.conf.bak with audio_effects.conf (located in the system \ etc folder)
Restart device
