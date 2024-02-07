C:\Windows\System32\DisplaySwitch.exe
DisplaySwitch.exe /extend
timeout -T 1
nircmd setdisplay monitor:0 1920 1080 32 75
nircmd setdisplay monitor:1 1920 1080 32 144
nircmd setdisplay monitor:0 1920 1080 32 144